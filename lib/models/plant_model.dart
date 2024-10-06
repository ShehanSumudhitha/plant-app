class Plant {
  final String name, image, height, temperature, pot;
  final String? category;
  final double price;

  Plant({
    required this.height,
    required this.temperature,
    required this.pot,
    required this.name,
    required this.image,
    required this.price,
    this.category,
  });
}

List<Plant> plants = [
  Plant(
    name: "Snake Plant",
    price: 12.99,
    image: "images/snake-plants.png",
    height: "20cm - 35cm",
    temperature: "11°C to 22°C",
    pot: "Soil Pot",
  ),
  Plant(
    name: "Lucky Jade Plant",
    price: 12.99,
    image: "images/lucky-jade-plants.png",
    height: "30cm - 40cm",
    temperature: "20°C to 25°C",
    pot: "Ciramic Pot",
  ),
  Plant(
    name: "Small Plant",
    price: 12.99,
    image: "images/Small-Plant.png",
    height: "30cm - 40cm",
    temperature: "20°C to 25°C",
    pot: "Soil Pot",
  ),
  Plant(
    name: "Peperomia Plant",
    category: "Super greens",
    price: 12.99,
    image: "images/Peperomia_Plant.png",
    height: "50cm - 60cm",
    temperature: "30°C to 40°C",
    pot: "Ciramic Pot",
  ),
  Plant(
    name: "Mini Plant",
    price: 12.99,
    image: "images/Mini_Plant.png",
    height: "20cm - 30cm",
    temperature: "20°C to 25°C",
    pot: "Wood Pot",
  ),
];
