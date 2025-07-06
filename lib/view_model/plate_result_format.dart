// models/plate_result.dart
class PlateResult {
  final List<ModelMake> modelMake;
  final List<ColorResult> color;

  PlateResult({required this.modelMake, required this.color});

  factory PlateResult.fromJson(Map<String, dynamic> json) {
    return PlateResult(
      modelMake: (json['model_make'] as List<dynamic>?)
              ?.map((e) => ModelMake.fromJson(e))
              .toList() ??
          [],
      color: (json['color'] as List<dynamic>?)
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
      color: json['color'] ?? '',
      score: (json['score'] ?? 0).toDouble(),
    );
  }
}
