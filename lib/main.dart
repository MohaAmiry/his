import 'package:auto_route/auto_route.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:his/Router/MyRoutes.dart';
import 'package:his/utils/Resouces/ThemeManager.dart';
import 'package:his/utils/state_logger.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp();

  const bool USE_EMULATOR = true;

  if (USE_EMULATOR) {
    await FirebaseAuth.instance.useAuthEmulator('localhost', 9099);
    FirebaseFirestore.instance.useFirestoreEmulator('localhost', 8080);
  }
  //await FirebaseAuth.instance.signOut();
  /*

    "database": {
      "port": 9000
    },
    "storage": {
      "port": 9199
    },
   */

  runApp(const ProviderScope(
    observers: [StateLogger()],
    child: MyApp(),
  ));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp.router(
        debugShowCheckedModeBanner: false,
        title: 'HIS',
        theme: ThemeManager.lightThemeData,
        routerConfig: ref.watch(myRoutesProvider));
  }
}
