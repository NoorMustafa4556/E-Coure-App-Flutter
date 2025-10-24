import 'package:flutter/material.dart';
import '../components/email_box.dart';
import '../components/main_button.dart';
import '../components/password_box.dart';
import 'package:url_launcher/url_launcher.dart';

class Screen4 extends StatefulWidget {

  const Screen4({super.key});

  @override
  State<Screen4> createState() => _Screen4State();
}

class _Screen4State extends State<Screen4> {
  bool _isChecked = false;
  Future<void> openUrl(String url) async {
    if (!await launchUrl(Uri.parse(url),
        mode: LaunchMode.externalApplication)) {
      throw Exception("could not fount $url");
    }
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              const SizedBox(height: 90,),
              Container(
                height: 37,
                width: double.infinity,
              margin: const EdgeInsets.symmetric(horizontal: 20),
                child: const Text("Hello!",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 28,fontFamily: "fontMain1"),),
              ),
              Container(
                height: 42,
                width: double.infinity,
                margin: const EdgeInsets.symmetric(horizontal: 20),
                child: const Text("Welcome Back",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 28,fontFamily: "fontMain1"),),
              ),
              const SizedBox(height: 25,),
            const   EmailBox(textFieldName: 'Email',),
              const SizedBox(height: 15),
             const   PasswordBox(
               textBox:"Password",
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
                        const Text("Remeber me",style: TextStyle(
                          fontSize: 12,
                          fontFamily: "fontMain1",
                          wordSpacing: 2,
                        ),)
                      ],
                    ),
                     Flexible(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          GestureDetector(

                            child: const Text("Forgot password?",style: TextStyle(
                              fontSize: 12,
                              fontFamily: "fontMain1",
                              wordSpacing: 2,
                            ),),
                            onTap: (){
                              Navigator.pushNamed(context, "/screen6");
                            },
                          ),
                        ],
                      ),
                    ),

                  ],
                ),
              ),
            GestureDetector(
              onTap: (){
                Navigator.pushNamed(context, "/screen8");
              },
              child: const   MainButton(
              buttonText: 'Login',
              ),
            ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 20),

                child: Row(
                  children: [
                    Flexible(
                      child: Divider(
                        color: Colors.grey.withOpacity(0.3),
                      ),
                    ),
                    const Text(" Or ",style: TextStyle(
                      color: Colors.grey,
                    ),),
                    Flexible(
                      child: Divider(
                        color: Colors.grey.withOpacity(0.3),

                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 30,),
              GestureDetector(
                onTap: (){
                  openUrl("https://www.facebook.com/");
                },
                child: Container(
                  height: 40,
                  width: double.infinity,
                  margin: const EdgeInsets.symmetric(horizontal: 30,),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(color: Colors.grey.withOpacity(0.2))
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 20,
                        width: 20,

                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: AssetImage(
                              "assets/images/facebook.png"
                            ),
                            fit: BoxFit.cover,
                          )
                        ),
                      ),
                      const SizedBox(width: 10,),
                      const Text("Continue With Facebook",style: TextStyle(
                       fontFamily: "fontMain1",
                        fontSize: 12,

                      ),)
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20,),
              GestureDetector(
                onTap: (){
                  openUrl("https://www.google.com/");
                },
                child: Container(
                  height: 40,
                  width: double.infinity,
                  margin: const EdgeInsets.symmetric(horizontal: 30,),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(color: Colors.grey.withOpacity(0.2))
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 20,
                        width: 20,

                        decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: AssetImage(
                                  "assets/images/google.png"
                              ),
                              fit: BoxFit.cover,
                            )
                        ),
                      ),
                      const SizedBox(width: 10,),
                      const Text("Continue With Google",style: TextStyle(
                        fontFamily: "fontMain1",
                        fontSize: 12,

                      ),)
                    ],
                  ),
                ),
              ),

                  const   SizedBox(height: 100,),
             Row(
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 Container(
                   margin: const EdgeInsets.only(top: 90),
                   child: const Center(
                     child: Text("Dont't have an account?",style: TextStyle(
                       color: Colors.grey
                     ),),
                   ),
                 ),
                 Container(
                   margin: const EdgeInsets.only(top: 90),
                   child:  Center(
                     child: InkWell(
                       onTap: (){
                         Navigator.pushNamed(context, "/screen5");
                       },
                       child: const Text(" Register",style: TextStyle(
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
