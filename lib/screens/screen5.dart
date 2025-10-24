import 'package:flutter/material.dart';


import '../components/email_box.dart';
import '../components/main_button.dart';
import '../components/password_box.dart';
class Screen5 extends StatefulWidget {
  const Screen5({super.key});

  @override
  State<Screen5> createState() => _Screen5State();
}

class _Screen5State extends State<Screen5> {
  bool _isChecked = false;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            const SizedBox(height: 85,),
            Container(
              height: 37,
              width: double.infinity,
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: const Text("Register",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 28,fontFamily: "fontMain1"),),
            ),
            Container(
              height: 45,
              width: double.infinity,
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: const Text("New Account",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 28,fontFamily: "fontMain1"),),
            ),
            const SizedBox(height: 25,),
            const EmailBox(textFieldName: "Email Address"),
            const SizedBox(height: 15),
              const PasswordBox(
              textBox:" Create Password",
            ),
            const SizedBox(height: 15),
              const PasswordBox(
              textBox:"Confirm Password",
            ),
            const SizedBox(height: 10),
            Container(
              height: 30,
              width: double.infinity,
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Checkbox(
                          side: const BorderSide(
                            color: Colors.grey,
                          ),
                          checkColor: Colors.white,
                          activeColor:const Color(0xFF56AF78),
                          value: _isChecked, onChanged: (newValue){
                        setState(() {
                          _isChecked = newValue!;
                        });
                      }),
                      const Text("I agree to ",style: TextStyle(
                        fontSize: 11,
                        color: Colors.grey,
                        fontWeight: FontWeight.normal



                      ),),
                      const Text("Terms and Condition",style: TextStyle(
                        fontSize: 11,
                        fontFamily: "fontMain1",

                      ),)
                    ],
                  ),


                ],
              ),
            ),
            GestureDetector(
              onTap: (){
                Navigator.pushNamed(context, "/screen4");
              },
              child: const   MainButton(
                buttonText: 'Register',
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 90),
                  child: const Center(
                    child: Text("Alrady have an account?",style: TextStyle(
                        color: Colors.grey
                    ),),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 90),
                  child:  Center(
                    child: InkWell(
                      onTap: (){
                        Navigator.pushNamed(context, "/screen4");
                      },
                      child: const Text(" Login",style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: "fontMain1"
                      ),),
                    ),
                  ),
                ),

              ],

            ),
            SizedBox(height: 20,),
          ],
        ),
      ),
    );
  }
}
