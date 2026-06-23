// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'habit_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$HabitModel {

@HiveField(0) String get id;@HiveField(1) String get userId;@HiveField(2) String get title;@HiveField(3) int get streakCount;@HiveField(4) bool get isCompletedToday;@HiveField(5) DateTime get createdAt;@HiveField(6) String? get categoryId;@HiveField(7) DateTime get updatedAt;@HiveField(8) bool get isSyncedWithPartner;@HiveField(9) List<String> get syncedPartnerIds;@HiveField(10) List<String> get repeatDayIds;@HiveField(11) DateTime? get reminderTime;@HiveField(12) String? get notes;@HiveField(13) String? get dailyGoal;@HiveField(14) bool get isDirty;
/// Create a copy of HabitModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HabitModelCopyWith<HabitModel> get copyWith => _$HabitModelCopyWithImpl<HabitModel>(this as HabitModel, _$identity);

  /// Serializes this HabitModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HabitModel&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.title, title) || other.title == title)&&(identical(other.streakCount, streakCount) || other.streakCount == streakCount)&&(identical(other.isCompletedToday, isCompletedToday) || other.isCompletedToday == isCompletedToday)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.isSyncedWithPartner, isSyncedWithPartner) || other.isSyncedWithPartner == isSyncedWithPartner)&&const DeepCollectionEquality().equals(other.syncedPartnerIds, syncedPartnerIds)&&const DeepCollectionEquality().equals(other.repeatDayIds, repeatDayIds)&&(identical(other.reminderTime, reminderTime) || other.reminderTime == reminderTime)&&(identical(other.notes, notes) || other.notes == notes)&&(identical(other.dailyGoal, dailyGoal) || other.dailyGoal == dailyGoal)&&(identical(other.isDirty, isDirty) || other.isDirty == isDirty));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,userId,title,streakCount,isCompletedToday,createdAt,categoryId,updatedAt,isSyncedWithPartner,const DeepCollectionEquality().hash(syncedPartnerIds),const DeepCollectionEquality().hash(repeatDayIds),reminderTime,notes,dailyGoal,isDirty);

@override
String toString() {
  return 'HabitModel(id: $id, userId: $userId, title: $title, streakCount: $streakCount, isCompletedToday: $isCompletedToday, createdAt: $createdAt, categoryId: $categoryId, updatedAt: $updatedAt, isSyncedWithPartner: $isSyncedWithPartner, syncedPartnerIds: $syncedPartnerIds, repeatDayIds: $repeatDayIds, reminderTime: $reminderTime, notes: $notes, dailyGoal: $dailyGoal, isDirty: $isDirty)';
}


}

