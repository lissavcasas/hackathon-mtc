import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:dio/dio.dart';
import 'package:alertmtc/models/accident_report_model.dart';

final String _url = 'http://10.0.2.2:3000/api/v1';

class AlertReportProvider {
  Future<Map<String, dynamic>> storeTicket({
    String type,
    int severity,
    File files,
    String latitude,
    String longitude,
  }) async {
    Dio dio = new Dio();
    final url = '$_url/accident-report/store';
    // final String _token = 'JWT ' + localStorage.token;
    final headers = {
      'Content-Type': 'multipart/form-data',
      // 'Authorization': _token,
    };
    FormData formData = new FormData.fromMap({
      "type": type,
      "severity": severity,
      "files": await MultipartFile.fromFile(files.path, filename: "avatar.png"),
      "latitude": latitude,
      "longitude": longitude
    });
    print(files);
    try {
      final response = await dio.post(url,
          data: formData, options: Options(headers: headers));
      if (response.data == null) return null;
      print("**************Response******************");
      print(response.data);
      return response.data;
    } catch (err) {
      print("**************Error******************");
      print(err);
      return err;
    }
  }

  Future<List<AccidentReportModel>> getAllAccidentReports() async {
    final url = '$_url/accident-report/list';
    final response = await http.get(url);
    final Map<String, dynamic> decodedData = json.decode(response.body);
    final List<AccidentReportModel> alertReports = new List();
    if (decodedData == null) return [];

    final mensaje = decodedData['message'];

    mensaje.forEach((alertReport) {
      final alertReportTemp = AccidentReportModel.fromJson(alertReport);
      alertReports.add(alertReportTemp);
    });

    return alertReports;
  }
}
