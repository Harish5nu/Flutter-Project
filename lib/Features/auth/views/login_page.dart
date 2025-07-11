import 'package:awt_project/core/widgets/buttons.dart';
import 'package:awt_project/Features/auth/views/registration_page.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();

  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('My Title')),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Form(
              key: _formKey,
              child: Column(
                spacing: 20,
                children: [
                  Text('Login to Continue', style: TextStyle(fontSize: 20)),
                  TextFormField(
                    controller: _emailController,
                    validator: (value) {
                      if (value != null && value.isNotEmpty) {
                        return null;
                      } else {
                        return 'Email is required';
                      }
                    },
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Email',
                    ),
                  ),
                  TextFormField(
                    controller: _passwordController,
                    obscureText: true,
                    validator: (value) {
                      if (value != null && value.isNotEmpty) {
                        return null;
                      } else {
                        return 'Password is required';
                      }
                    },
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),

                      hintText: 'Password',
                    ),
                  ),

                  // ElevatedButton(
                  //   onPressed: () {
                  //     print('Hello World');
                  //   },
                  //   child: Text('Login'),
                  // ),
                  CustomButton(
                    title: 'Login',
                    onTap: () {
                      if (_formKey.currentState?.validate() == true) {
                        //do some API calls
                      }
                    },
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text('Don\'t have an account?'),
                      SizedBox(width: 5),
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => RegistrationPage(),
                            ),
                          );
                          print('Register Tapped');
                        },
                        child: Text(
                          'Sign up',
                          style: TextStyle(color: Colors.blue),
                        ),
                      ),
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