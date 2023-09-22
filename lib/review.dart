// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:signed_spacing_flex/signed_spacing_flex.dart';
import 'package:wo_wx_final_review/constants.dart';
import 'package:wo_wx_final_review/data/job.dart';
import 'package:wo_wx_final_review/job_base_widget.dart';
import 'package:wo_wx_final_review/providers/saved_state_providers.dart';
import 'package:wo_wx_final_review/providers/job_id_provider.dart';
import 'package:wo_wx_final_review/providers/page_provider.dart';
import 'package:wo_wx_final_review/providers/text_controller_provider.dart';

import 'data/jobs_repository.dart';

class Review extends ConsumerWidget {
  const Review({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final job = ref.watch(jobProvider(docId: ref.watch(jobIdProvider)));
    final saved = ref.watch(finalEditSavedProvider);

    return job.when(
      data: (job) => JobBaseWidget(
          pageTitle: "Review and Submit Final Edits",
          message: savedMessage(ref),
          showMessage: saved,
          job: job,
          submitButtonText: "Save Final Version",
          submitAction: () => saveFinalVersion(ref, job),
          jobSummarySection: () => jobSummarySection(ref, job),
          skillSection: skillReviewSection),
      loading: () => Container(),
      error: (e, s) => Container(),
    );
  }

  Widget savedMessage(WidgetRef ref) {
    return Row(
      children: [
        const Text(
            "Final Edits have been saved. Would you like to provide a rating of the generated output?"),
        TextButton(
          onPressed: () =>
              ref.read(visiblePageProvider.notifier).state = VisiblePage.rating,
          child: Container(
            color: Colors.blue[700],
            child: const Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                "Rate Output",
                style: Constants.buttonStyle,
              ),
            ),
          ),
        ),
      ],
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
                      name: ref.read(tecProvider(skillNameTecId(s.id))).text,
                      description: ref
                          .read(tecProvider(skillDescriptionTecId(s.id)))
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

    // ref.read(jobIdProvider.notifier).state = job.id;
    // ref.read(jobProvider(docId: job.id).future).

    // ignore: unused_result
    ref.invalidate(jobProvider(docId: job.id));
    ref.read(finalEditSavedProvider.notifier).state = true;
  }

  String skillDescriptionTecId(String skillId) => '$skillId.skill.description';

  String skillNameTecId(String skillId) => '$skillId.skill.name';

  Widget jobSummarySection(WidgetRef ref, CloudantDoc j) {
    return jobSummaryReviewSection(
      ref: ref,
      fieldId: "jobSummary",
      initialValue:
          j.versions.finalEdit.submitted ? j.versions.finalEdit.jobSummary : "",
      reviews: j.collectJobSummaryReviews(),
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
          controller: ref.read(tecProvider(skillNameTecId(skill.id)))!
            ..text = job.versions.finalEdit.submitted ? skill.name : "",
        ),
        TextField(
          decoration: Constants.editInputDecoration,
          maxLines: 10,
          minLines: 1,
          controller: ref.read(TecProvider(skillDescriptionTecId(skill.id)))!
            ..text = job.versions.finalEdit.submitted ? skill.description : "",
        ),
        skillReviewsList(
          ref: ref,
          skillId: skill.id,
          reviews: job.collectSkillReviews(
            skillCategoryId: category.id,
            skillId: skill.id,
          ),
        ),
      ],
    );
  }

  Widget skillReviewsList({
    required WidgetRef ref,
    required String skillId,
    required List<SkillReview> reviews,
  }) {
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
                    skillReviewContent(r, ref, skillId),
                  ],
                ))
            .toList(),
      ),
    );
  }

  Padding skillReviewContent(SkillReview r, WidgetRef ref, String skillId) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            r.name,
            style: Constants.skillNameReviewStyle,
          ),
          Row(
            children: [
              Expanded(child: Text(r.description)),
              IconButton(
                onPressed: () {
                  ref
                      .read(
                        tecProvider(
                          skillNameTecId(skillId),
                        ),
                      )
                      .text = r.name;
                  ref
                      .read(
                        tecProvider(
                          skillDescriptionTecId(skillId),
                        ),
                      )
                      .text = r.description;
                },
                icon: const Icon(Icons.check_circle),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget jobSummaryReviewSection({
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
        jobSummaryReviewsList(ref: ref, reviews: reviews),
      ],
    );
  }

  Widget jobSummaryReviewsList(
      {required WidgetRef ref, List<FieldReview> reviews = const []}) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
      child: SignedSpacingColumn(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 15,
        children: reviews
            .map(
              (r) => Padding(
                padding: const EdgeInsets.only(left: 20),
                child: SignedSpacingColumn(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  spacing: 5,
                  children: [
                    Text(
                      r.reviewer,
                      style: Constants.reviewerStyle,
                    ),
                    Row(
                      children: [
                        Expanded(child: Text(r.review)),
                        IconButton(
                          onPressed: () {
                            ref
                                .read(
                                  tecProvider(
                                    "jobSummary",
                                  ),
                                )
                                .text = r.review;
                          },
                          icon: const Icon(Icons.check_circle),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}
