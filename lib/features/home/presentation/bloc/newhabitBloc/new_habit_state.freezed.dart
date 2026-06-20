// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'new_habit_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$NewHabitState {

 String get habitName; HabitCategory get selectedCategory; List<DayEnum> get repeatDays; TimeOfDay get reminderTime; int get dailyGoalSessions; bool get syncWithPartners; FormStatus get status; String? get errorMessage;
/// Create a copy of NewHabitState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NewHabitStateCopyWith<NewHabitState> get copyWith => _$NewHabitStateCopyWithImpl<NewHabitState>(this as NewHabitState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NewHabitState&&(identical(other.habitName, habitName) || other.habitName == habitName)&&(identical(other.selectedCategory, selectedCategory) || other.selectedCategory == selectedCategory)&&const DeepCollectionEquality().equals(other.repeatDays, repeatDays)&&(identical(other.reminderTime, reminderTime) || other.reminderTime == reminderTime)&&(identical(other.dailyGoalSessions, dailyGoalSessions) || other.dailyGoalSessions == dailyGoalSessions)&&(identical(other.syncWithPartners, syncWithPartners) || other.syncWithPartners == syncWithPartners)&&(identical(other.status, status) || other.status == status)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,habitName,selectedCategory,const DeepCollectionEquality().hash(repeatDays),reminderTime,dailyGoalSessions,syncWithPartners,status,errorMessage);

