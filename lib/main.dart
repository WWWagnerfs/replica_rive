import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Expanded(
            child: Container(
              child: RiveAnimation.asset('assets/animations/rubick.riv'),
            ),
          ),
          // Parte direita para a tela de login
          Container(
            child: Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 200.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Logo do app
                    Text(
                      'RIVE',
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 2,
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      'Express login via Google and Facebook',
                      style: TextStyle(color: Colors.grey[700], fontSize: 14),
                    ),
                    SizedBox(height: 20),
                    // Botões de login rápido
                    Row(
                      children: [
                        Expanded(
                          child: ElevatedButton.icon(
                            label: Text('Google',
                                style: TextStyle(color: Colors.grey)),

                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.grey[200],
                              padding: EdgeInsets.symmetric(vertical: 12),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                        Expanded(
                          child: ElevatedButton.icon(
                            icon: Icon(Icons.facebook, color: Colors.grey),
                            label: Text('Facebook',
                                style: TextStyle(color: Colors.grey)),
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.grey[200],
                              padding: EdgeInsets.symmetric(vertical: 12),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    // Tabs de Login e Sign up
                    DefaultTabController(
                      length: 2,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TabBar(
                            tabs: [
                              Container(
                                decoration: ,
                                      child: Tab(

                                    child: Text('Log in',
                                        style: TextStyle(color: Colors.black))),
                              ),
                              Tab(
                                  child: Text('Sign up',
                                      style: TextStyle(color: Colors.black))),
                            ],
                            indicatorColor: Colors.black,
                            unselectedLabelColor: Colors.grey,
                          ),
                          SizedBox(
                            height: 200,
                            child: TabBarView(
                              children: [
                                // Aba de Login
                                Column(
                                  children: [
                                    TextField(
                                      decoration: InputDecoration(
                                        labelText: 'email or username',
                                        filled: true,
                                        fillColor: Colors.grey[200],
                                        border: OutlineInputBorder(
                                          borderRadius: BorderRadius.only(topLeft: Radius.zero, topRight: Radius.circular(8), bottomLeft: Radius.zero, bottomRight: Radius.zero),
                                          borderSide: BorderSide.none,
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 10),
                                    TextField(
                                      decoration: InputDecoration(
                                        labelText: 'password',
                                        filled: true,
                                        fillColor: Colors.grey[200],
                                        border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(0),
                                          borderSide: BorderSide.none,
                                        ),
                                      ),
                                      obscureText: true,
                                    ),
                                    SizedBox(height: 10),
                                    ElevatedButton(
                                      onPressed: () {},
                                      child: Text('Log in'),
                                      style: ElevatedButton.styleFrom(
                                        foregroundColor: Colors.white,
                                        backgroundColor: Colors.black,
                                        minimumSize: Size(double.maxFinite, 50),
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.only(topLeft: Radius.zero, topRight: Radius.zero, bottomLeft: Radius.circular(8), bottomRight: Radius.circular(8)),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                // Aba de Sign up
                                Column(
                                  children: [
                                    TextField(
                                      decoration: InputDecoration(
                                        labelText: 'email',
                                        filled: true,
                                        fillColor: Colors.grey[200],
                                        border: OutlineInputBorder(
                                          borderRadius: BorderRadius.only(topLeft: Radius.zero, topRight: Radius.circular(8), bottomLeft: Radius.zero, bottomRight: Radius.zero),
                                          borderSide: BorderSide.none,
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 10),
                                    TextField(
                                      decoration: InputDecoration(
                                        labelText: 'password',
                                        filled: true,
                                        fillColor: Colors.grey[200],
                                        border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(0),
                                          borderSide: BorderSide.none,
                                        ),
                                      ),
                                      obscureText: true,
                                    ),
                                    SizedBox(height: 10),
                                    ElevatedButton(
                                      onPressed: () {},
                                      child: Text('Sign up'),
                                      style: ElevatedButton.styleFrom(
                                        foregroundColor: Colors.white,
                                        backgroundColor: Colors.black,
                                        minimumSize: Size(double.infinity, 50),
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.only(topLeft: Radius.zero, topRight: Radius.zero, bottomLeft: Radius.circular(8), bottomRight: Radius.circular(8)),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10),
                    // Links adicionais
                    Align(
                      alignment: Alignment.center,
                      child: Column(
                        children: [
                          TextButton(
                            onPressed: () {},
                            child: Text('Log in with SSO',
                                style: TextStyle(color: Colors.black)),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Text('Forgot password?',
                                style: TextStyle(color: Colors.black)),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
