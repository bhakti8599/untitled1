import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled1/ui/editprofile/editprofile.dart';


class AccountPageUI extends StatefulWidget {
  @override
  _AccountPageUIState createState() => _AccountPageUIState();
}

class _AccountPageUIState extends State<AccountPageUI> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text('Account',
            textAlign: TextAlign.start,
            style: TextStyle(
                fontSize: 20.0,
                color: Colors.black,
                fontWeight: FontWeight.bold)),
        leading: InkWell(
          onTap: (){
            setState(() {
              Navigator.pop(context);
            });
          },
          child: Icon(
            Icons.arrow_back,
            size: 34,
            color: Color(0XFF000000),
          ),
        ),
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: 100,
              padding: EdgeInsets.all(8),
              child: Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    //color: Color(0xFFFEA94E),
                    child: InkWell(
                      onTap: () {
                        showModalBottomSheet(
                            backgroundColor: Color(0XFF065479),
                            context: context,
                            builder: (context) {
                              return Container(
                                height: 200,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Center(
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Text(
                                            'Upload Photo From',
                                            style: Theme.of(context)
                                                .textTheme
                                                .headline6!
                                                .copyWith(
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.white,
                                                ),
                                          ),
                                          SizedBox(
                                            height: 35,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Column(
                                                children: [
                                                  Image.asset(
                                                    "assets/images/camera_icon_light.png",
                                                    height: 50,
                                                    width: 50,
                                                  ),
                                                  SizedBox(
                                                    height: 15,
                                                  ),
                                                  Text(
                                                    'Camera',
                                                    style: Theme.of(context)
                                                        .textTheme
                                                        .headline6!
                                                        .copyWith(
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          color: Colors.white,
                                                        ),
                                                  ),
                                                ],
                                              ),
                                              SizedBox(
                                                width: 80,
                                              ),
                                              Column(
                                                children: [
                                                  Image.asset(
                                                    "assets/images/gallery_icon_light.png",
                                                    height: 50,
                                                    width: 50,
                                                  ),
                                                  SizedBox(
                                                    height: 15,
                                                  ),
                                                  Text(
                                                    'Gallery',
                                                    style: Theme.of(context)
                                                        .textTheme
                                                        .headline6!
                                                        .copyWith(
                                                      fontWeight:
                                                      FontWeight.bold,
                                                      color: Colors.white,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              );
                            });
                      },
                      child: Image.asset(
                        "assets/images/usericon.png",
                        //color: Color(0xFFFEA94E),
                        height: 80,
                        width: 80,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Text(
                    'Upload Image ',
                    style: Theme.of(context).textTheme.headline6!.copyWith(
                          fontWeight: FontWeight.bold,
                          color: Color(0XFF000000),
                        ),
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(20, 10, 20,0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Name ',
                    textAlign: TextAlign.start,
                    style: Theme.of(context)
                        .textTheme
                        .subtitle1!
                        .copyWith(color: Color(0XFF000000),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Atherv Nagarkar ',
                    textAlign: TextAlign.start,
                    style: Theme.of(context)
                        .textTheme
                        .subtitle1!
                        .copyWith(color: Color(0XFF616161), ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Address Lane',
                    textAlign: TextAlign.start,
                    style: Theme.of(context)
                        .textTheme
                        .subtitle1!
                        .copyWith(color:Color(0XFF000000), ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'House No. 865',
                    textAlign: TextAlign.start,
                    style: Theme.of(context)
                        .textTheme
                        .subtitle1!
                        .copyWith(color: Color(0XFF616161),  ),
                  ),

                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width/3,
                        child: Text(
                          'City ',
                          textAlign: TextAlign.start,
                          style: Theme.of(context)
                              .textTheme
                              .subtitle1!
                              .copyWith(color: Color(0XFF000000), ),
                        ),
                      ),
                      SizedBox(width: 10,),
                      Container(
                        width: MediaQuery.of(context).size.width/3,
                        child: Text(
                          'State ',
                          textAlign: TextAlign.start,
                          style: Theme.of(context)
                              .textTheme
                              .subtitle1!
                              .copyWith(color: Color(0XFF000000), ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width/3,
                        child: Text(
                          'Ahmednagar',
                          textAlign: TextAlign.start,
                          style: Theme.of(context)
                              .textTheme
                              .subtitle1!
                              .copyWith(color: Color(0XFF616161)),
                        ),
                      ),
                      SizedBox(width: 10,),
                      Container(
                        width: MediaQuery.of(context).size.width/3,
                        child: Text(
                          'Maharashtra',
                          textAlign: TextAlign.start,
                          style: Theme.of(context)
                              .textTheme
                              .subtitle1!
                              .copyWith(color: Color(0XFF616161)),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Pincode ',
                    textAlign: TextAlign.start,
                    style: Theme.of(context)
                        .textTheme
                        .subtitle1!
                        .copyWith(color:  Color(0XFF000000), ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    '414005',
                    textAlign: TextAlign.start,
                    style: Theme.of(context)
                        .textTheme
                        .subtitle1!
                        .copyWith(color:Color(0XFF616161),  ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Gender ',
                    textAlign: TextAlign.start,
                    style: Theme.of(context)
                        .textTheme
                        .subtitle1!
                        .copyWith(color:  Color(0XFF000000), ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Male',
                    textAlign: TextAlign.start,
                    style: Theme.of(context)
                        .textTheme
                        .subtitle1!
                        .copyWith(color:Color(0XFF616161),  ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Email',
                    textAlign: TextAlign.start,
                    style: Theme.of(context)
                        .textTheme
                        .subtitle1!
                        .copyWith(color: Color(0XFF000000), ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Male@gmail.com',
                    textAlign: TextAlign.start,
                    style: Theme.of(context)
                        .textTheme
                        .subtitle1!
                        .copyWith(color: Color(0XFF616161),),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Phone No ',
                    textAlign: TextAlign.start,
                    style: Theme.of(context)
                        .textTheme
                        .subtitle1!
                        .copyWith(color: Color(0XFF000000),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    '+91 678687687',
                    textAlign: TextAlign.start,
                    style: Theme.of(context)
                        .textTheme
                        .subtitle1!
                        .copyWith(color: Color(0XFF616161),),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Row(
                    children: [
                      new Spacer(),
                      ElevatedButton(
                          style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Color(0xFF065479)),
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(40))))),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => EditProfilePageUI()));
                          },
                          child: Container(
                              // color: Color(0xFF6B4668),
                              width: MediaQuery.of(context).size.width / 3,
                              padding: EdgeInsets.all(14),
                              child: Center(child: Text('Edit Profile')))),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    ));
  }
}
