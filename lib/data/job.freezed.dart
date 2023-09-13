// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'job.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Job _$JobFromJson(Map<String, dynamic> json) {
  return _Job.fromJson(json);
}

/// @nodoc
mixin _$Job {
  @JsonKey(name: '_id')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: '_rev')
  String get rev =>
      throw _privateConstructorUsedError; // required DateTime timeStamp,
  int get jobId => throw _privateConstructorUsedError;
  String get jobTitle => throw _privateConstructorUsedError;
  String get jobDescription => throw _privateConstructorUsedError;
  String get jobSummary => throw _privateConstructorUsedError;
  String get skillCategory => throw _privateConstructorUsedError;
  List<Skill> get skills => throw _privateConstructorUsedError;
  List<Reviewer> get reviewers => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $JobCopyWith<Job> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JobCopyWith<$Res> {
  factory $JobCopyWith(Job value, $Res Function(Job) then) =
      _$JobCopyWithImpl<$Res, Job>;
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String id,
      @JsonKey(name: '_rev') String rev,
      int jobId,
      String jobTitle,
      String jobDescription,
      String jobSummary,
      String skillCategory,
      List<Skill> skills,
      List<Reviewer> reviewers});
}

/// @nodoc
class _$JobCopyWithImpl<$Res, $Val extends Job> implements $JobCopyWith<$Res> {
  _$JobCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? rev = null,
    Object? jobId = null,
    Object? jobTitle = null,
    Object? jobDescription = null,
    Object? jobSummary = null,
    Object? skillCategory = null,
    Object? skills = null,
    Object? reviewers = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      rev: null == rev
          ? _value.rev
          : rev // ignore: cast_nullable_to_non_nullable
              as String,
      jobId: null == jobId
          ? _value.jobId
          : jobId // ignore: cast_nullable_to_non_nullable
              as int,
      jobTitle: null == jobTitle
          ? _value.jobTitle
          : jobTitle // ignore: cast_nullable_to_non_nullable
              as String,
      jobDescription: null == jobDescription
          ? _value.jobDescription
          : jobDescription // ignore: cast_nullable_to_non_nullable
              as String,
      jobSummary: null == jobSummary
          ? _value.jobSummary
          : jobSummary // ignore: cast_nullable_to_non_nullable
              as String,
      skillCategory: null == skillCategory
          ? _value.skillCategory
          : skillCategory // ignore: cast_nullable_to_non_nullable
              as String,
      skills: null == skills
          ? _value.skills
          : skills // ignore: cast_nullable_to_non_nullable
              as List<Skill>,
      reviewers: null == reviewers
          ? _value.reviewers
          : reviewers // ignore: cast_nullable_to_non_nullable
              as List<Reviewer>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_JobCopyWith<$Res> implements $JobCopyWith<$Res> {
  factory _$$_JobCopyWith(_$_Job value, $Res Function(_$_Job) then) =
      __$$_JobCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String id,
      @JsonKey(name: '_rev') String rev,
      int jobId,
      String jobTitle,
      String jobDescription,
      String jobSummary,
      String skillCategory,
      List<Skill> skills,
      List<Reviewer> reviewers});
}

