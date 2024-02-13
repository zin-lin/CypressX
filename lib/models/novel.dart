// Book
// author : Zin Lin Htun

class Novel {
  final List<String> chapters;
  final String title;
  final String? bid;
  final String? imgUrl;
  final String? uid;

  Novel (
      {required this.title,
        required this.chapters,
        required this.bid,
        required this.imgUrl,
        required this.uid});
}