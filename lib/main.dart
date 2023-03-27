import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

void main() => runApp(const WeekNumber());

class WeekNumber extends StatefulWidget {
  const WeekNumber({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => WeekNumberCustomization();
}

class WeekNumberCustomization extends State<WeekNumber> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          body: Card(
            margin: const EdgeInsets.fromLTRB(50, 150, 50, 150),
            child: SafeArea(
              child: SfDateRangePicker(
                monthViewSettings: const DateRangePickerMonthViewSettings(
                    showWeekNumber: true,
                    weekNumberStyle: DateRangePickerWeekNumberStyle(
                        textStyle: TextStyle(
                          color: Colors.amber,
                        ),
                        backgroundColor: Color(0xFFDF5E5E))),
              ),
            ),
          )),
    );
  }
}