/// @nodoc
class __$$_JobCopyWithImpl<$Res> extends _$JobCopyWithImpl<$Res, _$_Job>
    implements _$$_JobCopyWith<$Res> {
  __$$_JobCopyWithImpl(_$_Job _value, $Res Function(_$_Job) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? rev = null,
    Object? jobId = null,
    Object? jobTitle = null,
    Object? jobDescription = null,
    Object? jobSummary = null,
    Object? skillCategory = null,
    Object? skills = null,
    Object? reviewers = null,
  }) {
    return _then(_$_Job(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      rev: null == rev
          ? _value.rev
          : rev // ignore: cast_nullable_to_non_nullable
              as String,
      jobId: null == jobId
          ? _value.jobId
          : jobId // ignore: cast_nullable_to_non_nullable
              as int,
      jobTitle: null == jobTitle
          ? _value.jobTitle
          : jobTitle // ignore: cast_nullable_to_non_nullable
              as String,
      jobDescription: null == jobDescription
          ? _value.jobDescription
          : jobDescription // ignore: cast_nullable_to_non_nullable
              as String,
      jobSummary: null == jobSummary
          ? _value.jobSummary
          : jobSummary // ignore: cast_nullable_to_non_nullable
              as String,
      skillCategory: null == skillCategory
          ? _value.skillCategory
          : skillCategory // ignore: cast_nullable_to_non_nullable
              as String,
      skills: null == skills
          ? _value._skills
          : skills // ignore: cast_nullable_to_non_nullable
              as List<Skill>,
      reviewers: null == reviewers
          ? _value._reviewers
          : reviewers // ignore: cast_nullable_to_non_nullable
              as List<Reviewer>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Job implements _Job {
  _$_Job(
      {@JsonKey(name: '_id') required this.id,
      @JsonKey(name: '_rev') required this.rev,
      required this.jobId,
      required this.jobTitle,
      required this.jobDescription,
      required this.jobSummary,
      required this.skillCategory,
      required final List<Skill> skills,
      final List<Reviewer> reviewers = const []})
      : _skills = skills,
        _reviewers = reviewers;

  factory _$_Job.fromJson(Map<String, dynamic> json) => _$$_JobFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String id;
  @override
  @JsonKey(name: '_rev')
  final String rev;
// required DateTime timeStamp,
  @override
  final int jobId;
  @override
  final String jobTitle;
  @override
  final String jobDescription;
  @override
  final String jobSummary;
  @override
  final String skillCategory;
  final List<Skill> _skills;
  @override
  List<Skill> get skills {
    if (_skills is EqualUnmodifiableListView) return _skills;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_skills);
  }

  final List<Reviewer> _reviewers;
  @override
  @JsonKey()
  List<Reviewer> get reviewers {
    if (_reviewers is EqualUnmodifiableListView) return _reviewers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_reviewers);
  }

  @override
  String toString() {
    return 'Job(id: $id, rev: $rev, jobId: $jobId, jobTitle: $jobTitle, jobDescription: $jobDescription, jobSummary: $jobSummary, skillCategory: $skillCategory, skills: $skills, reviewers: $reviewers)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Job &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.rev, rev) || other.rev == rev) &&
            (identical(other.jobId, jobId) || other.jobId == jobId) &&
            (identical(other.jobTitle, jobTitle) ||
                other.jobTitle == jobTitle) &&
            (identical(other.jobDescription, jobDescription) ||
                other.jobDescription == jobDescription) &&
            (identical(other.jobSummary, jobSummary) ||
                other.jobSummary == jobSummary) &&
            (identical(other.skillCategory, skillCategory) ||
                other.skillCategory == skillCategory) &&
            const DeepCollectionEquality().equals(other._skills, _skills) &&
            const DeepCollectionEquality()
                .equals(other._reviewers, _reviewers));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      rev,
      jobId,
      jobTitle,
      jobDescription,
      jobSummary,
      skillCategory,
      const DeepCollectionEquality().hash(_skills),
      const DeepCollectionEquality().hash(_reviewers));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_JobCopyWith<_$_Job> get copyWith =>
      __$$_JobCopyWithImpl<_$_Job>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_JobToJson(
      this,
    );
  }
}

abstract class _Job implements Job {
  factory _Job(
      {@JsonKey(name: '_id') required final String id,
      @JsonKey(name: '_rev') required final String rev,
      required final int jobId,
      required final String jobTitle,
      required final String jobDescription,
      required final String jobSummary,
      required final String skillCategory,
      required final List<Skill> skills,
      final List<Reviewer> reviewers}) = _$_Job;

  factory _Job.fromJson(Map<String, dynamic> json) = _$_Job.fromJson;

