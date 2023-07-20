class UnbordingContent {
  String image;
  String title;
  String discription;

  UnbordingContent(
      {required this.image, required this.title, required this.discription});
}

List<UnbordingContent> contents = [
  UnbordingContent(
      title: 'Create Your Own Plate',
      image: 'assets/image/illution2.png',
      discription: "Create unforgettable memories with our"
          "unique feature to curate your favorite"
          "curisines and food , trailod to your special "
          "occasion."),
  UnbordingContent(
      title: 'Exquisite Catering',
      image: 'assets/image/illution1.png',
      discription: "Experience culinary artistry like never"
          "before with our innavative and exquisite"
          "cuisine creations "),
  UnbordingContent(
      title: 'Personal Order Executive',
      image: 'assets/image/illution3.png',
      discription: "Embark on a personalised culinary journey"
          "with our dedicated one-to-one customer "
          "support,ensuring a seamless and"
          "satisfying experience every step of the"
          "way."),
];
