import 'package:flutter/material.dart';
import 'package:grouped_buttons/grouped_buttons.dart';
import 'package:nec/style/theme.dart';
import 'package:nec/widget/RangePage.dart';
import 'package:nec/widget/drawer.dart';
import 'package:nec/widget/levelWidget.dart';

class Proximity extends StatefulWidget {
  @override
  _ProximityState createState() => _ProximityState();
}

class _ProximityState extends State<Proximity> {
  var steps = 3;

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
                          content: RangePage(),
                        ),
                        Step(
                          title: const Text(''),
                          isActive: currentStep >= 0,
                          state: currentStep >= 1
                              ? StepState.complete
                              : StepState.disabled,
                          content: levelWidget(context),
                        ),
                        Step(
                          title: const Text(''),
                          isActive: currentStep >= 0,
                          state: currentStep >= 2
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
                            style: ElevatedButton.styleFrom(
                            primary: Colors.cyan,),
                              child: Text('Précédent'),
                              onPressed: onStepCancel,
                            ),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: Colors.white,
                                onPrimary: Colors.cyan),
                              child: Text('Suivant'),
                              onPressed: onStepContinue,
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
