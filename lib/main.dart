import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:online_shop_app/constants.dart';
import 'package:online_shop_app/screens%20home/home_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
    DeviceOrientation.landscapeLeft,
    DeviceOrientation.landscapeRight,
  ]);
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
//قمنا باخراج  MaterialApp من ScreenutilInit لكي تبنى مرة واحدة وليس كل مرة
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: Theme.of(context).textTheme.apply(bodyColor: Colors.black),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home:  RootWidget(),
    );
  }
}

class RootWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraint){
      final isPotrait = constraint.maxHeight > constraint.maxWidth;
      final desgine = isPotrait ? const Size(360, 784) :const Size(360, 784);
      ScreenUtil.init(context,designSize: desgine,minTextAdapt: true,);
      return HomeScreen();
    });
  }
}


// class RootWidget extends StatelessWidget {
//   const RootWidget({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return LayoutBuilder(builder: (context, constraints) {
//       final isPortrait = constraints.maxHeight > constraints.maxWidth;
//       print(isPortrait);
//       return ScreenUtilInit(
//         designSize: isPortrait ? const Size(360, 765) : const Size(765, 360),
//         builder: (context, child) => child!,
//         child: HomeScreen(),
//       );
//     });
//   }
// }
