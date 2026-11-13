enum Product {
  dart(
    title: 'Dart',
    image: 'assets/ex3/dart.png',
    description: 'A programming language for building apps.',
  ),
  flutter(
    title: 'Flutter',
    image: 'assets/w3/flutter.png',
    description: 'A UI toolkit for building applications.',
  );

  final String title;
  final String image;
  final String description;

  const Product({
    required this.title,
    required this.image,
    required this.description,
  });
}
