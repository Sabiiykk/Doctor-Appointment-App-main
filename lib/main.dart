import 'package:doctor_appointment_app_main_test/models/doctor.dart';
import 'package:doctor_appointment_app_main_test/screens/doctor_detail.dart';
import 'package:doctor_appointment_app_main_test/screens/home.dart';
import 'package:doctor_appointment_app_main_test/screens/login/login_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:doctor_appointment_app_main_test/routes/router.dart';
import 'package:doctor_appointment_app_main_test/utils/textscale.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await _initializeFirebaseAndHive();
  runApp(const MyApp());
}

Future<void> _initializeFirebaseAndHive() async {
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  await Hive.initFlutter();
  await Hive.openBox('googleUserBox');
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  User? _user;

  @override
  void initState() {
    super.initState();
    _auth.authStateChanges().listen((event) {
      setState(() {
        _user = event;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        builder: fixTextScale,
        debugShowCheckedModeBanner: false,
        home: _user != null ? const Home() : const LoginPage(),
        onGenerateRoute: (settings) {
          if (settings.name == '/detail') {
            // Assuming the passed argument is a `Doctor` object.
            final doctor = settings.arguments
                as Doctor; // Cast arguments to the correct type

            return MaterialPageRoute(
              builder: (context) => SliverDoctorDetail(doctor: doctor),
            );
          }

          // Default route handler (for routes without dynamic arguments)
          return MaterialPageRoute(
            builder: (context) {
              switch (settings.name) {
                case '/':
                  return const Home();
                case '/login':
                  return const LoginPage();
                default:
                  return const LoginPage(); // Fallback route
              }
            },
          );
        },
        routes: routes);
  }
}
