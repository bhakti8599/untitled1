import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SettingsUI extends StatefulWidget {
  @override
  _SettingsUIState createState() => _SettingsUIState();
}

class _SettingsUIState extends State<SettingsUI> {
  bool _on = true;

  void switchOff(bool val) {
    setState(() {
      _on = val;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Account',
          textAlign: TextAlign.start,
          style: Theme.of(context).textTheme.headline6!.copyWith(
              decoration: TextDecoration.none,
              color: Color(0XFF000000),
              fontWeight: FontWeight.bold),
        ),
        leading: Image.asset(
          "assets/images/back.png",
          width: 20,
          height: 20,
        ),
        actions: [
          TextButton(
              onPressed: () {},
              child: Text(
                'Log Out',
                style: Theme.of(context).textTheme.subtitle1!.copyWith(
                      decoration: TextDecoration.none,
                      color: Colors.red,
                    ),
              ))
        ],
      ),
      body: Container(
        //padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              color: Color(0xFF065479),
              height: 100,
              padding: EdgeInsets.all(16),
              // width: 150,
              child: Row(
                children: [
                  Image.asset(
                    "assets/images/user_icon.png",
                    height: 70,
                    width: 70,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      new Spacer(),
                      Text(
                        'Atherv Nagarkar',
                        style: Theme.of(context).textTheme.headline6!.copyWith(
                              decoration: TextDecoration.none,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset("assets/images/8.png"),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            'Duluxe Member',
                            style:
                                Theme.of(context).textTheme.subtitle2!.copyWith(
                                      decoration: TextDecoration.none,
                                      color: Colors.white,
                                    ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 162,
                          ),
                          Image.asset(
                            "assets/images/crown_light.png",
                            height: 20,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            'Upgrade',
                            style: Theme.of(context)
                                .textTheme
                                .caption!
                                .copyWith(
                                    decoration: TextDecoration.none,
                                    color: Colors.white,
                                    fontSize: 15),
                          ),
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
            Container(
                padding: EdgeInsets.all(25),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Settings',
                      style: Theme.of(context).textTheme.headline6!.copyWith(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Container(
                          height: 30,
                          width: 30,
                          child: Center(
                            child: Image.asset(
                              "assets/images/bell.png",
                              height: 20,
                              width: 20,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Text(
                          'Notification',
                          style:
                              Theme.of(context).textTheme.subtitle1!.copyWith(
                                    decoration: TextDecoration.none,
                                    color: Color(0XFF000000),
                                  ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Container(
                          height: 30,
                          width: 30,
                          child: Center(
                            child: Image.asset(
                              "assets/images/darkmode.png",
                              height: 20,
                              width: 20,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Text(
                          'Dark Mode',
                          style:
                              Theme.of(context).textTheme.subtitle1!.copyWith(
                                    decoration: TextDecoration.none,
                                    color: Color(0XFF000000),
                                  ),
                        ),
                        new Spacer(),
                        Switch(
                          inactiveTrackColor: Colors.black,
                          activeColor: Colors.red,
                          value: _on,
                          onChanged: switchOff,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Container(
                          height: 30,
                          width: 30,
                          child: Center(
                            child: Image.asset(
                              "assets/images/faq.png",
                              height: 20,
                              width: 20,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Text(
                          'FAQ',
                          style: Theme.of(context)
                              .textTheme
                              .subtitle1!
                              .copyWith(
                                  decoration: TextDecoration.none,
                                  color: Color(0XFF000000)),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Container(
                          height: 30,
                          width: 30,
                          child: Center(
                            child: Image.asset(
                              "assets/images/star.png",
                              height: 20,
                              width: 20,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Text(
                          'Rate Us',
                          style: Theme.of(context)
                              .textTheme
                              .subtitle1!
                              .copyWith(
                                  decoration: TextDecoration.none,
                                  color: Color(0XFF000000)),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Container(
                          height: 30,
                          width: 30,
                          child: Center(
                            child: Image.asset(
                              "assets/images/privacy.png",
                              height: 25,
                              width: 25,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Text(
                          'Privacy Policy',
                          style:
                              Theme.of(context).textTheme.subtitle1!.copyWith(
                                    decoration: TextDecoration.none,
                                    color: Color(0XFF000000),
                                  ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Container(
                          height: 30,
                          width: 30,
                          child: Row(
                            children: [
                              Image.asset(
                                "assets/images/support.png",
                                height: 25,
                                width: 25,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Text(
                          'Support',
                          style:
                              Theme.of(context).textTheme.subtitle1!.copyWith(
                                    decoration: TextDecoration.none,
                                    color: Color(0XFF000000),
                                  ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Container(
                          height: 30,
                          width: 30,
                          child: Center(
                            child: Image.asset(
                              "assets/images/t&c.png",
                              height: 25,
                              width: 25,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Text(
                          'Terms & Conditions',
                          style:
                              Theme.of(context).textTheme.subtitle1!.copyWith(
                                    decoration: TextDecoration.none,
                                    color: Color(0XFF000000),
                                  ),
                        ),
                      ],
                    ),
                  ],
                )),
            new Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'About Us',
                  style: Theme.of(context).textTheme.headline4!.copyWith(
                      decoration: TextDecoration.none,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
              ],
            ),
            SizedBox(
              height: 5,
            )
          ],
        ),
      ),
    ));
  }
}
