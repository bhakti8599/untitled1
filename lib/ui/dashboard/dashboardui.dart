import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled1/ui/account/accountui.dart';
import 'package:untitled1/ui/subject/subjectlistui.dart';
import 'package:untitled1/ui/subjectdetail/subject.dart';

final List<String> imgList = ['assets/images/4.png', 'assets/images/4.png'];

class DashBoardUI extends StatefulWidget {
  @override
  _DashBoardUIState createState() => _DashBoardUIState();
}

class _DashBoardUIState extends State<DashBoardUI> {
  @override
  void initState() {
    super.initState();
  }

  int _current = 0;
  final CarouselController _controller = CarouselController();

  final List<Widget> imageSliders = imgList
      .map((item) => Container(
            child: Container(
              margin: EdgeInsets.all(5.0),
              child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(5.0)),
                  child: Stack(
                    children: <Widget>[
                      Image.asset(item, fit: BoxFit.cover, width: 1000.0),
                      Positioned(
                        bottom: 0.0,
                        left: 0.0,
                        right: 0.0,
                        child: Container(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                Color.fromARGB(200, 0, 0, 0),
                                Color.fromARGB(0, 0, 0, 0)
                              ],
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter,
                            ),
                          ),
                          padding: EdgeInsets.symmetric(
                              vertical: 10.0, horizontal: 20.0),
                        ),
                      ),
                    ],
                  )),
            ),
          ))
      .toList();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          actions: [
            Row(
              children: [
                Image.asset(
                  "assets/images/notification.png",
                  width: 30,
                  height: 30,
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      Navigator.push(
                          context,
                          new MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  AccountPageUI()));
                    });
                  },
                  child: Image.asset(
                    "assets/images/usericon.png",
                    width: 30,
                    height: 30,
                  ),
                ),
              ],
            ),
            SizedBox(
              width: 10,
            )
          ],
          leading: Builder(
            builder: (BuildContext context) {
              return SizedBox(
                width: 300,
                height: 150,
                child: Container(

                  child: Image.asset(
                    "assets/images/mkaeuca_dashboardlogo_light.png",


                    //fit: BoxFit.fill,
                  ),
                ),
              );
            },
          ),
        ),
        body: Container(
            // padding: EdgeInsets.all(16),
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: Image.asset("assets/images/dash.png"),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(16, 5, 0, 5),
                  child: Text('ANALYTICS',
                      textAlign: TextAlign.start,
                      style: Theme.of(context).textTheme.subtitle1!.copyWith(
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF000000))),
                ),
                Container(
                    padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 5,
                        ),
                        Container(
                          padding: EdgeInsets.all(16),
                          height: 90,
                          width: 105,
                          //color: Colors.blue,
                          decoration: BoxDecoration(
                              color: Color(0XFF6B5EEB),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(16))),
                          child: Center(
                            child: Column(
                              children: [
                                Text('Total ',
                                    textAlign: TextAlign.start,
                                    style: Theme.of(context)
                                        .textTheme
                                        .subtitle2!
                                        .copyWith(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white)),
                                Text('Papers ',
                                    textAlign: TextAlign.start,
                                    style: Theme.of(context)
                                        .textTheme
                                        .subtitle2!
                                        .copyWith(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white)),
                                new Spacer(),
                                Text('100 ',
                                    textAlign: TextAlign.start,
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline6!
                                        .copyWith(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white)),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 11,
                        ),
                        Container(
                          padding: EdgeInsets.all(14),
                          height: 90,
                          width: 105,
                          //color: Colors.blue,
                          decoration: BoxDecoration(
                              color: Color(0XFFFEA94E),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(16))),
                          child: Center(
                            child: Column(
                              children: [
                                Text('Submitted ',
                                    textAlign: TextAlign.start,
                                    style: Theme.of(context)
                                        .textTheme
                                        .subtitle2!
                                        .copyWith(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white)),
                                Text('Papers',
                                    textAlign: TextAlign.start,
                                    style: Theme.of(context)
                                        .textTheme
                                        .subtitle2!
                                        .copyWith(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white)),
                                new Spacer(),
                                Text('100 ',
                                    textAlign: TextAlign.start,
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline6!
                                        .copyWith(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white)),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 11,
                        ),
                        Container(
                          padding: EdgeInsets.all(16),
                          height: 90,
                          width: 105,
                          //color: Colors.blue,
                          decoration: BoxDecoration(
                              color: Color(0XFFEF6C6D),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(16))),
                          child: Center(
                            child: Column(
                              children: [
                                Text('Pending',
                                    textAlign: TextAlign.start,
                                    style: Theme.of(context)
                                        .textTheme
                                        .subtitle2!
                                        .copyWith(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white)),
                                Text('Papers',
                                    textAlign: TextAlign.start,
                                    style: Theme.of(context)
                                        .textTheme
                                        .subtitle2!
                                        .copyWith(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white)),
                                new Spacer(),
                                Text('100 ',
                                    textAlign: TextAlign.start,
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline6!
                                        .copyWith(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white)),
                              ],
                            ),
                          ),
                        ),
                      ],
                    )),
                Container(
                  padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(8, 0, 0, 0),
                            child: Text('SUBJECTS',
                                textAlign: TextAlign.start,
                                style: Theme.of(context)
                                    .textTheme
                                    .subtitle1!
                                    .copyWith(
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xFF000000))),
                          ),
                          new Spacer(),
                          TextButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    new MaterialPageRoute(
                                        builder: (BuildContext context) =>
                                            SubjectListUI()));
                              },
                              child: Text(
                                'See all',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText1!
                                    .copyWith(
                                        // fontWeight: FontWeight.bold,
                                        // decoration:
                                        //TextDecoration.underline,
                                        color: Color(0xFF616161)),
                              )),
                        ],
                      ),
                      //ListView.builder(itemBuilder: itemBuilder),
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
                                    height: 105,
                                    width: 150,
                                    //color: Colors.blue,
                                    decoration: BoxDecoration(
                                        color: Color(0XFF6B5EEB),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(16))),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Text(
                                            'Principles &\nPractices of\nAccounting',
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
                                  height: 105,
                                  width: 150,
                                  //color: Colors.blue,
                                  decoration: BoxDecoration(
                                      color: Color(0XFF6B5EEB),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(16))),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
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
                                  height: 105,
                                  width: 150,
                                  //color: Colors.blue,
                                  decoration: BoxDecoration(
                                      color: Color(0XFF6B5EEB),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(16))),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
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
                                  height: 105,
                                  width: 150,
                                  //color: Colors.blue,
                                  decoration: BoxDecoration(
                                      color: Color(0XFF6B5EEB),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(16))),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
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
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
