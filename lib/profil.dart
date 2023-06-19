class Profil {
  String name;
  String surname;
  int age;
  bool genre;
  double height;
  String secret;
  String favorie;
  List<String> hobbie = [];
  Profil({
    this.name = "",
    this.surname = "",
    this.age = 0,
    this.genre = true,
    this.height = 0.0,
    this.secret = "",
    this.favorie = "",
  });

  String getName() => "$surname $name";
  String getAge() {
    String appString = "$age an";
    if (age > 1) {
      appString += "s";
    }
    return appString;
  }

  String getGenre() => genre ? "Genre : Féminin" : "Genre : Masculin";
  String getHeight() => "$height cm";
  String getFavorie() => "Mon langage favorie est : $favorie";
  String getHobbies() {
    String hobbiesString = "";
    if (hobbie.isEmpty) {
      return "Aucun hobbie";
    } else {
      hobbiesString = "Mes hobbies sont : ";
      int i = 0;
      hobbie.forEach((element) {
        i++;
        if (i == hobbie.length) {
          hobbiesString += "$element.";
        } else {
          hobbiesString += "$element, ";
        }
      });
      return hobbiesString;
    }
  }
}
