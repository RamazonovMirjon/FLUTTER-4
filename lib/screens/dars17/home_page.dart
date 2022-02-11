import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyCheckbox extends StatefulWidget {
  const MyCheckbox({Key? key}) : super(key: key);

  @override
  _MyCheckboxState createState() => _MyCheckboxState();
}

class _MyCheckboxState extends State<MyCheckbox> {
  bool _checkbox = false, _checkboxListTitle = false;
  String _radioValue = '';
  var _swichValue = false;
  double _sliderValue = 0;
  String? _rang;

  DateTime _now = DateTime.now();
  DateTime _firstData = DateTime(2000);
  DateTime _lastData = DateTime(2050);

  TimeOfDay _initalTime = TimeOfDay.now();

  @override
  Widget build(BuildContext context) => Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              Expanded(
                child: Column(
                  children: [
                    const Text("Shartlarga Rozimisiz?"),
                    Transform.scale(
                      scale: 2.0,
                      child: Checkbox(
                        value: _checkbox,
                        onChanged: (status) {
                          setState(() {
                            _checkbox = !_checkbox;
                          });
                        },
                      ),
                    ),
                    CheckboxListTile(
                      title: const Text("Shartlarga Rosiman"),
                      subtitle: const Text("Shartlar"),
                      value: _checkboxListTitle,
                      onChanged: (status) {
                        setState(() {
                          _checkboxListTitle = !_checkboxListTitle;
                        });
                      },
                    ),
                    Row(
                      children: [
                        Radio(
                          value: '7',
                          groupValue: _radioValue,
                          onChanged: (v) {
                            setState(() {
                              _radioValue = '7';
                            });
                          },
                        ),
                        Transform.scale(
                          scale: .6,
                          child: Radio(
                            value: '8',
                            groupValue: _radioValue,
                            onChanged: (v) {
                              setState(() {
                                _radioValue = '8';
                              });
                            },
                          ),
                        ),
                        Transform.scale(
                          scale: 1.0,
                          child: Radio(
                            value: '9',
                            groupValue: _radioValue,
                            onChanged: (v) {
                              setState(() {
                                _radioValue = '9';
                              });
                            },
                          ),
                        ),
                        Radio(
                          value: '10',
                          groupValue: _radioValue,
                          onChanged: (v) {
                            setState(() {
                              _radioValue = '10';
                            });
                          },
                        ),
                      ],
                    ),
                    Switch(
                      value: _swichValue,
                      onChanged: (status) {
                        setState(() {
                          _swichValue = !_swichValue;
                        });
                      },
                      thumbColor: MaterialStateProperty.all(Colors.amber),
                    ),
                    SwitchListTile.adaptive(
                      value: _swichValue,
                      onChanged: (status) {
                        setState(() {
                          _swichValue = !_swichValue;
                        });
                      },
                    ),
                    Slider.adaptive(
                      value: _sliderValue,
                      onChanged: (v) {
                        setState(() {
                          _sliderValue = v;
                          debugPrint("VALUE $_sliderValue");
                        });
                      },
                      activeColor: Colors.red,
                      min: 0,
                      max: 100,
                      divisions: 100,
                      thumbColor: Colors.red,
                      label: "${_sliderValue.toInt()}",
                    ),
                    DropdownButtonHideUnderline(
                      child: DropdownButton(
                        icon: const Icon(Icons.add),
                        items: [
                          DropdownMenuItem(
                            child: Row(
                              children: const [
                                CircleAvatar(
                                  backgroundColor: Colors.green,
                                ),
                                Text('Yashil'),
                              ],
                            ),
                            value: 'green',
                          ),
                          DropdownMenuItem(
                            child: Row(
                              children: const [
                                CircleAvatar(
                                  backgroundColor: Colors.yellow,
                                ),
                                Text('Sariq'),
                              ],
                            ),
                            value: 'yellow',
                          ),
                          DropdownMenuItem(
                            child: Row(
                              children: const [
                                CircleAvatar(
                                  backgroundColor: Colors.red,
                                ),
                                Text('qizil'),
                              ],
                            ),
                            value: 'red',
                          ),
                        ],
                        onChanged: (data) {
                          setState(() {
                            _rang = data.toString();
                          });
                        },
                        hint: const Text("Tanlang..."),
                        value: _rang,
                      ),
                    ),
                  ],
                ),
              ),
              ElevatedButton(
                child: const Text("Select a date"),
                onPressed: () {
                  showDatePicker(
                    context: context,
                    initialDate: _now,
                    firstDate: _firstData,
                    lastDate: _lastData,
                  ).then(
                    (value) => debugPrint("DATE: $value"),
                  );
                },
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(primary: Colors.cyan),
                child: const Text("Select a date"),
                onPressed: () {
                  showTimePicker(context: context, initialTime: _initalTime)
                      .then(
                    (value) => debugPrint("DATE: $value"),
                  );
                },
              ),
              CupertinoButton(
                child: Text("IOS DATE"),
                onPressed: () {
                  showCupertinoModalPopup(
                      barrierDismissible: true,
                      context: context,
                      builder: (context) => Container(
                            color: Colors.greenAccent,
                            height: MediaQuery.of(context).size.height * 0.3,
                            child:
                                CupertinoDatePicker(onDateTimeChanged: (data) {
                              print('DATE IOS: $data');
                            },
                            mode: CupertinoDatePickerMode.dateAndTime,),
                          ));
                },
              )
            ],
          ),
        ),
      );
}
