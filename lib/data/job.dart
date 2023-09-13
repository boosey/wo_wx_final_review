// ignore_for_file: invalid_annotation_target

library core;

import 'package:freezed_annotation/freezed_annotation.dart';

part 'job.freezed.dart';
part 'job.g.dart';

@freezed
class Job with _$Job {
  factory Job({
    @JsonKey(name: '_id') required String id,
    @JsonKey(name: '_rev') required String rev,
    // required DateTime timeStamp,
    required int jobId,
    required String jobTitle,
    required String jobDescription,
    required String jobSummary,
    required String skillCategory,
    required List<Skill> skills,
    @Default([]) List<Reviewer> reviewers,
  }) = _Job;

  factory Job.fromJson(Map<String, dynamic> json) => _$JobFromJson(json);
}

@freezed
class Skill with _$Skill {
  factory Skill({
    required String name,
    required String description,
  }) = _Skill;

  factory Skill.fromJson(Map<String, dynamic> json) => _$SkillFromJson(json);
}

@freezed
class Reviewer with _$Reviewer {
  factory Reviewer({
    required String reviewer,
    required bool status,
    required int rating,
    required String jobSummary,
    required String skillCategory,
    required List<Skill> skills,
    // required DateTime timeStamp,
  }) = _Reviewer;

  factory Reviewer.fromJson(Map<String, dynamic> json) =>
      _$ReviewerFromJson(json);
}
