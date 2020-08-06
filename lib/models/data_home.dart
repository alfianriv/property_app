class DataHome {
  final String image;
  final String price;
  final String title;
  final String address;
  final int rate;
  final Function pressDetails;

  DataHome(this.image, this.price, this.title, this.address, this.rate,
      this.pressDetails);

  static List<DataHome> fetchAll() {
    return [
      DataHome(
        "https://res.cloudinary.com/photoplan/image/upload/v1545235777/Property_Photography-2.jpg",
        "5 M",
        "Modern Simple House",
        "South Jakarta",
        5,
        null,
      ),
      DataHome(
        "https://www.christaylorphoto.co.uk/wp15/wp-content/uploads/2015/12/homepage-slider-007-4-2000x1200.jpg",
        "2 M",
        "Simple Wood House",
        "Bogor",
        4,
        null,
      ),
      DataHome(
        "https://www.digitalphotomentor.com/photography/2018/09/real-estate-photography-interior-photo.jpg",
        "3.5 M",
        "Family House",
        "Bekasi",
        5,
        null,
      ),
      DataHome(
        "https://digitaldefynd.com/wp-content/uploads/2020/01/best-real-estate-photography-course-class-certification-training-online.jpg",
        "1 M",
        "Minimalism House",
        "Central Jakarta",
        5,
        null,
      ),
    ];
  }
}
