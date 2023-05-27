import 'package:flutter/material.dart';
import 'package:udemy_flutter/layout/TODOAPP/todo_layout.dart';
import 'package:udemy_flutter/shared/components/components.dart';

import '../messenger/messenger_screen.dart';

class LoginScreen extends StatelessWidget {

  var emailcontroller = TextEditingController();
  var passwordcontroller = TextEditingController();
  var formKey = GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: SingleChildScrollView(
            child: Form(
              key: formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text ("Login",
                  style: TextStyle(
                   fontSize: 40.0,
                    fontWeight: FontWeight.bold,
                  ),
                  ),
                  SizedBox(
                  height: 30.0,
                  ),
              defaultFormField(
                  controller: emailcontroller,
                  type: TextInputType.text,
                  labelText: 'Login',
                  prefix: Icons.email_outlined,
                validate: (value) {
                  if (value.isEmpty) {
                    return 'title must mot be empty';
                  }
                  return null;
                },
              ),
                SizedBox(
                    height: 15.0,
                  ),
                  defaultFormField(
                    controller: passwordcontroller,
                    type: TextInputType.text,
                    labelText: 'Password',
                    prefix: Icons.lock_open_outlined,
                    validate: (value) {
                      if (value.isEmpty) {
                        return 'title must mot be empty';
                      }
                      return null;
                    },
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                 defaultButton(buttonPressed: (){
                   navigateTo(context, homeLayout());
                 }, text: 'text'),
                  SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Don\'t have an account?'
                      ),
                      TextButton(onPressed: (){},
                          child: Text(
                            'Register Now'
                          ),)
                    ],
                  ),

                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
