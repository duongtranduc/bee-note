import 'package:flutter/material.dart';
import 'package:beenotes/res.dart';
import 'package:beenotes/screens/note_list.dart';
import 'package:splashscreen/splashscreen.dart';

void main() {
  runApp(MyApp());
}

const String APP_NAME = "Bee Notes";

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: APP_NAME,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new SplashScreenPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class SplashScreenPage extends StatefulWidget {
  @override
  _SplashScreenPageState createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      useLoader:true,
      seconds: 3,
      navigateAfterSeconds: NoteList(),
      //navigateAfterFuture: loadFromFuture(),
      //backgroundColor: Colors.grey,
      title: new Text(
          APP_NAME,
          textScaleFactor: 2,
          style: TextStyle(fontWeight: FontWeight.bold),
      ),
      //image: new Image.network('https://picsum.photos/250?image=9'),
      image: Image.asset(Res.logo),
      //loadingText: Text("Loading "+this.loadingPercent.toString()+"%"),
      photoSize: 100.0,
      //loaderColor: Colors.red,
    );
  }
}

//
// class Home extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'NoteKeeper',
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData(
//         primarySwatch: Colors.deepPurple,
//         textTheme: TextTheme(
//           headline5: TextStyle(
//               fontFamily: 'Sans',
//               fontWeight: FontWeight.bold,
//               color: Colors.black,
//               fontSize: 24),
//           bodyText2: TextStyle(
//               fontFamily: 'Sans',
//               fontWeight: FontWeight.bold,
//               color: Colors.black,
//               fontSize: 20),
//           bodyText1: TextStyle(
//               fontFamily: 'Sans',
//               fontWeight: FontWeight.normal,
//               color: Colors.black,
//               fontSize: 18),
//           subtitle2: TextStyle(
//               fontFamily: 'Sans',
//               fontWeight: FontWeight.normal,
//               color: Colors.black,
//               fontSize: 14),
//         ),
//       ),
//       home: NoteList(),
//     );
//   }
// }
