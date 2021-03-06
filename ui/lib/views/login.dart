import 'package:charity_desktop/network/login_api.dart';
import 'package:flutter/material.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key key}) : super(key: key);

  @override
  _LoginViewState createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final userName = TextEditingController();
  final password = TextEditingController();
  String textDisplay;
  void onSubmit() {
    setState(() {
      print(userName.text);
      if (userName.text.length == 0) {
        textDisplay = "Invalid Username";
      } else if (password.text.length == 0 && userName.text.length > 0) {
        textDisplay = "Invalid Password";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 400,
          height: 400,
          child: CustomScrollView(slivers: [
            SliverFillRemaining(
              hasScrollBody: false,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      children: [
                        TextField(
                          controller: userName,
                          decoration: InputDecoration(
                            labelText: "Username",
                            labelStyle: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          keyboardType: TextInputType.emailAddress,
                          onSubmitted: (_) => onSubmit(),
                        ),
                        TextField(
                          controller: password,
                          decoration: InputDecoration(
                            labelText: "Password",
                            labelStyle: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          keyboardType: TextInputType.visiblePassword,
                          onSubmitted: (_) => onSubmit(),
                        ),
                        TextButton(
                          onPressed: () async {
                            await login(userName.text, password.text)
                                .then((is_loggedin) {})
                                .onError((error, stackTrace) {
                              final snackBar = SnackBar(
                                  backgroundColor: Colors.red[400],
                                  content: Text(
                                    "User with this creadential isn't exist!",
                                    textAlign: TextAlign.center,
                                  ));
                              ScaffoldMessenger.of(context)
                                  .showSnackBar(snackBar);
                            });
                          },
                          child: Text(
                            "Login",
                            style: TextStyle(color: Colors.redAccent[700]),
                          ),
                        )
                      ],
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      FlatButton(
                        child: Text(
                          "Not a User. Sign Up Here.",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                          ),
                        ),
                        onPressed: () {},
                      ),
                    ],
                  )
                ],
              ),
            )
          ]),
        ),
      ),
    );
  }
}
