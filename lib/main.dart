import 'package:flutter/widgets.dart';
import 'package:tailor_made/bootstrap.dart';
import 'package:tailor_made/environments/environment.dart';
import 'package:tailor_made/repository/main.dart';
import 'package:tailor_made/widgets/app.dart';
import 'package:time/time.dart';

void main(
  Repository Function() repositoryFactory, {
  Environment environment = Environment.MOCK,
  int delay = 0,
}) async {
  WidgetsFlutterBinding.ensureInitialized();
  await Future<dynamic>.delayed(delay.seconds);

  runApp(App(bootstrap: await bootstrap(repositoryFactory(), environment)));
}
