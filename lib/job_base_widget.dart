import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:signed_spacing_flex/signed_spacing_flex.dart';
import 'constants.dart';
import 'data/job.dart';

class JobBaseWidget extends ConsumerWidget {
  JobBaseWidget({
    super.key,
    required this.pageTitle,
    required this.job,
    required this.submitButtonText,
    required this.submitAction,
    required this.jobSummarySection,
    required this.skillSection,
    this.showMessage = false,
    Widget? message,
    Widget? ratingBar,
  }) {
    _message = message ?? Container();
    _ratingBar = ratingBar ?? Container();
  }

  late final Widget _ratingBar;
  late final Widget _message;
  final bool showMessage;
  final String pageTitle;
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
            Align(
              alignment: Alignment.center,
              child: Text(
                pageTitle,
                style: Constants.pageTitleStyle,
              ),
            ),
            Text(job.input.jobTitle, style: Constants.jobTitleStyle),
            SignedSpacingColumn(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 10,
              children: [
                jobDescriptionSection(job),
                Visibility(
                  visible: showMessage,
                  child: _message,
                ),
                _ratingBar,
                submitButtonVisibility(ref, job),
                jobSummarySectionBase(ref),
                Text("Job Skills Categories",
                    style: Constants.skillCategoriesLabelStyle),
                ...job.versions.finalEdit.skillCategories.map(
                  (c) => skillCategorySection(ref, job, c),
                ),
                submitButtonVisibility(ref, job),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget submitButtonVisibility(
    WidgetRef ref,
    CloudantDoc job,
  ) {
    return Visibility(
      visible: !showMessage,
      child: Align(
        alignment: Alignment.centerRight,
        child: submitButton(ref, job),
      ),
    );
  }

  Widget jobDescriptionSection(CloudantDoc j) {
    return ExpansionTile(
      title: Text(
        "View Provided Job Description",
        style: Constants.viewJobDescriptionStyle,
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
          style: Constants.buttonStyle,
        ),
      ),
    );
  }
}
