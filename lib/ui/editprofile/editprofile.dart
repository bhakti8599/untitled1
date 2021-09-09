import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:untitled1/ui/account/accountui.dart';
import 'package:untitled1/viewmodel/editprofileviewmodel.dart';

EditProfileViewModel editProfileViewModel = EditProfileViewModel();

class EditProfilePageUI extends StatefulWidget {
  @override
  _EditProfilePageUIState createState() => _EditProfilePageUIState();
}

class _EditProfilePageUIState extends State<EditProfilePageUI> {
  final userNameController = TextEditingController();
  final mobileController = TextEditingController();
  final addressController = TextEditingController();
  final cityController = TextEditingController();
  final pincodeController = TextEditingController();
  final dobController = TextEditingController();
  final stateController = TextEditingController();
  final emailController = TextEditingController();
  final genderController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          'Edit Profile',
          style: Theme.of(context)
              .textTheme
              .headline6!
              .copyWith(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        leading: InkWell(
            onTap: () {
              setState(() {
                Navigator.pop(context);
              });
            },
            child: Icon(
              Icons.arrow_back,
              size: 34,
              color: Color(0XFF000000),
            )),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.fromLTRB(40, 10, 40, 0),
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
                          .copyWith(color: Color(0XFF616161)),
                    ),
                    Observer(
                      builder: (_) => ConstrainedBox(
                        constraints: BoxConstraints.tightFor(height: 30),
                        child: TextField(
                            style:
                                Theme.of(context).textTheme.subtitle1!.copyWith(
                                      color: Color(0xFF000000),
                                    ),
                            controller: userNameController,
                            onChanged: editProfileViewModel.setName,
                            //obscureText: true,
                            decoration: InputDecoration(
                              border: UnderlineInputBorder(),
                              //fillColor: Colors.white,
                            )),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Date-of-Birth',
                      textAlign: TextAlign.start,
                      style: Theme.of(context)
                          .textTheme
                          .subtitle1!
                          .copyWith(color: Color(0XFF616161)),
                    ),
                    Observer(
                      builder: (_) => ConstrainedBox(
                        constraints: BoxConstraints.tightFor(height: 30),
                        child: TextField(
                            style:
                            Theme.of(context).textTheme.subtitle1!.copyWith(
                              color: Color(0xFF000000),
                            ),
                            controller: dobController,
                            onChanged: editProfileViewModel.setDOB,
                            //obscureText: true,
                            decoration: InputDecoration(
                              border: UnderlineInputBorder(),
                              //fillColor: Colors.white,
                            )),
                      ),
                    ),
                    SizedBox(height: 10,),
                    Text(
                      'Address Lane',
                      textAlign: TextAlign.start,
                      style: Theme.of(context)
                          .textTheme
                          .subtitle1!
                          .copyWith(color: Color(0XFF616161), ),
                    ),
                    Observer(
                      builder: (_) => ConstrainedBox(
                        constraints: BoxConstraints.tightFor(height: 30),
                        child: TextField(
                          style: Theme.of(context)
                              .textTheme
                              .subtitle1!
                              .copyWith(color: Color(0xFF000000)),
                          controller: addressController,
                          onChanged: editProfileViewModel.setAddress,
                          //obscureText: true,
                          decoration: InputDecoration(
                              border: UnderlineInputBorder(),
                              //filled: true,
                              hintStyle: Theme.of(context)
                                  .textTheme
                                  .subtitle1!
                                  .copyWith(color: Colors.black),
                              labelStyle: Theme.of(context)
                                  .textTheme
                                  .subtitle1!
                                  .copyWith(color: Colors.black)),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                         width: MediaQuery.of(context).size.width/3,
                          child: Text(
                            'City',
                            textAlign: TextAlign.start,
                            style: Theme.of(context)
                                .textTheme
                                .subtitle1!
                                .copyWith(color: Color(0XFF616161), ),
                          ),
                        ),
                        SizedBox(width: 30,),
                        Container(
                          width: MediaQuery.of(context).size.width/3,
                          child: Text(
                            'State',
                            textAlign: TextAlign.start,
                            style: Theme.of(context)
                                .textTheme
                                .subtitle1!
                                .copyWith(color: Color(0XFF616161)),
                          ),
                        ),
                      ],
                    ),

                    Row(
                      children: [
                        Observer(
                          builder: (_) => ConstrainedBox(
                            constraints: BoxConstraints.tightFor(height: 30,width: MediaQuery.of(context).size.width/3),
                            child: TextField(
                              style: Theme.of(context)
                                  .textTheme
                                  .subtitle1!
                                  .copyWith(color: Color(0xFF000000)),
                              controller: cityController,
                              onChanged: editProfileViewModel.setCity,
                              //        obscureText: true,
                              decoration: InputDecoration(
                                  border: UnderlineInputBorder(),

                                  //  labelText: 'Confirm Password',
                                  //  errorText: loginViewModel
                                  //    .vendorloginViewModelErrorState.pass,
                                  // hintText: 'Confirm Password',
                                  hintStyle: Theme.of(context)
                                      .textTheme
                                      .subtitle1!
                                      .copyWith(color: Colors.black),
                                  labelStyle: Theme.of(context)
                                      .textTheme
                                      .subtitle1!
                                      .copyWith(color: Colors.black)),
                            ),
                          ),
                        ),
                        SizedBox(width: 30,),
                        Observer(
                          builder: (_) => ConstrainedBox(
                            constraints: BoxConstraints.tightFor(height: 30,width: MediaQuery.of(context).size.width/3),
                            child: TextField(
                              style: Theme.of(context)
                                  .textTheme
                                  .subtitle1!
                                  .copyWith(color: Color(0xFF000000)),
                              controller: stateController,
                              onChanged: editProfileViewModel.setState,
                              //        obscureText: true,
                              decoration: InputDecoration(
                                  border: UnderlineInputBorder(),

                                  //  labelText: 'Confirm Password',
                                  //  errorText: loginViewModel
                                  //    .vendorloginViewModelErrorState.pass,
                                  // hintText: 'Confirm Password',
                                  hintStyle: Theme.of(context)
                                      .textTheme
                                      .subtitle1!
                                      .copyWith(color: Colors.black),
                                  labelStyle: Theme.of(context)
                                      .textTheme
                                      .subtitle1!
                                      .copyWith(color: Colors.black)),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Pincode',
                      textAlign: TextAlign.start,
                      style: Theme.of(context)
                          .textTheme
                          .subtitle1!
                          .copyWith(color: Color(0XFF616161)),
                    ),
                    Observer(
                      builder: (_) => ConstrainedBox(
                        constraints: BoxConstraints.tightFor(height: 30),
                        child: TextField(
                          style: Theme.of(context)
                              .textTheme
                              .subtitle1!
                              .copyWith(color: Color(0xFF000000)),
                          controller: pincodeController,
                          onChanged: editProfileViewModel.setPincode,
                          //obscureText: true,
                          decoration: InputDecoration(
                              border: UnderlineInputBorder(),
                              hintStyle: Theme.of(context)
                                  .textTheme
                                  .subtitle1!
                                  .copyWith(color: Colors.black),
                              labelStyle: Theme.of(context)
                                  .textTheme
                                  .subtitle1!
                                  .copyWith(color: Colors.black)),
                        ),
                      ),
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
                          .copyWith(color: Color(0XFF616161)),
                    ),
                    Observer(
                      builder: (_) => ConstrainedBox(
                        constraints: BoxConstraints.tightFor(height: 30),
                        child: TextField(
                          style: Theme.of(context)
                              .textTheme
                              .subtitle1!
                              .copyWith(color: Color(0xFF000000)),
                          controller: genderController,
                          onChanged: editProfileViewModel.setGender,
                          //obscureText: true,
                          decoration: InputDecoration(
                              border: UnderlineInputBorder(),
                              hintStyle: Theme.of(context)
                                  .textTheme
                                  .subtitle1!
                                  .copyWith(color: Colors.black),
                              labelStyle: Theme.of(context)
                                  .textTheme
                                  .subtitle1!
                                  .copyWith(color: Colors.black)),
                        ),
                      ),
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
                          .copyWith(color: Color(0XFF616161)),
                    ),
                    Observer(
                      builder: (_) => ConstrainedBox(
                        constraints: BoxConstraints.tightFor(height: 30),
                        child: TextField(
                          style: Theme.of(context)
                              .textTheme
                              .subtitle1!
                              .copyWith(color: Color(0xFF000000)),
                          keyboardType: TextInputType.emailAddress,
                          controller: emailController,
                          onChanged: editProfileViewModel.setEmail,
                          //obscureText: true,
                          decoration: InputDecoration(
                              border: UnderlineInputBorder(),

                              //  labelText: 'Confirm Password',
                              //  errorText: loginViewModel
                              //    .vendorloginViewModelErrorState.pass,
                              // hintText: 'Confirm Password',
                              hintStyle: Theme.of(context)
                                  .textTheme
                                  .subtitle1!
                                  .copyWith(color: Colors.black),
                              labelStyle: Theme.of(context)
                                  .textTheme
                                  .subtitle1!
                                  .copyWith(color: Colors.black)),
                        ),
                      ),
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
                          .copyWith(color: Color(0XFF616161), fontSize: 15),
                    ),
                    Observer(
                      builder: (_) => ConstrainedBox(
                        constraints: BoxConstraints.tightFor(height: 30),
                        child: TextField(
                          style: Theme.of(context)
                              .textTheme
                              .subtitle1!
                              .copyWith(color: Color(0xFF000000)),
                          controller: mobileController,
                          keyboardType: TextInputType.phone,
                          onChanged: editProfileViewModel.setMobile,
                          //obscureText: true,
                          decoration: InputDecoration(
                              border: UnderlineInputBorder(),

                              //  labelText: 'Confirm Password',
                              //  errorText: loginViewModel
                              //    .vendorloginViewModelErrorState.pass,
                              // hintText: 'Confirm Password',
                              hintStyle: Theme.of(context)
                                  .textTheme
                                  .subtitle1!
                                  .copyWith(color: Colors.black),
                              labelStyle: Theme.of(context)
                                  .textTheme
                                  .subtitle1!
                                  .copyWith(color: Colors.black)),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        new Spacer(),
                        ElevatedButton(
                            style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(
                                    Color(0xFF065479)),
                                shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(40))))),
                            onPressed: () {

                             // editProfileViewModel.setUpdateProfile(userNameController.text,dobController.text,mobileController.text,emailController.text,addressController.text,cityController.text,stateController.text,pincodeController.text,genderController.text).then((value) {
                             //    Navigator.push(
                             //    context,
                             //    new MaterialPageRoute(
                             //    builder: (BuildContext context) => AccountPageUI()));
                             //


                              //});
                            },
                            child: Container(
                                // color: Color(0xFF6B4668),
                                width: MediaQuery.of(context).size.width / 3,
                                padding: EdgeInsets.all(14),
                                child: Center(child: Text('Update Profile')))),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    ));
  }
}
