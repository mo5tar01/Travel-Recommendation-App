import 'package:bloc/bloc.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:udemy_flutter/layout/NewsApp/news_layout.dart';
import 'package:udemy_flutter/modules/bmi_app//bmi/BM_Screen.dart';
import 'package:udemy_flutter/modules/counter_app/counter/counter_Screen.dart';
import 'package:udemy_flutter/modules/Basics/home/home_screen.dart';
import 'package:udemy_flutter/modules/Basics/login/login_screen.dart';
import 'package:udemy_flutter/modules/Basics/messenger/messenger_screen.dart';
import 'package:udemy_flutter/modules/shop_app/Main/Home_Screen.dart';
import 'package:udemy_flutter/modules/shop_app/on_boarding/on_boarding_screen.dart';
import 'package:udemy_flutter/shared/block_observer.dart';
import 'package:udemy_flutter/shared/cubit/cubit.dart';
import 'package:udemy_flutter/shared/cubit/states.dart';
import 'package:udemy_flutter/shared/network/remote/dio_helper.dart';
import 'package:udemy_flutter/shared/styles/themes.dart';

import 'layout/NewsApp/cubit/cubit.dart';
import 'layout/ShopApp/cubit/cubit.dart';
import 'layout/ShopApp/cubit/states.dart';
import 'layout/TODOAPP/todo_layout.dart';

void main() async
{
  await Firebase.initializeApp();
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = MyBlocObserver();
  DioHelper.init();
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}



class MyApp extends StatelessWidget {
  MyApp();
  
  @override
  Widget build(BuildContext context) {
    // SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context)=>NewCubit()..getBusiness()..getScience()..getSports() ),
    BlocProvider(create: (BuildContext context) => ShopCubit())
      ],
      child: BlocConsumer<ShopCubit, ShopStates>(
        listener: (context, state) {},
        builder: (context, state) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: lightTheme,
            darkTheme: darkTheme,
            home: Directionality(
              textDirection: TextDirection.ltr,
              child: OnBoardingScreen(),
            ),
          );
        },
      ),
    );
  }
}