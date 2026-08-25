import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

import '../../models/topic.dart';
import '../../models/lesson.dart';

class DatabaseHelper {
  DatabaseHelper._internal();
  static final DatabaseHelper instance = DatabaseHelper._internal();

  static Database? _database;

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDatabase();
    return _database!;
  }

  Future<Database> _initDatabase() async {
    final dbPath = await getDatabasesPath();
    final path = join(dbPath, 'geoalgebra.db');

    return openDatabase(
      path,
      version: 1,
      onCreate: _onCreate,
    );
  }

  Future<void> _onCreate(Database db, int version) async {
    await db.execute('''
      CREATE TABLE topics (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        subject TEXT NOT NULL,
        title TEXT NOT NULL,
        description TEXT NOT NULL
      )
    ''');

    await db.execute('''
      CREATE TABLE lessons (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        topicId INTEGER NOT NULL,
        title TEXT NOT NULL,
        overview TEXT NOT NULL,
        explanation TEXT NOT NULL,
        example TEXT NOT NULL,
        FOREIGN KEY (topicId) REFERENCES topics (id) ON DELETE CASCADE
      )
    ''');

    await db.execute('''
      CREATE TABLE practice_items (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        topicId INTEGER NOT NULL,
        question TEXT NOT NULL,
        choices TEXT,
        correctAnswer TEXT NOT NULL,
        FOREIGN KEY (topicId) REFERENCES topics (id) ON DELETE CASCADE
      )
    ''');

    await db.execute('''
      CREATE TABLE practice_attempts (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        practiceItemId INTEGER NOT NULL,
        isCorrect INTEGER NOT NULL,
        attemptedAt TEXT NOT NULL,
        FOREIGN KEY (practiceItemId) REFERENCES practice_items (id) ON DELETE CASCADE
      )
    ''');

    await db.execute('''
      CREATE TABLE quiz_scores (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        subject TEXT NOT NULL,
        score INTEGER NOT NULL,
        totalItems INTEGER NOT NULL,
        takenAt TEXT NOT NULL
      )
    ''');

    await db.execute('''
      CREATE TABLE progress (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        lessonId INTEGER NOT NULL,
        isCompleted INTEGER NOT NULL DEFAULT 0,
        completedAt TEXT,
        FOREIGN KEY (lessonId) REFERENCES lessons (id) ON DELETE CASCADE
      )
    ''');
  }
  // ---------- Topics ----------

  Future<int> insertTopic(Topic topic) async {
    final db = await database;
    return db.insert('topics', topic.toMap()..remove('id'));
  }

  Future<List<Topic>> getTopicsBySubject(String subject) async {
    final db = await database;
    final rows = await db.query('topics', where: 'subject = ?', whereArgs: [subject]);

    final List<Topic> topics = [];
    for (final row in rows) {
      final lessons = await getLessonsByTopic(row['id'] as int);
      topics.add(Topic.fromMap(row, lessons: lessons));
    }
    return topics;
  }

  // ---------- Lessons ----------

  Future<int> insertLesson(Lesson lesson) async {
    final db = await database;
    return db.insert('lessons', lesson.toMap()..remove('id'));
  }

  Future<List<Lesson>> getLessonsByTopic(int topicId) async {
    final db = await database;
    final rows = await db.query('lessons', where: 'topicId = ?', whereArgs: [topicId]);
    return rows.map((row) => Lesson.fromMap(row)).toList();
  }

  // ---------- Progress ----------

  Future<void> markLessonCompleted(int lessonId) async {
    final db = await database;
    final existing = await db.query('progress', where: 'lessonId = ?', whereArgs: [lessonId]);

    if (existing.isEmpty) {
      await db.insert('progress', {
        'lessonId': lessonId,
        'isCompleted': 1,
        'completedAt': DateTime.now().toIso8601String(),
      });
    } else {
      await db.update(
        'progress',
        {'isCompleted': 1, 'completedAt': DateTime.now().toIso8601String()},
        where: 'lessonId = ?',
        whereArgs: [lessonId],
      );
    }
  }

  Future<int> getCompletedLessonCount() async {
    final db = await database;
    final result = await db.rawQuery(
      'SELECT COUNT(*) as count FROM progress WHERE isCompleted = 1',
    );
    return Sqflite.firstIntValue(result) ?? 0;
  }

  // ---------- Quiz scores ----------

  Future<int> insertQuizScore(String subject, int score, int totalItems) async {
    final db = await database;
    return db.insert('quiz_scores', {
      'subject': subject,
      'score': score,
      'totalItems': totalItems,
      'takenAt': DateTime.now().toIso8601String(),
    });
  }

  Future<List<Map<String, dynamic>>> getQuizScores() async {
    final db = await database;
    return db.query('quiz_scores', orderBy: 'takenAt DESC');
  }
}

