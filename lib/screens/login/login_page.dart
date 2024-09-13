import 'package:doctor_appointment_app_main_test/screens/login/login_section.dart';
import 'package:doctor_appointment_app_main_test/screens/login/register_section.dart';
import 'package:doctor_appointment_app_main_test/styles/colors.dart';
import "package:flutter/material.dart";

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        backgroundColor: const Color(MyColors.bg01),
        appBar: AppBar(
          backgroundColor: const Color(MyColors.bg01),
          centerTitle: true,
          title: const Text(
            "W E L C O M E",
            style: TextStyle(
              fontWeight: FontWeight.w800,
              color: Color(MyColors.text01),
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.only(
              left: 20.0, top: 0.0, right: 20.0, bottom: 0.0),
          child: Column(
            children: [
              const SizedBox(
                height: 5,
              ),
              SizedBox(
                height: 120,
                width: 500,
                child: Center(
                  child: Image.asset("assets/social_icon.png"),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const Card(
                elevation: 10,
                child: Column(
                  children: [
                    TabBar(
                      tabs: [
                        Tab(
                          /*icon: Icon(
                                                        Icons.login,
                                                        color: MyConstants.colorFour,
                                                        size: 15,
                                                      ),*/
                          text: "Login",
                        ),
                        Tab(
                          /*icon: Icon(
                                                        Icons.person,
                                                        color: MyConstants.colorFour,
                                                        size: 15,
                                                      ),*/
                          text: "Register",
                        ),
                      ],
                      indicatorColor: Color(MyColors.primary),
                      labelColor: Color(MyColors.bg01),
                    ),
                    SizedBox(
                      height: 360,
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                        ),
                        color: Color.fromARGB(255, 255, 255, 255),
                        child: TabBarView(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                top: 25,
                                bottom: 0,
                                left: 15,
                                right: 15,
                              ),
                              child: LoginSection(),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                top: 25,
                                bottom: 0,
                                left: 15,
                                right: 15,
                              ),
                              child: RegisterSection(),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
