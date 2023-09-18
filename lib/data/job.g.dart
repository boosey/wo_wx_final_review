// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'job.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Skill _$$_SkillFromJson(Map<String, dynamic> json) => _$_Skill(
      id: json['id'] as String,
      name: json['name'] as String,
      description: json['description'] as String,
    );

Map<String, dynamic> _$$_SkillToJson(_$_Skill instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
    };

_$_SkillCategory _$$_SkillCategoryFromJson(Map<String, dynamic> json) =>
    _$_SkillCategory(
      id: json['id'] as String,
      name: json['name'] as String,
      skills: (json['skills'] as List<dynamic>)
          .map((e) => Skill.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_SkillCategoryToJson(_$_SkillCategory instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'skills': instance.skills.map((e) => e.toJson()).toList(),
    };

_$_DocumentVersion _$$_DocumentVersionFromJson(Map<String, dynamic> json) =>
    _$_DocumentVersion(
      id: json['id'] as String,
      author: json['author'] as String? ?? "",
      submitted: json['submitted'] as bool,
      creationTime: json['creationTime'] as int,
      modificationTime: json['modificationTime'] as int,
      jobSummary: json['jobSummary'] as String,
      skillCategories: (json['skillCategories'] as List<dynamic>)
          .map((e) => SkillCategory.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_DocumentVersionToJson(_$_DocumentVersion instance) =>
    <String, dynamic>{
      'id': instance.id,
      'author': instance.author,
      'submitted': instance.submitted,
      'creationTime': instance.creationTime,
      'modificationTime': instance.modificationTime,
      'jobSummary': instance.jobSummary,
      'skillCategories':
          instance.skillCategories.map((e) => e.toJson()).toList(),
    };

_$_Versions _$$_VersionsFromJson(Map<String, dynamic> json) => _$_Versions(
      generation:
          DocumentVersion.fromJson(json['generation'] as Map<String, dynamic>),
      initialEdit:
          DocumentVersion.fromJson(json['initialEdit'] as Map<String, dynamic>),
      finalEdit:
          DocumentVersion.fromJson(json['finalEdit'] as Map<String, dynamic>),
      reviews: (json['reviews'] as List<dynamic>)
          .map((e) => DocumentVersion.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_VersionsToJson(_$_Versions instance) =>
    <String, dynamic>{
      'generation': instance.generation.toJson(),
      'initialEdit': instance.initialEdit.toJson(),
      'finalEdit': instance.finalEdit.toJson(),
      'reviews': instance.reviews.map((e) => e.toJson()).toList(),
    };

_$_Input _$$_InputFromJson(Map<String, dynamic> json) => _$_Input(
      submitter: json['submitter'] as String? ?? "",
      jobId: json['jobId'] as String,
      jobTitle: json['jobTitle'] as String,
      jobDescription: json['jobDescription'] as String,
      requestedSkillCategories:
          (json['requestedSkillCategories'] as List<dynamic>)
              .map((e) => e as String)
              .toList(),
    );

Map<String, dynamic> _$$_InputToJson(_$_Input instance) => <String, dynamic>{
      'submitter': instance.submitter,
      'jobId': instance.jobId,
      'jobTitle': instance.jobTitle,
      'jobDescription': instance.jobDescription,
      'requestedSkillCategories': instance.requestedSkillCategories,
    };

_$_CloudantDoc _$$_CloudantDocFromJson(Map<String, dynamic> json) =>
    _$_CloudantDoc(
      id: json['_id'] as String,
      creationTime: json['creationTime'] as int,
      modificationTime: json['modificationTime'] as int,
      input: Input.fromJson(json['input'] as Map<String, dynamic>),
      versions: Versions.fromJson(json['versions'] as Map<String, dynamic>),
      generationRating: json['generationRating'] as int,
    );

Map<String, dynamic> _$$_CloudantDocToJson(_$_CloudantDoc instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'creationTime': instance.creationTime,
      'modificationTime': instance.modificationTime,
      'input': instance.input.toJson(),
      'versions': instance.versions.toJson(),
      'generationRating': instance.generationRating,
    };

_$_CollectedVersions _$$_CollectedVersionsFromJson(Map<String, dynamic> json) =>
    _$_CollectedVersions(
      id: json['id'] as String,
      generation: json['generation'] as String,
      initialEdit: json['initialEdit'] as String,
      finalEdit: json['finalEdit'] as String,
      reviews:
          (json['reviews'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$_CollectedVersionsToJson(
        _$_CollectedVersions instance) =>
    <String, dynamic>{
      'id': instance.id,
      'generation': instance.generation,
      'initialEdit': instance.initialEdit,
      'finalEdit': instance.finalEdit,
      'reviews': instance.reviews,
    };
