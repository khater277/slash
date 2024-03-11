import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
// ignore: depend_on_referenced_packages
import 'package:slash/app/app.dart';
import 'package:slash/app/bloc_observer.dart';
import 'package:slash/app/injector.dart';
import 'package:slash/core/local_storage/cart_storage.dart';

//
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setupGetIt();
  await Hive.initFlutter();
  await di<CartStorage>().init();
  Bloc.observer = MyBlocObserver();
  runApp(const MyApp());
}
