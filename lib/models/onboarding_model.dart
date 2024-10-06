class PlantOnBoarding {
  String title1;
  String image;
  PlantOnBoarding({
    required this.image,
    required this.title1,
  });
}

List<PlantOnBoarding> pOnBoarding = [
  PlantOnBoarding(image: "images/image1.png", title1: "Enjoy your life with"),
  PlantOnBoarding(image: "images/image2.png", title1: "Embrace the beauty of"),
  PlantOnBoarding(
      image: "images/image3.png", title1: "Breathe in the serenity of"),
];
