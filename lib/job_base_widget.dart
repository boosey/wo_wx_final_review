import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:signed_spacing_flex/signed_spacing_flex.dart';

import 'constants.dart';
import 'data/job.dart';

class JobBaseWidget extends ConsumerWidget {
  const JobBaseWidget({
    super.key,
    required this.job,
    required this.submitButtonText,
    required this.submitAction,
    required this.jobSummarySection,
    required this.skillSection,
  });

  final CloudantDoc job;
  final String submitButtonText;
  final void Function() submitAction;
  final Widget Function() jobSummarySection;
  final Widget Function({
    required WidgetRef ref,
    required CloudantDoc job,
    required SkillCategory category,
    required Skill skill,
  }) skillSection;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.8,
      child: Padding(
        padding: const EdgeInsets.all(100),
        child: SignedSpacingColumn(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 10,
          children: [
            Text(job.input.jobTitle, style: Constants.jobTitleStyle),
            SignedSpacingColumn(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 10,
              children: [
                jobDescriptionSection(job),
                Align(
                  alignment: Alignment.centerRight,
                  child: submitButton(ref, job),
                ),
                jobSummarySectionBase(ref),
                Text("Job Skills Categories",
                    style: Constants.skillCategoriesLabelStyle),
                ...job.versions.finalEdit.skillCategories.map(
                  (c) => skillCategorySection(ref, job, c),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: submitButton(ref, job),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget jobDescriptionSection(CloudantDoc j) {
    return ExpansionTile(
      title: Text(
        "View Provided Job Description",
        style: Constants.viewJobDescription,
      ),
      childrenPadding: const EdgeInsets.all(20),
      children: <Widget>[
        Text(
          j.input.jobDescription,
        ),
      ],
    );
  }

  Widget jobSummarySectionBase(WidgetRef ref) {
    return section(
      "Job Summary",
      () => jobSummarySection(),
    );
  }

  Widget skillCategorySection(WidgetRef ref, job, SkillCategory category) {
    return section(
      category.name,
      () => SignedSpacingColumn(
        spacing: 40,
        children: category.skills
            .map(
              (skill) => skillSection(
                ref: ref,
                job: job,
                category: category,
                skill: skill,
              ),
            )
            .toList(),
      ),
    );
  }

  Widget section(String sectionTitle, Widget Function() contents) {
    return DecoratedBox(
      decoration: BoxDecoration(border: Border.all()),
      child: ExpansionTile(
        title: Text(sectionTitle, style: Constants.sectionTitleStyle),
        childrenPadding: const EdgeInsets.all(20),
        children: <Widget>[
          contents.call(),
        ],
      ),
    );
  }

  MaterialButton submitButton(WidgetRef ref, CloudantDoc j) {
    return MaterialButton(
      onPressed: () {
        submitAction();
      },
      color: Colors.blue[800],
      child: Padding(
        padding: const EdgeInsets.fromLTRB(0, 15, 0, 15),
        child: Text(
          submitButtonText,
          style: Constants.submitFinalVersionButton,
        ),
      ),
    );
  }
}
