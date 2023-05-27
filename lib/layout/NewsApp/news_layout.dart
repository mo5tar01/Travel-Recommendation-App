import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:udemy_flutter/layout/NewsApp/cubit/cubit.dart';
import 'package:udemy_flutter/layout/NewsApp/cubit/states.dart';
import 'package:udemy_flutter/modules/news_app//search/search_screen.dart';
import 'package:udemy_flutter/shared/components/components.dart';
import 'package:udemy_flutter/shared/cubit/cubit.dart';
import 'package:udemy_flutter/shared/cubit/cubit.dart';
import 'package:udemy_flutter/shared/cubit/cubit.dart';
import 'package:udemy_flutter/shared/network/remote/dio_helper.dart';

class NewsLayout extends StatelessWidget {
  const NewsLayout({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NewCubit, NewsStates>(
      listener: (context, state){},
      builder: (context , state){
        var cubit = NewCubit.get(context);
        return Scaffold(
          appBar: AppBar(
            title: Text(
                'News App'
            ),
            actions: [
              IconButton(onPressed: (){
                navigateTo(context, SearchScreen());
              },
                  icon: Icon(Icons.search)),
              IconButton(onPressed: (){
                AppCubit.get(context).changeAppMode();
              },
                  icon: Icon(Icons.brightness_4_outlined))
            ],
          ),
          body: cubit.screens[cubit.currentIndex],
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: cubit.currentIndex,
            onTap: (index){
              cubit.changeBottomNavBar(index);
            },
            items:cubit.bottomItems,
          ),
        );
      },
    );
  }
}
