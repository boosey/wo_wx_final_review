// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'job.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Job _$$_JobFromJson(Map<String, dynamic> json) => _$_Job(
      id: json['_id'] as String,
      rev: json['_rev'] as String,
      jobId: json['jobId'] as int,
      jobTitle: json['jobTitle'] as String,
      jobDescription: json['jobDescription'] as String,
      jobSummary: json['jobSummary'] as String,
      skillCategory: json['skillCategory'] as String,
      skills: (json['skills'] as List<dynamic>)
          .map((e) => Skill.fromJson(e as Map<String, dynamic>))
          .toList(),
      reviewers: (json['reviewers'] as List<dynamic>?)
              ?.map((e) => Reviewer.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_JobToJson(_$_Job instance) => <String, dynamic>{
      '_id': instance.id,
      '_rev': instance.rev,
      'jobId': instance.jobId,
      'jobTitle': instance.jobTitle,
      'jobDescription': instance.jobDescription,
      'jobSummary': instance.jobSummary,
      'skillCategory': instance.skillCategory,
      'skills': instance.skills,
      'reviewers': instance.reviewers,
    };

_$_Skill _$$_SkillFromJson(Map<String, dynamic> json) => _$_Skill(
      name: json['name'] as String,
      description: json['description'] as String,
    );

Map<String, dynamic> _$$_SkillToJson(_$_Skill instance) => <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
    };

_$_Reviewer _$$_ReviewerFromJson(Map<String, dynamic> json) => _$_Reviewer(
      reviewer: json['reviewer'] as String,
      status: json['status'] as bool,
      rating: json['rating'] as int,
      jobSummary: json['jobSummary'] as String,
      skillCategory: json['skillCategory'] as String,
      skills: (json['skills'] as List<dynamic>)
          .map((e) => Skill.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ReviewerToJson(_$_Reviewer instance) =>
    <String, dynamic>{
      'reviewer': instance.reviewer,
      'status': instance.status,
      'rating': instance.rating,
      'jobSummary': instance.jobSummary,
      'skillCategory': instance.skillCategory,
      'skills': instance.skills,
    };
