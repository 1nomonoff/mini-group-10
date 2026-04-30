

import 'package:dio/dio.dart';

extension CheckStatusExtation on Response{
  bool checkStatus()=>statusCode! >= 200 && statusCode! < 300 ? true : false;
}