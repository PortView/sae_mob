// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

class MinhaGrade extends StatefulWidget {
  const MinhaGrade({
    Key? key,
    this.width,
    this.height,
  }) : super(key: key);

  final double? width;
  final double? height;

  @override
  _MinhaGradeState createState() => _MinhaGradeState();
}

class _MinhaGradeState extends State<MinhaGrade> {
  @override
  Widget build(BuildContext context) {
    return DataTable(
      headingRowColor: MaterialStateProperty.resolveWith<Color?>(
          (Set<MaterialState> states) {
        return Colors.yellow; // Use the default value.
      }),
      columns: [
        DataColumn(label: Text('Nome')),
        DataColumn(label: Text('Idade')),
      ],
      rows: [
        DataRow(cells: [
          DataCell(Text('Roberto')),
          DataCell(Text('67')),
        ]),
        DataRow(cells: [
          DataCell(Text('joão')),
          DataCell(Text('50')),
        ]),
      ],
    );
  }
}