@override
String toString() {
  return 'NewHabitState(habitName: $habitName, selectedCategory: $selectedCategory, repeatDays: $repeatDays, reminderTime: $reminderTime, dailyGoalSessions: $dailyGoalSessions, syncWithPartners: $syncWithPartners, status: $status, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class $NewHabitStateCopyWith<$Res>  {
  factory $NewHabitStateCopyWith(NewHabitState value, $Res Function(NewHabitState) _then) = _$NewHabitStateCopyWithImpl;
@useResult
$Res call({
 String habitName, HabitCategory selectedCategory, List<DayEnum> repeatDays, TimeOfDay reminderTime, int dailyGoalSessions, bool syncWithPartners, FormStatus status, String? errorMessage
});




}
/// @nodoc
class _$NewHabitStateCopyWithImpl<$Res>
    implements $NewHabitStateCopyWith<$Res> {
  _$NewHabitStateCopyWithImpl(this._self, this._then);

  final NewHabitState _self;
  final $Res Function(NewHabitState) _then;

/// Create a copy of NewHabitState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? habitName = null,Object? selectedCategory = null,Object? repeatDays = null,Object? reminderTime = null,Object? dailyGoalSessions = null,Object? syncWithPartners = null,Object? status = null,Object? errorMessage = freezed,}) {
  return _then(_self.copyWith(
habitName: null == habitName ? _self.habitName : habitName // ignore: cast_nullable_to_non_nullable
as String,selectedCategory: null == selectedCategory ? _self.selectedCategory : selectedCategory // ignore: cast_nullable_to_non_nullable
as HabitCategory,repeatDays: null == repeatDays ? _self.repeatDays : repeatDays // ignore: cast_nullable_to_non_nullable
as List<DayEnum>,reminderTime: null == reminderTime ? _self.reminderTime : reminderTime // ignore: cast_nullable_to_non_nullable
as TimeOfDay,dailyGoalSessions: null == dailyGoalSessions ? _self.dailyGoalSessions : dailyGoalSessions // ignore: cast_nullable_to_non_nullable
as int,syncWithPartners: null == syncWithPartners ? _self.syncWithPartners : syncWithPartners // ignore: cast_nullable_to_non_nullable
as bool,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as FormStatus,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [NewHabitState].
extension NewHabitStatePatterns on NewHabitState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _NewHabitState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NewHabitState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _NewHabitState value)  $default,){
final _that = this;
switch (_that) {
case _NewHabitState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _NewHabitState value)?  $default,){
final _that = this;
switch (_that) {
case _NewHabitState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String habitName,  HabitCategory selectedCategory,  List<DayEnum> repeatDays,  TimeOfDay reminderTime,  int dailyGoalSessions,  bool syncWithPartners,  FormStatus status,  String? errorMessage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _NewHabitState() when $default != null:
return $default(_that.habitName,_that.selectedCategory,_that.repeatDays,_that.reminderTime,_that.dailyGoalSessions,_that.syncWithPartners,_that.status,_that.errorMessage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String habitName,  HabitCategory selectedCategory,  List<DayEnum> repeatDays,  TimeOfDay reminderTime,  int dailyGoalSessions,  bool syncWithPartners,  FormStatus status,  String? errorMessage)  $default,) {final _that = this;
switch (_that) {
case _NewHabitState():
return $default(_that.habitName,_that.selectedCategory,_that.repeatDays,_that.reminderTime,_that.dailyGoalSessions,_that.syncWithPartners,_that.status,_that.errorMessage);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String habitName,  HabitCategory selectedCategory,  List<DayEnum> repeatDays,  TimeOfDay reminderTime,  int dailyGoalSessions,  bool syncWithPartners,  FormStatus status,  String? errorMessage)?  $default,) {final _that = this;
switch (_that) {
case _NewHabitState() when $default != null:
return $default(_that.habitName,_that.selectedCategory,_that.repeatDays,_that.reminderTime,_that.dailyGoalSessions,_that.syncWithPartners,_that.status,_that.errorMessage);case _:
  return null;

}
}

}

/// @nodoc


class _NewHabitState extends NewHabitState {
  const _NewHabitState({this.habitName = '', this.selectedCategory = HabitCategory.fitness, final  List<DayEnum> repeatDays = const [], this.reminderTime = const TimeOfDay(hour: 8, minute: 0), this.dailyGoalSessions = 1, this.syncWithPartners = true, this.status = FormStatus.initial, this.errorMessage}): _repeatDays = repeatDays,super._();
  

@override@JsonKey() final  String habitName;
@override@JsonKey() final  HabitCategory selectedCategory;
 final  List<DayEnum> _repeatDays;
@override@JsonKey() List<DayEnum> get repeatDays {
  if (_repeatDays is EqualUnmodifiableListView) return _repeatDays;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_repeatDays);
}

@override@JsonKey() final  TimeOfDay reminderTime;
@override@JsonKey() final  int dailyGoalSessions;
@override@JsonKey() final  bool syncWithPartners;
@override@JsonKey() final  FormStatus status;
@override final  String? errorMessage;

/// Create a copy of NewHabitState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NewHabitStateCopyWith<_NewHabitState> get copyWith => __$NewHabitStateCopyWithImpl<_NewHabitState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NewHabitState&&(identical(other.habitName, habitName) || other.habitName == habitName)&&(identical(other.selectedCategory, selectedCategory) || other.selectedCategory == selectedCategory)&&const DeepCollectionEquality().equals(other._repeatDays, _repeatDays)&&(identical(other.reminderTime, reminderTime) || other.reminderTime == reminderTime)&&(identical(other.dailyGoalSessions, dailyGoalSessions) || other.dailyGoalSessions == dailyGoalSessions)&&(identical(other.syncWithPartners, syncWithPartners) || other.syncWithPartners == syncWithPartners)&&(identical(other.status, status) || other.status == status)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,habitName,selectedCategory,const DeepCollectionEquality().hash(_repeatDays),reminderTime,dailyGoalSessions,syncWithPartners,status,errorMessage);

@override
String toString() {
  return 'NewHabitState(habitName: $habitName, selectedCategory: $selectedCategory, repeatDays: $repeatDays, reminderTime: $reminderTime, dailyGoalSessions: $dailyGoalSessions, syncWithPartners: $syncWithPartners, status: $status, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class _$NewHabitStateCopyWith<$Res> implements $NewHabitStateCopyWith<$Res> {
  factory _$NewHabitStateCopyWith(_NewHabitState value, $Res Function(_NewHabitState) _then) = __$NewHabitStateCopyWithImpl;
@override @useResult
$Res call({
 String habitName, HabitCategory selectedCategory, List<DayEnum> repeatDays, TimeOfDay reminderTime, int dailyGoalSessions, bool syncWithPartners, FormStatus status, String? errorMessage
});




}
/// @nodoc
class __$NewHabitStateCopyWithImpl<$Res>
    implements _$NewHabitStateCopyWith<$Res> {
  __$NewHabitStateCopyWithImpl(this._self, this._then);

  final _NewHabitState _self;
  final $Res Function(_NewHabitState) _then;

/// Create a copy of NewHabitState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? habitName = null,Object? selectedCategory = null,Object? repeatDays = null,Object? reminderTime = null,Object? dailyGoalSessions = null,Object? syncWithPartners = null,Object? status = null,Object? errorMessage = freezed,}) {
  return _then(_NewHabitState(
habitName: null == habitName ? _self.habitName : habitName // ignore: cast_nullable_to_non_nullable
as String,selectedCategory: null == selectedCategory ? _self.selectedCategory : selectedCategory // ignore: cast_nullable_to_non_nullable
as HabitCategory,repeatDays: null == repeatDays ? _self._repeatDays : repeatDays // ignore: cast_nullable_to_non_nullable
as List<DayEnum>,reminderTime: null == reminderTime ? _self.reminderTime : reminderTime // ignore: cast_nullable_to_non_nullable
as TimeOfDay,dailyGoalSessions: null == dailyGoalSessions ? _self.dailyGoalSessions : dailyGoalSessions // ignore: cast_nullable_to_non_nullable
as int,syncWithPartners: null == syncWithPartners ? _self.syncWithPartners : syncWithPartners // ignore: cast_nullable_to_non_nullable
as bool,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as FormStatus,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
