// ignore_for_file: invalid_annotation_target

library core;

import 'package:freezed_annotation/freezed_annotation.dart';

part 'job.freezed.dart';
part 'job.g.dart';

@freezed
class Skill with _$Skill {
  factory Skill({
    required String id,
    required String name,
    required String description,
  }) = _Skill;

  factory Skill.fromJson(Map<String, dynamic> json) => _$SkillFromJson(json);
}

@freezed
class SkillCategory with _$SkillCategory {
  factory SkillCategory({
    required String id,
    required String name,
    required List<Skill> skills,
  }) = _SkillCategory;

  factory SkillCategory.fromJson(Map<String, dynamic> json) =>
      _$SkillCategoryFromJson(json);
}

@freezed
class DocumentVersion with _$DocumentVersion {
  factory DocumentVersion({
    required String id,
    @Default("") String author,
    required bool submitted,
    required int creationTime,
    required int modificationTime,
    required String jobSummary,
    required List<SkillCategory> skillCategories,
  }) = _DocumentVersion;

  factory DocumentVersion.fromJson(Map<String, dynamic> json) =>
      _$DocumentVersionFromJson(json);
}

@freezed
class Versions with _$Versions {
  factory Versions({
    required DocumentVersion generation,
    required DocumentVersion initialEdit,
    required DocumentVersion finalEdit,
    required List<DocumentVersion> reviews,
  }) = _Versions;

  factory Versions.fromJson(Map<String, dynamic> json) =>
      _$VersionsFromJson(json);
}

@freezed
class Input with _$Input {
  factory Input({
    @Default("") String submitter,
    required String jobId,
    required String jobTitle,
    required String jobDescription,
    required List<String> requestedSkillCategories,
  }) = _Input;

  factory Input.fromJson(Map<String, dynamic> json) => _$InputFromJson(json);
}

@freezed
class CloudantDoc with _$CloudantDoc {
  const CloudantDoc._();

  factory CloudantDoc({
    @JsonKey(name: '_id') required String id,
    required int creationTime,
    required int modificationTime,
    required Input input,
    required Versions versions,
    required int generationRating,
  }) = _CloudantDoc;

  factory CloudantDoc.fromJson(Map<String, dynamic> json) =>
      _$CloudantDocFromJson(json);

  List<DocumentVersion> collectEditedVersions() => List.from(versions.reviews)
    ..insert(0, versions.initialEdit.copyWith(author: "Initial Edit"));

  List<FieldReview> collectJobSummaryReviews() => collectEditedVersions()
      .map(
        (r) => FieldReview(
          reviewer: r.author,
          review: r.jobSummary,
        ),
      )
      .toList(growable: false);

  List<SkillReview> collectSkillReviews({
    required String skillCategoryId,
    required String skillId,
  }) {
    return collectEditedVersions()
        .map((r) {
          return MapEntry(
              r.author,
              r.skillCategories
                  .firstWhere((c) => c.id == skillCategoryId)
                  .skills
                  .firstWhere((s) => s.id == skillId));
        })
        .map(
          (authorSkillMapEntry) => SkillReview(
            reviewer: authorSkillMapEntry.key,
            name: authorSkillMapEntry.value.name,
            description: authorSkillMapEntry.value.description,
          ),
        )
        .toList(growable: false);
  }
}

class SkillReview {
  final String reviewer;
  final String name;
  final String description;

  SkillReview({
    required this.reviewer,
    required this.name,
    required this.description,
  });
}

class FieldReview {
  final String reviewer;
  final String review;

  FieldReview({required this.reviewer, required this.review});
}

@freezed
class CollectedVersions with _$CollectedVersions {
  factory CollectedVersions({
    required String id,
    required String generation,
    required String initialEdit,
    required String finalEdit,
    required List<String> reviews,
  }) = _CollectedVersions;

  factory CollectedVersions.fromJson(Map<String, dynamic> json) =>
      _$CollectedVersionsFromJson(json);
}
