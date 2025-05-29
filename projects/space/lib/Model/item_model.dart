class Planet {
  final String name;
  final String image;
  final String description;

  const Planet({
    required this.name,
    required this.image,
    required this.description,
  });
}


final List<Planet> planets = [
  Planet(
    name: "Earth",
    image: "assets/images/earth 1 (1).png",
    description: "The only known planet that supports life, with water, air, and diverse ecosystems.",
  ),
  Planet(
    name: "Jupiter",
    image: "assets/images/jupiter (2).png",
    description: "The largest planet in the solar system, mainly made of gas with a giant storm called the Great Red Spot.",
  ),
  Planet(
    name: "Mars",
    image: "assets/images/mars (1).png",
    description: "Known as the Red Planet due to its iron-rich soil. It may have had water in the past.",
  ),
  Planet(
    name: "Venus",
    image: "assets/images/venus (1).png",
    description: "The hottest planet with a thick atmosphere of carbon dioxide, often called Earth's twin.",
  ),
  Planet(
    name: "Saturn",
    image: "assets/images/saturn (1).png",
    description: "Famous for its stunning rings made of ice and rock, the second-largest planet after Jupiter.",
  ),
  Planet(
    name: "Mercury",
    image: "assets/images/mercury (2).png",
    description: "The smallest planet and closest to the Sun, with extreme temperature changes between day and night.",
  ),
  Planet(
    name: "Uranus",
    image: "assets/images/uranus (1).png",
    description: "An icy giant with a blue-green color caused by methane, it rotates on its side in a unique way.",
  ),
  Planet(
    name: "Neptune",
    image: "assets/images/neptune (2).png",
    description: "A cold, blue gas giant with the fastest winds in the solar system.",
  ),
  Planet(
    name: "Pluto",
    image: "assets/images/sun (1).png", // عندك حاطط صورة الشمس بدل بلوتو هنا
    description: "A small icy dwarf planet in the Kuiper Belt, once considered the ninth planet.",
  ),
];