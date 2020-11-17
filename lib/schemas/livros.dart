import 'autores.dart';

class LivroSchema {
  String adicionadoEm;
  String atualizadoEm;
  List<Autores> autores;
  bool disponivel;
  int id;
  String titulo;
  int vol;

  LivroSchema(
      {this.adicionadoEm,
      this.atualizadoEm,
      this.autores,
      this.disponivel,
      this.id,
      this.titulo,
      this.vol});

  LivroSchema.fromJson(Map<String, dynamic> json) {
    adicionadoEm = json['adicionado_em'];
    atualizadoEm = json['atualizado_em'];
    if (json['autores'] != null) {
      autores = new List<Autores>();
      json['autores'].forEach((v) {
        autores.add(new Autores.fromJson(v));
      });
    }
    disponivel = json['disponivel'];
    id = json['id'];
    titulo = json['titulo'];
    vol = json['vol'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['adicionado_em'] = this.adicionadoEm;
    data['atualizado_em'] = this.atualizadoEm;
    if (this.autores != null) {
      data['autores'] = this.autores.map((v) => v.toJson()).toList();
    }
    data['disponivel'] = this.disponivel;
    data['id'] = this.id;
    data['titulo'] = this.titulo;
    data['vol'] = this.vol;
    return data;
  }
}
