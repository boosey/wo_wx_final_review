import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wo_wx_final_review/constants.dart';

import 'package:wo_wx_final_review/providers/job_id_provider.dart';
import 'package:wo_wx_final_review/providers/page_provider.dart';

import 'package:wo_wx_final_review/providers/text_controller_provider.dart';
import 'package:wo_wx_final_review/rating.dart';
import 'package:wo_wx_final_review/review.dart';

class HomePage extends ConsumerWidget {
  const HomePage({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final visiblePage = ref.watch(visiblePageProvider);
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        heightFactor: 1,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Visibility(
                visible: ref.read(jobIdProvider).isEmpty,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 400,
                        child: TextField(
                          controller: ref.read(tecProvider("jobId"))!,
                          decoration:
                              const InputDecoration(labelText: 'Job Id'),
                        ),
                      ),
                      MaterialButton(
                        onPressed: () {
                          final tec = ref.read(tecProvider("jobId"));
                          log('jobId: ${tec.text}');
                          ref.read(jobIdProvider.notifier).state = tec.text;
                        },
                        child: const Text("Go"),
                      ),
                    ],
                  ),
                ),
              ),
              Visibility(
                visible: visiblePage == VisiblePage.review,
                child: const Review(),
              ),
              Visibility(
                visible: visiblePage == VisiblePage.rating,
                child: const DiffAndRating(),
              ),
              Visibility(
                visible: visiblePage == VisiblePage.done,
                child: const Center(
                  child: Padding(
                    padding: EdgeInsets.only(top: 100),
                    child: Text(
                      "Thank You",
                      style: Constants.pageTitleStyle,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