/// @nodoc
abstract mixin class $HabitModelCopyWith<$Res>  {
  factory $HabitModelCopyWith(HabitModel value, $Res Function(HabitModel) _then) = _$HabitModelCopyWithImpl;
@useResult
$Res call({
@HiveField(0) String id,@HiveField(1) String userId,@HiveField(2) String title,@HiveField(3) int streakCount,@HiveField(4) bool isCompletedToday,@HiveField(5) DateTime createdAt,@HiveField(6) String? categoryId,@HiveField(7) DateTime updatedAt,@HiveField(8) bool isSyncedWithPartner,@HiveField(9) List<String> syncedPartnerIds,@HiveField(10) List<String> repeatDayIds,@HiveField(11) DateTime? reminderTime,@HiveField(12) String? notes,@HiveField(13) String? dailyGoal,@HiveField(14) bool isDirty
});




}
/// @nodoc
class _$HabitModelCopyWithImpl<$Res>
    implements $HabitModelCopyWith<$Res> {
  _$HabitModelCopyWithImpl(this._self, this._then);

  final HabitModel _self;
  final $Res Function(HabitModel) _then;

/// Create a copy of HabitModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? userId = null,Object? title = null,Object? streakCount = null,Object? isCompletedToday = null,Object? createdAt = null,Object? categoryId = freezed,Object? updatedAt = null,Object? isSyncedWithPartner = null,Object? syncedPartnerIds = null,Object? repeatDayIds = null,Object? reminderTime = freezed,Object? notes = freezed,Object? dailyGoal = freezed,Object? isDirty = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,streakCount: null == streakCount ? _self.streakCount : streakCount // ignore: cast_nullable_to_non_nullable
as int,isCompletedToday: null == isCompletedToday ? _self.isCompletedToday : isCompletedToday // ignore: cast_nullable_to_non_nullable
as bool,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,categoryId: freezed == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,isSyncedWithPartner: null == isSyncedWithPartner ? _self.isSyncedWithPartner : isSyncedWithPartner // ignore: cast_nullable_to_non_nullable
as bool,syncedPartnerIds: null == syncedPartnerIds ? _self.syncedPartnerIds : syncedPartnerIds // ignore: cast_nullable_to_non_nullable
as List<String>,repeatDayIds: null == repeatDayIds ? _self.repeatDayIds : repeatDayIds // ignore: cast_nullable_to_non_nullable
as List<String>,reminderTime: freezed == reminderTime ? _self.reminderTime : reminderTime // ignore: cast_nullable_to_non_nullable
as DateTime?,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,dailyGoal: freezed == dailyGoal ? _self.dailyGoal : dailyGoal // ignore: cast_nullable_to_non_nullable
as String?,isDirty: null == isDirty ? _self.isDirty : isDirty // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [HabitModel].
extension HabitModelPatterns on HabitModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _HabitModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HabitModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HabitModel value)  $default,){
final _that = this;
switch (_that) {
case _HabitModel():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HabitModel value)?  $default,){
final _that = this;
switch (_that) {
case _HabitModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@HiveField(0)  String id, @HiveField(1)  String userId, @HiveField(2)  String title, @HiveField(3)  int streakCount, @HiveField(4)  bool isCompletedToday, @HiveField(5)  DateTime createdAt, @HiveField(6)  String? categoryId, @HiveField(7)  DateTime updatedAt, @HiveField(8)  bool isSyncedWithPartner, @HiveField(9)  List<String> syncedPartnerIds, @HiveField(10)  List<String> repeatDayIds, @HiveField(11)  DateTime? reminderTime, @HiveField(12)  String? notes, @HiveField(13)  String? dailyGoal, @HiveField(14)  bool isDirty)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HabitModel() when $default != null:
return $default(_that.id,_that.userId,_that.title,_that.streakCount,_that.isCompletedToday,_that.createdAt,_that.categoryId,_that.updatedAt,_that.isSyncedWithPartner,_that.syncedPartnerIds,_that.repeatDayIds,_that.reminderTime,_that.notes,_that.dailyGoal,_that.isDirty);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@HiveField(0)  String id, @HiveField(1)  String userId, @HiveField(2)  String title, @HiveField(3)  int streakCount, @HiveField(4)  bool isCompletedToday, @HiveField(5)  DateTime createdAt, @HiveField(6)  String? categoryId, @HiveField(7)  DateTime updatedAt, @HiveField(8)  bool isSyncedWithPartner, @HiveField(9)  List<String> syncedPartnerIds, @HiveField(10)  List<String> repeatDayIds, @HiveField(11)  DateTime? reminderTime, @HiveField(12)  String? notes, @HiveField(13)  String? dailyGoal, @HiveField(14)  bool isDirty)  $default,) {final _that = this;
switch (_that) {
case _HabitModel():
return $default(_that.id,_that.userId,_that.title,_that.streakCount,_that.isCompletedToday,_that.createdAt,_that.categoryId,_that.updatedAt,_that.isSyncedWithPartner,_that.syncedPartnerIds,_that.repeatDayIds,_that.reminderTime,_that.notes,_that.dailyGoal,_that.isDirty);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@HiveField(0)  String id, @HiveField(1)  String userId, @HiveField(2)  String title, @HiveField(3)  int streakCount, @HiveField(4)  bool isCompletedToday, @HiveField(5)  DateTime createdAt, @HiveField(6)  String? categoryId, @HiveField(7)  DateTime updatedAt, @HiveField(8)  bool isSyncedWithPartner, @HiveField(9)  List<String> syncedPartnerIds, @HiveField(10)  List<String> repeatDayIds, @HiveField(11)  DateTime? reminderTime, @HiveField(12)  String? notes, @HiveField(13)  String? dailyGoal, @HiveField(14)  bool isDirty)?  $default,) {final _that = this;
switch (_that) {
case _HabitModel() when $default != null:
return $default(_that.id,_that.userId,_that.title,_that.streakCount,_that.isCompletedToday,_that.createdAt,_that.categoryId,_that.updatedAt,_that.isSyncedWithPartner,_that.syncedPartnerIds,_that.repeatDayIds,_that.reminderTime,_that.notes,_that.dailyGoal,_that.isDirty);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _HabitModel extends HabitModel {
  const _HabitModel({@HiveField(0) required this.id, @HiveField(1) required this.userId, @HiveField(2) required this.title, @HiveField(3) this.streakCount = 0, @HiveField(4) this.isCompletedToday = false, @HiveField(5) required this.createdAt, @HiveField(6) this.categoryId, @HiveField(7) required this.updatedAt, @HiveField(8) this.isSyncedWithPartner = false, @HiveField(9) final  List<String> syncedPartnerIds = const [], @HiveField(10) final  List<String> repeatDayIds = const [], @HiveField(11) this.reminderTime, @HiveField(12) this.notes, @HiveField(13) this.dailyGoal, @HiveField(14) this.isDirty = false}): _syncedPartnerIds = syncedPartnerIds,_repeatDayIds = repeatDayIds,super._();
  factory _HabitModel.fromJson(Map<String, dynamic> json) => _$HabitModelFromJson(json);

@override@HiveField(0) final  String id;
@override@HiveField(1) final  String userId;
@override@HiveField(2) final  String title;
@override@JsonKey()@HiveField(3) final  int streakCount;
@override@JsonKey()@HiveField(4) final  bool isCompletedToday;
@override@HiveField(5) final  DateTime createdAt;
@override@HiveField(6) final  String? categoryId;
@override@HiveField(7) final  DateTime updatedAt;
@override@JsonKey()@HiveField(8) final  bool isSyncedWithPartner;
 final  List<String> _syncedPartnerIds;
@override@JsonKey()@HiveField(9) List<String> get syncedPartnerIds {
  if (_syncedPartnerIds is EqualUnmodifiableListView) return _syncedPartnerIds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_syncedPartnerIds);
}

 final  List<String> _repeatDayIds;
@override@JsonKey()@HiveField(10) List<String> get repeatDayIds {
  if (_repeatDayIds is EqualUnmodifiableListView) return _repeatDayIds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_repeatDayIds);
}

@override@HiveField(11) final  DateTime? reminderTime;
@override@HiveField(12) final  String? notes;
@override@HiveField(13) final  String? dailyGoal;
@override@JsonKey()@HiveField(14) final  bool isDirty;

/// Create a copy of HabitModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HabitModelCopyWith<_HabitModel> get copyWith => __$HabitModelCopyWithImpl<_HabitModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$HabitModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HabitModel&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.title, title) || other.title == title)&&(identical(other.streakCount, streakCount) || other.streakCount == streakCount)&&(identical(other.isCompletedToday, isCompletedToday) || other.isCompletedToday == isCompletedToday)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.isSyncedWithPartner, isSyncedWithPartner) || other.isSyncedWithPartner == isSyncedWithPartner)&&const DeepCollectionEquality().equals(other._syncedPartnerIds, _syncedPartnerIds)&&const DeepCollectionEquality().equals(other._repeatDayIds, _repeatDayIds)&&(identical(other.reminderTime, reminderTime) || other.reminderTime == reminderTime)&&(identical(other.notes, notes) || other.notes == notes)&&(identical(other.dailyGoal, dailyGoal) || other.dailyGoal == dailyGoal)&&(identical(other.isDirty, isDirty) || other.isDirty == isDirty));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,userId,title,streakCount,isCompletedToday,createdAt,categoryId,updatedAt,isSyncedWithPartner,const DeepCollectionEquality().hash(_syncedPartnerIds),const DeepCollectionEquality().hash(_repeatDayIds),reminderTime,notes,dailyGoal,isDirty);

@override
String toString() {
  return 'HabitModel(id: $id, userId: $userId, title: $title, streakCount: $streakCount, isCompletedToday: $isCompletedToday, createdAt: $createdAt, categoryId: $categoryId, updatedAt: $updatedAt, isSyncedWithPartner: $isSyncedWithPartner, syncedPartnerIds: $syncedPartnerIds, repeatDayIds: $repeatDayIds, reminderTime: $reminderTime, notes: $notes, dailyGoal: $dailyGoal, isDirty: $isDirty)';
}


}

