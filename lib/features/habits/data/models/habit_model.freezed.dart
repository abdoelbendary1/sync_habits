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

 String? get id; String? get title; int? get streakCount; bool? get isCompletedToday; DateTime? get createdAt; String? get categoryId; DateTime? get updatedAt; bool? get isSyncedWithPartner; List<String>? get syncedPartnerIds; List<String>? get repeatDayIds; DateTime? get reminderTime; String? get notes; String? get dailyGoal;
/// Create a copy of HabitModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HabitModelCopyWith<HabitModel> get copyWith => _$HabitModelCopyWithImpl<HabitModel>(this as HabitModel, _$identity);

  /// Serializes this HabitModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HabitModel&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.streakCount, streakCount) || other.streakCount == streakCount)&&(identical(other.isCompletedToday, isCompletedToday) || other.isCompletedToday == isCompletedToday)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.isSyncedWithPartner, isSyncedWithPartner) || other.isSyncedWithPartner == isSyncedWithPartner)&&const DeepCollectionEquality().equals(other.syncedPartnerIds, syncedPartnerIds)&&const DeepCollectionEquality().equals(other.repeatDayIds, repeatDayIds)&&(identical(other.reminderTime, reminderTime) || other.reminderTime == reminderTime)&&(identical(other.notes, notes) || other.notes == notes)&&(identical(other.dailyGoal, dailyGoal) || other.dailyGoal == dailyGoal));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,streakCount,isCompletedToday,createdAt,categoryId,updatedAt,isSyncedWithPartner,const DeepCollectionEquality().hash(syncedPartnerIds),const DeepCollectionEquality().hash(repeatDayIds),reminderTime,notes,dailyGoal);

@override
String toString() {
  return 'HabitModel(id: $id, title: $title, streakCount: $streakCount, isCompletedToday: $isCompletedToday, createdAt: $createdAt, categoryId: $categoryId, updatedAt: $updatedAt, isSyncedWithPartner: $isSyncedWithPartner, syncedPartnerIds: $syncedPartnerIds, repeatDayIds: $repeatDayIds, reminderTime: $reminderTime, notes: $notes, dailyGoal: $dailyGoal)';
}


}

/// @nodoc
abstract mixin class $HabitModelCopyWith<$Res>  {
  factory $HabitModelCopyWith(HabitModel value, $Res Function(HabitModel) _then) = _$HabitModelCopyWithImpl;
@useResult
$Res call({
 String? id, String? title, int? streakCount, bool? isCompletedToday, DateTime? createdAt, String? categoryId, DateTime? updatedAt, bool? isSyncedWithPartner, List<String>? syncedPartnerIds, List<String>? repeatDayIds, DateTime? reminderTime, String? notes, String? dailyGoal
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
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? title = freezed,Object? streakCount = freezed,Object? isCompletedToday = freezed,Object? createdAt = freezed,Object? categoryId = freezed,Object? updatedAt = freezed,Object? isSyncedWithPartner = freezed,Object? syncedPartnerIds = freezed,Object? repeatDayIds = freezed,Object? reminderTime = freezed,Object? notes = freezed,Object? dailyGoal = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,streakCount: freezed == streakCount ? _self.streakCount : streakCount // ignore: cast_nullable_to_non_nullable
as int?,isCompletedToday: freezed == isCompletedToday ? _self.isCompletedToday : isCompletedToday // ignore: cast_nullable_to_non_nullable
as bool?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,categoryId: freezed == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,isSyncedWithPartner: freezed == isSyncedWithPartner ? _self.isSyncedWithPartner : isSyncedWithPartner // ignore: cast_nullable_to_non_nullable
as bool?,syncedPartnerIds: freezed == syncedPartnerIds ? _self.syncedPartnerIds : syncedPartnerIds // ignore: cast_nullable_to_non_nullable
as List<String>?,repeatDayIds: freezed == repeatDayIds ? _self.repeatDayIds : repeatDayIds // ignore: cast_nullable_to_non_nullable
as List<String>?,reminderTime: freezed == reminderTime ? _self.reminderTime : reminderTime // ignore: cast_nullable_to_non_nullable
as DateTime?,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,dailyGoal: freezed == dailyGoal ? _self.dailyGoal : dailyGoal // ignore: cast_nullable_to_non_nullable
as String?,
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? id,  String? title,  int? streakCount,  bool? isCompletedToday,  DateTime? createdAt,  String? categoryId,  DateTime? updatedAt,  bool? isSyncedWithPartner,  List<String>? syncedPartnerIds,  List<String>? repeatDayIds,  DateTime? reminderTime,  String? notes,  String? dailyGoal)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HabitModel() when $default != null:
return $default(_that.id,_that.title,_that.streakCount,_that.isCompletedToday,_that.createdAt,_that.categoryId,_that.updatedAt,_that.isSyncedWithPartner,_that.syncedPartnerIds,_that.repeatDayIds,_that.reminderTime,_that.notes,_that.dailyGoal);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? id,  String? title,  int? streakCount,  bool? isCompletedToday,  DateTime? createdAt,  String? categoryId,  DateTime? updatedAt,  bool? isSyncedWithPartner,  List<String>? syncedPartnerIds,  List<String>? repeatDayIds,  DateTime? reminderTime,  String? notes,  String? dailyGoal)  $default,) {final _that = this;
switch (_that) {
case _HabitModel():
return $default(_that.id,_that.title,_that.streakCount,_that.isCompletedToday,_that.createdAt,_that.categoryId,_that.updatedAt,_that.isSyncedWithPartner,_that.syncedPartnerIds,_that.repeatDayIds,_that.reminderTime,_that.notes,_that.dailyGoal);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? id,  String? title,  int? streakCount,  bool? isCompletedToday,  DateTime? createdAt,  String? categoryId,  DateTime? updatedAt,  bool? isSyncedWithPartner,  List<String>? syncedPartnerIds,  List<String>? repeatDayIds,  DateTime? reminderTime,  String? notes,  String? dailyGoal)?  $default,) {final _that = this;
switch (_that) {
case _HabitModel() when $default != null:
return $default(_that.id,_that.title,_that.streakCount,_that.isCompletedToday,_that.createdAt,_that.categoryId,_that.updatedAt,_that.isSyncedWithPartner,_that.syncedPartnerIds,_that.repeatDayIds,_that.reminderTime,_that.notes,_that.dailyGoal);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _HabitModel extends HabitModel {
  const _HabitModel({this.id, this.title, this.streakCount, this.isCompletedToday, this.createdAt, this.categoryId, this.updatedAt, this.isSyncedWithPartner, final  List<String>? syncedPartnerIds, final  List<String>? repeatDayIds, this.reminderTime, this.notes, this.dailyGoal}): _syncedPartnerIds = syncedPartnerIds,_repeatDayIds = repeatDayIds,super._();
  factory _HabitModel.fromJson(Map<String, dynamic> json) => _$HabitModelFromJson(json);

@override final  String? id;
@override final  String? title;
@override final  int? streakCount;
@override final  bool? isCompletedToday;
@override final  DateTime? createdAt;
@override final  String? categoryId;
@override final  DateTime? updatedAt;
@override final  bool? isSyncedWithPartner;
 final  List<String>? _syncedPartnerIds;
@override List<String>? get syncedPartnerIds {
  final value = _syncedPartnerIds;
  if (value == null) return null;
  if (_syncedPartnerIds is EqualUnmodifiableListView) return _syncedPartnerIds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<String>? _repeatDayIds;
@override List<String>? get repeatDayIds {
  final value = _repeatDayIds;
  if (value == null) return null;
  if (_repeatDayIds is EqualUnmodifiableListView) return _repeatDayIds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  DateTime? reminderTime;
@override final  String? notes;
@override final  String? dailyGoal;

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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HabitModel&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.streakCount, streakCount) || other.streakCount == streakCount)&&(identical(other.isCompletedToday, isCompletedToday) || other.isCompletedToday == isCompletedToday)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.isSyncedWithPartner, isSyncedWithPartner) || other.isSyncedWithPartner == isSyncedWithPartner)&&const DeepCollectionEquality().equals(other._syncedPartnerIds, _syncedPartnerIds)&&const DeepCollectionEquality().equals(other._repeatDayIds, _repeatDayIds)&&(identical(other.reminderTime, reminderTime) || other.reminderTime == reminderTime)&&(identical(other.notes, notes) || other.notes == notes)&&(identical(other.dailyGoal, dailyGoal) || other.dailyGoal == dailyGoal));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,streakCount,isCompletedToday,createdAt,categoryId,updatedAt,isSyncedWithPartner,const DeepCollectionEquality().hash(_syncedPartnerIds),const DeepCollectionEquality().hash(_repeatDayIds),reminderTime,notes,dailyGoal);

