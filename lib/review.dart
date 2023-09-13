// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:signed_spacing_flex/signed_spacing_flex.dart';
import 'package:wo_wx_final_review/constants.dart';
import 'package:wo_wx_final_review/providers/job_id_provider.dart';
import 'package:wo_wx_final_review/providers/text_controller_provider.dart';

import 'data/job.dart';
import 'data/jobs_repository.dart';

class Review extends ConsumerWidget {
  const Review({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final jobDocumentId = ref.watch(jobIdProvider);
    final job = ref.watch(jobProvider(jobId: jobDocumentId));

    return job.when(
      data: (j) => SizedBox(
        width: MediaQuery.of(context).size.width * 0.8,
        child: Padding(
          padding: const EdgeInsets.all(100),
          child: SignedSpacingColumn(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 20,
            children: [
              Text(j.jobTitle, style: Constants.jobTitleStyle),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 15),
                    child: DecoratedBox(
                      decoration: BoxDecoration(border: Border.all()),
                      child: ExpansionTile(
                        title: const Text('Job Description',
                            style: Constants.sectionTitleStyle),
                        childrenPadding: const EdgeInsets.all(20),
                        children: <Widget>[
                          ListTile(title: Text(j.jobDescription)),
                        ],
                      ),
                    ),
                  ),
                  sectionWidget(
                      ref,
                      TextFieldId.jobSummary,
                      "Job Summary",
                      () => j.jobSummary,
                      j.reviewers.sublist(1),
                      (reviewer) => reviewer.jobSummary),
                  skillsSection(ref, j),
                ],
              ),
            ],
          ),
        ),
      ),
      loading: () => Container(
        child: const Text("Loading"),
      ),
      error: (e, s) => Container(
        child: const Text("Erro"),
      ),
    );
  }

  Widget skillsSection(
    WidgetRef ref,
    Job job,
  ) {
    // HACK
    final skillCategories = List.of([job.skillCategory]);
    final categorySkillsList = job.skills;

    final categoryWidgets = <Widget>[];

    var i = 0;
    var j = 0;
    for (var category in skillCategories) {
      final catWidget = Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Skill Category: $category',
            style: Constants.sectionTitleStyle,
          ),
          ...categorySkillsList.map(
            (s) => Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 15, 0),
              child: Padding(
                padding: const EdgeInsets.only(top: 10),
                child: DecoratedBox(
                  decoration: BoxDecoration(border: Border.all()),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(15, 15, 15, 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 10),
                          child: TextField(
                              decoration: Constants.editInputDecoration
                                  .copyWith(labelText: 'Skill'),
                              controller: ref.read(tecProvider(
                                TextFieldId.skillName,
                                i: i,
                                j: j,
                              ))!
                                ..text = s.name),
                        ),
                        TextField(
                            decoration: Constants.editInputDecoration
                                .copyWith(labelText: 'Description'),
                            controller: ref.read(tecProvider(
                              TextFieldId.skillDescription,
                              i: i,
                              j: j++,
                            ))!
                              ..text = s.description),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      );

      categoryWidgets.add(catWidget);
      i++;
    }

    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 0, 15, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: categoryWidgets,
      ),
    );

    // final List<Widget> skillSections = [];

    // for (var r in j.reviewers.sublist(1)) {
    //   skillSections.add(const Padding(
    //     padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
    //     child: Text('Job Skills Reviews', style: Constants.sectionTitleStyle),
    //   ));

    //   // for (var s in r.skills) {
    //   //           skillSection(ref, r.skillCategory, () => s.description, reviewers, (reviewer) => null);)
    //   // }
    // }

    // return Padding(
    //   padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
    //   child: Column(
    //     children: <Widget>[
    //       const Text('Job Skills', style: Constants.sectionTitleStyle),

    //       Padding(
    //         padding: const EdgeInsets.fromLTRB(40, 20, 40, 20),
    //         child: Text(j.skillCategory),
    //       ),

    //       // skillSection(ref, skillName, () => null, reviewers, (reviewer) => null)
    //     ],
    //   ),
    // );
  }

  // Widget skillsCategory(WidgetRef ref, )

  // Widget skillSection(
  //     WidgetRef ref,
  //     String skillName,
  //     String Function() editText,
  //     List<Reviewer> reviewers,
  //     String Function(Reviewer reviewer) reviewerSkillText) {
  //   return sectionWidget(
  //       ref,
  //       TextFieldId.jobSummary,
  //       'Skill: $skillName',
  //       () => editText.call(),
  //       reviewers.sublist(1),
  //       (reviewer) => reviewer.jobSummary);
  // }

  Widget sectionWidget(
      WidgetRef ref,
      textFieldId,
      String title,
      String Function() sectionEditableText,
      List<Reviewer> reviewers,
      String Function(Reviewer reviewer) reviewText) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: DecoratedBox(
        decoration: BoxDecoration(border: Border.all()),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            sectionEditWidget(
                ref, textFieldId, title, sectionEditableText.call()),
            reviewersExpansionPanel(
                reviewers, "Reviews", (reviewer) => reviewText.call(reviewer)),
          ],
        ),
      ),
    );
  }

  Widget sectionEditWidget(
      WidgetRef ref, TextFieldId field, String title, String textToEdit) {
    final c = ref.read(tecProvider(TextFieldId.jobSummary));
    c.text = textToEdit;

    return Padding(
      padding: const EdgeInsets.fromLTRB(15, 15, 15, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Text(
          //   title,
          //   style: Constants.sectionTitleStyle,
          // ),
          TextField(
            decoration: Constants.editInputDecoration
                .copyWith(labelText: 'Job Summary'),
            controller: c,
            maxLines: 100,
            minLines: 5,
          ),
        ],
      ),
    );
  }

  Widget reviewersExpansionPanel(List<Reviewer> reviewers, String title,
      String Function(Reviewer reviewer) reviewText) {
    List<Widget> reviews = [];

    reviews.add(const Divider());
    for (var reviewer in reviewers) {
      if (reviewText.call(reviewer).trim().isNotEmpty) {
        reviews.add(Text(reviewer.reviewer));
        reviews.add(reviewTextWidget(reviewText, reviewer));
        reviews.add(const Divider());
      }
    }

    return ExpansionTile(
      expandedCrossAxisAlignment: CrossAxisAlignment.start,
      title: Text(
        title,
        style: Constants.reviewExpansionTitleStyle,
      ),
      childrenPadding: const EdgeInsets.all(20),
      children: reviews,
    );
  }

  Widget reviewTextWidget(
          String Function(Reviewer reviewer) reviewText, Reviewer reviewer) =>
      Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            child: ListTile(title: Text(reviewText.call(reviewer))),
          ),
          IconButton(
            icon: const Icon(Icons.check),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.copy_all),
            onPressed: () {},
          ),
        ],
      );
}