  @override
  @JsonKey(name: '_id')
  String get id;
  @override
  @JsonKey(name: '_rev')
  String get rev;
  @override // required DateTime timeStamp,
  int get jobId;
  @override
  String get jobTitle;
  @override
  String get jobDescription;
  @override
  String get jobSummary;
  @override
  String get skillCategory;
  @override
  List<Skill> get skills;
  @override
  List<Reviewer> get reviewers;
  @override
  @JsonKey(ignore: true)
  _$$_JobCopyWith<_$_Job> get copyWith => throw _privateConstructorUsedError;
}

Skill _$SkillFromJson(Map<String, dynamic> json) {
  return _Skill.fromJson(json);
}

/// @nodoc
mixin _$Skill {
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SkillCopyWith<Skill> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SkillCopyWith<$Res> {
  factory $SkillCopyWith(Skill value, $Res Function(Skill) then) =
      _$SkillCopyWithImpl<$Res, Skill>;
  @useResult
  $Res call({String name, String description});
}

/// @nodoc
class _$SkillCopyWithImpl<$Res, $Val extends Skill>
    implements $SkillCopyWith<$Res> {
  _$SkillCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? description = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SkillCopyWith<$Res> implements $SkillCopyWith<$Res> {
  factory _$$_SkillCopyWith(_$_Skill value, $Res Function(_$_Skill) then) =
      __$$_SkillCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String description});
}

