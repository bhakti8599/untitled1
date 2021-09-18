import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:untitled1/data/local/client/localprefsmodel.dart';
import 'package:untitled1/ui/evoluationplan/evoluationplan.dart';
import 'package:untitled1/ui/forgetpassword/forgetpassword.dart';
import 'package:untitled1/ui/signup/signupui.dart';
import 'package:untitled1/viewmodel/loginviewmodel.dart';


import '../../main.dart';

LoginViewModel loginViewModel = LoginViewModel();

class LoginPageUI extends StatefulWidget {
  @override
  _LoginPageUIState createState() => _LoginPageUIState();
}

class _LoginPageUIState extends State<LoginPageUI> {
  final userNameController = TextEditingController();
  final passwordController = TextEditingController();

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
              flex: 2,
              child: Container(
                color: Colors.white,
                padding: EdgeInsets.symmetric(horizontal: 16),
                width: MediaQuery.of(context).size.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  //mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    new Spacer(),
                    Text(
                      "Log In",
                      style: Theme.of(context).textTheme.headline5!.copyWith(
                            color: Colors.black,
                            //fontSize: 30,
                            //fontWeight: FontWeight.bold
                          ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      color: Colors.white,
                      padding: EdgeInsets.all(16),
                      child: Observer(
                        builder: (_) => Column(
                          children: [
                            Observer(
                              builder: (_) => TextField(
                                style: Theme.of(context)
                                    .textTheme
                                    .subtitle1!
                                    .copyWith(color: Color(0xFF000000)),
                                controller: userNameController,
                                keyboardType: TextInputType.text,
                                onChanged: loginViewModel.setUsername,
                                decoration: InputDecoration(
                                    // border: UnderlineInputBorder(),
                                    filled: true,
                                    // prefixIcon: Icon(Icons.person),
                                    fillColor: Colors.white,
                                    labelText: ' E-Mail',
                                    hintText: 'Enter email',
                                    errorText: loginViewModel
                                        .loginViewModelErrorState.username,
                                    focusColor: Colors.white,
                                    hintStyle: Theme.of(context)
                                        .textTheme
                                        .subtitle1!
                                        .copyWith(color: Color(0xFF616161)),
                                    labelStyle: Theme.of(context)
                                        .textTheme
                                        .subtitle1!
                                        .copyWith(
                                          color: Color(0xFF616161),
                                        )),
                              ),
                            ),
                            Observer(
                              builder: (_) => TextField(
                                style: Theme.of(context)
                                    .textTheme
                                    .subtitle1!
                                    .copyWith(color: Color(0xFF000000)),
                                keyboardType: TextInputType.visiblePassword,
                                controller: passwordController,
                                onChanged: loginViewModel.setPass,
                                obscureText: true,
                                decoration: InputDecoration(
                                    //  border: UnderlineInputBorder(),
                                    //prefixIcon: Icon(Icons.lock),
                                    //suffixIcon: Icon(Icons.done),
                                    filled: true,
                                    fillColor: Colors.white,
                                    focusColor: Colors.white,
                                    labelText: 'Password',
                                    errorText: loginViewModel
                                        .loginViewModelErrorState.pass,
                                    hintText: 'Enter Password',
                                    labelStyle: Theme.of(context)
                                        .textTheme
                                        .subtitle1!
                                        .copyWith(color: Color(0xFF616161))),
                              ),
                            ),
                            Row(
                              children: [
                                new Spacer(),
                                TextButton(
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          new MaterialPageRoute(
                                              builder: (BuildContext context) =>
                                                  ForgetPasswordUI()));
                                    },
                                    child: Text(
                                      'Forget?',
                                      style: Theme.of(context)
                                          .textTheme
                                          .caption!
                                          .copyWith(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold,
                                              // decoration:
                                              //TextDecoration.underline,
                                              color: Color(0xFF065479)),
                                    ))
                              ],
                            ),
                            SizedBox(
                              height: 30,
                            ),
                           loginViewModel.isLoading
                                ? LinearProgressIndicator(
                                    color: Colors.red,
                                  )
                               : Container(),
                            ElevatedButton(
                                style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(
                                      Color(0xFF065479)),
                                ),
                                onPressed: () {
                                  FocusManager.instance.primaryFocus!.unfocus();
                                  loginViewModel.getLogin(userNameController.text, passwordController.text).then((value) async {
                                    if (value.status == 200) {
                                      await globalSharePrefs!
                                          .setBool(LoginStatus, true);
                                      await globalSharePrefs!.setString(
                                          USERToken,
                                          loginViewModel.loginResponse!.access_token);
                                      await globalSharePrefs!.setString(
                                          StudentId,
                                          loginViewModel
                                              .loginResponse!.user.id.toString());

                                      Navigator.pushReplacement(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  EvoluationPlanPageUI()));
                                    } else {
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(SnackBar(
                                        content: Text(value.message!),
                                      ));
                                    }
                                  });
                                  // Navigator.push(
                                  //     context,
                                  //     new MaterialPageRoute(
                                  //         builder: (BuildContext context) =>
                                  //             EvoluationPlanPageUI()));
                                },
                                child: Container(
                                    // color: Color(0xFF6B4668),
                                    width: MediaQuery.of(context).size.width,
                                    padding: EdgeInsets.all(14),
                                    child: Center(
                                        child: Text(
                                      'Log In',
                                      style: Theme.of(context)
                                          .textTheme
                                          .subtitle2!
                                          .copyWith(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                          ),
                                    )))),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Don't have an account",
                                  style: Theme.of(context)
                                      .textTheme
                                      .subtitle1!
                                      .copyWith(
                                        color: Color(0XFF616161),
                                        fontWeight: FontWeight.bold,
                                      ),
                                ),
                                TextButton(
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          new MaterialPageRoute(
                                              builder: (BuildContext context) =>
                                                  SignUPUI()));
                                    },
                                    child: Text(
                                      'Sign Up',
                                      style: Theme.of(context)
                                          .textTheme
                                          .subtitle1!
                                          .copyWith(
                                              fontWeight: FontWeight.bold,
                                              decoration:
                                                  TextDecoration.underline,
                                              color: Color(0xFF065479)),
                                    ))
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(flex: 1, child: Container()),
          ])),
    )));
  }
}
