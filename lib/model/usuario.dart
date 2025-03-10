class Usuario {
  String _idUsuario = "";
  String _nome = "";
  String _email = "";
  String _senha = "";
  String _tipoUsuario = "";

  Usuario();

  Map<String, dynamic> toMap() {
    Map<String, dynamic> map = {
      "nome": this.nome,
      "email": this.email,
      "tipoUsuario": this.TipoUsuario,
    };

    return map;
  }

  String verificaTipoUsuario(bool tipoUsuario) {
    return tipoUsuario ? "motorista" : "passageiro";
  }

  String get TipoUsuario => _tipoUsuario;

  set TipoUsuario(String value) {
    _tipoUsuario = value;
  }

  String get idUsuario => _idUsuario;

  set idUsuario(String value) {
    _idUsuario = value;
  }

  String get nome => _nome;

  set nome(String value) {
    _nome = value;
  }

  String get email => _email;

  set email(String value) {
    _email = value;
  }

  String get senha => _senha;

  set senha(String value) {
    _senha = value;
  }
}
