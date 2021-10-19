import 'package:flutter/material.dart';
import 'package:uy_ishi/steplar/second_page.dart';

class StepPage extends StatefulWidget {
  const StepPage({Key? key}) : super(key: key);

  @override
  _StepPageState createState() => _StepPageState();
}

class _StepPageState extends State<StepPage> {
  TextEditingController _userNameController = TextEditingController();
  TextEditingController _userEmailController = TextEditingController();
  TextEditingController _userPasswordController = TextEditingController();
  int _aktivStep = 0;
  bool hato = false;

  List<Step> steplarimiz = [];

  var _keyUsername = GlobalKey<FormFieldState>();
  var _keyEmail = GlobalKey<FormFieldState>();
  var _keyPassword = GlobalKey<FormFieldState>();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    steplarimiz = _steplar();
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "Stepper Example",
            style: TextStyle(
              color: Colors.black,
            ),
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Stepper(
          currentStep: _aktivStep,
          onStepContinue: () {
            if (_aktivStep < steplarimiz.length - 1) {
              if (_keyUsername.currentState!.validate() && _aktivStep == 0) {
                setState(() {
                  _aktivStep += 1;
                });
              }
              if (_keyEmail.currentState!.validate() && _aktivStep == 1) {
                setState(() {
                  _aktivStep += 1;
                  
                });
              }
              if (_keyPassword.currentState!.validate() && _aktivStep == 2) {
                setState(() {
                  _aktivStep += 1;
                  
                });
              }
            }
            if (_aktivStep == steplarimiz.length - 1) {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SecondUiPage(),
                ),
              );
            }
          },
          onStepCancel: () {
            if (_aktivStep > 0) {
              setState(() {
                _aktivStep -= 1;
              });
            }
          },
          steps: _steplar(),
        ),
      ),
    );
  }

  List<Step> _steplar() {
    return [
      // Step user name
      Step(
        isActive: _aktivStep == 0 ? true : false,
        title: Text(
          "Username Kiriting",
        ),
        content: Padding(
          padding: EdgeInsets.all(10.0),
          child: TextFormField(
            key: _keyUsername,
            controller: _userNameController,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: "Username...",
              labelText: "Username",
            ),
            validator: (usernameText) {
              if (usernameText!.length < 5) {
                return "Kamida 5ta belgi bo'lsin";
              }
            },
          ),
        ),
        subtitle: Text("Username Shu yerda kiriting"),
        state: _steplarniTekshir(0),
      ),

      /// step for email
      Step(
        isActive: _aktivStep == 1 ? true : false,
        title: Text(
          "Email Kiriting",
        ),
        content: Padding(
          padding: EdgeInsets.all(10.0),
          child: TextFormField(
            key: _keyEmail,
            controller: _userEmailController,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: "Email...",
              labelText: "Email",
            ),
            validator: (useremailText) {
              if (useremailText!.length < 5) {
                return "Kamida 5ta belgi bo'lsin";
              }
            },
          ),
        ),
        subtitle: Text("Email Shu yerda kiriting"),
        state: _steplarniTekshir(1),
      ),
      // step for password
      Step(
        isActive: _aktivStep == 2 ? true : false,
        title: Text(
          "Password Kiriting",
        ),
        content: Padding(
          padding: EdgeInsets.all(10.0),
          child: TextFormField(
            key: _keyPassword,
            controller: _userPasswordController,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: "Password...",
              labelText: "Password",
            ),
            validator: (userpasswordText) {
              if (userpasswordText!.length < 5) {
                return "Kamida 5ta belgi bo'lsin";
              }
            },
          ),
        ),
        subtitle: Text("Password Shu yerda kiriting"),
        state: _steplarniTekshir(2),
      )
    ];
  }

  _steplarniTekshir(int stepIndex) {
    if (_aktivStep == stepIndex) {
      print("If bajarildi");
      if (hato) {
        return StepState.error;
      } else {
        return StepState.editing;
      }
    } else {
      return StepState.complete;
    }
  }
}
