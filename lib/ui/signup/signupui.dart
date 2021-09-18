import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:untitled1/ui/loginpage/loginpageui.dart';
import 'package:untitled1/viewmodel/signupviewmodel.dart';


SignUPViewModel signUPViewModel = SignUPViewModel();

class SignUPUI extends StatefulWidget {
  @override
  _SignUPUIState createState() => _SignUPUIState();
}

class _SignUPUIState extends State<SignUPUI> {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final mobileController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmpasswordController = TextEditingController();

  @override
  void initState() {
    loginViewModel.setupValidations();
    super.initState();
  }

  @override
  void dispose() {
    loginViewModel.disposeValidations();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SingleChildScrollView(
      child: Container(
          height: MediaQuery.of(context).size.height,
          color: Colors.white,
          child: Column(children: [
            Expanded(
              flex: 1,
              child: Container(
                color: Colors.white,
                padding: EdgeInsets.symmetric(horizontal: 30),
                width: MediaQuery.of(context).size.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    new Spacer(),
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
                        size: 34,
                        color: Color(0XFF000000),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "SignUp",
                      style: Theme.of(context).textTheme.headline6!.copyWith(
                            color: Colors.black,

                          ),
                    ),

                  ],
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: Container(
                //color: Colors.white,
                padding: EdgeInsets.fromLTRB(40, 16, 40, 16),
                child: Observer(
                  builder: (_) => Column(children: [
                    Observer(
                      builder: (_) => TextField(
                        style: Theme.of(context)
                            .textTheme
                            .subtitle1!
                            .copyWith(color: Color(0xFF000000)),
                        controller: nameController,
                        keyboardType: TextInputType.text,
                        onChanged: signUPViewModel.setName,
                        decoration: InputDecoration(
                            border: UnderlineInputBorder(),
                            filled: true,
                            fillColor: Colors.white,
                            labelText: 'Full Name',
                            hintText: 'Enter Full Name',
                            errorText:
                                signUPViewModel.signUPViewModelErrorState.name,
                            focusColor: Colors.white,
                            hintStyle: Theme.of(context)
                                .textTheme
                                .subtitle1!
                                .copyWith(color: Color(0xFF616161)),
                            labelStyle: Theme.of(context)
                                .textTheme
                                .subtitle1!
                                .copyWith(color: Color(0xFF616161))),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Observer(
                      builder: (_) => TextField(
                        style: Theme.of(context)
                            .textTheme
                            .subtitle1!
                            .copyWith(color: Color(0xFF000000)),
                        controller: emailController,
                        keyboardType: TextInputType.emailAddress,
                        onChanged: signUPViewModel.setEmail,
                        decoration: InputDecoration(
                            border: UnderlineInputBorder(),
                            filled: true,
                            fillColor: Colors.white,
                            labelText: 'Email',
                            hintText: 'Enter Email',
                            errorText:
                                signUPViewModel.signUPViewModelErrorState.email,
                            focusColor: Colors.white,
                            hintStyle: Theme.of(context)
                                .textTheme
                                .subtitle1!
                                .copyWith(color: Color(0xFF616161)),
                            labelStyle: Theme.of(context)
                                .textTheme
                                .subtitle1!
                                .copyWith(color: Color(0xFF616161))),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Observer(
                      builder: (_) => TextField(
                        style: Theme.of(context)
                            .textTheme
                            .subtitle1!
                            .copyWith(color: Color(0xFF000000)),
                        controller: mobileController,
                        keyboardType: TextInputType.phone,
                        onChanged: signUPViewModel.setMobile,

                        decoration: InputDecoration(
                            border: UnderlineInputBorder(),
                            filled: true,
                            fillColor: Colors.white,
                            focusColor: Colors.white,
                            labelText: 'Mobile No',
                            errorText: signUPViewModel
                                .signUPViewModelErrorState.mobile,
                            hintText: 'Enter Mobile No',
                            hintStyle: Theme.of(context)
                                .textTheme
                                .subtitle1!
                                .copyWith(color: Color(0xFF616161)),
                            labelStyle: Theme.of(context)
                                .textTheme
                                .subtitle1!
                                .copyWith(color: Color(0xFF616161))),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Observer(
                      builder: (_) => TextField(
                        style: Theme.of(context)
                            .textTheme
                            .subtitle1!
                            .copyWith(color: Color(0xFF000000)),
                        controller: passwordController,
                        onChanged: signUPViewModel.setPass,
                        obscureText: true,
                        decoration: InputDecoration(
                            border: UnderlineInputBorder(),
                            filled: true,
                            fillColor: Colors.white,
                            focusColor: Colors.white,
                            labelText: 'Password',
                            errorText:
                                signUPViewModel.signUPViewModelErrorState.pass,
                            hintText: 'Enter Password',
                            hintStyle: Theme.of(context)
                                .textTheme
                                .subtitle1!
                                .copyWith(color: Color(0xFF616161)),
                            labelStyle: Theme.of(context)
                                .textTheme
                                .subtitle1!
                                .copyWith(color: Color(0xFF616161))),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Observer(
                      builder: (_) => TextField(
                        style: Theme.of(context)
                            .textTheme
                            .subtitle1!
                            .copyWith(color: Color(0xFF000000)),
                        controller: confirmpasswordController,
                        onChanged: signUPViewModel.setconfirmpass,
                        obscureText: true,
                        decoration: InputDecoration(
                            border: UnderlineInputBorder(),
                            filled: true,
                            fillColor: Colors.white,
                            focusColor: Colors.white,
                            labelText: 'Confirm Password',
                            errorText: signUPViewModel
                                .signUPViewModelErrorState.confirmpass,
                            hintText: 'Confirm Password',
                            hintStyle: Theme.of(context)
                                .textTheme
                                .subtitle1!
                                .copyWith(color: Color(0xFF616161)),
                            labelStyle: Theme.of(context)
                                .textTheme
                                .subtitle1!
                                .copyWith(color: Color(0xFF616161))),
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    signUPViewModel.isLoading
                        ? LinearProgressIndicator(
                            color: Colors.red,
                          )
                        : Container(),
                    ElevatedButton(
                        onPressed: () {
                          // signUPViewModel
                          //     .setStudent(
                          //   nameController.text,
                          //   passwordController.text,
                          //   mobileController.text,
                          //   emailController.text,
                          // )
                          //     .then((value) {
                          //   Navigator.pushReplacement(
                          //       context,
                          //       MaterialPageRoute(
                          //           builder: (context) => LoginPageUI()));
                          // });
                        },
                        child: Container(
                            // color: Color(0xFF6B4668),
                            width: MediaQuery.of(context).size.width,
                            padding: EdgeInsets.all(14),
                            child: Center(
                                child: Text('Sign Up',
                                    style: Theme.of(context)
                                        .textTheme
                                        .subtitle1!
                                        .copyWith(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                        ))))),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Already Registered?",
                          style: Theme.of(context)
                              .textTheme
                              .subtitle1!
                              .copyWith(
                                  color: Color(0XFF616161),
                                  fontWeight: FontWeight.bold),
                        ),
                        TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  new MaterialPageRoute(
                                      builder: (BuildContext context) =>
                                          LoginPageUI()));
                            },
                            child: Text(
                              'Log In',
                              style: Theme.of(context)
                                  .textTheme
                                  .subtitle1!
                                  .copyWith(
                                      fontWeight: FontWeight.bold,
                                      decoration: TextDecoration.underline,
                                      color: Color(0xFF065479)),
                            ))
                      ],
                    ),
                  ]),
                ),
              ),
            )
          ])),
    )));
  }
}
