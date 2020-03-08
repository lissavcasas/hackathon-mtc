import 'dart:convert';

AccidentReportModel accidentReportModelFromJson(String str) =>
    AccidentReportModel.fromJson(json.decode(str));

String accidentReportModelToJson(AccidentReportModel data) =>
    json.encode(data.toJson());

class AccidentReportModel {
  int id;
  String type;
  int severity;
  String image;
  String latitude;
  String longitude;
  String userId;
  int accidentReportStateId;
  DateTime createdAt;
  DateTime updatedAt;
  AccidentReportStateData accidentReportStateData;

  AccidentReportModel({
    this.id,
    this.type,
    this.severity,
    this.image,
    this.latitude,
    this.longitude,
    this.userId,
    this.accidentReportStateId,
    this.createdAt,
    this.updatedAt,
    this.accidentReportStateData,
  });

  factory AccidentReportModel.fromJson(Map<String, dynamic> json) =>
      AccidentReportModel(
        id: json["id"],
        type: json["type"],
        severity: json["severity"],
        image: json["image"],
        latitude: json["latitude"],
        longitude: json["longitude"],
        userId: json["user_id"],
        accidentReportStateId: json["accident_report_state_id"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        accidentReportStateData: AccidentReportStateData.fromJson(
            json["accident_report_state_data"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "type": type,
        "severity": severity,
        "image": image,
        "latitude": latitude,
        "longitude": longitude,
        "user_id": userId,
        "accident_report_state_id": accidentReportStateId,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
        "accident_report_state_data": accidentReportStateData.toJson(),
      };
}

class AccidentReportStateData {
  int id;
  String name;
  DateTime createdAt;
  DateTime updatedAt;

  AccidentReportStateData({
    this.id,
    this.name,
    this.createdAt,
    this.updatedAt,
  });

  factory AccidentReportStateData.fromJson(Map<String, dynamic> json) =>
      AccidentReportStateData(
        id: json["id"],
        name: json["name"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
      };
}