/// @nodoc
class __$$_SkillCopyWithImpl<$Res> extends _$SkillCopyWithImpl<$Res, _$_Skill>
    implements _$$_SkillCopyWith<$Res> {
  __$$_SkillCopyWithImpl(_$_Skill _value, $Res Function(_$_Skill) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? description = null,
  }) {
    return _then(_$_Skill(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Skill implements _Skill {
  _$_Skill({required this.name, required this.description});

  factory _$_Skill.fromJson(Map<String, dynamic> json) =>
      _$$_SkillFromJson(json);

  @override
  final String name;
  @override
  final String description;

  @override
  String toString() {
    return 'Skill(name: $name, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Skill &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SkillCopyWith<_$_Skill> get copyWith =>
      __$$_SkillCopyWithImpl<_$_Skill>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SkillToJson(
      this,
    );
  }
}

abstract class _Skill implements Skill {
  factory _Skill(
      {required final String name,
      required final String description}) = _$_Skill;

  factory _Skill.fromJson(Map<String, dynamic> json) = _$_Skill.fromJson;

  @override
  String get name;
  @override
  String get description;
  @override
  @JsonKey(ignore: true)
  _$$_SkillCopyWith<_$_Skill> get copyWith =>
      throw _privateConstructorUsedError;
}

Reviewer _$ReviewerFromJson(Map<String, dynamic> json) {
  return _Reviewer.fromJson(json);
}

/// @nodoc
mixin _$Reviewer {
  String get reviewer => throw _privateConstructorUsedError;
  bool get status => throw _privateConstructorUsedError;
  int get rating => throw _privateConstructorUsedError;
  String get jobSummary => throw _privateConstructorUsedError;
  String get skillCategory => throw _privateConstructorUsedError;
  List<Skill> get skills => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReviewerCopyWith<Reviewer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReviewerCopyWith<$Res> {
  factory $ReviewerCopyWith(Reviewer value, $Res Function(Reviewer) then) =
      _$ReviewerCopyWithImpl<$Res, Reviewer>;
  @useResult
  $Res call(
      {String reviewer,
      bool status,
      int rating,
      String jobSummary,
      String skillCategory,
      List<Skill> skills});
}

/// @nodoc
class _$ReviewerCopyWithImpl<$Res, $Val extends Reviewer>
    implements $ReviewerCopyWith<$Res> {
  _$ReviewerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reviewer = null,
    Object? status = null,
    Object? rating = null,
    Object? jobSummary = null,
    Object? skillCategory = null,
    Object? skills = null,
  }) {
    return _then(_value.copyWith(
      reviewer: null == reviewer
          ? _value.reviewer
          : reviewer // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int,
      jobSummary: null == jobSummary
          ? _value.jobSummary
          : jobSummary // ignore: cast_nullable_to_non_nullable
              as String,
      skillCategory: null == skillCategory
          ? _value.skillCategory
          : skillCategory // ignore: cast_nullable_to_non_nullable
              as String,
      skills: null == skills
          ? _value.skills
          : skills // ignore: cast_nullable_to_non_nullable
              as List<Skill>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ReviewerCopyWith<$Res> implements $ReviewerCopyWith<$Res> {
  factory _$$_ReviewerCopyWith(
          _$_Reviewer value, $Res Function(_$_Reviewer) then) =
      __$$_ReviewerCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String reviewer,
      bool status,
      int rating,
      String jobSummary,
      String skillCategory,
      List<Skill> skills});
}

/// @nodoc
class __$$_ReviewerCopyWithImpl<$Res>
    extends _$ReviewerCopyWithImpl<$Res, _$_Reviewer>
    implements _$$_ReviewerCopyWith<$Res> {
  __$$_ReviewerCopyWithImpl(
      _$_Reviewer _value, $Res Function(_$_Reviewer) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reviewer = null,
    Object? status = null,
    Object? rating = null,
    Object? jobSummary = null,
    Object? skillCategory = null,
    Object? skills = null,
  }) {
    return _then(_$_Reviewer(
      reviewer: null == reviewer
          ? _value.reviewer
          : reviewer // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int,
      jobSummary: null == jobSummary
          ? _value.jobSummary
          : jobSummary // ignore: cast_nullable_to_non_nullable
              as String,
      skillCategory: null == skillCategory
          ? _value.skillCategory
          : skillCategory // ignore: cast_nullable_to_non_nullable
              as String,
      skills: null == skills
          ? _value._skills
          : skills // ignore: cast_nullable_to_non_nullable
              as List<Skill>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Reviewer implements _Reviewer {
  _$_Reviewer(
      {required this.reviewer,
      required this.status,
      required this.rating,
      required this.jobSummary,
      required this.skillCategory,
      required final List<Skill> skills})
      : _skills = skills;

  factory _$_Reviewer.fromJson(Map<String, dynamic> json) =>
      _$$_ReviewerFromJson(json);

  @override
  final String reviewer;
  @override
  final bool status;
  @override
  final int rating;
  @override
  final String jobSummary;
  @override
  final String skillCategory;
  final List<Skill> _skills;
  @override
  List<Skill> get skills {
    if (_skills is EqualUnmodifiableListView) return _skills;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_skills);
  }

  @override
  String toString() {
    return 'Reviewer(reviewer: $reviewer, status: $status, rating: $rating, jobSummary: $jobSummary, skillCategory: $skillCategory, skills: $skills)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Reviewer &&
            (identical(other.reviewer, reviewer) ||
                other.reviewer == reviewer) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.jobSummary, jobSummary) ||
                other.jobSummary == jobSummary) &&
            (identical(other.skillCategory, skillCategory) ||
                other.skillCategory == skillCategory) &&
            const DeepCollectionEquality().equals(other._skills, _skills));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, reviewer, status, rating,
      jobSummary, skillCategory, const DeepCollectionEquality().hash(_skills));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ReviewerCopyWith<_$_Reviewer> get copyWith =>
      __$$_ReviewerCopyWithImpl<_$_Reviewer>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ReviewerToJson(
      this,
    );
  }
}

abstract class _Reviewer implements Reviewer {
  factory _Reviewer(
      {required final String reviewer,
      required final bool status,
      required final int rating,
      required final String jobSummary,
      required final String skillCategory,
      required final List<Skill> skills}) = _$_Reviewer;

  factory _Reviewer.fromJson(Map<String, dynamic> json) = _$_Reviewer.fromJson;

  @override
  String get reviewer;
  @override
  bool get status;
  @override
  int get rating;
  @override
  String get jobSummary;
  @override
  String get skillCategory;
  @override
  List<Skill> get skills;
  @override
  @JsonKey(ignore: true)
  _$$_ReviewerCopyWith<_$_Reviewer> get copyWith =>
      throw _privateConstructorUsedError;
}
