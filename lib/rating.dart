import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pretty_diff_text/pretty_diff_text.dart';
import 'package:signed_spacing_flex/signed_spacing_flex.dart';
import 'package:wo_wx_final_review/constants.dart';
import 'package:wo_wx_final_review/providers/job_id_provider.dart';
import 'package:wo_wx_final_review/providers/page_provider.dart';
import 'package:wo_wx_final_review/providers/rating_provider.dart';
import 'package:wo_wx_final_review/providers/saved_state_providers.dart';

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
    final saved = ref.watch(ratingSavedProvider);
    final job = ref.watch(jobProvider(docId: ref.watch(jobIdProvider)));

    return job.when(
      data: (job) => JobBaseWidget(
        pageTitle: "Rate Generated Version",
        message: savedMessage(ref),
        showMessage: saved,
        ratingBar: ratingBar(ref, job),
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

  Widget ratingBar(WidgetRef ref, CloudantDoc job) {
    return Center(
      child: RatingBar.builder(
        initialRating: max(1, job.generationRating.toDouble()),
        minRating: 1,
        direction: Axis.horizontal,
        allowHalfRating: false,
        itemCount: 5,
        itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
        itemBuilder: (context, _) => const Icon(
          Icons.star,
          color: Colors.amber,
        ),
        onRatingUpdate: (rating) {
          ref.read(ratingProvider.notifier).state = rating.toInt();
        },
      ),
    );
  }

  Widget savedMessage(WidgetRef ref) {
    return Row(
      children: [
        const Text("The rating has been saved. Thank you."),
        TextButton(
          onPressed: () =>
              ref.read(visiblePageProvider.notifier).state = VisiblePage.done,
          child: Container(
            color: Colors.blue[700],
            child: const Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                "Done",
                style: Constants.buttonStyle,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Future<void> saveRating(WidgetRef ref, CloudantDoc job) async {
    await ref.read(jobsRepositoryProvider).submitRating(
          id: job.id,
          rating: ref.read(ratingProvider),
        );

    ref.read(ratingSavedProvider.notifier).state = true;
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
