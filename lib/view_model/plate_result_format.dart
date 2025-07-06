class PlateResult {
  final List<ModelMake> modelMake;
  final List<ColorResult> color;

  PlateResult({required this.modelMake, required this.color});

  factory PlateResult.fromJson(Map<String, dynamic> json) {
  final vehicle = json['vehicle'] as Map<String, dynamic>? ?? {};
  final props = vehicle['props'] as Map<String, dynamic>? ?? {};

  return PlateResult(
    modelMake: (props['make_model'] as List<dynamic>?)
            ?.map((e) => ModelMake.fromJson(e))
            .toList() ??
        [],
    color: (props['color'] as List<dynamic>?)
            ?.map((e) => ColorResult.fromJson(e))
            .toList() ??
        [],
  );
}

}

class ModelMake {
  final String make;
  final String model;
  final double score;

  ModelMake({required this.make, required this.model, required this.score});

  factory ModelMake.fromJson(Map<String, dynamic> json) {
    return ModelMake(
      make: json['make'] ?? '',
      model: json['model'] ?? '',
      score: (json['score'] ?? 0).toDouble(),
    );
  }
}

class ColorResult {
  final String color;
  final double score;

  ColorResult({required this.color, required this.score});

  factory ColorResult.fromJson(Map<String, dynamic> json) {
    return ColorResult(
      color: json['value'] ?? '',
      score: (json['score'] ?? 0).toDouble(),
    );
  }
}
