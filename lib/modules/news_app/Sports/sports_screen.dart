import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:udemy_flutter/layout/NewsApp/cubit/cubit.dart';
import 'package:udemy_flutter/layout/NewsApp/cubit/states.dart';
import 'package:udemy_flutter/shared/components/components.dart';

class SportsScreen extends StatelessWidget {
  const SportsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NewCubit,NewsStates>(
      listener: (context,state){},
      builder: (context,state){
        var list = NewCubit.get(context).sports;
        return articleBuilder(list,context);
      },
    );

  }
}
