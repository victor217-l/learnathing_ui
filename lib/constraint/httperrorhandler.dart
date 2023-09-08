import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'package:learnathing/constraint/utills.dart';

void httpErrorHandler({
  required http.Response response,
  required BuildContext context,
  required VoidCallback onSuccess,
}) async {
  switch(response.statusCode){
    case 200:
      onSuccess();
      break;
    case 404:
      showsnackber(context, jsonDecode(response.body)['msg']);
      break;
    case 422:
      showsnackber(context, jsonDecode(response.body)['error']);
      break;
    case 500:
      showsnackber(context, jsonDecode(response.body)['msg']);
      break;
    default:
      showsnackber(context, jsonDecode(response.body)['msg']);
  }

}