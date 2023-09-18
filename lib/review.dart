// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:signed_spacing_flex/signed_spacing_flex.dart';
import 'package:wo_wx_final_review/constants.dart';
import 'package:wo_wx_final_review/data/job.dart';
import 'package:wo_wx_final_review/providers/job_id_provider.dart';
import 'package:wo_wx_final_review/providers/text_controller_provider.dart';

import 'data/jobs_repository.dart';

class Review extends ConsumerWidget {
  const Review({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final jobDocumentId = ref.watch(jobIdProvider);
    final job = ref.watch(jobProvider(docId: jobDocumentId));

    return job.when(
      data: (j) => SizedBox(
        width: MediaQuery.of(context).size.width * 0.8,
        child: Padding(
          padding: const EdgeInsets.all(100),
          child: SignedSpacingColumn(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 10,
            children: [
              Text(j.input.jobTitle, style: Constants.jobTitleStyle),
              SignedSpacingColumn(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 10,
                children: [
                  MaterialButton(
                    onPressed: () {
                      saveFinalVersion(ref, j);
                    },
                    child: const Text("Save Final Version"),
                  ),
                  jobDescriptionSection(j),
                  jobSummarySection(ref, j),
                  const Text("Skills Categories",
                      style: Constants.sectionTitleStyle),
                  ...j.versions.finalEdit.skillCategories.map(
                    (c) => skillCategorySection(ref, j, c),
                  ),
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
        child: const Text("Error"),
      ),
    );
  }

  Future<void> saveFinalVersion(WidgetRef ref, CloudantDoc job) async {
    final finalVersion = DocumentVersion(
      id: job.id,
      submitted: job.versions.finalEdit.submitted,
      creationTime: job.versions.finalEdit.creationTime,
      modificationTime: job.versions.finalEdit.modificationTime,
      jobSummary: ref.read(tecProvider("jobSummary")).text,
      skillCategories: job.versions.finalEdit.skillCategories
          .map(
            (cat) => cat.copyWith(
              skills: cat.skills
                  .map(
                    (s) => s.copyWith(
                      name: ref.read(tecProvider('${s.id}.skill.name')).text,
                      description: ref
                          .read(tecProvider('${s.id}.skill.description'))
                          .text,
                    ),
                  )
                  .toList(),
            ),
          )
          .toList(),
    );
    await ref.read(jobsRepositoryProvider).submitFinalVersion(
          id: job.id,
          submitter: "cassie@delta.com",
          finalVersion: finalVersion,
        );
  }

  Widget jobDescriptionSection(CloudantDoc j) {
    return section("Job Description", () => Text(j.input.jobDescription));
  }

  Widget jobSummarySection(WidgetRef ref, CloudantDoc j) {
    return section(
      "Job Summary",
      () => simpleReviewSection(
        ref: ref,
        fieldId: "jobSummary",
        initialValue: j.versions.finalEdit.jobSummary,
        reviews: j.collectJobSummaryReviews(),
      ),
    );
  }

  Widget skillCategorySection(WidgetRef ref, job, SkillCategory category) {
    return section(
      category.name,
      () => SignedSpacingColumn(
        spacing: 40,
        children: category.skills
            .map(
              (skill) => skillReviewSection(
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

  Widget skillReviewSection(
      {required WidgetRef ref,
      required CloudantDoc job,
      required SkillCategory category,
      required Skill skill}) {
    return SignedSpacingColumn(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 5,
      children: [
        TextField(
          style: Constants.skillNameEditStyle,
          decoration: Constants.editInputDecoration,
          controller: ref.read(TecProvider('${skill.id}.skill.name'))!
            ..text = skill.name,
        ),
        TextField(
          decoration: Constants.editInputDecoration,
          maxLines: 10,
          minLines: 1,
          controller: ref.read(TecProvider('${skill.id}.skill.description'))!
            ..text = skill.description,
        ),
        skillReviewsList(
            reviews: job.collectSkillReviews(
                skillCategoryId: category.id, skillId: skill.id)),
      ],
    );
  }

  Widget skillReviewsList({required List<SkillReview> reviews}) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(30, 10, 30, 0),
      child: SignedSpacingColumn(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 20,
        children: reviews
            .map((r) => Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      r.reviewer,
                      style: Constants.reviewerStyle,
                    ),
                    Text(r.name),
                    Text(r.description),
                  ],
                ))
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

  Widget simpleReviewSection({
    required WidgetRef ref,
    required String fieldId,
    required String initialValue,
    List<FieldReview> reviews = const [],
  }) {
    return SignedSpacingColumn(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 10,
      children: [
        TextField(
          decoration: Constants.editInputDecoration,
          maxLines: 100,
          minLines: 3,
          controller: ref.read(tecProvider(fieldId))!..text = initialValue,
        ),
        simpleReviewsList(reviews: reviews),
      ],
    );
  }

  Widget simpleReviewsList({List<FieldReview> reviews = const []}) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
      child: SignedSpacingColumn(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 15,
        children: reviews
            .map(
              (r) => SignedSpacingColumn(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 5,
                children: [
                  Text(
                    r.reviewer,
                    style: Constants.reviewerStyle,
                  ),
                  Text(r.review),
                ],
              ),
            )
            .toList(),
      ),
    );
  }
}
