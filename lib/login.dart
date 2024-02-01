import 'package:flutter/material.dart';
import 'package:projectone/home_page.dart';

final _formKey = GlobalKey<FormState>();

class Login extends StatelessWidget {
  const Login({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(10),
        width: double.infinity,
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 50,
                ),
                const FlutterLogo(
                  size: 150,
                ),
                const SizedBox(
                  height: 30,
                ),
                TextFormField(
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "email is required";
                    } else {
                      return null;
                    }
                  },
                  decoration: const InputDecoration(
                    label: Text("E-mail"),
                    hintText: "Enter your e-mail",
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "password is required";
                    } else if (value.length < 8) {
                      return "password must be greter than 8 characters";
                    } else {
                      return null;
                    }
                  },
                  decoration: const InputDecoration(
                    label: Text("Password"),
                    hintText: "Enter your password",
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const HomePage()),
                        );
                      }
                    },
                    style: ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(
                      Colors.blue[300],
                    )),
                    child: const Text(
                      "LogIn",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                Container(
                    margin: const EdgeInsets.only(top: 15, bottom: 20),
                    child: const Text("Forget password? No yawa. Tap me")),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(
                        Colors.grey[300],
                      ),
                    ),
                    child: const Text(
                      "No Account? Sign Up",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
