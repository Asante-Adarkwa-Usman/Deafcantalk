import 'package:deafcantalk/views/auth/login_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:splash_screen_view/SplashScreenView.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.blueAccent,
    ),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'DeafCanTalk',
      // theme: ThemeData(
      //   primarySwatch:  Color.fromARGB(255, 103, 237, 230)
      // ),
      home: SplashScreenView(
        duration: 4000,
        imageSize: 500,
        navigateRoute: const LoginView(),
        pageRouteTransition: PageRouteTransition.SlideTransition,
        imageSrc: "assets/images/lg.png",
        text: 'DeafCanTalk',
        textType: TextType.NormalText,
        textStyle: const TextStyle(
          fontSize: 40.0,
          color: Colors.white,
        ),
        backgroundColor: const Color.fromRGBO(0, 153, 156, 1),
      ),
    );
  }
}
