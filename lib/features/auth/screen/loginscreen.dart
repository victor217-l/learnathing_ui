import 'package:flutter/material.dart';
import 'package:learnathing/common/bottomnavigation.dart';
import 'package:learnathing/common/cutomtesxfield.dart';
import 'package:learnathing/common/globalvariables.dart';
import 'package:learnathing/features/auth/service/authservice.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

//https://htman.onrender.com

class _LoginScreenState extends State<LoginScreen> {

  final loginkey = GlobalKey<FormState>();

  final TextEditingController _emailcontroller = TextEditingController();
  final TextEditingController _passwordcontroller = TextEditingController();

  bool isLoading = false;

  final AuthService authService = AuthService();

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _emailcontroller.dispose();
    _passwordcontroller.dispose();
  }

  void loginbutton(){
    authService.loginbut(context: context,
        email: _emailcontroller.text,
        password: _passwordcontroller.text);


  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomTextField(controller:_emailcontroller , hintext: "Username"),
            SizedBox(height: 10,),
            CustomTextField(controller: _passwordcontroller, hintext: "Password"),
            Align(
                alignment: Alignment.center,
                child: ElevatedButton(
                  style:ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                              Radius.circular(12.0))),
                      minimumSize: Size(
                          double.infinity, 50),
                      primary: Colors.green),
                  onPressed: () async {
                    setState(() {
                      isLoading = true;
                    });
                    if(loginkey.currentState!.validate()){
                     // login();
                      loginbutton();
                     // Navigator.of(context).push(MaterialPageRoute(
                      // builder: (_) => BottomNavigation()));
                    }
                    await Future.delayed(const Duration(seconds: 50));
                    setState(() {
                    isLoading = false;
                    });
                  },
                  child: (isLoading)
                      ? const SizedBox(
                      width: 16,
                      height: 16,
                      child: CircularProgressIndicator(
                        color: Colors.white,
                        strokeWidth: 1.5,
                      ))

                      : const Text('Login'),
// ),

                )),
            Align(
                alignment: Alignment.center ,
                child: RichText(
                  text: TextSpan(
                      children: [
                        TextSpan(text: "Already have an account?\n", ),
                        TextSpan(text: "Sign Up", style: TextStyle(color: Colors.lightBlue))

                      ]
                  ),
                )
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Text("L.A.T", style:TextStyle(color: Colors.grey)),
            )



          ]
         )
      )
    );
  }
}
