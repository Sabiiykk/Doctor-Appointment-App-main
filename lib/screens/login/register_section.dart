import 'package:doctor_appointment_app_main_test/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

class RegisterSection extends StatefulWidget {
  const RegisterSection({super.key});

  @override
  State<RegisterSection> createState() => _RegisterSectionState();
}

class _RegisterSectionState extends State<RegisterSection> {
  final GlobalKey<FormBuilderState> _formKey = GlobalKey<FormBuilderState>();

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  bool visible = true;

  Color getColor(Set<WidgetState> states) {
    const Set<WidgetState> interactiveStates = <WidgetState>{WidgetState.error};

    if (states.any(interactiveStates.contains)) {
      return const Color(MyColors.grey01);
    } else {
      return const Color(MyColors.primary);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(30),
      child: FormBuilder(
        key: _formKey,
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: FormBuilderTextField(
                name: "email",
                validator: FormBuilderValidators.compose([
                  FormBuilderValidators.email(errorText: "Email invalid"),
                  FormBuilderValidators.required(errorText: "Email required")
                ]),
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Email/Username",
                  prefixIcon: Icon(
                    Icons.verified_user,
                    size: 12,
                    color: Color(MyColors.primary),
                  ),
                ),
                controller: emailController,
              ),
            ),
            Expanded(
              flex: 2,
              child: FormBuilderTextField(
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Password required';
                  }

                  if (value.length < 8) {
                    return 'Password must be at least 8 characters long';
                  }

                  // Regular expressions to check for uppercase, lowercase, and numerical values
                  final RegExp upperCase = RegExp(r'[A-Z]');
                  final RegExp lowerCase = RegExp(r'[a-z]');
                  final RegExp digit = RegExp(r'[0-9]');

                  if (!upperCase.hasMatch(value)) {
                    return 'Password must contain at least one uppercase letter';
                  }

                  if (!lowerCase.hasMatch(value)) {
                    return 'Password must contain at least one lowercase letter';
                  }

                  if (!digit.hasMatch(value)) {
                    return 'Password must contain at least one numerical digit';
                  }

                  return null;
                },
                name: "password",
                obscureText: !visible,
                decoration: InputDecoration(
                  border: const OutlineInputBorder(),
                  labelText: "Password",
                  prefixIcon: const Icon(
                    Icons.password_sharp,
                    size: 15,
                    color: Color(MyColors.bg01),
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
            const Expanded(
              flex: 2,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    "I agree to the user Terms and Conditions",
                    style: TextStyle(
                      fontSize: 10,
                    ),
                  ),
                  Checkbox(value: true, onChanged: null),
                ],
              ),
            ),
            ElevatedButton.icon(
              onPressed: () {
                // UserCredentials registeringUser = UserCredentials(
                //   email: emailController.text,
                //   password: passwordController.text,
                // );

                // if (_formKey.currentState!.validate()) {
                //   showDialog(
                //     context: context,
                //     builder: (BuildContext context) => Dialog(
                //         child:
                //             UserPreparation(registeringUser: registeringUser)),
                //   );
                // register.user(registeringUser);
                // }
              },
              icon: const Icon(Icons.add, color: Color(MyColors.primary)),
              label: const Text(
                "Register",
                style: TextStyle(
                    color: Color(MyColors.text01),
                    fontWeight: FontWeight.w100,
                    decorationColor: Color.fromARGB(255, 255, 0, 0),
                    decorationThickness: 20),
              ),
              style: ButtonStyle(
                backgroundColor: WidgetStateProperty.resolveWith(
                  (states) => getColor(states),
                ),
                shape: WidgetStateProperty.resolveWith(
                  (states) => const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(7),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
