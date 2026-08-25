import 'lesson.dart';

class Topic {
  final int? id;
  final String subject; //Algebra or Geometry
  final String title;
  final String description;
  final List<Lesson> lessons;

  Topic({
    this.id,
    required this.subject,
    required this.title,
    required this.description,
    this.lessons = const [],
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'subject': subject,
      'title': title,
      'description': description,
    };
  }

  factory Topic.fromMap(Map<String, dynamic> map,
      {List<Lesson> lessons = const []}) {
    return Topic(
      id: map['id'] as int?,
      subject: map['subject'] as String,
      title: map['title'] as String,
      description: map['description'] as String,
      lessons: lessons,
    );
  }
}
