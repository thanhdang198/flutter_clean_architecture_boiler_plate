import 'package:boilerplate_project/bloc/login_bloc/login_bloc.dart';
import 'package:boilerplate_project/bloc/login_bloc/login_state.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

import 'core/services_locator.dart';
import 'features/home_page/home_page.dart';
import 'helper/firebase.dart';
import 'helper/routers.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await FirebaseService.initializeFirebase();
  setUpService();
  FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);
  final RemoteMessage? _message =
      await FirebaseService.firebaseMessaging.getInitialMessage();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<LoginBloc>(create: (_) => LoginBloc(LoginState.initial())),
      ],
      child: MaterialApp(
        builder: EasyLoading.init(),
        debugShowCheckedModeBanner: false,
        title: 'Flutter Boiler Plate',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const MyHomePage(title: 'Flutter Boiler Plate Page'),
        routes: <String, WidgetBuilder>{
          // Routers.splash: (_) => const SplashScreen(),
          // Routers.login: (_) => const LoginScreen(),
        },
      ),
    );
  }
}

Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  await Firebase.initializeApp();
  FirebaseService _firebaseService = FirebaseService();
  await _firebaseService.localNotification.show(
    0,
    message.notification?.title ?? '',
    message.notification?.body ?? '',
    FirebaseService.platformChannelSpecifics,
    payload: message.data.toString(),
  );
}
