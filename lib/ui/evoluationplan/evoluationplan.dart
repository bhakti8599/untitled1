import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled1/ui/dashboard/dashboardui.dart';
import 'package:untitled1/ui/loginpage/loginpageui.dart';


class EvoluationPlanPageUI extends StatefulWidget {
  @override
  _EvoluationPlanPageUIState createState() => _EvoluationPlanPageUIState();
}

class _EvoluationPlanPageUIState extends State<EvoluationPlanPageUI> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                Color(0XFF616161),
                Color(0XFF000000),
              ])),
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.,
                children: [
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      InkWell(
                        onTap: (){
                          setState(() {
                            Navigator.push(
                                context,
                                new MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        LoginPageUI()));
                          });
                        },
                        child: Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                          size: 32,
                        ),
                      ),
                      SizedBox(
                        width: 55,
                      ),
                      Center(
                        child: Text(
                          'Evaluation Plans',
                          style: Theme.of(context)
                              .textTheme
                              .headline6!
                              .copyWith(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 15,),
                  Container(
                    child: Image.asset(
                      "assets/images/certi.png",
                      height: 130,
                      width: 200,
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Center(
                    child: Text(
                      'PLATINUM',
                      style: Theme.of(context).textTheme.headline5!.copyWith(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(30.0, 10.0, 0.0, 0.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                                child: Image.asset(
                              "assets/images/correct.png",
                              height: 20,
                              width: 20,
                            )),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'w2w(Word to word) analysis report',
                              style: Theme.of(context)
                                  .textTheme
                                  .subtitle1!
                                  .copyWith(
                                    color: Colors.white,
                                  ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 14,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                                child: Image.asset(
                              "assets/images/correct.png",
                              height: 20,
                              width: 20,
                            )),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'lcai evaluation',
                              style: Theme.of(context)
                                  .textTheme
                                  .subtitle1!
                                  .copyWith(
                                    color: Colors.white,
                                  ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 14,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                                child: Image.asset(
                              "assets/images/correct.png",
                              height: 20,
                              width: 20,
                            )),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Graphs for chapter wise analysis and\n improvement',
                              style: Theme.of(context)
                                  .textTheme
                                  .subtitle1!
                                  .copyWith(
                                    color: Colors.white,
                                  ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 14,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                                child: Image.asset(
                              "assets/images/correct.png",
                              height: 20,
                              width: 20,
                            )),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Question Paper',
                              style: Theme.of(context)
                                  .textTheme
                                  .subtitle1!
                                  .copyWith(
                                    color: Colors.white,
                                  ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 14,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                                child: Image.asset(
                              "assets/images/correct.png",
                              height: 20,
                              width: 20,
                            )),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Suggested answer',
                              style: Theme.of(context)
                                  .textTheme
                                  .subtitle1!
                                  .copyWith(
                                    color: Colors.white,
                                  ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 14,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                                child: Image.asset(
                              "assets/images/correct.png",
                              height: 20,
                              width: 20,
                            )),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Detail Evaluation in just 48 working',
                              style: Theme.of(context)
                                  .textTheme
                                  .subtitle1!
                                  .copyWith(
                                    color: Colors.white,
                                  ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 14,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                                child: Image.asset(
                              "assets/images/correct.png",
                              height: 20,
                              width: 20,
                            )),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'First call query resolution',
                              style: Theme.of(context)
                                  .textTheme
                                  .subtitle1!
                                  .copyWith(
                                    color: Colors.white,
                                  ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 14,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                                child: Image.asset(
                              "assets/images/cancel.png",
                              height: 20,
                              width: 20,
                            )),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Student will be getting 30min session\nfrom that subject expert chartered\naccounant who have check our paper',
                              style: Theme.of(context)
                                  .textTheme
                                  .subtitle1!
                                  .copyWith(
                                    color: Colors.white,
                                  ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Color(0xFF065479)),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(40))))),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => DashBoardUI()));
                      },
                      child: Container(
                          // color: Color(0xFF6B4668),
                          width: MediaQuery.of(context).size.width / 3,
                          padding: EdgeInsets.all(14),
                          child: Center(
                            child: Text('Enquire Now',
                                style: Theme.of(context)
                                    .textTheme
                                    .subtitle1!
                                    .copyWith(
                                      color: Colors.white,
                                    )),
                          ))),
                  SizedBox(
                    height: 10,
                  )
                ],
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [Color(0XFF616161), Color(0XFF000000)])),
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.,
                children: [
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      InkWell(
                        onTap: (){
                          setState(() {
                            Navigator.push(
                                context,
                                new MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        LoginPageUI()));
                          });
                        },
                        child: Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                          size: 32,
                        ),
                      ),
                      SizedBox(
                        width: 55,
                      ),
                      Center(
                        child: Text(
                          'Evaluation Plans',
                          style: Theme.of(context)
                              .textTheme
                              .headline6!
                              .copyWith(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 15,),
                  Container(
                    child: Image.asset(
                      "assets/images/plus-svgrepo-com.png",
                      height: 130,
                      width: 200,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Center(
                    child: Text(
                      'PLATINUM PLUS',
                      style: Theme.of(context).textTheme.headline5!.copyWith(
                            color: Colors.white,
                          ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(30.0, 10.0, 0.0, 0.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                                height: 20,
                                width: 20,
                                child: Image.asset(
                                  "assets/images/correct.png",
                                  height: 20,
                                  width: 20,
                                )),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'w2w(Word to word) analysis report',
                              style: Theme.of(context)
                                  .textTheme
                                  .subtitle1!
                                  .copyWith(
                                    color: Colors.white,
                                  ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 14,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              child: Image.asset(
                                "assets/images/correct.png",
                                height: 20,
                                width: 20,
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'lcai evaluation',
                              style: Theme.of(context)
                                  .textTheme
                                  .subtitle1!
                                  .copyWith(
                                    color: Colors.white,
                                  ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 14,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                                child: Image.asset(
                              "assets/images/correct.png",
                              height: 20,
                              width: 20,
                            )),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Graphs for chapter wise analysis and\n improvement',
                              style: Theme.of(context)
                                  .textTheme
                                  .subtitle1!
                                  .copyWith(
                                    color: Colors.white,
                                  ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 14,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                                child: Image.asset(
                              "assets/images/correct.png",
                              height: 20,
                              width: 20,
                            )),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Question Paper',
                              style: Theme.of(context)
                                  .textTheme
                                  .subtitle1!
                                  .copyWith(
                                    color: Colors.white,
                                  ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 14,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                                child: Image.asset(
                              "assets/images/correct.png",
                              height: 20,
                              width: 20,
                            )),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Suggested answer',
                              style: Theme.of(context)
                                  .textTheme
                                  .subtitle1!
                                  .copyWith(
                                    color: Colors.white,
                                  ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 14,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                                child: Image.asset(
                              "assets/images/correct.png",
                              height: 20,
                              width: 20,
                            )),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Detail Evaluation in just 48 working',
                              style: Theme.of(context)
                                  .textTheme
                                  .subtitle1!
                                  .copyWith(
                                    color: Colors.white,
                                  ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 14,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                                child: Image.asset(
                              "assets/images/correct.png",
                              height: 20,
                              width: 20,
                            )),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'First call query resolution',
                              style: Theme.of(context)
                                  .textTheme
                                  .subtitle1!
                                  .copyWith(
                                    color: Colors.white,
                                  ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 14,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                                child: Image.asset(
                              "assets/images/correct.png",
                              height: 20,
                              width: 20,
                            )),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Student will be getting 30min session\nfrom that subject expert chartered\naccounant who have check our paper',
                              style: Theme.of(context)
                                  .textTheme
                                  .subtitle1!
                                  .copyWith(
                                    color: Colors.white,
                                  ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Color(0xFF065479)),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(40))))),
                      onPressed: () {},
                      child: Container(
                          // color: Color(0xFF6B4668),
                          width: MediaQuery.of(context).size.width / 3,
                          padding: EdgeInsets.all(14),
                          child: Center(
                            child: Text('Enquire Now',
                                style: Theme.of(context)
                                    .textTheme
                                    .subtitle1!
                                    .copyWith(
                                      color: Colors.white,
                                    )),
                          ))),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                Color(0XFF616161),
                Color(0XFF000000),
              ])),
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.,
                children: [
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      InkWell(
                        onTap: (){
                          setState(() {
                            Navigator.push(
                                context,
                                new MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        LoginPageUI()));
                          });
                        },
                        child: Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                          size: 32,
                        ),
                      ),
                      SizedBox(
                        width: 55,
                      ),
                      Center(
                        child: Text(
                          'Evaluation Plans',
                          style: Theme.of(context)
                              .textTheme
                              .headline6!
                              .copyWith(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 15,),
                  Container(
                    child: Image.asset(
                      "assets/images/Gold pot.png",
                      height: 130,
                      width: 200,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Center(
                    child: Text(
                      'GOLD',
                      style: Theme.of(context).textTheme.headline5!.copyWith(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(30.0, 10.0, 0.0, 0.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                                child: Image.asset(
                              "assets/images/correct.png",
                              height: 20,
                              width: 20,
                            )),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'First call query resolution',
                              style: Theme.of(context)
                                  .textTheme
                                  .subtitle1!
                                  .copyWith(
                                    color: Colors.white,
                                  ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 14,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                                child: Image.asset(
                              "assets/images/correct.png",
                              height: 20,
                              width: 20,
                            )),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'lcai evaluation',
                              style: Theme.of(context)
                                  .textTheme
                                  .subtitle1!
                                  .copyWith(
                                    color: Colors.white,
                                  ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 14,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                                child: Image.asset(
                              "assets/images/correct.png",
                              height: 20,
                              width: 20,
                            )),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Graphs for chapter wise analysis and\n improvement',
                              style: Theme.of(context)
                                  .textTheme
                                  .subtitle1!
                                  .copyWith(
                                    color: Colors.white,
                                  ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 14,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                                child: Image.asset(
                              "assets/images/correct.png",
                              height: 20,
                              width: 20,
                            )),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Question Paper',
                              style: Theme.of(context)
                                  .textTheme
                                  .subtitle1!
                                  .copyWith(
                                    color: Colors.white,
                                  ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 14,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                                child: Image.asset(
                              "assets/images/correct.png",
                              height: 20,
                              width: 20,
                            )),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Suggested answer',
                              style: Theme.of(context)
                                  .textTheme
                                  .subtitle1!
                                  .copyWith(
                                    color: Colors.white,
                                  ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 14,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                                child: Image.asset(
                              "assets/images/correct.png",
                              height: 20,
                              width: 20,
                            )),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Detail Evaluation in just 48 working',
                              style: Theme.of(context)
                                  .textTheme
                                  .subtitle1!
                                  .copyWith(
                                    color: Colors.white,
                                  ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 14,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                                child: Image.asset(
                              "assets/images/cancel.png",
                              height: 20,
                              width: 20,
                            )),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'w2w(Word to word) analysis report',
                              style: Theme.of(context)
                                  .textTheme
                                  .subtitle1!
                                  .copyWith(
                                    color: Colors.white,
                                  ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 14,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                                child: Image.asset(
                              "assets/images/cancel.png",
                              height: 20,
                              width: 20,
                            )),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Student will be getting 30min session\nfrom that subject expert chartered\naccounant who have check our paper',
                              style: Theme.of(context)
                                  .textTheme
                                  .subtitle1!
                                  .copyWith(
                                    color: Colors.white,
                                  ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Color(0xFF065479)),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(40))))),
                      onPressed: () {},
                      child: Container(
                          // color: Color(0xFF6B4668),
                          width: MediaQuery.of(context).size.width / 3,
                          padding: EdgeInsets.all(14),
                          child: Center(
                            child: Text('Enquire Now',
                                style: Theme.of(context)
                                    .textTheme
                                    .subtitle1!
                                    .copyWith(
                                      color: Colors.white,
                                    )),
                          ))),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                Color(0XFF616161),
                Color(0XFF000000),
              ])),
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.,
                children: [
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      InkWell(
                        onTap: (){
                          setState(() {
                            Navigator.push(
                                context,
                                new MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        LoginPageUI()));
                          });
                        },
                        child: Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                          size: 32,
                        ),
                      ),
                      SizedBox(
                        width: 55,
                      ),
                      Center(
                        child: Text(
                          'Evaluation Plans',
                          style: Theme.of(context)
                              .textTheme
                              .headline6!
                              .copyWith(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 15,),
                  Container(
                    child: Image.asset(
                      "assets/images/Gold pot plus.png",
                      height: 130,
                      width: 200,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Center(
                    child: Text(
                      'GOLD PLUS',
                      style: Theme.of(context).textTheme.headline5!.copyWith(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(30.0, 10.0, 0.0, 0.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                                child: Image.asset(
                              "assets/images/cancel.png",
                              height: 20,
                              width: 20,
                            )),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'w2w(Word to word) analysis report',
                              style: Theme.of(context)
                                  .textTheme
                                  .subtitle1!
                                  .copyWith(
                                    color: Colors.white,
                                  ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 14,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                                child: Image.asset(
                              "assets/images/correct.png",
                              height: 20,
                              width: 20,
                            )),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'lcai evaluation',
                              style: Theme.of(context)
                                  .textTheme
                                  .subtitle1!
                                  .copyWith(
                                    color: Colors.white,
                                  ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 14,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                                child: Image.asset(
                              "assets/images/correct.png",
                              height: 20,
                              width: 20,
                            )),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Graphs for chapter wise analysis and\n improvement',
                              style: Theme.of(context)
                                  .textTheme
                                  .subtitle1!
                                  .copyWith(
                                    color: Colors.white,
                                  ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 14,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                                child: Image.asset(
                              "assets/images/correct.png",
                              height: 20,
                              width: 20,
                            )),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Question Paper',
                              style: Theme.of(context)
                                  .textTheme
                                  .subtitle1!
                                  .copyWith(
                                    color: Colors.white,
                                  ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 14,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                                child: Image.asset(
                              "assets/images/correct.png",
                              height: 20,
                              width: 20,
                            )),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Suggested answer',
                              style: Theme.of(context)
                                  .textTheme
                                  .subtitle1!
                                  .copyWith(
                                    color: Colors.white,
                                  ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 14,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                                child: Image.asset(
                              "assets/images/correct.png",
                              height: 20,
                              width: 20,
                            )),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Detail Evaluation in just 48 working',
                              style: Theme.of(context)
                                  .textTheme
                                  .subtitle1!
                                  .copyWith(
                                    color: Colors.white,
                                  ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 14,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                                child: Image.asset(
                              "assets/images/correct.png",
                              height: 20,
                              width: 20,
                            )),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'First call query resolution',
                              style: Theme.of(context)
                                  .textTheme
                                  .subtitle1!
                                  .copyWith(
                                    color: Colors.white,
                                  ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 14,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                                child: Image.asset(
                              "assets/images/correct.png",
                              height: 20,
                              width: 20,
                            )),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Student will be getting 30min session\nfrom that subject expert chartered\naccounant who have check our paper',
                              style: Theme.of(context)
                                  .textTheme
                                  .subtitle1!
                                  .copyWith(
                                    color: Colors.white,
                                  ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Color(0xFF065479)),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(40))))),
                      onPressed: () {},
                      child: Container(
                          // color: Color(0xFF6B4668),
                          width: MediaQuery.of(context).size.width / 3,
                          padding: EdgeInsets.all(14),
                          child: Center(
                            child: Text('Enquire Now',
                                style: Theme.of(context)
                                    .textTheme
                                    .subtitle1!
                                    .copyWith(
                                      color: Colors.white,
                                    )),
                          ))),
                  SizedBox(
                    height: 10,
                  )
                ],
              ),
            ),

          ],
        ),
      ),
    ));
  }
}
