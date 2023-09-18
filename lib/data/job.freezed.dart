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

Skill _$SkillFromJson(Map<String, dynamic> json) {
  return _Skill.fromJson(json);
}

/// @nodoc
mixin _$Skill {
  String get id => throw _privateConstructorUsedError;
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
  $Res call({String id, String name, String description});
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
    Object? id = null,
    Object? name = null,
    Object? description = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
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
  $Res call({String id, String name, String description});
}

/// @nodoc
class __$$_SkillCopyWithImpl<$Res> extends _$SkillCopyWithImpl<$Res, _$_Skill>
    implements _$$_SkillCopyWith<$Res> {
  __$$_SkillCopyWithImpl(_$_Skill _value, $Res Function(_$_Skill) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
  }) {
    return _then(_$_Skill(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
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
  _$_Skill({required this.id, required this.name, required this.description});

  factory _$_Skill.fromJson(Map<String, dynamic> json) =>
      _$$_SkillFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String description;

  @override
  String toString() {
    return 'Skill(id: $id, name: $name, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Skill &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, description);

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
      {required final String id,
      required final String name,
      required final String description}) = _$_Skill;

  factory _Skill.fromJson(Map<String, dynamic> json) = _$_Skill.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get description;
  @override
  @JsonKey(ignore: true)
  _$$_SkillCopyWith<_$_Skill> get copyWith =>
      throw _privateConstructorUsedError;
}

SkillCategory _$SkillCategoryFromJson(Map<String, dynamic> json) {
  return _SkillCategory.fromJson(json);
}

/// @nodoc
mixin _$SkillCategory {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  List<Skill> get skills => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SkillCategoryCopyWith<SkillCategory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SkillCategoryCopyWith<$Res> {
  factory $SkillCategoryCopyWith(
          SkillCategory value, $Res Function(SkillCategory) then) =
      _$SkillCategoryCopyWithImpl<$Res, SkillCategory>;
  @useResult
  $Res call({String id, String name, List<Skill> skills});
}

/// @nodoc
class _$SkillCategoryCopyWithImpl<$Res, $Val extends SkillCategory>
    implements $SkillCategoryCopyWith<$Res> {
  _$SkillCategoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? skills = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      skills: null == skills
          ? _value.skills
          : skills // ignore: cast_nullable_to_non_nullable
              as List<Skill>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SkillCategoryCopyWith<$Res>
    implements $SkillCategoryCopyWith<$Res> {
  factory _$$_SkillCategoryCopyWith(
          _$_SkillCategory value, $Res Function(_$_SkillCategory) then) =
      __$$_SkillCategoryCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String name, List<Skill> skills});
}

/// @nodoc
class __$$_SkillCategoryCopyWithImpl<$Res>
    extends _$SkillCategoryCopyWithImpl<$Res, _$_SkillCategory>
    implements _$$_SkillCategoryCopyWith<$Res> {
  __$$_SkillCategoryCopyWithImpl(
      _$_SkillCategory _value, $Res Function(_$_SkillCategory) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? skills = null,
  }) {
    return _then(_$_SkillCategory(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
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
class _$_SkillCategory implements _SkillCategory {
  _$_SkillCategory(
      {required this.id, required this.name, required final List<Skill> skills})
      : _skills = skills;

  factory _$_SkillCategory.fromJson(Map<String, dynamic> json) =>
      _$$_SkillCategoryFromJson(json);

  @override
  final String id;
  @override
  final String name;
  final List<Skill> _skills;
  @override
  List<Skill> get skills {
    if (_skills is EqualUnmodifiableListView) return _skills;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_skills);
  }

  @override
  String toString() {
    return 'SkillCategory(id: $id, name: $name, skills: $skills)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SkillCategory &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other._skills, _skills));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, const DeepCollectionEquality().hash(_skills));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SkillCategoryCopyWith<_$_SkillCategory> get copyWith =>
      __$$_SkillCategoryCopyWithImpl<_$_SkillCategory>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SkillCategoryToJson(
      this,
    );
  }
}

abstract class _SkillCategory implements SkillCategory {
  factory _SkillCategory(
      {required final String id,
      required final String name,
      required final List<Skill> skills}) = _$_SkillCategory;

  factory _SkillCategory.fromJson(Map<String, dynamic> json) =
      _$_SkillCategory.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  List<Skill> get skills;
  @override
  @JsonKey(ignore: true)
  _$$_SkillCategoryCopyWith<_$_SkillCategory> get copyWith =>
      throw _privateConstructorUsedError;
}

DocumentVersion _$DocumentVersionFromJson(Map<String, dynamic> json) {
  return _DocumentVersion.fromJson(json);
}

/// @nodoc
mixin _$DocumentVersion {
  String get id => throw _privateConstructorUsedError;
  String get author => throw _privateConstructorUsedError;
  bool get submitted => throw _privateConstructorUsedError;
  int get creationTime => throw _privateConstructorUsedError;
  int get modificationTime => throw _privateConstructorUsedError;
  String get jobSummary => throw _privateConstructorUsedError;
  List<SkillCategory> get skillCategories => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DocumentVersionCopyWith<DocumentVersion> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DocumentVersionCopyWith<$Res> {
  factory $DocumentVersionCopyWith(
          DocumentVersion value, $Res Function(DocumentVersion) then) =
      _$DocumentVersionCopyWithImpl<$Res, DocumentVersion>;
  @useResult
  $Res call(
      {String id,
      String author,
      bool submitted,
      int creationTime,
      int modificationTime,
      String jobSummary,
      List<SkillCategory> skillCategories});
}

/// @nodoc
class _$DocumentVersionCopyWithImpl<$Res, $Val extends DocumentVersion>
    implements $DocumentVersionCopyWith<$Res> {
  _$DocumentVersionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? author = null,
    Object? submitted = null,
    Object? creationTime = null,
    Object? modificationTime = null,
    Object? jobSummary = null,
    Object? skillCategories = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      author: null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
      submitted: null == submitted
          ? _value.submitted
          : submitted // ignore: cast_nullable_to_non_nullable
              as bool,
      creationTime: null == creationTime
          ? _value.creationTime
          : creationTime // ignore: cast_nullable_to_non_nullable
              as int,
      modificationTime: null == modificationTime
          ? _value.modificationTime
          : modificationTime // ignore: cast_nullable_to_non_nullable
              as int,
      jobSummary: null == jobSummary
          ? _value.jobSummary
          : jobSummary // ignore: cast_nullable_to_non_nullable
              as String,
      skillCategories: null == skillCategories
          ? _value.skillCategories
          : skillCategories // ignore: cast_nullable_to_non_nullable
              as List<SkillCategory>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DocumentVersionCopyWith<$Res>
    implements $DocumentVersionCopyWith<$Res> {
  factory _$$_DocumentVersionCopyWith(
          _$_DocumentVersion value, $Res Function(_$_DocumentVersion) then) =
      __$$_DocumentVersionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String author,
      bool submitted,
      int creationTime,
      int modificationTime,
      String jobSummary,
      List<SkillCategory> skillCategories});
}

/// @nodoc
class __$$_DocumentVersionCopyWithImpl<$Res>
    extends _$DocumentVersionCopyWithImpl<$Res, _$_DocumentVersion>
    implements _$$_DocumentVersionCopyWith<$Res> {
  __$$_DocumentVersionCopyWithImpl(
      _$_DocumentVersion _value, $Res Function(_$_DocumentVersion) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? author = null,
    Object? submitted = null,
    Object? creationTime = null,
    Object? modificationTime = null,
    Object? jobSummary = null,
    Object? skillCategories = null,
  }) {
    return _then(_$_DocumentVersion(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      author: null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
      submitted: null == submitted
          ? _value.submitted
          : submitted // ignore: cast_nullable_to_non_nullable
              as bool,
      creationTime: null == creationTime
          ? _value.creationTime
          : creationTime // ignore: cast_nullable_to_non_nullable
              as int,
      modificationTime: null == modificationTime
          ? _value.modificationTime
          : modificationTime // ignore: cast_nullable_to_non_nullable
              as int,
      jobSummary: null == jobSummary
          ? _value.jobSummary
          : jobSummary // ignore: cast_nullable_to_non_nullable
              as String,
      skillCategories: null == skillCategories
          ? _value._skillCategories
          : skillCategories // ignore: cast_nullable_to_non_nullable
              as List<SkillCategory>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DocumentVersion implements _DocumentVersion {
  _$_DocumentVersion(
      {required this.id,
      this.author = "",
      required this.submitted,
      required this.creationTime,
      required this.modificationTime,
      required this.jobSummary,
      required final List<SkillCategory> skillCategories})
      : _skillCategories = skillCategories;

  factory _$_DocumentVersion.fromJson(Map<String, dynamic> json) =>
      _$$_DocumentVersionFromJson(json);

  @override
  final String id;
  @override
  @JsonKey()
  final String author;
  @override
  final bool submitted;
  @override
  final int creationTime;
  @override
  final int modificationTime;
  @override
  final String jobSummary;
  final List<SkillCategory> _skillCategories;
  @override
  List<SkillCategory> get skillCategories {
    if (_skillCategories is EqualUnmodifiableListView) return _skillCategories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_skillCategories);
  }

  @override
  String toString() {
    return 'DocumentVersion(id: $id, author: $author, submitted: $submitted, creationTime: $creationTime, modificationTime: $modificationTime, jobSummary: $jobSummary, skillCategories: $skillCategories)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DocumentVersion &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.author, author) || other.author == author) &&
            (identical(other.submitted, submitted) ||
                other.submitted == submitted) &&
            (identical(other.creationTime, creationTime) ||
                other.creationTime == creationTime) &&
            (identical(other.modificationTime, modificationTime) ||
                other.modificationTime == modificationTime) &&
            (identical(other.jobSummary, jobSummary) ||
                other.jobSummary == jobSummary) &&
            const DeepCollectionEquality()
                .equals(other._skillCategories, _skillCategories));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      author,
      submitted,
      creationTime,
      modificationTime,
      jobSummary,
      const DeepCollectionEquality().hash(_skillCategories));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DocumentVersionCopyWith<_$_DocumentVersion> get copyWith =>
      __$$_DocumentVersionCopyWithImpl<_$_DocumentVersion>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DocumentVersionToJson(
      this,
    );
  }
}

abstract class _DocumentVersion implements DocumentVersion {
  factory _DocumentVersion(
      {required final String id,
      final String author,
      required final bool submitted,
      required final int creationTime,
      required final int modificationTime,
      required final String jobSummary,
      required final List<SkillCategory> skillCategories}) = _$_DocumentVersion;

  factory _DocumentVersion.fromJson(Map<String, dynamic> json) =
      _$_DocumentVersion.fromJson;

  @override
  String get id;
  @override
  String get author;
  @override
  bool get submitted;
  @override
  int get creationTime;
  @override
  int get modificationTime;
  @override
  String get jobSummary;
  @override
  List<SkillCategory> get skillCategories;
  @override
  @JsonKey(ignore: true)
  _$$_DocumentVersionCopyWith<_$_DocumentVersion> get copyWith =>
      throw _privateConstructorUsedError;
}

Versions _$VersionsFromJson(Map<String, dynamic> json) {
  return _Versions.fromJson(json);
}

/// @nodoc
mixin _$Versions {
  DocumentVersion get generation => throw _privateConstructorUsedError;
  DocumentVersion get initialEdit => throw _privateConstructorUsedError;
  DocumentVersion get finalEdit => throw _privateConstructorUsedError;
  List<DocumentVersion> get reviews => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VersionsCopyWith<Versions> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VersionsCopyWith<$Res> {
  factory $VersionsCopyWith(Versions value, $Res Function(Versions) then) =
      _$VersionsCopyWithImpl<$Res, Versions>;
  @useResult
  $Res call(
      {DocumentVersion generation,
      DocumentVersion initialEdit,
      DocumentVersion finalEdit,
      List<DocumentVersion> reviews});

  $DocumentVersionCopyWith<$Res> get generation;
  $DocumentVersionCopyWith<$Res> get initialEdit;
  $DocumentVersionCopyWith<$Res> get finalEdit;
}

/// @nodoc
class _$VersionsCopyWithImpl<$Res, $Val extends Versions>
    implements $VersionsCopyWith<$Res> {
  _$VersionsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? generation = null,
    Object? initialEdit = null,
    Object? finalEdit = null,
    Object? reviews = null,
  }) {
    return _then(_value.copyWith(
      generation: null == generation
          ? _value.generation
          : generation // ignore: cast_nullable_to_non_nullable
              as DocumentVersion,
      initialEdit: null == initialEdit
          ? _value.initialEdit
          : initialEdit // ignore: cast_nullable_to_non_nullable
              as DocumentVersion,
      finalEdit: null == finalEdit
          ? _value.finalEdit
          : finalEdit // ignore: cast_nullable_to_non_nullable
              as DocumentVersion,
      reviews: null == reviews
          ? _value.reviews
          : reviews // ignore: cast_nullable_to_non_nullable
              as List<DocumentVersion>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DocumentVersionCopyWith<$Res> get generation {
    return $DocumentVersionCopyWith<$Res>(_value.generation, (value) {
      return _then(_value.copyWith(generation: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $DocumentVersionCopyWith<$Res> get initialEdit {
    return $DocumentVersionCopyWith<$Res>(_value.initialEdit, (value) {
      return _then(_value.copyWith(initialEdit: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $DocumentVersionCopyWith<$Res> get finalEdit {
    return $DocumentVersionCopyWith<$Res>(_value.finalEdit, (value) {
      return _then(_value.copyWith(finalEdit: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_VersionsCopyWith<$Res> implements $VersionsCopyWith<$Res> {
  factory _$$_VersionsCopyWith(
          _$_Versions value, $Res Function(_$_Versions) then) =
      __$$_VersionsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DocumentVersion generation,
      DocumentVersion initialEdit,
      DocumentVersion finalEdit,
      List<DocumentVersion> reviews});

  @override
  $DocumentVersionCopyWith<$Res> get generation;
  @override
  $DocumentVersionCopyWith<$Res> get initialEdit;
  @override
  $DocumentVersionCopyWith<$Res> get finalEdit;
}

/// @nodoc
class __$$_VersionsCopyWithImpl<$Res>
    extends _$VersionsCopyWithImpl<$Res, _$_Versions>
    implements _$$_VersionsCopyWith<$Res> {
  __$$_VersionsCopyWithImpl(
      _$_Versions _value, $Res Function(_$_Versions) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? generation = null,
    Object? initialEdit = null,
    Object? finalEdit = null,
    Object? reviews = null,
  }) {
    return _then(_$_Versions(
      generation: null == generation
          ? _value.generation
          : generation // ignore: cast_nullable_to_non_nullable
              as DocumentVersion,
      initialEdit: null == initialEdit
          ? _value.initialEdit
          : initialEdit // ignore: cast_nullable_to_non_nullable
              as DocumentVersion,
      finalEdit: null == finalEdit
          ? _value.finalEdit
          : finalEdit // ignore: cast_nullable_to_non_nullable
              as DocumentVersion,
      reviews: null == reviews
          ? _value._reviews
          : reviews // ignore: cast_nullable_to_non_nullable
              as List<DocumentVersion>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Versions implements _Versions {
  _$_Versions(
      {required this.generation,
      required this.initialEdit,
      required this.finalEdit,
      required final List<DocumentVersion> reviews})
      : _reviews = reviews;

  factory _$_Versions.fromJson(Map<String, dynamic> json) =>
      _$$_VersionsFromJson(json);

  @override
  final DocumentVersion generation;
  @override
  final DocumentVersion initialEdit;
  @override
  final DocumentVersion finalEdit;
  final List<DocumentVersion> _reviews;
  @override
  List<DocumentVersion> get reviews {
    if (_reviews is EqualUnmodifiableListView) return _reviews;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_reviews);
  }

  @override
  String toString() {
    return 'Versions(generation: $generation, initialEdit: $initialEdit, finalEdit: $finalEdit, reviews: $reviews)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Versions &&
            (identical(other.generation, generation) ||
                other.generation == generation) &&
            (identical(other.initialEdit, initialEdit) ||
                other.initialEdit == initialEdit) &&
            (identical(other.finalEdit, finalEdit) ||
                other.finalEdit == finalEdit) &&
            const DeepCollectionEquality().equals(other._reviews, _reviews));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, generation, initialEdit,
      finalEdit, const DeepCollectionEquality().hash(_reviews));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_VersionsCopyWith<_$_Versions> get copyWith =>
      __$$_VersionsCopyWithImpl<_$_Versions>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VersionsToJson(
      this,
    );
  }
}

abstract class _Versions implements Versions {
  factory _Versions(
      {required final DocumentVersion generation,
      required final DocumentVersion initialEdit,
      required final DocumentVersion finalEdit,
      required final List<DocumentVersion> reviews}) = _$_Versions;

  factory _Versions.fromJson(Map<String, dynamic> json) = _$_Versions.fromJson;

  @override
  DocumentVersion get generation;
  @override
  DocumentVersion get initialEdit;
  @override
  DocumentVersion get finalEdit;
  @override
  List<DocumentVersion> get reviews;
  @override
  @JsonKey(ignore: true)
  _$$_VersionsCopyWith<_$_Versions> get copyWith =>
      throw _privateConstructorUsedError;
}

Input _$InputFromJson(Map<String, dynamic> json) {
  return _Input.fromJson(json);
}

/// @nodoc
mixin _$Input {
  String get submitter => throw _privateConstructorUsedError;
  String get jobId => throw _privateConstructorUsedError;
  String get jobTitle => throw _privateConstructorUsedError;
  String get jobDescription => throw _privateConstructorUsedError;
  List<String> get requestedSkillCategories =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InputCopyWith<Input> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InputCopyWith<$Res> {
  factory $InputCopyWith(Input value, $Res Function(Input) then) =
      _$InputCopyWithImpl<$Res, Input>;
  @useResult
  $Res call(
      {String submitter,
      String jobId,
      String jobTitle,
      String jobDescription,
      List<String> requestedSkillCategories});
}

/// @nodoc
class _$InputCopyWithImpl<$Res, $Val extends Input>
    implements $InputCopyWith<$Res> {
  _$InputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? submitter = null,
    Object? jobId = null,
    Object? jobTitle = null,
    Object? jobDescription = null,
    Object? requestedSkillCategories = null,
  }) {
    return _then(_value.copyWith(
      submitter: null == submitter
          ? _value.submitter
          : submitter // ignore: cast_nullable_to_non_nullable
              as String,
      jobId: null == jobId
          ? _value.jobId
          : jobId // ignore: cast_nullable_to_non_nullable
              as String,
      jobTitle: null == jobTitle
          ? _value.jobTitle
          : jobTitle // ignore: cast_nullable_to_non_nullable
              as String,
      jobDescription: null == jobDescription
          ? _value.jobDescription
          : jobDescription // ignore: cast_nullable_to_non_nullable
              as String,
      requestedSkillCategories: null == requestedSkillCategories
          ? _value.requestedSkillCategories
          : requestedSkillCategories // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_InputCopyWith<$Res> implements $InputCopyWith<$Res> {
  factory _$$_InputCopyWith(_$_Input value, $Res Function(_$_Input) then) =
      __$$_InputCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String submitter,
      String jobId,
      String jobTitle,
      String jobDescription,
      List<String> requestedSkillCategories});
}

/// @nodoc
class __$$_InputCopyWithImpl<$Res> extends _$InputCopyWithImpl<$Res, _$_Input>
    implements _$$_InputCopyWith<$Res> {
  __$$_InputCopyWithImpl(_$_Input _value, $Res Function(_$_Input) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? submitter = null,
    Object? jobId = null,
    Object? jobTitle = null,
    Object? jobDescription = null,
    Object? requestedSkillCategories = null,
  }) {
    return _then(_$_Input(
      submitter: null == submitter
          ? _value.submitter
          : submitter // ignore: cast_nullable_to_non_nullable
              as String,
      jobId: null == jobId
          ? _value.jobId
          : jobId // ignore: cast_nullable_to_non_nullable
              as String,
      jobTitle: null == jobTitle
          ? _value.jobTitle
          : jobTitle // ignore: cast_nullable_to_non_nullable
              as String,
      jobDescription: null == jobDescription
          ? _value.jobDescription
          : jobDescription // ignore: cast_nullable_to_non_nullable
              as String,
      requestedSkillCategories: null == requestedSkillCategories
          ? _value._requestedSkillCategories
          : requestedSkillCategories // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Input implements _Input {
  _$_Input(
      {this.submitter = "",
      required this.jobId,
      required this.jobTitle,
      required this.jobDescription,
      required final List<String> requestedSkillCategories})
      : _requestedSkillCategories = requestedSkillCategories;

  factory _$_Input.fromJson(Map<String, dynamic> json) =>
      _$$_InputFromJson(json);

  @override
  @JsonKey()
  final String submitter;
  @override
  final String jobId;
  @override
  final String jobTitle;
  @override
  final String jobDescription;
  final List<String> _requestedSkillCategories;
  @override
  List<String> get requestedSkillCategories {
    if (_requestedSkillCategories is EqualUnmodifiableListView)
      return _requestedSkillCategories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_requestedSkillCategories);
  }

  @override
  String toString() {
    return 'Input(submitter: $submitter, jobId: $jobId, jobTitle: $jobTitle, jobDescription: $jobDescription, requestedSkillCategories: $requestedSkillCategories)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Input &&
            (identical(other.submitter, submitter) ||
                other.submitter == submitter) &&
            (identical(other.jobId, jobId) || other.jobId == jobId) &&
            (identical(other.jobTitle, jobTitle) ||
                other.jobTitle == jobTitle) &&
            (identical(other.jobDescription, jobDescription) ||
                other.jobDescription == jobDescription) &&
            const DeepCollectionEquality().equals(
                other._requestedSkillCategories, _requestedSkillCategories));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      submitter,
      jobId,
      jobTitle,
      jobDescription,
      const DeepCollectionEquality().hash(_requestedSkillCategories));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InputCopyWith<_$_Input> get copyWith =>
      __$$_InputCopyWithImpl<_$_Input>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_InputToJson(
      this,
    );
  }
}

abstract class _Input implements Input {
  factory _Input(
      {final String submitter,
      required final String jobId,
      required final String jobTitle,
      required final String jobDescription,
      required final List<String> requestedSkillCategories}) = _$_Input;

  factory _Input.fromJson(Map<String, dynamic> json) = _$_Input.fromJson;

  @override
  String get submitter;
  @override
  String get jobId;
  @override
  String get jobTitle;
  @override
  String get jobDescription;
  @override
  List<String> get requestedSkillCategories;
  @override
  @JsonKey(ignore: true)
  _$$_InputCopyWith<_$_Input> get copyWith =>
      throw _privateConstructorUsedError;
}

CloudantDoc _$CloudantDocFromJson(Map<String, dynamic> json) {
  return _CloudantDoc.fromJson(json);
}

/// @nodoc
mixin _$CloudantDoc {
  @JsonKey(name: '_id')
  String get id => throw _privateConstructorUsedError;
  int get creationTime => throw _privateConstructorUsedError;
  int get modificationTime => throw _privateConstructorUsedError;
  Input get input => throw _privateConstructorUsedError;
  Versions get versions => throw _privateConstructorUsedError;
  int get generationRating => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CloudantDocCopyWith<CloudantDoc> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CloudantDocCopyWith<$Res> {
  factory $CloudantDocCopyWith(
          CloudantDoc value, $Res Function(CloudantDoc) then) =
      _$CloudantDocCopyWithImpl<$Res, CloudantDoc>;
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String id,
      int creationTime,
      int modificationTime,
      Input input,
      Versions versions,
      int generationRating});

  $InputCopyWith<$Res> get input;
  $VersionsCopyWith<$Res> get versions;
}

/// @nodoc
class _$CloudantDocCopyWithImpl<$Res, $Val extends CloudantDoc>
    implements $CloudantDocCopyWith<$Res> {
  _$CloudantDocCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? creationTime = null,
    Object? modificationTime = null,
    Object? input = null,
    Object? versions = null,
    Object? generationRating = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      creationTime: null == creationTime
          ? _value.creationTime
          : creationTime // ignore: cast_nullable_to_non_nullable
              as int,
      modificationTime: null == modificationTime
          ? _value.modificationTime
          : modificationTime // ignore: cast_nullable_to_non_nullable
              as int,
      input: null == input
          ? _value.input
          : input // ignore: cast_nullable_to_non_nullable
              as Input,
      versions: null == versions
          ? _value.versions
          : versions // ignore: cast_nullable_to_non_nullable
              as Versions,
      generationRating: null == generationRating
          ? _value.generationRating
          : generationRating // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $InputCopyWith<$Res> get input {
    return $InputCopyWith<$Res>(_value.input, (value) {
      return _then(_value.copyWith(input: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $VersionsCopyWith<$Res> get versions {
    return $VersionsCopyWith<$Res>(_value.versions, (value) {
      return _then(_value.copyWith(versions: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_CloudantDocCopyWith<$Res>
    implements $CloudantDocCopyWith<$Res> {
  factory _$$_CloudantDocCopyWith(
          _$_CloudantDoc value, $Res Function(_$_CloudantDoc) then) =
      __$$_CloudantDocCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String id,
      int creationTime,
      int modificationTime,
      Input input,
      Versions versions,
      int generationRating});

  @override
  $InputCopyWith<$Res> get input;
  @override
  $VersionsCopyWith<$Res> get versions;
}

/// @nodoc
class __$$_CloudantDocCopyWithImpl<$Res>
    extends _$CloudantDocCopyWithImpl<$Res, _$_CloudantDoc>
    implements _$$_CloudantDocCopyWith<$Res> {
  __$$_CloudantDocCopyWithImpl(
      _$_CloudantDoc _value, $Res Function(_$_CloudantDoc) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? creationTime = null,
    Object? modificationTime = null,
    Object? input = null,
    Object? versions = null,
    Object? generationRating = null,
  }) {
    return _then(_$_CloudantDoc(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      creationTime: null == creationTime
          ? _value.creationTime
          : creationTime // ignore: cast_nullable_to_non_nullable
              as int,
      modificationTime: null == modificationTime
          ? _value.modificationTime
          : modificationTime // ignore: cast_nullable_to_non_nullable
              as int,
      input: null == input
          ? _value.input
          : input // ignore: cast_nullable_to_non_nullable
              as Input,
      versions: null == versions
          ? _value.versions
          : versions // ignore: cast_nullable_to_non_nullable
              as Versions,
      generationRating: null == generationRating
          ? _value.generationRating
          : generationRating // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CloudantDoc extends _CloudantDoc {
  _$_CloudantDoc(
      {@JsonKey(name: '_id') required this.id,
      required this.creationTime,
      required this.modificationTime,
      required this.input,
      required this.versions,
      required this.generationRating})
      : super._();

  factory _$_CloudantDoc.fromJson(Map<String, dynamic> json) =>
      _$$_CloudantDocFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String id;
  @override
  final int creationTime;
  @override
  final int modificationTime;
  @override
  final Input input;
  @override
  final Versions versions;
  @override
  final int generationRating;

  @override
  String toString() {
    return 'CloudantDoc(id: $id, creationTime: $creationTime, modificationTime: $modificationTime, input: $input, versions: $versions, generationRating: $generationRating)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CloudantDoc &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.creationTime, creationTime) ||
                other.creationTime == creationTime) &&
            (identical(other.modificationTime, modificationTime) ||
                other.modificationTime == modificationTime) &&
            (identical(other.input, input) || other.input == input) &&
            (identical(other.versions, versions) ||
                other.versions == versions) &&
            (identical(other.generationRating, generationRating) ||
                other.generationRating == generationRating));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, creationTime,
      modificationTime, input, versions, generationRating);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CloudantDocCopyWith<_$_CloudantDoc> get copyWith =>
      __$$_CloudantDocCopyWithImpl<_$_CloudantDoc>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CloudantDocToJson(
      this,
    );
  }
}

abstract class _CloudantDoc extends CloudantDoc {
  factory _CloudantDoc(
      {@JsonKey(name: '_id') required final String id,
      required final int creationTime,
      required final int modificationTime,
      required final Input input,
      required final Versions versions,
      required final int generationRating}) = _$_CloudantDoc;
  _CloudantDoc._() : super._();

  factory _CloudantDoc.fromJson(Map<String, dynamic> json) =
      _$_CloudantDoc.fromJson;

  @override
  @JsonKey(name: '_id')
  String get id;
  @override
  int get creationTime;
  @override
  int get modificationTime;
  @override
  Input get input;
  @override
  Versions get versions;
  @override
  int get generationRating;
  @override
  @JsonKey(ignore: true)
  _$$_CloudantDocCopyWith<_$_CloudantDoc> get copyWith =>
      throw _privateConstructorUsedError;
}

CollectedVersions _$CollectedVersionsFromJson(Map<String, dynamic> json) {
  return _CollectedVersions.fromJson(json);
}

/// @nodoc
mixin _$CollectedVersions {
  String get id => throw _privateConstructorUsedError;
  String get generation => throw _privateConstructorUsedError;
  String get initialEdit => throw _privateConstructorUsedError;
  String get finalEdit => throw _privateConstructorUsedError;
  List<String> get reviews => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CollectedVersionsCopyWith<CollectedVersions> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CollectedVersionsCopyWith<$Res> {
  factory $CollectedVersionsCopyWith(
          CollectedVersions value, $Res Function(CollectedVersions) then) =
      _$CollectedVersionsCopyWithImpl<$Res, CollectedVersions>;
  @useResult
  $Res call(
      {String id,
      String generation,
      String initialEdit,
      String finalEdit,
      List<String> reviews});
}

/// @nodoc
class _$CollectedVersionsCopyWithImpl<$Res, $Val extends CollectedVersions>
    implements $CollectedVersionsCopyWith<$Res> {
  _$CollectedVersionsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? generation = null,
    Object? initialEdit = null,
    Object? finalEdit = null,
    Object? reviews = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      generation: null == generation
          ? _value.generation
          : generation // ignore: cast_nullable_to_non_nullable
              as String,
      initialEdit: null == initialEdit
          ? _value.initialEdit
          : initialEdit // ignore: cast_nullable_to_non_nullable
              as String,
      finalEdit: null == finalEdit
          ? _value.finalEdit
          : finalEdit // ignore: cast_nullable_to_non_nullable
              as String,
      reviews: null == reviews
          ? _value.reviews
          : reviews // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CollectedVersionsCopyWith<$Res>
    implements $CollectedVersionsCopyWith<$Res> {
  factory _$$_CollectedVersionsCopyWith(_$_CollectedVersions value,
          $Res Function(_$_CollectedVersions) then) =
      __$$_CollectedVersionsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String generation,
      String initialEdit,
      String finalEdit,
      List<String> reviews});
}

/// @nodoc
class __$$_CollectedVersionsCopyWithImpl<$Res>
    extends _$CollectedVersionsCopyWithImpl<$Res, _$_CollectedVersions>
    implements _$$_CollectedVersionsCopyWith<$Res> {
  __$$_CollectedVersionsCopyWithImpl(
      _$_CollectedVersions _value, $Res Function(_$_CollectedVersions) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? generation = null,
    Object? initialEdit = null,
    Object? finalEdit = null,
    Object? reviews = null,
  }) {
    return _then(_$_CollectedVersions(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      generation: null == generation
          ? _value.generation
          : generation // ignore: cast_nullable_to_non_nullable
              as String,
      initialEdit: null == initialEdit
          ? _value.initialEdit
          : initialEdit // ignore: cast_nullable_to_non_nullable
              as String,
      finalEdit: null == finalEdit
          ? _value.finalEdit
          : finalEdit // ignore: cast_nullable_to_non_nullable
              as String,
      reviews: null == reviews
          ? _value._reviews
          : reviews // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CollectedVersions implements _CollectedVersions {
  _$_CollectedVersions(
      {required this.id,
      required this.generation,
      required this.initialEdit,
      required this.finalEdit,
      required final List<String> reviews})
      : _reviews = reviews;

  factory _$_CollectedVersions.fromJson(Map<String, dynamic> json) =>
      _$$_CollectedVersionsFromJson(json);

  @override
  final String id;
  @override
  final String generation;
  @override
  final String initialEdit;
  @override
  final String finalEdit;
  final List<String> _reviews;
  @override
  List<String> get reviews {
    if (_reviews is EqualUnmodifiableListView) return _reviews;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_reviews);
  }

  @override
  String toString() {
    return 'CollectedVersions(id: $id, generation: $generation, initialEdit: $initialEdit, finalEdit: $finalEdit, reviews: $reviews)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CollectedVersions &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.generation, generation) ||
                other.generation == generation) &&
            (identical(other.initialEdit, initialEdit) ||
                other.initialEdit == initialEdit) &&
            (identical(other.finalEdit, finalEdit) ||
                other.finalEdit == finalEdit) &&
            const DeepCollectionEquality().equals(other._reviews, _reviews));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, generation, initialEdit,
      finalEdit, const DeepCollectionEquality().hash(_reviews));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CollectedVersionsCopyWith<_$_CollectedVersions> get copyWith =>
      __$$_CollectedVersionsCopyWithImpl<_$_CollectedVersions>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CollectedVersionsToJson(
      this,
    );
  }
}

abstract class _CollectedVersions implements CollectedVersions {
  factory _CollectedVersions(
      {required final String id,
      required final String generation,
      required final String initialEdit,
      required final String finalEdit,
      required final List<String> reviews}) = _$_CollectedVersions;

  factory _CollectedVersions.fromJson(Map<String, dynamic> json) =
      _$_CollectedVersions.fromJson;

  @override
  String get id;
  @override
  String get generation;
  @override
  String get initialEdit;
  @override
  String get finalEdit;
  @override
  List<String> get reviews;
  @override
  @JsonKey(ignore: true)
  _$$_CollectedVersionsCopyWith<_$_CollectedVersions> get copyWith =>
      throw _privateConstructorUsedError;
}
