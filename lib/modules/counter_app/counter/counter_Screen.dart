// ignore: file_names
// ignore: file_names
// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:udemy_flutter/modules/counter_app/counter/cubit/cubit.dart';
import 'package:udemy_flutter/modules/counter_app/counter/cubit/states.dart';

class CounterScreen extends StatelessWidget
{
  @override
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => CounterCubit(),
      child: BlocConsumer<CounterCubit , CounterStates>(
        listener: (context, state){},
        builder: (context, state)
        {
         return  Scaffold(
            appBar: AppBar(
              title: Text(
                'counter',
              ),

            ),

            body: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: (){
                      CounterCubit.get(context).minus();
                    }, child:
                  Text(
                    'MINUS',
                  ),),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20.0,
                    ),
                    child: Text (
                      '${CounterCubit.get(context).counter}',
                      style: TextStyle(
                        fontSize: 30.0,
                        fontWeight: FontWeight.w900,

                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: (){
                 CounterCubit.get(context).plus();

                    }, child: Text(
                    'PLUS',
                  ),),

                ],
              ),
            ),
          );
        },

      ),
    );
  }


}
