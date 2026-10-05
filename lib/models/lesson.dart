import 'dart:convert';

class Lesson {
  final int? id;
  final int? topicId;
  final String title;
  final String overview;
  final String explanation;
  final String example;
  final List<LessonDiagram> diagrams;

  Lesson({
    this.id,
    this.topicId,
    required this.title,
    required this.overview,
    required this.explanation,
    required this.example,
    this.diagrams = const [],
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'topicId': topicId,
      'title': title,
      'overview': overview,
      'explanation': explanation,
      'example': example,
      'diagramJson': diagrams.isEmpty
          ? null
          : jsonEncode(diagrams.map((d) => d.toJson()).toList()),
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
      diagrams: _decodeDiagrams(map['diagramJson'] as String?),
    );
  }

  /// Accepts a JSON list of diagrams, or the older format (a single diagram
  /// object) so lessons saved before this change still load.
  static List<LessonDiagram> _decodeDiagrams(String? raw) {
    if (raw == null) return const [];
    final decoded = jsonDecode(raw);
    if (decoded is List) {
      return decoded
          .map((e) => LessonDiagram.fromJson(Map<String, dynamic>.from(e as Map)))
          .toList();
    }
    return [LessonDiagram.fromJson(Map<String, dynamic>.from(decoded as Map))];
  }
}

class LessonDiagram {
  final DiagramType type;
  final Map<String, dynamic> data;

  /// Which worked example this diagram belongs to (the N in "Example N").
  final int exampleNumber;

  const LessonDiagram({
    required this.type,
    required this.data,
    this.exampleNumber = 1,
  });

  Map<String, dynamic> toJson() => {
    'type': type.name,
    'data': data,
    'exampleNumber': exampleNumber,
  };

  factory LessonDiagram.fromJson(Map<String, dynamic> json) {
    return LessonDiagram(
      type: DiagramType.values.byName(json['type'] as String),
      data: Map<String, dynamic>.from(json['data'] as Map),
      exampleNumber: (json['exampleNumber'] as int?) ?? 1,
    );
  }
}

enum DiagramType { algebraTiles, areaModel, coordinatePlane, barModel }