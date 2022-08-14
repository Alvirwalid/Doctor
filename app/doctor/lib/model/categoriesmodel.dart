class CategoryOfservices {
  String? name;
  CategoryOfservices({this.name});

  static List<CategoryOfservices> categoryList() {
    return [
      CategoryOfservices(name: 'All'),
      CategoryOfservices(name: 'Cardiology'),
      CategoryOfservices(name: 'Neurology'),
      CategoryOfservices(name: 'Endocrinology'),
      CategoryOfservices(name: 'Ophthalmology'),
      CategoryOfservices(name: 'Gastroenterology'),
    ];
  }
}
