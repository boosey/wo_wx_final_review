import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wo_wx_final_review/providers/job_id_provider.dart';

import 'home_page.dart';

void main(List<String> args) {
  final q = Uri.base.queryParameters;
  // Global variable for job id sent in on the uri.
  // This is the only place it should ever be set
  // All other access should be through the provider - jobIdProvider
  //
  j = q.containsKey("job") ? q['job']! : "";
  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
  });

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(
        title: 'Job Information Consolidation',
        // job: job,
      ),
    );
  }
}
