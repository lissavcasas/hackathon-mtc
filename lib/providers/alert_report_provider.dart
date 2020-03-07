import 'dart:io';
import 'package:dio/dio.dart';

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
      "files": files,
      "latitude": latitude,
      "longitude": longitude
    });
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
}
