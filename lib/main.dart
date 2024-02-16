import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_vm_app/app.dart';
import 'package:food_vm_app/simple_bloc_observer.dart';
import 'package:user_repository/user_repository.dart';
//import 'package:google_fonts/google_fonts.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  Bloc.observer = SimpleBlocObserver();
  runApp(
    MyApp(
      FirebasedUserRepo(),
      userRepository: FirebasedUserRepo(),
    ),
  );
}
