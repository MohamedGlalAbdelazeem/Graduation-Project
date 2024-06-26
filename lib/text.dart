import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'firebase_auth_servers.dart';
import 'login_screen.dart';

class SignupPage1 extends StatefulWidget {
  const SignupPage1({Key? key}) : super(key: key);

  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage1> {
  // Create text controllers for each input field
  final FierbaseAuthService _auth = FierbaseAuthService();
  TextEditingController _username = TextEditingController();
  TextEditingController _email = TextEditingController();
  TextEditingController _phone = TextEditingController();
  TextEditingController _password = TextEditingController();
  TextEditingController _conpassword = TextEditingController();

  @override
  void dispose() {
    _username.dispose();
    _email.dispose();
    _phone.dispose();
    _password.dispose();
    _conpassword.dispose();
    super.dispose();
  }

  // Create a global key for the form
  final formKey = GlobalKey<FormState>();

  // Create a method to validate and submit the form
  void submitForm() {
    // Validate the form fields
    if (formKey.currentState!.validate()) {
      // Get the values from the controllers
      String username = _username.text;
      String email = _email.text;
      String phone = _phone.text;
      String password = _password.text;
      String confirmPassword = _conpassword.text;

      // TODO: Add your logic to sign up the user with the given values
      // For example, you can use Firebase Authentication or any other service
      // You can also navigate to another screen after successful sign up
      print('Username: $username');
      print('Email: $email');
      print('Phone: $phone');
      print('Password: $password');
      print('Confirm Password: $confirmPassword');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                // Display a welcome message at the top
                const Text(
                  'Welcome',
                  style: TextStyle(
                    fontSize: 32.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                  textAlign: TextAlign.center,
                ),
                // Display a waving hand emoji
                const Text(
                  '👋',
                  style: TextStyle(
                    fontSize: 48.0,
                  ),
                  textAlign: TextAlign.center,
                ),
                // Add some vertical space
                const SizedBox(height: 16.0),
                // Create a text field for the username
                TextFormField(
                  controller: _username,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Username',
                  ),
                  // Validate the username input
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter a username';
                    }
                    return null;
                  },
                ),
                // Add some vertical space
                const SizedBox(height: 8.0),
                // Create a text field for the email
                TextFormField(
                  controller: _email,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Email',
                  ),
                  // Validate the email input
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter an email';
                    }
                    // Use a regular expression to check if the email is valid
                    // Source: [10](https://codecanyon.net/item/my-place-finder-full-android-app-google-custom-outlets-offers-firebase/24132121)
                    bool isValidEmail = RegExp(
                        r'^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+')
                        .hasMatch(value);
                    if (!isValidEmail) {
                      return 'Please enter a valid email';
                    }
                    return null;
                  },
                ),
                // Add some vertical space
                const SizedBox(height: 8.0),
                // Create a text field for the phone number
                TextFormField(
                  controller: _phone,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Phone number',
                  ),
                  // Validate the phone number input
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter a phone number';
                    }
                    // Use a regular expression to check if the phone number is valid
                    // Source: [11](https://www.tutorialkart.com/flutter/flutter-login-screen/)
                    bool isValidPhone = RegExp(r'^\+?[0-9]{10,13}$')
                        .hasMatch(value);
                    if (!isValidPhone) {
                      return 'Please enter a valid phone number';
                    }
                    return null;
                  },
                ),
                // Add some vertical space
                const SizedBox(height: 8.0),
                // Create a text field for the password
                TextFormField(
                  controller: _password,
                  obscureText: true,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Password',
                  ),
                  // Validate the password input
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter a password';
                    }
                    // Check if the password is at least 8 characters long
                    if (value.length < 8) {
                      return 'Password must be at least 8 characters long';
                    }
                    return null;
                  },
                ),
                // Add some vertical space
                const SizedBox(height: 8.0),
                // Create a text field for the confirm password
                TextFormField(
                  controller: _conpassword,
                  obscureText: true,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Confirm password',
                  ),
                  // Validate the confirm password input
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please confirm your password';
                    }
                    // Check if the confirm password matches the password
                    if (value != _password.text) {
                      return 'Passwords do not match';
                    }
                    return null;
                  },
                ),
                // Add some vertical space
                const SizedBox(height: 16.0),
                // Create a button for the sign up action
                ElevatedButton(
                  onPressed: _siginup,
                  child: const Text('Sign up'),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.orange,
                    padding: const EdgeInsets.all(16.0),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _siginup() async {
    String uersname = _username.text;
    String email = _email.text;
    String phone = _phone.text;
    String password = _password.text;
    String conpassword = _conpassword.text;


    User? user = await _auth.signUpWithEmailAndPassword(
        email, password, phone, uersname, conpassword);

    if (user != null) {
      print("User is successfully created");
      Navigator.pushNamed(context, LoginScreen.homeRout);
    }
  }
}



