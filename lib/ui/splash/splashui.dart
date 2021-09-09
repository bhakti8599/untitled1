import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled1/ui/loginpage/loginpageui.dart';
//import 'package:student/ui/loginpage/loginpageui.dart';

class Splash extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SplashState();
}

class _SplashState extends State<Splash> with TickerProviderStateMixin {
  Animation<double>? animation;
  AnimationController? _controller;

  @override
  void dispose() {
    // TODO: implement dispose
    _controller!.dispose();
    super.dispose();
  }

  @override
  void initState() {
    startTimer();
    setupRemoteConfig();
    _controller =
        new AnimationController(vsync: this, duration: Duration(seconds: 2));
    animation = new CurvedAnimation(parent: _controller!, curve: Curves.easeIn);
    _controller!.forward(from: .70);
    _controller!.repeat(min: .70, max: 1);

    super.initState();
  }

  void setupRemoteConfig() async {}

  double logoWidth = 160.0;
  bool loadingHome = true;
  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return Material(
        child: Stack(children: <Widget>[
      Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          Color(0XFF2CBFC7),
          Color(0XFF46EEAA),
        ])
            //     SweepGradient(colors: [
            //   Color(0XFF2CBFC7),
            //   Color(0XFF46EEAA),
            // ])
            // LinearGradient(colors: [
            //   Color(0XFF2CBFC7),
            //   Color(0XFF46EEAA),
            // ]),

            // color: Color.fromRGB(100, 92, 97, 191),
            ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              flex:4,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 200,
                    width: 200,
                    child: Image(
                      image: AssetImage(
                        'assets/images/makeuca_logo.png',
                      ),
                    ),
                  ),
                  Container(
                    height: 280,
                    width: 280,
                    child: Image(
                      image: AssetImage(
                        'assets/images/1.png',
                      ),
                    ),
                  ),

                ],
              ),
            ),
            Expanded(
flex: 1,
              child: Container(),
            )
          ],
        ),
      ),
      loadingHome
          ? Positioned(
              bottom: 40,
              right: _width / 2,
              width: 30,
              height: 30,
              child: CircularProgressIndicator(),
            )
          : Column(),
    ]));
  }

  startTimer() async {
    // _loadDefault();
    await navigate();
  }

  navigate() async {
    // prefs = await SharedPreferences.getInstance();

    // SharedPreferences globalSharePrefs = await SharedPreferences.getInstance();

    Timer(Duration(seconds: 5), () async {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => LoginPageUI()));

      // if (globalSharePrefs!.getBool(LoginStatus) ) {
      //   Navigator.pushReplacement(
      //       context, MaterialPageRoute(builder: (context) => DashBoardUI()));
      // } else {
      //   Navigator.pushReplacement(
      //       context, MaterialPageRoute(builder: (context) => WelcomePageUI()));
      // }
    });
  }

// _loadDefault() async {
//    final directory = await getApplicationSupportDirectory();
//    List externalDirectory = await getExternalStorageDirectories();
//    await new Directory(directory.path)
//        .create(recursive: true)
//        .then((Directory newdir) {
//      // if error in directory creation
//    });
//     await FetchJSON();
//   }

// FetchJSON() async {
//   try {
//     final directory = await getExternalStorageDirectory();
//     var Response = await http.get(
//       apiUrl,
//       headers: {"Accept": "application/json"},
//     ).timeout(const Duration(seconds: 10));
//     if (Response.statusCode == 200) {
//       String responseBody = Response.body;
//       var responseJSON = json.decode(responseBody);
//       String _filename = directory.path + '/images.json';
//       File imgFile = new File(_filename);
//       imgFile.writeAsString(responseBody);
//     }
//   } catch (err) {
//     print(err);
//   }
//   setState(() {
//     loadingHome = false;
//   });
//   return true;
// }true
}
