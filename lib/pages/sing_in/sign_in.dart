import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grouped_buttons/grouped_buttons.dart';
import 'package:nec/pages/sing_in/date_picker.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  var steps = 4;

  // default date
  DateTime selectedDate = DateTime.now();

  int currentStep = 0;
  bool complete = false;

  next() {
    currentStep + 1 != steps
        ? goTo(currentStep + 1)
        : setState(() => complete = true);
  }

  cancel() {
    if (currentStep > 0) {
      goTo(currentStep - 1);
    }
  }

  goTo(int step) {
    setState(() => currentStep = step);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(title: Text('')),
            body: Column(children: <Widget>[
              complete
                  ? Expanded(
                      child: Center(
                      child: AlertDialog(
                        title: new Text('Confirmation'),
                        content: new Text(
                            'Inscription confirmée ! Vous recevrez un mail de confirmation dans votre boîte mail.'),
                        actions: [
                          new ElevatedButton(
                              child: new Text('OK'),
                              onPressed: () {
                                setState(() => complete = false);
                                Navigator.pop(context);
                              })
                        ],
                      ),
                    ))
                  : Expanded(
                      child: Stepper(
                        steps: [
                          Step(
                            title: const Text(''),
                            isActive: currentStep >= 0,
                            state: currentStep >= 0
                                ? StepState.complete
                                : StepState.disabled,
                            content: Column(
                              children: <Widget>[
                                TextFormField(
                                  decoration: InputDecoration(labelText: 'Nom'),
                                ),
                                TextFormField(
                                    decoration: const InputDecoration(
                                        hintText: 'Prénom')),
                                TextFormField(
                                    decoration: const InputDecoration(
                                        hintText: 'email')),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                      height: 20.0,
                                    ),
                                    DatePicker(),
                                  ],
                                )
                              ],
                            ),
                          ),
                          Step(
                            title: const Text(''),
                            isActive: currentStep >= 0,
                            state: currentStep >= 1
                                ? StepState.complete
                                : StepState.disabled,
                            content: Column(
                              children: <Widget>[
                                CheckboxGroup(labels: <String>[
                                  "Dépassement de soi",
                                  "Découverte Culturelle",
                                  "RoadTrip",
                                  "Détente/Bien être"
                                ])
                              ],
                            ),
                          ),
                          Step(
                            isActive: currentStep >= 0,
                            state: currentStep >= 2
                                ? StepState.complete
                                : StepState.disabled,
                            title: const Text(''),
                            content: Column(
                              children: <Widget>[
                                CheckboxGroup(labels: <String>[
                                  "VTT",
                                  "VTC/Vélo route",
                                  "Roller",
                                  "Mobilité Electrique"
                                ])
                              ],
                            ),
                          ),
                          Step(
                            isActive: currentStep >= 0,
                            state: currentStep >= 3
                                ? StepState.complete
                                : StepState.disabled,
                            title: const Text(''),
                            content: Column(
                              children: <Widget>[
                                TextFormField(
                                  decoration: const InputDecoration(
                                      hintText: 'Mot de passe'),
                                ),
                                TextFormField(
                                    decoration: const InputDecoration(
                                        hintText: 'Confirmation'))
                              ],
                            ),
                          ),
                        ],
                        type: StepperType.horizontal,
                        currentStep: currentStep,
                        controlsBuilder: (BuildContext context,
                            {onStepContinue, onStepCancel}) {
                          return Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(height: 25.0),
                              Container(
                                child: ElevatedButton(
                                  child: Text('Précédent'),
                                  onPressed: onStepCancel,
                                ),
                              ),
                              ElevatedButton(
                                child: Text('Suivant'),
                                onPressed: onStepContinue,
                                style: ElevatedButton.styleFrom(
                                    primary: Colors.white,
                                    onPrimary: Colors.blueAccent),
                              ),
                            ],
                          );
                        },
                        onStepContinue: next,
                        onStepTapped: (step) => goTo(step),
                        onStepCancel: cancel,
                      ),
                    ),
            ])));
  }
}
