class Project {
  String? name;
  String? image;
  String? hoverImage;
  String? about;
  String? link;
  String? figma;
  String? play;
  String? website;
  String? android;
  String? appetize;

  Project({required this.android,required this.appetize, required this.website, required this.play, required this.figma, this.about, this.name, this.hoverImage, this.image, this.link});
}

List<Project> projectList = <Project>[
  Project(
    figma:"https://www.figma.com/file/wbrfqY91ZVWuxAi0eAObJL/StreetRates-(new)-(Copy)?node-id=0%3A1&t=UoYkbYmRk4TE3usT-0" ,
      name: 'Street Rates',
      hoverImage: 'assets/gomelhover.png',
      about: 'Street Rates is a platform that allows users to recieve/view instant conversion rates using customized areas real-time charts that fit the Ecomony value and a historical conversion record from one to one year and to enhance the customer experience',
      link: '',
      play: "https://play.google.com/store/apps/details?id=com.workshopapps.realxchangerate&hl=en",
      image: 'assets/rate.png', website: 'https://streetrates.info', android: '', appetize: ''),
  Project(
    
      name: 'Speak Better',
      hoverImage: 'assets/mindHover.png',
      about: 'Speak better is an AI-powered grammar checker designed to check and correct grammar for multiple languages. It is backed by an automatic speech recognition system trained with over 650,000 hours of multilingual speech data collected from all over the internet. It offers the necessary tools for fluent and effective communication.',
      link: '',
      image: 'assets/speak.png', play: '', website: 'https://speakbetter.fun', figma: 'https://www.figma.com/file/qpo8GjlqCgqhqlRnVROf7F/Design-leads-team-grit-team-library?node-id=1425%3A7171&t=hgnMCWRtI6Uj3Qqc-0', android: '', appetize: '', ),
      
      Project(
    
      name: 'MindPal',
      hoverImage: 'assets/mindHover.png',
      about: 'This is a task management app where you can add, edit and delete tasks as well as set a reminder for each task.',
      link: 'https://github.com/MJdugule/mind_pal',
      image: 'assets/mindPla.png', play: '', website: '', figma: 'https://www.figma.com/file/bHtVpfMQrh6BJvWuZQZjy3/SH-To-do-List-App?node-id=1%3A47&t=hgnMCWRtI6Uj3Qqc-0', android: '', appetize: '', ),
  Project(
      name: 'Explore',
      about: 'A mobile app that get the details from all the country in the world, using a open source country API',
      hoverImage: 'assets/locatehover.png',
      link: 'https://github.com/MJdugule/explore',
      image: 'assets/exploreCard.png', play: '', website: '', figma: '', android: 'https://drive.google.com/file/d/1k28Gm89Wt8_WugXxjBSRqYIOjReBVwk6/view?usp=sharing', appetize: 'https://appetize.io/app/54ks4skfl5xdsg22uwjf4kx2be?device=pixel4&osVersion=11.0&scale=75',),
      Project(
      name: 'Bub-it',
      about: 'A url shortening app used to convert long, untrackable links into short, pleasant and memorable links.',
      hoverImage: 'assets/bubhover.png',
      link: 'https://github.com/MJdugule/bub-it',
      image: 'assets/bub.png', play: '', website: '', figma: '', android: '', appetize: '', ),
      Project(
      name: 'Repair Home',
      about: 'A simple UI design for a repair management app',
      hoverImage: 'assets/repairhover.png',
      link: 'https://github.com/MJdugule/Group-61-capstone2',
      image: 'assets/repair.png', play: '', website: '', figma: '', android: '', appetize: '',),
];
