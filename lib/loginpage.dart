import 'package:flutter/material.dart';
import 'package:podcast/method.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var formkey = GlobalKey<FormState>();
  bool male = true;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              //TODO Logo_Title_Caption Section
              Center(
                child: Column(
                  children: [
                    Image.asset(
                      'assets/images/logo.png',
                      height: size.height / 5,
                    ),
                    const Text(
                      "Let's Join Us Babe...!",
                      style: TextStyle(
                          fontWeight: FontWeight.w800,
                          fontSize: 30,
                          color: Colors.white),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        textAlign: TextAlign.center,
                        maxLines: 4,
                        "Create Your Podcast Profile Account That You Can Upload And Download Many Podcast In The App and Like And Comment Them...Let's Try!!",
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            height: 1.5,
                            fontWeight: FontWeight.w800,
                            fontSize: 15,
                            color: Colors.grey),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              //TODO Form TextField Section
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Form(
                    key: formkey,
                    child: Column(
                      children: [
                        TextFormField(
                          keyboardType: TextInputType.name,
                          decoration:
                              const InputDecoration(hintText: "First Name"),
                        ),
                        const SizedBox(
                          height: 14,
                        ),
                        TextFormField(
                          keyboardType: TextInputType.emailAddress,
                          decoration:
                              const InputDecoration(hintText: "Email Address"),
                          validator: (value) => validateEmail(value),
                        ),
                        const SizedBox(
                          height: 14,
                        ),
                        TextFormField(
                          keyboardType: TextInputType.number,
                          decoration: const InputDecoration(hintText: "Age"),
                        ),
                        const SizedBox(
                          height: 14,
                        ),
                        TextFormField(
                          keyboardType: TextInputType.name,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "The Username Field Must Be fill.";
                            }
                            if (value.length > 10) {
                              return "oooops!!The Value is Out Of Range!";
                            }
                          },
                          decoration:
                              const InputDecoration(hintText: "User Name"),
                        ),
                        const SizedBox(
                          height: 14,
                        ),
                        TextFormField(
                          obscureText: true,
                          keyboardType: TextInputType.text,
                          decoration:
                              const InputDecoration(hintText: "Password"),
                        ),
                      ],
                    )),
              ),
              //TODO Gender Section
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 175,
                      height: 49,
                      child: TextButton(
                          onPressed: () {
                            setState(() {
                              male = !male;
                            });
                          },
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                            male != true
                                ? const Color(0xffFF8C42)
                                : const Color.fromARGB(178, 189, 196, 167),
                          )),
                          child: const Text(
                            "Male",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          )),
                    ),
                    const SizedBox(
                      width: 23,
                    ),
                    SizedBox(
                      width: 175,
                      height: 49,
                      child: TextButton(
                          onPressed: () {
                            setState(() {
                              male = !male;
                            });
                          },
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                            male == true
                                ? const Color(0xffFF8C42)
                                : const Color.fromARGB(178, 189, 196, 167),
                          )),
                          child: const Text(
                            "Female",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          )),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              //TODO Submit Button Section
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  height: 48,
                  width: 393,
                  child: TextButton(
                    style: Theme.of(context).textButtonTheme.style!.copyWith(
                        backgroundColor:
                            MaterialStateProperty.all(const Color(0xff613F75))),
                    onPressed: (() {
                      formkey.currentState!.validate();
                    }),
                    child: const Text(
                      "Join US",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    "Already Have Account?",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                  Text(
                    " Sign In",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ],
              ),
              const SizedBox(
                height: 64,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
