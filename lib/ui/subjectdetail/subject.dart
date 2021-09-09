import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled1/ui/answersheet/answersheet.dart';
import 'package:untitled1/ui/downloadpaper/downloadpaper.dart';
import 'package:untitled1/ui/uploadanswersheet/uploadanswersheet.dart';

class SubjectUI extends StatefulWidget {
  @override
  _SubjectUIState createState() => _SubjectUIState();
}

class _SubjectUIState extends State<SubjectUI> {
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
                    'Subject',
                    style: Theme.of(context).textTheme.subtitle1!.copyWith(
                        color: Color(0XFF000000), fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              leading: InkWell(
                onTap: (){
                  setState(() {
                    Navigator.pop(context);
                  });
                },
                child: Icon(
                  Icons.arrow_back,
                  color: Color(0XFF000000),
                  size: 32,
                ),
              ),
            ),
            body: Container(
                padding: EdgeInsets.all(14),
                child: Column(children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Center(
                        child: Text(
                          'Principles & Practices of Accounting',
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
                  Container(
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              padding: EdgeInsets.all(16),
                              height: 120,
                              width: 120,
                              //color: Colors.blue,
                              decoration: BoxDecoration(
                                  color: Color(0XFF6B5EEB),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(16))),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text('Principles &\nPractices of\nAccounting',
                                      textAlign: TextAlign.start,
                                      style: Theme.of(context)
                                          .textTheme
                                          .subtitle1!
                                          .copyWith(color: Colors.white)),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Column(
                    children: [
                      Text('Accounting principles are the general',
                          style: Theme.of(context)
                              .textTheme
                              .subtitle1!
                              .copyWith(color: Color(0XFF616161))),
                      Text('rules and guidelines that companies are',
                          style: Theme.of(context)
                              .textTheme
                              .subtitle1!
                              .copyWith(color: Color(0XFF616161))),
                      Text('required to follow when reporting all',
                          style: Theme.of(context)
                              .textTheme
                              .subtitle1!
                              .copyWith(color: Color(0XFF616161))),
                      Text('accounts and financial data ',
                          style: Theme.of(context)
                              .textTheme
                              .subtitle1!
                              .copyWith(color: Color(0XFF616161))),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(30, 10, 0, 0),
                    child: Column(
                      children: [
                        InkWell(
                          onTap: () {
                            setState(() {
                              Navigator.push(
                                  context,
                                  new MaterialPageRoute(
                                      builder: (BuildContext context) =>
                                          DownloadPaperUI()));
                            });
                          },
                          child: Container(
                            child: Row(
                              children: [
                                Container(
                                  width: 70,
                                  height: 70,
                                  //color: Colors.white,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                        color: Color(0XFFE2E2E2),
                                      ),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(16))),
                                  child: Center(
                                    child: Image.asset(
                                      "assets/images/7.png",
                                      height: 50,
                                      width: 50,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                Text('Download Question paper',
                                    textAlign: TextAlign.center,
                                    style: Theme.of(context)
                                        .textTheme
                                        .subtitle2!
                                        .copyWith(
                                            fontWeight: FontWeight.bold,
                                            color: Color(0XFF000000))),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              Navigator.push(
                                  context,
                                  new MaterialPageRoute(
                                      builder: (BuildContext context) =>
                                          AnswerSheetUI()));
                            });
                          },
                          child: Container(
                            child: Row(
                              children: [
                                Container(
                                  width: 70,
                                  height: 70,
//color: Colors.white,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                        color: Color(0XFFE2E2E2),
                                      ),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(16))),
                                  child: Center(
                                    child: Image.asset(
                                      "assets/images/5.png",
                                      height: 50,
                                      width: 50,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                Text('Download Answer Sheet',
                                    textAlign: TextAlign.center,
                                    style: Theme.of(context)
                                        .textTheme
                                        .subtitle2!
                                        .copyWith(
                                            fontWeight: FontWeight.bold,
                                            color: Color(0XFF000000))),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              Navigator.push(
                                  context,
                                  new MaterialPageRoute(
                                      builder: (BuildContext context) =>
                                          UploadAnswerSheetUI()));
                            });
                          },
                          child: Container(
                            child: Row(
                              children: [
                                Container(
                                  width: 70,
                                  height: 70,
//color: Colors.white,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                        color: Color(0XFFE2E2E2),
                                      ),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(16))),
                                  child: Center(
                                    child: Image.asset(
                                      "assets/images/6.png",
                                      height: 50,
                                      width: 50,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                Text('Upload Your Answer Sheet',
                                    textAlign: TextAlign.center,
                                    style: Theme.of(context)
                                        .textTheme
                                        .subtitle2!
                                        .copyWith(
                                            fontWeight: FontWeight.bold,
                                            color: Color(0XFF000000))),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ]))));
  }
}