@override
String toString() {
  return 'HabitModel(id: $id, title: $title, streakCount: $streakCount, isCompletedToday: $isCompletedToday, createdAt: $createdAt, categoryId: $categoryId, updatedAt: $updatedAt, isSyncedWithPartner: $isSyncedWithPartner, syncedPartnerIds: $syncedPartnerIds, repeatDayIds: $repeatDayIds, reminderTime: $reminderTime, notes: $notes, dailyGoal: $dailyGoal)';
}


}

/// @nodoc
abstract mixin class _$HabitModelCopyWith<$Res> implements $HabitModelCopyWith<$Res> {
  factory _$HabitModelCopyWith(_HabitModel value, $Res Function(_HabitModel) _then) = __$HabitModelCopyWithImpl;
@override @useResult
$Res call({
 String? id, String? title, int? streakCount, bool? isCompletedToday, DateTime? createdAt, String? categoryId, DateTime? updatedAt, bool? isSyncedWithPartner, List<String>? syncedPartnerIds, List<String>? repeatDayIds, DateTime? reminderTime, String? notes, String? dailyGoal
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
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? title = freezed,Object? streakCount = freezed,Object? isCompletedToday = freezed,Object? createdAt = freezed,Object? categoryId = freezed,Object? updatedAt = freezed,Object? isSyncedWithPartner = freezed,Object? syncedPartnerIds = freezed,Object? repeatDayIds = freezed,Object? reminderTime = freezed,Object? notes = freezed,Object? dailyGoal = freezed,}) {
  return _then(_HabitModel(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,streakCount: freezed == streakCount ? _self.streakCount : streakCount // ignore: cast_nullable_to_non_nullable
as int?,isCompletedToday: freezed == isCompletedToday ? _self.isCompletedToday : isCompletedToday // ignore: cast_nullable_to_non_nullable
as bool?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,categoryId: freezed == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,isSyncedWithPartner: freezed == isSyncedWithPartner ? _self.isSyncedWithPartner : isSyncedWithPartner // ignore: cast_nullable_to_non_nullable
as bool?,syncedPartnerIds: freezed == syncedPartnerIds ? _self._syncedPartnerIds : syncedPartnerIds // ignore: cast_nullable_to_non_nullable
as List<String>?,repeatDayIds: freezed == repeatDayIds ? _self._repeatDayIds : repeatDayIds // ignore: cast_nullable_to_non_nullable
as List<String>?,reminderTime: freezed == reminderTime ? _self.reminderTime : reminderTime // ignore: cast_nullable_to_non_nullable
as DateTime?,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,dailyGoal: freezed == dailyGoal ? _self.dailyGoal : dailyGoal // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
