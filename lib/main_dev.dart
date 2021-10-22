import 'package:environmentapp/environment.dart';
import 'package:environmentapp/main_common.dart';

Future<void> main() async {
  await mainCommon(Environment.dev);
}
