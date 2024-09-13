import 'package:doctor_appointment_app_main_test/services/googleSignIn.service.dart';
import 'package:doctor_appointment_app_main_test/styles/colors.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

class LoginSection extends StatefulWidget {
  const LoginSection({super.key});

  @override
  State<LoginSection> createState() => _LoginSectionState();
}

class _LoginSectionState extends State<LoginSection> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final GlobalKey<FormBuilderState> _formkey = GlobalKey<FormBuilderState>();
  bool visible = false;

  late GoogleSignInService _googleSignInService;

  @override
  void initState() {
    super.initState();
    _googleSignInService = GoogleSignInService(
      showMessage: _showSnackbar,
    );
  }

  Future<void> googleSignIn() async {
    try {
      final User? user = await _googleSignInService.signIn();
      if (user != null && mounted) {
        // Navigate to the home route and pass the user object
        Navigator.of(context).pushReplacementNamed(
          '/',
          arguments: user,
        );
      }
    } on AuthException catch (e) {
      if (mounted) {
        _showSnackbar('Authentication failed: ${e.message}');
      }
    }
  }

  Future<void> googleSignOut() async {
    try {
      await _googleSignInService.signOut();
      // Check if the widget is still in the tree before navigating
      if (mounted) {
        // Navigate to the login screen after successful sign-out
        Navigator.of(context).pushReplacementNamed('/login');
      }
    } catch (e) {
      // Check if the widget is still in the tree before showing the snackbar
      if (mounted) {
        _showSnackbar('Failed to sign out. Please try again.');
      }
    }
  }

  void _showSnackbar(String message) {
    if (!mounted) return;
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return FormBuilder(
      key: _formkey,
      child: Container(
        padding: const EdgeInsets.all(30),
        child: Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(bottom: 10.0),
                child: FormBuilderTextField(
                  name: "email",
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Email/Username",
                    prefixIcon: Icon(
                      Icons.verified_user,
                      size: 12,
                      color: Color(MyColors.primary),
                    ),
                  ),
                  validator: FormBuilderValidators.compose([
                    FormBuilderValidators.required(errorText: "Email Required"),
                    FormBuilderValidators.email(errorText: "Invalid Email")
                  ]),
                  controller: emailController,
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: FormBuilderTextField(
                  name: "password",
                  obscureText: !visible,
                  decoration: InputDecoration(
                    border: const OutlineInputBorder(),
                    labelText: "Password",
                    prefixIcon: const Icon(
                      Icons.password,
                      size: 15,
                      color: Color(MyColors.primary),
                    ),
                    suffixIcon: GestureDetector(
                      onTap: () => setState(() {
                        visible = !visible;
                      }),
                      child: Padding(
                        padding: const EdgeInsets.all(18.0),
                        child: Icon(visible
                            ? Icons.visibility_rounded
                            : Icons.visibility_off_rounded),
                      ),
                    ),
                  ),
                  controller: passwordController,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton.icon(
              onPressed: () {
                // if (_formkey.currentState!.validate()) {
                // }
              },
              icon: const Icon(Icons.login_outlined,
                  color: Color(MyColors.primary)),
              label: const Text(
                "Login",
                style: TextStyle(
                  color: Color(MyColors.text01),
                ),
              ),
              style: ElevatedButton.styleFrom(
                elevation: 55,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0),
                ),
                backgroundColor: const Color(MyColors.bg01),
                disabledBackgroundColor: const Color(MyColors.grey02),
                disabledForegroundColor: const Color(MyColors.grey01),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const Divider(),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  GestureDetector(
                    onTap: () async {
                      await googleSignIn();
                    },
                    child: Container(
                      height: 55,
                      width: 55,
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: const Color(MyColors.grey01),
                        borderRadius: BorderRadiusDirectional.circular(50.0),
                      ),
                      child: SvgPicture.asset("assets/google.svg"),
                    ),
                  ),
                  Container(
                    height: 55,
                    width: 55,
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: const Color(MyColors.grey01),
                      borderRadius: BorderRadiusDirectional.circular(50.0),
                    ),
                    child: SvgPicture.asset("assets/apple.svg"),
                  ),
                  Container(
                    height: 55,
                    width: 55,
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: const Color(MyColors.grey01),
                      borderRadius: BorderRadiusDirectional.circular(50.0),
                    ),
                    child: SvgPicture.asset("assets/facebook2.svg"),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
