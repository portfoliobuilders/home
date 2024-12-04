import 'package:flutter/material.dart';
import 'package:humbleheartscare/homepage.dart';
import 'package:humbleheartscare/register.dart';

class SignInPage extends StatefulWidget {
  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  bool _rememberMe = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // Top portion with reduced height
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.black, Colors.grey[900]!], // Gradient background
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
            padding: const EdgeInsets.fromLTRB(40, 60, 60, 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  'assets/logo.png', // Replace with your logo asset path
                  height: 50.0, // Adjust logo size
                ),
                const SizedBox(height: 20.0),
                const Text(
                  'Sign in to your Account',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 38.0, // Larger font for prominence
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10.0),
                Row(
                  children: [
                    const Text(
                      'Don’t have an account?',
                      style: TextStyle(
                        color: Colors.white70,
                        fontSize: 16.0,
                      ),
                    ),
                   
                  TextButton(
  onPressed: () {
     Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => RegisterPage()),
    );
  },
  child: Text(
    'Sign Up?',
    style: TextStyle(
      color: Color.fromARGB(179, 14, 105, 209),
      fontSize: 16.0,
      fontWeight: FontWeight.bold,
      decoration: TextDecoration.underline, // Adds underline to 'Sign Up'
    ),
  ),
),

                  ],
                ),
              ],
            ),
          ),
          // Bottom portion with white background
          Expanded(
            child: Container(
              color: Colors.white,
              padding: const EdgeInsets.all(16.0),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const SizedBox(height: 32.0),
                    TextField(
                      controller: _emailController,
                      decoration: InputDecoration(
                        hintText: 'Email',
                        filled: true,
                        fillColor: Colors.grey[200],
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12.0),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                    const SizedBox(height: 16.0),
                    TextField(
                      controller: _passwordController,
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: 'Password',
                        filled: true,
                        fillColor: Colors.grey[200],
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12.0),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                    const SizedBox(height: 16.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Checkbox(
                              value: _rememberMe,
                              onChanged: (value) {
                                setState(() {
                                  _rememberMe = value!;
                                });
                              },
                            ),
                            const Text('Remember me'),
                          ],
                        ),
                        TextButton(
                          onPressed: () {
                            // Implement Forgot Password functionality
                          },
                          child: const Text('Forgot Password?'),
                        ),
                      ],
                    ),
                    const SizedBox(height: 16.0),
                    ElevatedButton(
                      onPressed: () {
                        // Implement Sign In functionality
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                        minimumSize: const Size.fromHeight(48.0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                      ),
                      child:  TextButton(
  onPressed: () {
    // Navigate to HomeScreen
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const HomeScreen()),
    );
  },
  child: Text(
    'Log In',
    style: TextStyle(
      color: Color.fromARGB(179, 255, 255, 255),
      fontSize: 16.0,
    ),
  ),
),


                    ),
                    const SizedBox(height: 24.0),
                    const Center(
                      child: Text(
                        'Or login with',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),
                    const SizedBox(height: 16.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                          onPressed: () {
                            // Implement Google Sign In
                          },
                          icon: Image.asset('assets/google.png', height: 32),
                        ),
                        const SizedBox(width: 24.0),
                        IconButton(
                          onPressed: () {
                            // Implement Facebook Sign In
                          },
                          icon: Image.asset('assets/fb.png', height: 32),
                        ),
                      ],
                    ),
                    const SizedBox(height: 32.0),
                    Center(
  child: RichText(
    text: TextSpan(
      children: [
        TextSpan(
          text: 'By signing up, you agree to ',
          style: TextStyle(
            color: Colors.black,
            fontSize: 12.0,
            fontWeight: FontWeight.normal,
          ),
        ),
        TextSpan(
          text: 'the Terms of Service and Data Processing Agreement',
          style: TextStyle(
            color: Colors.black,
            fontSize: 12.0,
            fontWeight: FontWeight.bold, // Bold text
          ),
        ),
      ],
    ),
    textAlign: TextAlign.center,
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
