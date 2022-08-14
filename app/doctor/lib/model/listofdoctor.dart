class ListofDoctor {
  String? name;
  String? title;
  String? fees;
  String? img;

  ListofDoctor({this.name, this.title, this.fees, this.img});
  static List<ListofDoctor> generetedList() {
    return [
      ListofDoctor(
          name: 'Dr. Perrin Pleninger',
          title: 'Neurology',
          fees: '\$50',
          img: './images/d1.jpg'),
      ListofDoctor(
          name: 'Dr. Larry A. Chinitz',
          title: 'Allergy & immunology',
          fees: '\$55',
          img: './images/d2.jpg'),
      ListofDoctor(
          name: 'Dr. Larry A. Chinitz',
          title: 'Allergy & immunology',
          fees: '\$55',
          img: './images/d2.jpg'),
    ];
  }
}
