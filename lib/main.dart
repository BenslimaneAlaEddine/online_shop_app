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
      home: const RootWidget(),
    );
  }
}

class RootWidget extends StatelessWidget {
  const RootWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return OrientationBuilder(
        builder: (context, orientation) {
          final isPortrait = orientation == Orientation.portrait;
          return ScreenUtilInit(
            designSize: isPortrait ? const Size(360, 765) : const Size(765, 360),
            builder: (context, child) => child!,
            child:  HomeScreen(),
          );
        },
      );
    });
  }
}










// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     print("BuiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiilderAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA");
//     return LayoutBuilder(builder: (context, constraints){
//       // print("LayoutBuilder → العرض: ${constraints.maxWidth}");
//       // print("LayoutBuilder → الارتفاع: ${constraints.maxHeight}");
//       //
//       // final mediaQuerySize = MediaQuery.of(context).size;
//       // print("MediaQuery → العرض: ${mediaQuerySize.width}");
//       // print("MediaQuery → الارتفاع: ${mediaQuerySize.height}");
//       return OrientationBuilder(
//       builder: (BuildContext context, Orientation orientation) {
//         final isPotrait = orientation == Orientation.portrait;
// print(orientation); print(isPotrait);
//         return ScreenUtilInit(
//           designSize: isPotrait ? const Size(360,784) : const Size(784,360),
//           // designSize: const Size(360,765) ,
//           builder: (context,child){
//             return MaterialApp(debugShowCheckedModeBanner: false,
//               theme: ThemeData(
//                 textTheme: Theme.of(context).textTheme.apply(bodyColor: kTextColor),
//                 visualDensity: VisualDensity.adaptivePlatformDensity,),
//               home: child,
//             );
//           },
//           child: HomeScreen(),
//         );
//       });
//     });
//
//   }
// }





//class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     print("BuiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiilderAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA");
//     return OrientationBuilder(
//       builder: (BuildContext context, Orientation orientation) {
//         final isPotrait = orientation == Orientation.portrait;
// print(orientation); print(isPotrait);
//         return ScreenUtilInit(
//           designSize: isPotrait ? const Size(360,765) : const Size(765,360),
//           // designSize: const Size(360,765) ,
//           builder: (context,child){
//             return MaterialApp(debugShowCheckedModeBanner: false,
//               theme: ThemeData(
//                 textTheme: Theme.of(context).textTheme.apply(bodyColor: kTextColor),
//                 visualDensity: VisualDensity.adaptivePlatformDensity,),
//               home: child,
//             );
//           },
//           child: HomeScreen(),
//         );
//       },
//     );
//
//   }
// }
