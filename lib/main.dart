import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:todo_app/db/db_helper.dart';
import 'package:todo_app/pages/add_task_bar.dart';
import 'package:todo_app/pages/home_page.dart';
import 'package:todo_app/services/theme_services.dart';
import 'package:todo_app/theme/theme.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await DBHelper.initDb();
  await GetStorage.init();
  runApp(const MyApp());
}

// void main() {
//   runApp(MyApp());
// }

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: Themes.light,
      darkTheme: Themes.dark,
      // themeMode: ThemeMode.light,
      themeMode: ThemeService().theme,
      home: HomePage(),
    );
  }
}
