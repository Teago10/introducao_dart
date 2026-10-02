
class Localizacao {

  String latitude;
  String longetude;

  Localizacao({
    required this.latitude,
    required this.longetude,
  });

  factory Localizacao.deJson( Map<String, dynamic> json){
    return Localizacao(
      latitude: json['lat'] ?? '',
      longetude: json['lng'] ?? '',
    );
  }


}