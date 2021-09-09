import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:untitled1/data/local/client/localprefsmodel.dart';
import 'package:untitled1/ui/evoluationplan/evoluationplan.dart';
import 'package:untitled1/ui/loginpage/loginpageui.dart';
import 'package:untitled1/ui/signup/signupui.dart';
import 'package:untitled1/viewmodel/forgetpasswordviewmodel.dart';
import 'package:untitled1/viewmodel/loginviewmodel.dart';


import '../../main.dart';

ForgetPasswordViewModel forgetPasswordViewModel=ForgetPasswordViewModel();

class ForgetPasswordUI extends StatefulWidget {
  @override
  _ForgetPasswordUIState createState() => _ForgetPasswordUIState();
}

class _ForgetPasswordUIState extends State<ForgetPasswordUI> {
  final userNameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void initState() {
    forgetPasswordViewModel.setupValidations();
    super.initState();
  }

  @override
  void dispose() {
    forgetPasswordViewModel.disposeValidations();
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
                  child: Column(
                      children: [
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
                            SizedBox(height: 50,),
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
                           SizedBox(height: 10,),
                            Text(
                              "Forget Password",
                              textAlign: TextAlign.start,
                              style: Theme.of(context).textTheme.headline6!.copyWith(
                                color: Colors.black,
                                //fontSize: 30,
                                //fontWeight: FontWeight.bold
                              ),
                            ),
                            SizedBox(
                              height: 50,
                            ),
                            Container(
                              color: Colors.white,
                              padding: EdgeInsets.fromLTRB(30, 20, 30, 0),
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
                                        onChanged: forgetPasswordViewModel.setUsername,
                                        decoration: InputDecoration(
                                          // border: UnderlineInputBorder(),
                                            filled: true,
                                            // prefixIcon: Icon(Icons.person),
                                            fillColor: Colors.white,
                                            labelText: ' E-Mail',
                                            hintText: 'Enter email',
                                            errorText: forgetPasswordViewModel
                                                .forgetViewModelErrorState.username,
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


                                    SizedBox(
                                      height: 30,
                                    ),
                                    forgetPasswordViewModel.isLoading
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
                                          // FocusManager.instance.primaryFocus!.unfocus();
                                          // loginViewModel
                                          //     .getLogin(userNameController.text,
                                          //         passwordController.text)
                                          //     .then((value) async {
                                          //   if (value.status == 200) {
                                          //     await globalSharePrefs!
                                          //         .setBool(LoginStatus, true);
                                          //     await globalSharePrefs!.setString(
                                          //         AccessToken,
                                          //         loginViewModel.loginResponse!.access_token);
                                          //     await globalSharePrefs!.setString(
                                          //         StudentId,
                                          //         loginViewModel
                                          //             .loginResponse!.user.id.toString());
                                          //
                                          //     Navigator.pushReplacement(
                                          //         context,
                                          //         MaterialPageRoute(
                                          //             builder: (context) =>
                                          //                 EvoluationPlanPageUI()));
                                          //   } else {
                                          //     ScaffoldMessenger.of(context)
                                          //         .showSnackBar(SnackBar(
                                          //       content: Text(value.message!),
                                          //     ));
                                          //   }
                                          // });
                                          // Navigator.push(
                                          //     context,
                                          //     new MaterialPageRoute(
                                          //         builder: (BuildContext context) =>
                                          //             EvoluationPlanPageUI()));

                                        },
                                        child: Container(
                                          // color: Color(0xFF6B4668),
                                            width: MediaQuery.of(context).size.width/2,
                                            padding: EdgeInsets.all(14),
                                            child: Center(
                                                child: Text(
                                                  'Forget Password',
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
