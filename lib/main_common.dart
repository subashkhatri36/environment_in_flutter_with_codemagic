import 'package:environmentapp/app_widget.dart';
import 'package:environmentapp/config_reader.dart';
import 'package:environmentapp/environment.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

Future<void> mainCommon(String env) async {
  WidgetsFlutterBinding.ensureInitialized();
  await ConfigReader.initialize();
  Color? primaryColor;
  switch (env) {
    case Environment.dev:
      primaryColor = Colors.blue;
      break;
    case Environment.prod:
      primaryColor = Colors.red;
      break;
  }
  runApp(Provider.value(value: primaryColor, child: MyApp()));
}
