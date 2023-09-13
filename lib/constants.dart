import 'package:flutter/material.dart';

enum TextFieldId {
  jobId,
  jobSummary,
  skillCategory,
  skillName,
  skillDescription,
}

class Constants {
  static const sectionTitleStyle = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 18,
  );
  static const reviewExpansionTitleStyle = TextStyle(
    fontWeight: FontWeight.bold,
  );
  static const jobTitleStyle = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 24,
  );

  static const editInputDecoration = InputDecoration(
    border: OutlineInputBorder(),
  );
}
