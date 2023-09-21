import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pretty_diff_text/pretty_diff_text.dart';
import 'package:signed_spacing_flex/signed_spacing_flex.dart';
import 'package:wo_wx_final_review/constants.dart';
import 'package:wo_wx_final_review/providers/job_id_provider.dart';

import 'data/job.dart';
import 'data/jobs_repository.dart';
import 'job_base_widget.dart';

class DiffAndRating extends ConsumerWidget {
  const DiffAndRating({super.key});

  @override
  Widget build(
    BuildContext context,
    WidgetRef ref,
  ) {
    final job = ref.watch(jobProvider(docId: ref.watch(jobIdProvider)));

    return job.when(
      data: (job) => JobBaseWidget(
        job: job,
        submitButtonText: "Save Rating",
        submitAction: () => saveRating(ref, job),
        jobSummarySection: () => jobSummarySection(ref, job),
        skillSection: skillSection,
      ),
      loading: () => Container(),
      error: (e, s) => Container(),
    );
  }

  Future<void> saveRating(WidgetRef ref, CloudantDoc job) async {
    await ref.read(jobsRepositoryProvider).submitRating(
          id: job.id,
          rating: job.generationRating,
        );
  }

  Widget jobSummarySection(WidgetRef ref, CloudantDoc j) {
    return SignedSpacingColumn(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 20,
      children: [
        DecoratedBox(
          decoration: BoxDecoration(border: Border.all()),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: PrettyDiffText(
              oldText: j.versions.generation.jobSummary,
              newText: j.versions.finalEdit.jobSummary,
              addedTextStyle: Constants.addedTextStyle,
              deletedTextStyle: Constants.deletedTextStyle,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: SignedSpacingRow(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 20,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Generated Version",
                      style: Constants.reviewerStyle,
                    ),
                    Text(j.versions.generation.jobSummary),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Final Version",
                      style: Constants.reviewerStyle,
                    ),
                    Text(j.versions.finalEdit.jobSummary),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget skillSection({
    required WidgetRef ref,
    required CloudantDoc job,
    required SkillCategory category,
    required Skill skill,
  }) {
    final comparison = job.getSkillComparison(category.id, skill.id);

    return SignedSpacingColumn(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 20,
      children: [
        DecoratedBox(
          decoration: BoxDecoration(border: Border.all()),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: PrettyDiffText(
              oldText: comparison.generatedSkillName,
              newText: comparison.finalSkillName,
              addedTextStyle: Constants.addedTextStyle,
              deletedTextStyle: Constants.deletedTextStyle,
            ),
          ),
        ),
        DecoratedBox(
          decoration: BoxDecoration(border: Border.all()),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: PrettyDiffText(
              oldText: comparison.generatedSkillDescription,
              newText: comparison.finalSkillDescription,
              addedTextStyle: Constants.addedTextStyle,
              deletedTextStyle: Constants.deletedTextStyle,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: SignedSpacingRow(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 20,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Generated Version",
                      style: Constants.reviewerStyle,
                    ),
                    Text(
                      comparison.generatedSkillName,
                      style: Constants.skillNameReviewStyle,
                    ),
                    Text(comparison.generatedSkillDescription),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Final Version",
                      style: Constants.reviewerStyle,
                    ),
                    Text(
                      comparison.finalSkillName,
                      style: Constants.skillNameReviewStyle,
                    ),
                    Text(comparison.finalSkillDescription),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
