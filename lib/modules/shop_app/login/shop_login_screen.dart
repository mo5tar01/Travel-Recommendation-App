import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:udemy_flutter/layout/ShopApp/ShopLayout.dart';
import 'package:udemy_flutter/modules/Basics/home/home_screen.dart';
import 'package:udemy_flutter/modules/shop_app/Main/Home_Screen.dart';
import 'package:udemy_flutter/modules/shop_app/login/cubit/cubit.dart';
import 'package:udemy_flutter/modules/shop_app/login/cubit/states.dart';
import 'package:udemy_flutter/shared/components/components.dart';

import '../register/shop_register_screen.dart';

class ShopLoginScreen extends StatelessWidget {
  var formKey = GlobalKey<FormState>();
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var formkey =  GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context)=> ShopLoginCubit(ShopLoginInitialState()),
      
      child: BlocConsumer<ShopLoginCubit, ShopLoginState>(
        listener: (context,state){
          if (state is ShopLoginSuccessState){
            if(state.loginModel.status = true){
              Fluttertoast.showToast(
                msg: state.loginModel.message.toString(),
                toastLength: Toast.LENGTH_LONG,
                gravity: ToastGravity.BOTTOM,
                timeInSecForIosWeb: 5,
                backgroundColor: Colors.green,
                textColor: Colors.white,
                fontSize: 16.0,

              );
navigateAndFinish(context, ShopLayout());
            }
            else if(state.loginModel.status = false){    Fluttertoast.showToast(
              msg: state.loginModel.message.toString(),
              toastLength: Toast.LENGTH_LONG,
              gravity: ToastGravity.BOTTOM,
              timeInSecForIosWeb: 5,
              backgroundColor: Colors.red,
              textColor: Colors.white,
              fontSize: 16.0,

            );
            }


          }
        },
        builder: (context, state){
         return Scaffold(
            resizeToAvoidBottomInset: false,
            body: Padding(
              padding: const EdgeInsets.fromLTRB(15.0, 70.0, 0.0, 10.0),
              child: Form(
                key: formkey ,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Welcome Back!  ',
                      style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 20.0),
                    Text(
                      'Happy to see you again! please enter your email and '
                          'password to login to your account. ',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.normal,
                          color: Colors.grey),
                    ),
                    SizedBox(height: 90.0),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
                      child: TextFormField(
                          controller: emailController,
                          keyboardType: TextInputType.emailAddress,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'email address must not be empty';
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                            hintText: 'Email Address',
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30)),
                          )),
                    ),
                    SizedBox(height: 25.0),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
                      child: TextFormField(
                          obscureText: true,
                          controller: passwordController,
                          keyboardType: TextInputType.visiblePassword,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Password must not be empty';
                            }
                            return null;
                          },
                          decoration:

                          InputDecoration(
                            hintText: 'Your Password',
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30)),
                          ),

                      ),
                    ),
                    SizedBox(height: 25.0),
                    ConditionalBuilder(
                      condition: state is! ShopLoginLoadingState,
                      builder: (context) =>  Container(
                        margin: EdgeInsets.all(5),
                        padding: EdgeInsets.all(4),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Colors.lightBlueAccent,
                          border: Border.all(
                              color: Colors.lightBlueAccent, // Set border color
                              width: 3.0), // Set border width
                          borderRadius: BorderRadius.all(
                              Radius.circular(30.0)), // Set rounded corner radius
                          // Make rounded corner of border
                        ),

                        child: MaterialButton(
                          onPressed: () {
                            if(formkey.currentState!.validate()){
                              print(emailController.text);
                              print(passwordController.text);
                              ShopLoginCubit.get(context).userLogin(email: emailController.text, password: passwordController.text);

                            }

                          },
                          child: Text(
                            'Login',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                      fallback: (context) => Center(child: CircularProgressIndicator()),
                    ),
                    SizedBox(
                      height: 30,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Don\'t have an account?'),
                        TextButton(onPressed: (){
                          navigateAndFinish(context, ShopRegisterScreen(),);
                        }, child: Text('Register Now'),)

                      ],
                    )
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}