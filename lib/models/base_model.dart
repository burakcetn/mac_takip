abstract class BaseModel {
  Map<String, dynamic> toJson() => throw Exception();

  factory BaseModel.fromJson(Map<String, dynamic> json) => throw Exception();
}
