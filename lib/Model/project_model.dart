class Project {
  String? name;
  String? image;
  String? hoverImage;
  String? about;
  String? link;

  Project({this.about, this.name, this.hoverImage, this.image, this.link});
}

List<Project> projectList = <Project>[
  Project(
      name: 'Gomel Digital Safe',
      hoverImage: 'assets/gomelhover.png',
      about: 'A mobile app, that helps group of people to safe their money with a trusted person, and also track their total money (ososo).',
      link: 'https://github.com/MJdugule/gomel_digital_safe',
      image: 'assets/gomel.png'),
  Project(
      name: 'MindPal',
      hoverImage: 'assets/mindHover.png',
      about: ' This is a task management app where you can add, edit and delete tasks as well as set a reminder for each task.',
      link: 'https://github.com/MJdugule/mind_pal',
      image: 'assets/mindpal.png'),
  Project(
      name: 'Locate Me',
      about: 'A mobile app used to calculate the distance between two locations using Google Maps API',
      hoverImage: 'assets/locatehover.png',
      link: 'https://github.com/MJdugule/locate_me',
      image: 'assets/locate.png'),
      Project(
      name: 'Bub-it',
      about: 'A url shortening app used to convert long, untrackable links into short, pleasant and memorable links.',
      hoverImage: 'assets/bubhover.png',
      link: 'https://github.com/MJdugule/bub-it',
      image: 'assets/bub.png'),
];