/// @nodoc
abstract mixin class _$HabitModelCopyWith<$Res> implements $HabitModelCopyWith<$Res> {
  factory _$HabitModelCopyWith(_HabitModel value, $Res Function(_HabitModel) _then) = __$HabitModelCopyWithImpl;
@override @useResult
$Res call({
@HiveField(0) String id,@HiveField(1) String userId,@HiveField(2) String title,@HiveField(3) int streakCount,@HiveField(4) bool isCompletedToday,@HiveField(5) DateTime createdAt,@HiveField(6) String? categoryId,@HiveField(7) DateTime updatedAt,@HiveField(8) bool isSyncedWithPartner,@HiveField(9) List<String> syncedPartnerIds,@HiveField(10) List<String> repeatDayIds,@HiveField(11) DateTime? reminderTime,@HiveField(12) String? notes,@HiveField(13) String? dailyGoal,@HiveField(14) bool isDirty
});




}
/// @nodoc
class __$HabitModelCopyWithImpl<$Res>
    implements _$HabitModelCopyWith<$Res> {
  __$HabitModelCopyWithImpl(this._self, this._then);

  final _HabitModel _self;
  final $Res Function(_HabitModel) _then;

/// Create a copy of HabitModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? userId = null,Object? title = null,Object? streakCount = null,Object? isCompletedToday = null,Object? createdAt = null,Object? categoryId = freezed,Object? updatedAt = null,Object? isSyncedWithPartner = null,Object? syncedPartnerIds = null,Object? repeatDayIds = null,Object? reminderTime = freezed,Object? notes = freezed,Object? dailyGoal = freezed,Object? isDirty = null,}) {
  return _then(_HabitModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,streakCount: null == streakCount ? _self.streakCount : streakCount // ignore: cast_nullable_to_non_nullable
as int,isCompletedToday: null == isCompletedToday ? _self.isCompletedToday : isCompletedToday // ignore: cast_nullable_to_non_nullable
as bool,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,categoryId: freezed == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,isSyncedWithPartner: null == isSyncedWithPartner ? _self.isSyncedWithPartner : isSyncedWithPartner // ignore: cast_nullable_to_non_nullable
as bool,syncedPartnerIds: null == syncedPartnerIds ? _self._syncedPartnerIds : syncedPartnerIds // ignore: cast_nullable_to_non_nullable
as List<String>,repeatDayIds: null == repeatDayIds ? _self._repeatDayIds : repeatDayIds // ignore: cast_nullable_to_non_nullable
as List<String>,reminderTime: freezed == reminderTime ? _self.reminderTime : reminderTime // ignore: cast_nullable_to_non_nullable
as DateTime?,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,dailyGoal: freezed == dailyGoal ? _self.dailyGoal : dailyGoal // ignore: cast_nullable_to_non_nullable
as String?,isDirty: null == isDirty ? _self.isDirty : isDirty // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
