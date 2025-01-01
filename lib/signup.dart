import 'package:flutter/material.dart';
import 'package:registration/login.dart';
import 'package:registration/services/firebase_auth_service.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {

   bool isLoading=false;
  @override
  Widget build(BuildContext context) {
    TextEditingController usernameController = TextEditingController();
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordControler = TextEditingController();
  TextEditingController confirmpasswordController = TextEditingController();
 
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                "Sign Up",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 10),
              const Text(
                "Create your account",
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: 18,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 30),
              TextField(
                controller: usernameController,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: const Color.fromARGB(255, 247, 221, 230),
                  prefixIcon: const Icon(
                    Icons.person,
                    color: Color.fromARGB(255, 8, 117, 219),
                  ),
                  hintText: "Username",
                  contentPadding:
                      const EdgeInsets.only(left: 10, top: 10, bottom: 10),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide.none,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide.none,
                  ),
                ),
                style: const TextStyle(fontSize: 20),
              ),
              const SizedBox(height: 15),
              TextField(
                controller: emailcontroller,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: const Color.fromARGB(255, 247, 221, 230),
                  prefixIcon: const Icon(
                    Icons.email,
                    color: Color.fromARGB(255, 8, 117, 219),
                  ),
                  hintText: "Email",
                  contentPadding:
                      const EdgeInsets.only(left: 10, top: 10, bottom: 10),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide.none,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide.none,
                  ),
                ),
                style: const TextStyle(fontSize: 20),
              ),
              const SizedBox(height: 15),
              TextField(
                controller: passwordControler,
                obscureText: true,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: const Color.fromARGB(255, 247, 221, 230),
                  prefixIcon: const Icon(
                    Icons.lock,
                    color: Color.fromARGB(255, 8, 117, 219),
                  ),
                  hintText: "Password",
                  contentPadding:
                      const EdgeInsets.only(left: 10, top: 10, bottom: 10),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide.none,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide.none,
                  ),
                ),
                style: const TextStyle(fontSize: 20),
              ),
              const SizedBox(height: 15),
              TextField(
                controller: confirmpasswordController,
                obscureText: true,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: const Color.fromARGB(255, 247, 221, 230),
                  prefixIcon: const Icon(
                    Icons.lock_outline,
                    color: Color.fromARGB(255, 8, 117, 219),
                  ),
                  hintText: "Confirm Password",
                  contentPadding:
                      const EdgeInsets.only(left: 10, top: 10, bottom: 10),
                      border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide.none,
                  ),
                 
                ),
                style: const TextStyle(fontSize: 20),
              ),
              const SizedBox(height: 30),
              ElevatedButton(
                onPressed: () async {
                
                    
                  setState(() {
                    isLoading=true;
                  });
                 await Future.delayed(
                    Duration(seconds: 2)
                  );
                  await signup(
                      username: usernameController.text,
                      email: emailcontroller.text,
                      password: passwordControler.text,
                      context: context,
                      confirmpassword: confirmpasswordController.text);
                      setState(() {
                        
                      isLoading=false;
                      });
                  // Handle sign-up logic
                },
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(double.infinity, 50),
                  backgroundColor: const Color.fromARGB(255, 191, 4, 216),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                // ignore: dead_code
                child:isLoading?CircularProgressIndicator(color: Colors.white,): Text(
                  "Sign Up",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                "or",
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: 16,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20),
              ElevatedButton.icon(
                onPressed: () {
                  // Handle Google sign-up logic
                },
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(double.infinity, 50),
                  backgroundColor: Colors.white,
                  side: BorderSide(
                    color: const Color.fromARGB(255, 201, 200, 219),
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                icon: const Icon(
                  Icons.g_mobiledata,
                  color: Color.fromARGB(255, 8, 117, 219),
                  size: 28,
                ),
                label: const Text(
                  "Sign Up with Google",
                  style: TextStyle(
                    fontSize: 18,
                    color: Color.fromARGB(255, 0, 0, 0),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () {
                  Navigator.pop(context,
                      MaterialPageRoute(builder: (context) => Login()));
                },
                child: const Text(
                  "Already have an account? Login",
                  style: TextStyle(
                    color: Color.fromARGB(255, 176, 18, 216),
                    fontSize: 16,
                    decoration: TextDecoration.underline,
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