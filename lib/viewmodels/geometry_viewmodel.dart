import '../models/topic.dart';

class GeometryViewModel {
  String get title => 'Geometry';

  String get description =>
      'Explore Grade 8 Geometry concepts through interactive lessons and activities.';

  List<Topic> get topics => [
    Topic(
      title: 'Cartesian Coordinate Plane',
      description: 'Learn about points and locations on the coordinate plane.',
    ),
    Topic(
      title: 'Distance and Midpoint',
      description: 'Learn how to determine distance and midpoint.',
    ),
    Topic(
      title: 'Volumes of Geometric Solids',
      description: 'Study volume concepts for geometric solids.',
    ),
    Topic(
      title: 'Pythagorean Theorem',
      description: 'Explore the relationship between the sides of a right triangle.',
    ),
    Topic(
      title: 'Triangle Inequality Theorems',
      description: 'Learn about relationships between the sides of triangles.',
    ),
  ];
}