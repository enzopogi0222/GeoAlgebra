class Lesson {
  final int? id;
  final int? topicId;
  final String title;
  final String overview;
  final String explanation;
  final String example;

  Lesson({
    this.id,
    this.topicId,
    required this.title,
    required this.overview,
    required this.explanation,
    required this.example,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'topicId': topicId,
      'title': title,
      'overview': overview,
      'explanation': explanation,
      'example': example,
    };
  }

  factory Lesson.fromMap(Map<String, dynamic> map) {
    return Lesson(
      id: map['id'] as int?,
      topicId: map['topicId'] as int?,
      title: map['title'] as String,
      overview: map['overview'] as String,
      explanation: map['explanation'] as String,
      example: map['example'] as String,
    );
  }
}