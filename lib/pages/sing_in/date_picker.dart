import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DatePicker extends StatefulWidget {
  _DatePicker createState() => _DatePicker();
}

class _DatePicker extends State<DatePicker> {
  DateTime selectedDate = DateTime.now();

  Future<void> _selectDate(BuildContext context) async {
    final DateTime picked = await showDatePicker(
        context: context,
        cancelText: 'Annuler',
        confirmText: 'Ok',
        locale: Locale('fr'),
        initialDate: selectedDate,
        firstDate: DateTime(1900),
        lastDate: DateTime(2101));
    if (picked != null && picked != selectedDate)
      setState(() {
        selectedDate = picked;
      });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
            "Date de naissance : ${DateFormat('dd-MM-yyyy').format(selectedDate.toLocal())}"),
        SizedBox(
          height: 20.0,
          width: 25.0,
        ),
        Ink(
            decoration: const ShapeDecoration(
                shape: CircleBorder(), color: Colors.lightBlue),
            child: IconButton(
              icon: const Icon(Icons.calendar_today_outlined),
              onPressed: () => _selectDate(context),
            ))
      ],
    );
  }
}
