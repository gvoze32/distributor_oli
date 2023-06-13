import 'package:flutter/material.dart';
import 'package:double_back_to_close_app/double_back_to_close_app.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:distributor_oli/dashboard.dart';
// ignore_for_file: prefer_const_constructors
// ignore_for_file: prefer_const_literals_to_create_immutables

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool _passwordVisible = false;
  bool? check = false;

  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  void _login() {
    final String username = _usernameController.text.trim();
    final String password = _passwordController.text.trim();

    // Hardcoded usernames and passwords
    const Map<String, String> users = {
      'admin': 'password',
      // Add more usernames and passwords as needed
    };

    if (users.containsKey(username) && users[username] == password) {
      // Login successful, handle the result
      // For example, navigate to the home screen
      Get.off(() => Dashboard());
    } else {
      // Login failed, handle the error
      // Display an error message or show a dialog
      // print('Invalid username or password');
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Kredensial Salah'),
            content:
                Text('Nama pengguna atau kata sandi yang Anda masukkan salah.'),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: Text('OK'),
              ),
            ],
          );
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DoubleBackToCloseApp(
        snackBar: const SnackBar(
          content: Text('Tekan Lagi Untuk Keluar'),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 10,
            ),
            Center(
              child: Container(
                height: 350,
                width: 350,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/loginillust.png"),
                  ),
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                    padding: const EdgeInsets.only(left: 36),
                    child: Text(
                      "Username",
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                        fontSize: 16,
                      ),
                    )),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Center(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(),
                    child: SizedBox(
                      width: 340,
                      height: 50,
                      child: Stack(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.7),
                                  spreadRadius: 2,
                                  blurRadius: 5,
                                  offset: Offset(
                                      0, 5), // changes the shadow direction
                                ),
                              ],
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: TextField(
                              controller: _usernameController,
                              decoration: InputDecoration(
                                hintText: "Masukkan username",
                                prefixIcon:
                                    Image.asset("assets/icons/user.png"),
                                isCollapsed: true,
                                hintStyle: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black,
                                  fontSize: 12,
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                              textAlignVertical: TextAlignVertical.center,
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                    padding: const EdgeInsets.only(left: 36),
                    child: Text(
                      "Password",
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                        fontSize: 16,
                      ),
                    )),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Center(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(),
                    child: SizedBox(
                      width: 340,
                      height: 50,
                      child: Stack(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.7),
                                  spreadRadius: 2,
                                  blurRadius: 5,
                                  offset: Offset(
                                      0, 5), // changes the shadow direction
                                ),
                              ],
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: TextField(
                              controller: _passwordController,
                              obscureText: !_passwordVisible,
                              decoration: InputDecoration(
                                hintText: "Masukkan password",
                                prefixIcon:
                                    Image.asset("assets/icons/pass.png"),
                                isCollapsed: true,
                                hintStyle: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black,
                                  fontSize: 12,
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                              textAlignVertical: TextAlignVertical.center,
                            ),
                          ),
                          Positioned(
                            right: 5,
                            top: 0,
                            bottom: 0,
                            child: IconButton(
                              icon: Image.asset(
                                _passwordVisible
                                    ? 'assets/icons/eye.png'
                                    : 'assets/icons/closedeye.png',
                              ),
                              onPressed: () {
                                setState(() {
                                  _passwordVisible = !_passwordVisible;
                                });
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 30),
                        child: SizedBox(
                          child: Checkbox(
                            value: check,
                            activeColor: HexColor("#634FF4"),
                            onChanged: (bool? value) {
                              setState(() {
                                check = value;
                              });
                            },
                          ),
                        ),
                      ),
                      Text(
                        "Remember me",
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w500,
                          color: HexColor("634FF4"),
                          fontSize: 12,
                        ),
                      )
                    ]),
                    Padding(
                      padding: const EdgeInsets.only(right: 40),
                      child: Text(
                        "Forgot Password ?",
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w500,
                          color: HexColor("634FF4"),
                          fontSize: 12,
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Center(
                child: Container(
              child: ElevatedButton(
                onPressed: _login,
                child: Text(
                  "LOGIN",
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: HexColor("#634FF4"),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  shadowColor: Colors.grey,
                  elevation: 10,
                  minimumSize: Size(300, 50),
                ),
              ),
            )),
          ],
        ),
      ),
    );
  }
}
