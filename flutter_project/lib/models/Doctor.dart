class Doctor {
  final String name;
  final String specialty;
  final String birthday;
  final String id;
  final double rating;
  Doctor(this.id, this.name, this.specialty, this.birthday, this.rating);

  factory Doctor.fromJson(Map<String, dynamic> json) => Doctor(json['id'],
      json['name'], json['specialty'], json['birthday'], json['rating']);
  /* String get getName => name;
  String get getSpecialty => Specialty;
  String get getBirthday => birthday;
  String get getID => id;
  double get getRating => rating;*/

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'specialty': specialty,
        'birthday': birthday,
        'rating': rating
      };
}
