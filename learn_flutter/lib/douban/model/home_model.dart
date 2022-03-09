// class Person {
//   String? name;
//   String? avatarURL;
//
//   Person.fromMap(Map<String, dynamic> json) {
//     this.name = json["name"];
//     this.avatarURL = json["avatars"]["medium"];
//   }
// }
//
// class Actor extends Person {
//   Actor.fromMap(Map<String, dynamic> json): super.fromMap(json);
// }
//
// class Director extends Person {
//   Director.fromMap(Map<String, dynamic> json): super.fromMap(json);
// }

// int counter = 1;

class MovieItem {

  String? rank;
  String? em;
  String? name;
  String? img;

  MovieItem.fromMap(Map<String, dynamic> json) {
    rank = json["rank"];
    name = json["name"];
    img = json["img"];
    em = json["em"];
  }

  @override
  String toString() {
    return 'MovieItem{rank: $rank, em: $em, name: $name, img: $img}';
  }
}