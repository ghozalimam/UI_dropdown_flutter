import 'package:animated_custom_dropdown/custom_dropdown.dart';
import 'package:flutter/material.dart';
import 'dart:developer';

class Job {
  final String name;
  final IconData icon;
  const Job(this.name, this.icon);

  @override
  String toString() {
    return name;
  }
}

const List<Job> _list = [
  Job('Developer', Icons.developer_mode),
  Job('Designer', Icons.design_services),
  Job('Consultant', Icons.account_balance),
  Job('Student', Icons.school),
];

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Custom Dropdown'),
        ),
        body: SimpleDropdown(),
      ),
    );
  }
}

class SimpleDropdown extends StatelessWidget {
  const SimpleDropdown({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomDropdown<Job>(
      hintText: 'Select job role',
      items: _list,
      onChanged: (value) {
        log('changing value to: $value');
      },
    );
  }
}
