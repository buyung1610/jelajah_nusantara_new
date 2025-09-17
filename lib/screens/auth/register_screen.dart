import 'package:flutter/material.dart';

import '../../controllers/auth_controller.dart';
import 'login_screen.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  bool _isObscure = true;

  final TextEditingController nameController = TextEditingController();
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFFF6F2E5),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height / 2.8,
                decoration: const BoxDecoration(
                  color: Color(0XFFD1A824),
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(50),
                    bottomLeft: Radius.circular(50),
                  ),
                ),
                child: Align(
                  alignment: Alignment.center,
                  child: Image(
                    image: AssetImage('assets/images/login.png'),
                    width: 250,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                'Register',
                style: TextStyle(
                  color: Color(0XFFD1A824),
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 10),
                    Text(
                      'Name',
                      style: TextStyle(
                        color: Color(0XFFD1A824),
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 5),
                    TextFormField(
                      controller: nameController,
                      decoration: InputDecoration(
                        hintText: 'Masukkan Nama Anda',
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: Color(0XFFD1A824),
                            width: 2,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: Color(0XFFD1A824),
                            width: 2,
                          ),
                        ),
                        contentPadding: EdgeInsets.symmetric(
                          vertical: 20,
                          horizontal: 20,
                        ),
                      ),
                    ),
                    SizedBox(height: 15),
                    Text(
                      'Username',
                      style: TextStyle(
                        color: Color(0XFFD1A824),
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 5),
                    TextFormField(
                      controller: usernameController,
                      decoration: InputDecoration(
                        hintText: 'Masukkan Username Anda',
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: Color(0XFFD1A824),
                            width: 2,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: Color(0XFFD1A824),
                            width: 2,
                          ),
                        ),
                        contentPadding: EdgeInsets.symmetric(
                          vertical: 20,
                          horizontal: 20,
                        ),
                      ),
                    ),
                    SizedBox(height: 15),
                    Text(
                      'Password',
                      style: TextStyle(
                        color: Color(0XFFD1A824),
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 5),
                    TextFormField(
                      controller: passwordController,
                      obscureText: _isObscure,
                      decoration: InputDecoration(
                        hintText: 'Masukkan Password Anda',
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: Color(0XFFD1A824),
                            width: 2,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: Color(0XFFD1A824),
                            width: 2,
                          ),
                        ),
                        contentPadding: EdgeInsets.symmetric(
                          vertical: 20,
                          horizontal: 20,
                        ),
                        suffixIcon: IconButton(
                          icon: Icon(
                            _isObscure
                                ? Icons.visibility_off
                                : Icons.visibility,
                            color: Color(0XFFD1A824),
                          ),
                          onPressed: () {
                            setState(() {
                              _isObscure = !_isObscure;
                            });
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ElevatedButton(
                onPressed: () async {
                  final message = await AuthController.register(
                    context,
                    nameController.text,
                    usernameController.text,
                    passwordController.text,
                  );

                  ScaffoldMessenger.of(
                    context,
                  ).showSnackBar(SnackBar(content: Text(message)));
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0XFFD1A824),
                  minimumSize: Size(double.infinity, 55),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Text(
                  'Register',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 15),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const LoginScreen(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0XFFF6F2E5),
                  minimumSize: const Size(
                    double.infinity,
                    55,
                  ), // lebar penuh, tinggi 50
                  shape: RoundedRectangleBorder(
                    side: BorderSide(color: Color(0XFFD1A824)),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: const Text(
                  'Login',
                  style: TextStyle(
                    color: Color(0XFFD1A824),
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
