import 'package:flutter/material.dart';
import 'package:grouped_buttons/grouped_buttons.dart';
import 'package:nec/sing_in/date_picker.dart';
import 'package:nec/style/theme.dart';
import 'package:nec/widget/destinationMystery.dart';
import 'package:nec/widget/drawer.dart';
import 'package:nec/widget/levelWidget.dart';

class Mystery extends StatefulWidget {
  @override
  _MysteryState createState() => _MysteryState();
}

class _MysteryState extends State<Mystery> {
  var steps = 4;

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
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: mainTheme,
        home: SafeArea(
            child: Scaffold(
                appBar: AppBar(),
                drawer: drawer(context),
                body: Column(children: <Widget>[
                  complete
                      ? Navigator.of(context).pushNamed("/listPage")
                      : Expanded(
                    child: Stepper(
                      steps: [
                        Step(
                          title: const Text(''),
                          isActive: currentStep >= 0,
                          state: currentStep >= 0
                              ? StepState.complete
                              : StepState.disabled,
                          content: levelWidget(context),
                        ),
                        Step(
                          title: const Text(''),
                          isActive: currentStep >= 0,
                          state: currentStep >= 1
                              ? StepState.complete
                              : StepState.disabled,
                          content: destinationMystery(context),
                        ),
                        Step(
                          title: const Text(''),
                          isActive: currentStep >= 0,
                          state: currentStep >= 2
                              ? StepState.complete
                              : StepState.disabled,
                          content: Column(
                            children: [
                              DatePicker(string: "Date de début"),
                              DatePicker(string: "Date de fin"),
                            ],
                          ),
                        ),
                        Step(
                          title: const Text(''),
                          isActive: currentStep >= 0,
                          state: currentStep >= 3
                              ? StepState.complete
                              : StepState.disabled,
                          content: Column(
                            children: <Widget>[
                              Text("Préférences", style: Theme.of(context).textTheme.headline1),
                              CheckboxGroup(labels: <String>[
                                "Dépassement de soi",
                                "Découverte Culturelle",
                                "RoadTrip",
                                "Détente/Bien être"
                              ])
                            ],
                          ),
                        ),
                      ],
                      type: StepperType.horizontal,
                      currentStep: currentStep,
                      controlsBuilder: (BuildContext context,
                          {onStepContinue, onStepCancel}) {
                        return Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            ElevatedButton(
                              child: Text('Précédent'),
                              onPressed: onStepCancel,
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
                  )
                ]
                )
            )
        )
    );
  }
}
