// Book
// author : Zin Lin Htun

class CV {
  final List<String?> experiences;
  final String name;
  final List<String?> referees;
  final List<String?> education;
  final List<String?> qualities;
  final List<String?>? socialMedia;
  final String? notes;
  final String? brief;
  final String? role;
  final String? cid;
  final String? uid;
  final String? address;
  final String? contact;

  // public constructor
  CV ({required this.name,
    required this.experiences,
    required this.cid,
    required this.address,
    required this.brief,
    required this.contact,
    required this.education,
    required this.notes,
    required this.qualities,
    required this.referees,
    required this.role,
    required this.uid,
    required this.socialMedia
  });
}