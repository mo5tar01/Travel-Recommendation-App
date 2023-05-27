import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:udemy_flutter/modules/shop_app/CategoriesRate/Categories_rate.dart';
import 'package:udemy_flutter/modules/shop_app/login/shop_login_screen.dart';
import 'package:udemy_flutter/shared/components/components.dart';

import '../Main/Home_Screen.dart';

class ShopRegisterScreen extends StatelessWidget {
  const ShopRegisterScreen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    var newemailController = TextEditingController();
  var newpasswordController = TextEditingController();
  var formkey =  GlobalKey<FormState>();

  return Scaffold(
      resizeToAvoidBottomInset: false,

      body: Padding(
        padding: const EdgeInsets.fromLTRB(15.0, 60.0, 0.0, 20.0),
        child: Form(
          key: formkey ,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Sign Up  ',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 20.0),
                Text(
                  'Welcome! please enter your Name, email and     '
                      'password to create your account. ',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                      color: Colors.grey),
                ),
                SizedBox(height: 40.0),
                Padding(
                  padding: const EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
                  child: TextFormField(
                      keyboardType: TextInputType.name,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Name must not be empty';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        hintText: 'Full Name',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30)),
                      )),
                ),
                SizedBox(height: 20.0),
                Padding(
                  padding: const EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
                  child: TextFormField(

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
                SizedBox(height: 20.0),
                Padding(
                  padding: const EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
                  child: TextFormField(
                      obscureText: true,
                      keyboardType: TextInputType.visiblePassword,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Password must not be empty';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        hintText: 'Your Password',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30)),
                      )),
                ),
                SizedBox(height: 20.0),
                Padding(
                  padding: const EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
                  child: TextFormField(
                      obscureText: true,

                      keyboardType: TextInputType.visiblePassword,

                      decoration: InputDecoration(
                        hintText: 'Re-enter Password',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30)),
                      )),
                ),
                SizedBox(height: 20.0),
                Container(
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
                        print(newemailController.text);
                        print(newpasswordController.text);
                        navigateAndFinish(context, CategorySlidersPage());

                      }

                    },
                    child: Text(
                      'Continue',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('You have an account?'),
                    TextButton(onPressed: (){
                      navigateAndFinish(context, ShopLoginScreen(),);
                    }, child: Text('Login Now'),)

                  ],
                )



              ],
            ),
          ),
        ),
      ),
  );

  }
}
