import '../models/topic.dart';

class GeometryViewModel {
  String get title => 'Geometry';

  String get description =>
      'Explore Grade 8 Geometry concepts through interactive lessons and activities.';

  List<Topic> get topics => [
    Topic(
      subject: 'Geometry',
      title: 'Cartesian Coordinate Plane',
      description: 'Learn about points and locations on the coordinate plane.',
    ),
    Topic(
      subject: 'Geometry',
      title: 'Distance and Midpoint',
      description: 'Learn how to determine distance and midpoint.',
    ),
    Topic(
      subject: 'Geometry',
      title: 'Volumes of Geometric Solids',
      description: 'Study volume concepts for geometric solids.',
    ),
    Topic(
      subject: 'Geometry',
      title: 'Pythagorean Theorem',
      description: 'Explore the relationship between the sides of a right triangle.',
    ),
    Topic(
      subject: 'Geometry',
      title: 'Triangle Inequality Theorems',
      description: 'Learn about relationships between the sides of triangles.',
    ),
  ];
}