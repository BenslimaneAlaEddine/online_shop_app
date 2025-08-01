import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
      home: RootWidget(),
    );
  }
}
class RootWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _RootWidget();
  }
}


class _RootWidget extends State<RootWidget> {
  Size? initSize;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    initSize ??= MediaQuery.of(context).size;
  }

  @override
  Widget build(BuildContext context) {
    final isPortrait = MediaQuery.of(context).orientation;
    print(isPortrait);
    return ScreenUtilInit(
      designSize: isPortrait == Orientation.portrait ? const Size(360, 784) : const Size(760, 320),
      builder: (context, child) => child!,
      child: HomeScreen(oldSize: initSize),
    );
  }
}

// void main() {
//   return runApp(MaterialApp(
//     home:MyApp(),
//   ));
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//           child: Container(
//         height: 100,
//         width: 100,
//         color: Colors.red,
//         child: FittedBox(
//           fit: BoxFit.scaleDown,
//           child:
//           Text("data",style: TextStyle(fontSize: 200),)
//           // Container(
//           //   height: 200,
//           //   width: 200,
//           //   color: Colors.green,
//           // ),
//         ),
//       )),
//     );
//   }
// }
