import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:udemy_flutter/layout/ShopApp/cubit/cubit.dart';
import 'package:udemy_flutter/layout/ShopApp/cubit/states.dart';

class ShopLayout extends StatelessWidget {
  const ShopLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ShopCubit,ShopStates>(
        listener: (context, state){},
      builder: (context, state){
          var cubit = ShopCubit.get(context);
          return Scaffold(
            body: cubit.bottomScreens[cubit.currentIndex],
            bottomNavigationBar: BottomNavigationBar(
              onTap: (index){
                cubit.changeBottom(index);
              },
              currentIndex: cubit.currentIndex,
                items: [
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                ),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.favorite,
                ),
                label: 'Favorites',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.notifications_outlined,
                ),
                label: "Notifications",
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.person_outline,
                ),
                label: "Profile",
              ),
            ],
            ),
          );
      },);
  }
}
