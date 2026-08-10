import '../models/lesson.dart';

class LessonViewModel {
  final Lesson lesson;

  LessonViewModel(this.lesson);

  String get title => lesson.title;

  String get overview => lesson.overview;

  String get explanation => lesson.explanation;

  String get example => lesson.example;
}