class Tarea {
  String titulo;
  String descripcion;
  String prioridad; // 'Alta', 'Media', 'Baja'
  bool estaCompletada;
  DateTime fechaLimite;

  Tarea({
    required this.titulo,
    required this.descripcion,
    this.prioridad = 'Media',
    this.estaCompletada = false,
    required this.fechaLimite,
  });

  Map<String, dynamic> toJson() {
    return {
      'titulo': titulo,
      'descripcion': descripcion,
      'prioridad': prioridad,
      'estaCompletada': estaCompletada,
      'fechaLimite': fechaLimite
          .toIso8601String(), // Convierte la fecha a texto
    };
  }

  factory Tarea.fromJson(Map<String, dynamic> json) {
    return Tarea(
      titulo: json['titulo'],
      descripcion: json['descripcion'],
      prioridad: json['prioridad'],
      estaCompletada: json['estaCompletada'],
      fechaLimite: DateTime.parse(json['fechaLimite']), // Reconstruye la fecha
    );
  }
}
