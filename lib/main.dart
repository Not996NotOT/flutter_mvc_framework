import 'package:flutter/material.dart';
import 'package:flutter_mvc_framework/Initial.dart';
import 'package:flutter_mvc_framework/routers/Router.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() {
  Initial();
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner:false,
    routingCallback: routeInterceptor,
    initialRoute: initialRoute,
    getPages: routes,
  ));
}


