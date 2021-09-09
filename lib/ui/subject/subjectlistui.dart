import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled1/ui/subjectdetail/subject.dart';

class SubjectListUI extends StatefulWidget {
  @override
  _SubjectListUIState createState() => _SubjectListUIState();
}

class _SubjectListUIState extends State<SubjectListUI> {
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
              'Subjects',
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
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Center(
                  child: Text(
                    'Select your subject to download Papers',
                    style: Theme.of(context).textTheme.subtitle2!.copyWith(
                        color: Color(0XFF000000), fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 16,
            ),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: () {
                          setState(() {
                            Navigator.push(
                                context,
                                new MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        SubjectUI()));
                          });
                        },
                        child: Container(
                          padding: EdgeInsets.all(16),
                          height: 110,
                          width: 150,
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
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        padding: EdgeInsets.all(14),
                        height: 110,
                        width: 150,
                        //color: Colors.blue,
                        decoration: BoxDecoration(
                            color: Color(0XFF6B5EEB),
                            borderRadius:
                                BorderRadius.all(Radius.circular(16))),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                                'Business Law &\nBusiness\nCorrespondence\n&reporting',
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
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 110,
                        width: 150,
                        //color: Colors.blue,
                        decoration: BoxDecoration(
                            color: Color(0XFF6B5EEB),
                            borderRadius:
                                BorderRadius.all(Radius.circular(16))),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text('Business',
                                textAlign: TextAlign.start,
                                style: Theme.of(context)
                                    .textTheme
                                    .subtitle1!
                                    .copyWith(color: Colors.white)),
                            Text('Mathematics',
                                textAlign: TextAlign.start,
                                style: Theme.of(context)
                                    .textTheme
                                    .subtitle1!
                                    .copyWith(color: Colors.white)),
                            Text('Logical Reasoning',
                                textAlign: TextAlign.start,
                                style: Theme.of(context)
                                    .textTheme
                                    .subtitle1!
                                    .copyWith(color: Colors.white)),
                            Text('&statistics',
                                textAlign: TextAlign.start,
                                style: Theme.of(context)
                                    .textTheme
                                    .subtitle1!
                                    .copyWith(color: Colors.white)),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        height: 110,
                        width: 150,
                        //color: Colors.blue,
                        decoration: BoxDecoration(
                            color: Color(0XFF6B5EEB),
                            borderRadius:
                                BorderRadius.all(Radius.circular(16))),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text('Business ',
                                style: Theme.of(context)
                                    .textTheme
                                    .subtitle1!
                                    .copyWith(color: Colors.white)),
                            Text('Economics &',
                                style: Theme.of(context)
                                    .textTheme
                                    .subtitle1!
                                    .copyWith(color: Colors.white)),
                            Text('Business &',
                                style: Theme.of(context)
                                    .textTheme
                                    .subtitle1!
                                    .copyWith(color: Colors.white)),
                            Text('Commercial',
                                style: Theme.of(context)
                                    .textTheme
                                    .subtitle1!
                                    .copyWith(color: Colors.white)),
                            Text('Knowledge',
                                style: Theme.of(context)
                                    .textTheme
                                    .subtitle1!
                                    .copyWith(color: Colors.white)),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 110,
                        width: 150,
                        //color: Colors.blue,
                        decoration: BoxDecoration(
                            color: Color(0XFF6B5EEB),
                            borderRadius:
                                BorderRadius.all(Radius.circular(16))),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text('Advanced \nAccounting',
                                style: Theme.of(context)
                                    .textTheme
                                    .subtitle1!
                                    .copyWith(color: Colors.white)),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        height: 110,
                        width: 150,
                        //color: Colors.blue,
                        decoration: BoxDecoration(
                            color: Color(0XFF6B5EEB),
                            borderRadius:
                                BorderRadius.all(Radius.circular(16))),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text('Business Laws,',
                                style: Theme.of(context)
                                    .textTheme
                                    .subtitle1!
                                    .copyWith(color: Colors.white)),
                            Text('Ethics',
                                style: Theme.of(context)
                                    .textTheme
                                    .subtitle1!
                                    .copyWith(color: Colors.white)),
                            Text('Communication',
                                style: Theme.of(context)
                                    .textTheme
                                    .subtitle1!
                                    .copyWith(color: Colors.white)),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        padding: EdgeInsets.all(16),
                        height: 110,
                        width: 150,
                        //color: Colors.blue,
                        decoration: BoxDecoration(
                            color: Color(0XFF6B5EEB),
                            borderRadius:
                                BorderRadius.all(Radius.circular(16))),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text('Auditing & \nAssurance',
                                style: Theme.of(context)
                                    .textTheme
                                    .subtitle1!
                                    .copyWith(color: Colors.white)),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        padding: EdgeInsets.all(16),
                        height: 110,
                        width: 150,
                        //color: Colors.blue,
                        decoration: BoxDecoration(
                            color: Color(0XFF6B5EEB),
                            borderRadius:
                                BorderRadius.all(Radius.circular(16))),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text('Direct Tax ',
                                style: Theme.of(context)
                                    .textTheme
                                    .subtitle1!
                                    .copyWith(color: Colors.white)),
                            Text('Laws and',
                                style: Theme.of(context)
                                    .textTheme
                                    .subtitle1!
                                    .copyWith(color: Colors.white)),
                            Text('International ',
                                style: Theme.of(context)
                                    .textTheme
                                    .subtitle1!
                                    .copyWith(color: Colors.white)),
                            Text('Taxation',
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
            )
          ],
        ),
      ),
    ));
  }
}
