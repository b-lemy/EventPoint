import 'package:digital_invitation_card/screens/home.dart';
import 'package:digital_invitation_card/screens/signup_screen.dart';
import 'package:flutter/material.dart';



class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
    



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: SingleChildScrollView(child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
      
          children: [
          SizedBox(height: 300,
           width: 200,
           child:Image.asset('assets/Group 300.png'),
            ),
            const TextField(decoration: InputDecoration(
            
                              labelText: "Phone number",
                              hintText: "Enter phone number",
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(6)),
                              ),
                              
                              focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.teal)),
                          ),
                          keyboardType: TextInputType.number,),
                        
            
            const SizedBox(height: 10,),
            
                        const  TextField(
                          
                          obscureText: true,
                          decoration: InputDecoration(
                            
                              labelText: "Password",
                              
                              suffixIcon: Icon(Icons.lock),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(6)),
                              ),
                               focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.teal)),
                          ),
        
                      ),
                       Row(
                         mainAxisAlignment: MainAxisAlignment.end,
                         children: [
                           TextButton(
                            onPressed: () => {
      
            },
                             child:const Text("Forgot Password",
                               style: TextStyle(
                                   color: Colors.teal
                               ),
                             ),
                           )
                         ],
                       ),
            GestureDetector(
              onTap: () {
                    Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const HomeScreen()),);
              },
                        child: Container(
                          alignment: Alignment.center,
                          height: 50,
                          decoration: const BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(6)),
                              color: Colors.teal
                             
                          ),
                          child: const Text('Login',
                            style: TextStyle(color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        
                      ),
                    const  SizedBox( height: 12,),
                       Row(
                         mainAxisAlignment: MainAxisAlignment.center,
                         children: [
                           const Text("Don't have an account?",
                             style: TextStyle(color: Colors.black,
                               ),
                           ),
                           TextButton(
                             onPressed: () => {
                                  Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const SignUpScreen()),)
            },
                             child:const Text("Sign Up",
                               style: TextStyle(
                                   color: Colors.teal, fontWeight: FontWeight.bold,
                               ),
                             ),
                           )
                         ],
                       ),
          ],
          
        
        
        ),
      )
      ),
    );
  }
}