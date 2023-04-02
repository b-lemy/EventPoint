import 'package:digital_invitation_card/screens/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                "Verify Account",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              ),
              const Text("Enter OTP code we sent to +2557892*****"),
              const SizedBox(
                height: 80,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    height: 64,
                    width: 64,
                    child: TextFormField(
                      onChanged: (value) => {
                        if (value.length == 1)
                          {
                            FocusScope.of(context).nextFocus(),
                          }
                      },
                      style: Theme.of(context).textTheme.titleLarge,
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(1),
                        FilteringTextInputFormatter.digitsOnly
                      ],
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(16.0))),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xFFFCB549)),
                            borderRadius:
                                BorderRadius.all(Radius.circular(16.0))),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 64,
                    width: 64,
                    child: TextFormField(
                      onChanged: (value) => {
                        if (value.length == 1)
                          {
                            FocusScope.of(context).nextFocus(),
                          }
                      },
                      style: Theme.of(context).textTheme.titleLarge,
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(1),
                        FilteringTextInputFormatter.digitsOnly
                      ],
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(16.0))),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xFFFCB549)),
                            borderRadius:
                                BorderRadius.all(Radius.circular(16.0))),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 64,
                    width: 64,
                    child: TextFormField(
                      onChanged: (value) => {
                        if (value.length == 1)
                          {
                            FocusScope.of(context).nextFocus(),
                          }
                      },
                      style: Theme.of(context).textTheme.titleLarge,
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(1),
                        FilteringTextInputFormatter.digitsOnly
                      ],
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(16.0))),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xFFFCB549)),
                            borderRadius:
                                BorderRadius.all(Radius.circular(16.0))),
                      ),
                    ),
                  ),
                  SizedBox(
                      height: 64,
                      width: 64,
                      child: TextFormField(
                        onChanged: (value) => {
                          if (value.length == 1)
                            {
                              FocusScope.of(context).nextFocus(),
                            }
                        },
                        style: Theme.of(context).textTheme.titleLarge,
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.center,
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(1),
                          FilteringTextInputFormatter.digitsOnly
                        ],
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(16.0))),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFFFCB549)),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(16.0))),
                        ),
                      )),
                ],
              ),
              const SizedBox(
                height: 80,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const HomeScreen()),
                  );
                },
                child: Container(
                  alignment: Alignment.center,
                  height: 50,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(6)),
                    color: Color(0xFF3D4245),
                  ),
                  child: const Text(
                    'Verify Code',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              const SizedBox(height: 16.0),
            ],
          ),
        ),
      ),
    );
  }
}
