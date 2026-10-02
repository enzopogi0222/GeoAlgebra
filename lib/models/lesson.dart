import 'dart:convert';

class Lesson {
  final int? id;
  final int? topicId;
  final String title;
  final String overview;
  final String explanation;
  final String example;
  final LessonDiagram? diagram;

  Lesson({
    this.id,
    this.topicId,
    required this.title,
    required this.overview,
    required this.explanation,
    required this.example,
    this.diagram,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'topicId': topicId,
      'title': title,
      'overview': overview,
      'explanation': explanation,
      'example': example,
      'diagramJson': diagram == null ? null : jsonEncode(diagram!.toJson()),
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
      diagram: map['diagramJson'] == null
          ? null
          : LessonDiagram.fromJson(jsonDecode(map['diagramJson'] as String)),
    );
  }
}

class LessonDiagram {
  final DiagramType type;
  final Map<String, dynamic> data;

  const LessonDiagram({required this.type, required this.data});

  Map<String, dynamic> toJson() => {'type': type.name, 'data': data};

  factory LessonDiagram.fromJson(Map<String, dynamic> json) {
    return LessonDiagram(
      type: DiagramType.values.byName(json['type'] as String),
      data: Map<String, dynamic>.from(json['data'] as Map),
    );
  }
}

enum DiagramType { algebraTiles, areaModel, coordinatePlane }