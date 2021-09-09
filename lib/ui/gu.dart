import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UploadAnswerSheetUI extends StatefulWidget {
  @override
  _UploadAnswerSheetUIState createState() => _UploadAnswerSheetUIState();
}

class _UploadAnswerSheetUIState extends State<UploadAnswerSheetUI> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: Colors.white,
            appBar: AppBar(
              elevation: 0,
              backgroundColor: Colors.white,
              title: Row(
                children: [
                  SizedBox(
                    width: 55,
                  ),
                  Text(
                    'Upload Answer Sheets',
                    style: Theme.of(context).textTheme.subtitle1!.copyWith(
                        color: Color(0XFF000000), fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              leading: Icon(
                Icons.arrow_back,
                color: Color(0XFF000000),
                size: 32,
              ),
            ),
            body: Container(
                padding: EdgeInsets.all(14),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Center(
                          child: Text(
                            'Upload your Own Answer Sheets',
                            style: Theme.of(context)
                                .textTheme
                                .subtitle2!
                                .copyWith(
                                color: Color(0XFF000000),
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 14,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 60,
                          height: 60,
                          //color: Colors.white,
                          decoration: BoxDecoration(
                              border: Border.all(
                                color: Color(0XFF000000),
                              ),
                              borderRadius:
                              BorderRadius.all(Radius.circular(5))),
                          child: Center(
                            child: Image.asset(
                              "assets/images/6.png",
                              height: 40,
                              width: 40,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Center(
                              child: Text('Test 1',
                                  style: Theme.of(context)
                                      .textTheme
                                      .subtitle1!
                                      .copyWith(color: Color(0XFF000000))),
                            ),
                          ],
                        ),
                        new Spacer(),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            Image.asset(
                              "assets/images/10.png",
                              height: 30,
                              width: 30,
                              color: Color(0XFF000000),
                            ),
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 60,
                          height: 60,
                          //color: Colors.white,
                          decoration: BoxDecoration(
                              border: Border.all(
                                color: Color(0XFF000000),
                              ),
                              borderRadius:
                              BorderRadius.all(Radius.circular(5))),
                          child: Center(
                            child: Image.asset(
                              "assets/images/6.png",
                              height: 40,
                              width: 40,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Test 2',
                                style: Theme.of(context)
                                    .textTheme
                                    .subtitle1!
                                    .copyWith(color: Color(0XFF000000))),
                          ],
                        ),
                        new Spacer(),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            Image.asset(
                              "assets/images/10.png",
                              height: 30,
                              width: 30,
                              color: Color(0XFF000000),
                            ),
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 60,
                          height: 60,
                          //color: Colors.white,
                          decoration: BoxDecoration(
                              border: Border.all(
                                color: Color(0XFF000000),
                              ),
                              borderRadius:
                              BorderRadius.all(Radius.circular(5))),
                          child: Center(
                            child: Image.asset(
                              "assets/images/6.png",
                              height: 40,
                              width: 40,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Test 3',
                                style: Theme.of(context)
                                    .textTheme
                                    .subtitle1!
                                    .copyWith(color: Color(0XFF000000))),
                          ],
                        ),
                        new Spacer(),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            Image.asset(
                              "assets/images/10.png",
                              height: 30,
                              width: 30,
                              color: Color(0XFF000000),
                            ),
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 60,
                          height: 60,
                          //color: Colors.white,
                          decoration: BoxDecoration(
                              border: Border.all(
                                color: Color(0XFF000000),
                              ),
                              borderRadius:
                              BorderRadius.all(Radius.circular(5))),
                          child: Center(
                            child: Image.asset(
                              "assets/images/6.png",
                              height: 40,
                              width: 40,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Test 4',
                                style: Theme.of(context)
                                    .textTheme
                                    .subtitle1!
                                    .copyWith(color: Color(0XFF000000))),
                          ],
                        ),
                        new Spacer(),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            Image.asset(
                              "assets/images/10.png",
                              height: 30,
                              width: 30,
                              color: Color(0XFF000000),
                            ),
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 60,
                          height: 60,
                          //color: Colors.white,
                          decoration: BoxDecoration(
                              border: Border.all(
                                color: Color(0XFF000000),
                              ),
                              borderRadius:
                              BorderRadius.all(Radius.circular(5))),
                          child: Center(
                            child: Image.asset(
                              "assets/images/6.png",
                              height: 40,
                              width: 40,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Test 5',
                                style: Theme.of(context)
                                    .textTheme
                                    .subtitle1!
                                    .copyWith(color: Color(0XFF000000))),
                          ],
                        ),
                        new Spacer(),
                        Row(
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SizedBox(
                                  height: 10,
                                ),
                                Image.asset(
                                  "assets/images/10.png",
                                  height: 30,
                                  width: 30,
                                  color: Color(0XFF000000),
                                ),
                              ],
                            ),
                            Icon(Icons.delete,size: 30,color: Colors.red,)
                          ],
                        )
                      ],
                    ),
                  ],
                ))));
  }
}
