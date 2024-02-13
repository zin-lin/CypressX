// Book
// author : Zin Lin Htun

class Book {
  final List<String> pages;
  final String title;
  final String? bid;
  final String? imgUrl;
  final String? uid;

  Book (
      {required this.title,
      required this.pages,
      required this.bid,
      required this.imgUrl,
      required this.uid});
}