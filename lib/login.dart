import 'package:crm_app_pr/dashboard.dart';
import 'package:flutter/material.dart';

class CRM extends StatefulWidget {
  const CRM({super.key});

  @override
  State<CRM> createState() => _CRMState();
}

class _CRMState extends State<CRM> {
  bool? isChecked = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFFF2F2F2),
        body: ListView(
          shrinkWrap: true,
          reverse: true,
          children: [
            Center(
              child: Column(children: [
                Padding(
                  padding: const EdgeInsets.only(top: 25),
                  child: Container(
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 30),
                          child: Image(image: AssetImage('images/crm.png')),
                        ),
                        SizedBox(width: 20),
                        Padding(
                          padding: EdgeInsets.only(top: 30),
                          child: Text('Woorkroom',
                              style:
                                  TextStyle(color: Colors.blue, fontSize: 24)),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.white,
                    ),
                    child: Column(
                      children: [
                        const SizedBox(height: 20),
                        const Text(
                          'Sign In to Woorkroom',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 22,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 40),
                        const Padding(
                          padding: EdgeInsets.only(left: 20),
                          child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Email Address',
                                style: TextStyle(fontSize: 17),
                              )),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50)),
                            child: Column(
                              children: [
                                TextFormField(
                                  keyboardType: TextInputType.emailAddress,
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    hintText: 'youremail@gmail.com',
                                  ),
                                ),
                                const SizedBox(height: 20),
                                const Padding(
                                  padding: EdgeInsets.only(left: 10),
                                  child: Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        'Password',
                                        style: TextStyle(fontSize: 18),
                                      )),
                                ),
                                const SizedBox(height: 20),
                                TextFormField(
                                  keyboardType: TextInputType.number,
                                  decoration: InputDecoration(
                                    // suffixIconConstraints: const BoxConstraints(
                                    //   minHeight: 24,
                                    //   minWidth: 50,
                                    // ),
                                    suffixIcon:
                                        const Icon(Icons.remove_red_eye),
                                    border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    hintText: '........',
                                    hintStyle: const TextStyle(fontSize: 20),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Checkbox(
                                value: isChecked,
                                tristate: false,
                                onChanged: (newBool) {
                                  setState(() {
                                    isChecked = newBool;
                                  });
                                }),
                            const Text(
                              'Remember me',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 12),
                            ),
                            const SizedBox(width: 60),
                            TextButton(
                              onPressed: () {},
                              child: const Text(
                                'Forgot Password?',
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 12),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: SizedBox(
                            width: 400,
                            height: 60,
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                ),
                                onPressed: () {
                                  // Navigator.pushNamed(
                                  //     context, Dashboard.routeName);
                                  Navigator.pushNamed(
                                      context, Dashboard.routeName);
                                },
                                child: const Text(
                                  'Sign In >',
                                  style: TextStyle(fontSize: 20),
                                )),
                          ),
                        ),
                        TextButton(
                            onPressed: () {},
                            child: const Text(
                              'Don`t have an account?',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ))
                      ],
                    ),
                  ),
                ),
              ]),
            )
          ].reversed.toList(),
        ),
      ),
    );
  }
}
