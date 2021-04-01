class Slide {
  final String imageUrl;
  final String title;
  final String description;

  Slide({this.imageUrl, this.title, this.description});
}

final slideList = [
  Slide(
      imageUrl: 'assets/images/image1.jpg',
      title: 'A Cool Way to Get Start',
      description: 'Lorem Ipsum is simply dummy text of the printing '
                    'and typesetting industry. Lorem Ipsum has'
                      ' been the industry'),

  Slide(
      imageUrl: 'assets/images/image2.jpg',
      title: 'Design Interactive App UI',
      description: 'Lorem Ipsum is simply dummy text of the printing '
          'and typesetting industry. Lorem Ipsum has'
          ' been the industry'),

  Slide(
      imageUrl: 'assets/images/image3.jpg',
      title: 'It\'s Just the Beginning',
      description: 'Lorem Ipsum is simply dummy text of the printing '
          'and typesetting industry. Lorem Ipsum has'
          ' been the industry'),


];
