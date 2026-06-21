// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'habits_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$HabitsEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HabitsEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HabitsEvent()';
}


}

/// @nodoc
class $HabitsEventCopyWith<$Res>  {
$HabitsEventCopyWith(HabitsEvent _, $Res Function(HabitsEvent) __);
}


/// Adds pattern-matching-related methods to [HabitsEvent].
extension HabitsEventPatterns on HabitsEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Started value)?  started,TResult Function( _GetHabits value)?  getHabits,TResult Function( _WatchHabits value)?  watchHabits,TResult Function( _CreateHabit value)?  createHabit,TResult Function( _UpdateHabit value)?  updateHabit,TResult Function( _DeleteHabit value)?  deleteHabit,TResult Function( _ToggleHabitCompletion value)?  toggleHabitCompletion,TResult Function( _ReorderHabits value)?  reorderHabits,TResult Function( _RefreshHabits value)?  refreshHabits,TResult Function( _SyncHabitsWithServer value)?  syncHabitsWithServer,TResult Function( _SwipeCard value)?  swipeCard,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _GetHabits() when getHabits != null:
return getHabits(_that);case _WatchHabits() when watchHabits != null:
return watchHabits(_that);case _CreateHabit() when createHabit != null:
return createHabit(_that);case _UpdateHabit() when updateHabit != null:
return updateHabit(_that);case _DeleteHabit() when deleteHabit != null:
return deleteHabit(_that);case _ToggleHabitCompletion() when toggleHabitCompletion != null:
return toggleHabitCompletion(_that);case _ReorderHabits() when reorderHabits != null:
return reorderHabits(_that);case _RefreshHabits() when refreshHabits != null:
return refreshHabits(_that);case _SyncHabitsWithServer() when syncHabitsWithServer != null:
return syncHabitsWithServer(_that);case _SwipeCard() when swipeCard != null:
return swipeCard(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Started value)  started,required TResult Function( _GetHabits value)  getHabits,required TResult Function( _WatchHabits value)  watchHabits,required TResult Function( _CreateHabit value)  createHabit,required TResult Function( _UpdateHabit value)  updateHabit,required TResult Function( _DeleteHabit value)  deleteHabit,required TResult Function( _ToggleHabitCompletion value)  toggleHabitCompletion,required TResult Function( _ReorderHabits value)  reorderHabits,required TResult Function( _RefreshHabits value)  refreshHabits,required TResult Function( _SyncHabitsWithServer value)  syncHabitsWithServer,required TResult Function( _SwipeCard value)  swipeCard,}){
final _that = this;
switch (_that) {
case _Started():
return started(_that);case _GetHabits():
return getHabits(_that);case _WatchHabits():
return watchHabits(_that);case _CreateHabit():
return createHabit(_that);case _UpdateHabit():
return updateHabit(_that);case _DeleteHabit():
return deleteHabit(_that);case _ToggleHabitCompletion():
return toggleHabitCompletion(_that);case _ReorderHabits():
return reorderHabits(_that);case _RefreshHabits():
return refreshHabits(_that);case _SyncHabitsWithServer():
return syncHabitsWithServer(_that);case _SwipeCard():
return swipeCard(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Started value)?  started,TResult? Function( _GetHabits value)?  getHabits,TResult? Function( _WatchHabits value)?  watchHabits,TResult? Function( _CreateHabit value)?  createHabit,TResult? Function( _UpdateHabit value)?  updateHabit,TResult? Function( _DeleteHabit value)?  deleteHabit,TResult? Function( _ToggleHabitCompletion value)?  toggleHabitCompletion,TResult? Function( _ReorderHabits value)?  reorderHabits,TResult? Function( _RefreshHabits value)?  refreshHabits,TResult? Function( _SyncHabitsWithServer value)?  syncHabitsWithServer,TResult? Function( _SwipeCard value)?  swipeCard,}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _GetHabits() when getHabits != null:
return getHabits(_that);case _WatchHabits() when watchHabits != null:
return watchHabits(_that);case _CreateHabit() when createHabit != null:
return createHabit(_that);case _UpdateHabit() when updateHabit != null:
return updateHabit(_that);case _DeleteHabit() when deleteHabit != null:
return deleteHabit(_that);case _ToggleHabitCompletion() when toggleHabitCompletion != null:
return toggleHabitCompletion(_that);case _ReorderHabits() when reorderHabits != null:
return reorderHabits(_that);case _RefreshHabits() when refreshHabits != null:
return refreshHabits(_that);case _SyncHabitsWithServer() when syncHabitsWithServer != null:
return syncHabitsWithServer(_that);case _SwipeCard() when swipeCard != null:
return swipeCard(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  started,TResult Function()?  getHabits,TResult Function()?  watchHabits,TResult Function( HabitEntity habit)?  createHabit,TResult Function( HabitEntity habit)?  updateHabit,TResult Function( HabitEntity habit)?  deleteHabit,TResult Function( String habitId,  bool isCompleted)?  toggleHabitCompletion,TResult Function( List<HabitEntity> reorderedHabits)?  reorderHabits,TResult Function()?  refreshHabits,TResult Function()?  syncHabitsWithServer,TResult Function( double borderRadius)?  swipeCard,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case _GetHabits() when getHabits != null:
return getHabits();case _WatchHabits() when watchHabits != null:
return watchHabits();case _CreateHabit() when createHabit != null:
return createHabit(_that.habit);case _UpdateHabit() when updateHabit != null:
return updateHabit(_that.habit);case _DeleteHabit() when deleteHabit != null:
return deleteHabit(_that.habit);case _ToggleHabitCompletion() when toggleHabitCompletion != null:
return toggleHabitCompletion(_that.habitId,_that.isCompleted);case _ReorderHabits() when reorderHabits != null:
return reorderHabits(_that.reorderedHabits);case _RefreshHabits() when refreshHabits != null:
return refreshHabits();case _SyncHabitsWithServer() when syncHabitsWithServer != null:
return syncHabitsWithServer();case _SwipeCard() when swipeCard != null:
return swipeCard(_that.borderRadius);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  started,required TResult Function()  getHabits,required TResult Function()  watchHabits,required TResult Function( HabitEntity habit)  createHabit,required TResult Function( HabitEntity habit)  updateHabit,required TResult Function( HabitEntity habit)  deleteHabit,required TResult Function( String habitId,  bool isCompleted)  toggleHabitCompletion,required TResult Function( List<HabitEntity> reorderedHabits)  reorderHabits,required TResult Function()  refreshHabits,required TResult Function()  syncHabitsWithServer,required TResult Function( double borderRadius)  swipeCard,}) {final _that = this;
switch (_that) {
case _Started():
return started();case _GetHabits():
return getHabits();case _WatchHabits():
return watchHabits();case _CreateHabit():
return createHabit(_that.habit);case _UpdateHabit():
return updateHabit(_that.habit);case _DeleteHabit():
return deleteHabit(_that.habit);case _ToggleHabitCompletion():
return toggleHabitCompletion(_that.habitId,_that.isCompleted);case _ReorderHabits():
return reorderHabits(_that.reorderedHabits);case _RefreshHabits():
return refreshHabits();case _SyncHabitsWithServer():
return syncHabitsWithServer();case _SwipeCard():
return swipeCard(_that.borderRadius);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  started,TResult? Function()?  getHabits,TResult? Function()?  watchHabits,TResult? Function( HabitEntity habit)?  createHabit,TResult? Function( HabitEntity habit)?  updateHabit,TResult? Function( HabitEntity habit)?  deleteHabit,TResult? Function( String habitId,  bool isCompleted)?  toggleHabitCompletion,TResult? Function( List<HabitEntity> reorderedHabits)?  reorderHabits,TResult? Function()?  refreshHabits,TResult? Function()?  syncHabitsWithServer,TResult? Function( double borderRadius)?  swipeCard,}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case _GetHabits() when getHabits != null:
return getHabits();case _WatchHabits() when watchHabits != null:
return watchHabits();case _CreateHabit() when createHabit != null:
return createHabit(_that.habit);case _UpdateHabit() when updateHabit != null:
return updateHabit(_that.habit);case _DeleteHabit() when deleteHabit != null:
return deleteHabit(_that.habit);case _ToggleHabitCompletion() when toggleHabitCompletion != null:
return toggleHabitCompletion(_that.habitId,_that.isCompleted);case _ReorderHabits() when reorderHabits != null:
return reorderHabits(_that.reorderedHabits);case _RefreshHabits() when refreshHabits != null:
return refreshHabits();case _SyncHabitsWithServer() when syncHabitsWithServer != null:
return syncHabitsWithServer();case _SwipeCard() when swipeCard != null:
return swipeCard(_that.borderRadius);case _:
  return null;

}
}

}

/// @nodoc


class _Started implements HabitsEvent {
  const _Started();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Started);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HabitsEvent.started()';
}


}




/// @nodoc


class _GetHabits implements HabitsEvent {
  const _GetHabits();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetHabits);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HabitsEvent.getHabits()';
}


}




/// @nodoc


class _WatchHabits implements HabitsEvent {
  const _WatchHabits();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WatchHabits);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HabitsEvent.watchHabits()';
}


}




/// @nodoc


class _CreateHabit implements HabitsEvent {
  const _CreateHabit(this.habit);
  

 final  HabitEntity habit;

/// Create a copy of HabitsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateHabitCopyWith<_CreateHabit> get copyWith => __$CreateHabitCopyWithImpl<_CreateHabit>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateHabit&&(identical(other.habit, habit) || other.habit == habit));
}


@override
int get hashCode => Object.hash(runtimeType,habit);

@override
String toString() {
  return 'HabitsEvent.createHabit(habit: $habit)';
}


}

/// @nodoc
abstract mixin class _$CreateHabitCopyWith<$Res> implements $HabitsEventCopyWith<$Res> {
  factory _$CreateHabitCopyWith(_CreateHabit value, $Res Function(_CreateHabit) _then) = __$CreateHabitCopyWithImpl;
@useResult
$Res call({
 HabitEntity habit
});




}
/// @nodoc
class __$CreateHabitCopyWithImpl<$Res>
    implements _$CreateHabitCopyWith<$Res> {
  __$CreateHabitCopyWithImpl(this._self, this._then);

  final _CreateHabit _self;
  final $Res Function(_CreateHabit) _then;

/// Create a copy of HabitsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? habit = null,}) {
  return _then(_CreateHabit(
null == habit ? _self.habit : habit // ignore: cast_nullable_to_non_nullable
as HabitEntity,
  ));
}


}

/// @nodoc


class _UpdateHabit implements HabitsEvent {
  const _UpdateHabit(this.habit);
  

 final  HabitEntity habit;

/// Create a copy of HabitsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateHabitCopyWith<_UpdateHabit> get copyWith => __$UpdateHabitCopyWithImpl<_UpdateHabit>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateHabit&&(identical(other.habit, habit) || other.habit == habit));
}


@override
int get hashCode => Object.hash(runtimeType,habit);

@override
String toString() {
  return 'HabitsEvent.updateHabit(habit: $habit)';
}


}

/// @nodoc
abstract mixin class _$UpdateHabitCopyWith<$Res> implements $HabitsEventCopyWith<$Res> {
  factory _$UpdateHabitCopyWith(_UpdateHabit value, $Res Function(_UpdateHabit) _then) = __$UpdateHabitCopyWithImpl;
@useResult
$Res call({
 HabitEntity habit
});




}
/// @nodoc
class __$UpdateHabitCopyWithImpl<$Res>
    implements _$UpdateHabitCopyWith<$Res> {
  __$UpdateHabitCopyWithImpl(this._self, this._then);

  final _UpdateHabit _self;
  final $Res Function(_UpdateHabit) _then;

/// Create a copy of HabitsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? habit = null,}) {
  return _then(_UpdateHabit(
null == habit ? _self.habit : habit // ignore: cast_nullable_to_non_nullable
as HabitEntity,
  ));
}


}

/// @nodoc


class _DeleteHabit implements HabitsEvent {
  const _DeleteHabit(this.habit);
  

 final  HabitEntity habit;

/// Create a copy of HabitsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DeleteHabitCopyWith<_DeleteHabit> get copyWith => __$DeleteHabitCopyWithImpl<_DeleteHabit>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DeleteHabit&&(identical(other.habit, habit) || other.habit == habit));
}


@override
int get hashCode => Object.hash(runtimeType,habit);

@override
String toString() {
  return 'HabitsEvent.deleteHabit(habit: $habit)';
}


}

/// @nodoc
abstract mixin class _$DeleteHabitCopyWith<$Res> implements $HabitsEventCopyWith<$Res> {
  factory _$DeleteHabitCopyWith(_DeleteHabit value, $Res Function(_DeleteHabit) _then) = __$DeleteHabitCopyWithImpl;
@useResult
$Res call({
 HabitEntity habit
});




}
/// @nodoc
class __$DeleteHabitCopyWithImpl<$Res>
    implements _$DeleteHabitCopyWith<$Res> {
  __$DeleteHabitCopyWithImpl(this._self, this._then);

  final _DeleteHabit _self;
  final $Res Function(_DeleteHabit) _then;

/// Create a copy of HabitsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? habit = null,}) {
  return _then(_DeleteHabit(
null == habit ? _self.habit : habit // ignore: cast_nullable_to_non_nullable
as HabitEntity,
  ));
}


}

/// @nodoc


class _ToggleHabitCompletion implements HabitsEvent {
  const _ToggleHabitCompletion(this.habitId, this.isCompleted);
  

 final  String habitId;
 final  bool isCompleted;

/// Create a copy of HabitsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ToggleHabitCompletionCopyWith<_ToggleHabitCompletion> get copyWith => __$ToggleHabitCompletionCopyWithImpl<_ToggleHabitCompletion>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ToggleHabitCompletion&&(identical(other.habitId, habitId) || other.habitId == habitId)&&(identical(other.isCompleted, isCompleted) || other.isCompleted == isCompleted));
}


@override
int get hashCode => Object.hash(runtimeType,habitId,isCompleted);

@override
String toString() {
  return 'HabitsEvent.toggleHabitCompletion(habitId: $habitId, isCompleted: $isCompleted)';
}


}

/// @nodoc
abstract mixin class _$ToggleHabitCompletionCopyWith<$Res> implements $HabitsEventCopyWith<$Res> {
  factory _$ToggleHabitCompletionCopyWith(_ToggleHabitCompletion value, $Res Function(_ToggleHabitCompletion) _then) = __$ToggleHabitCompletionCopyWithImpl;
@useResult
$Res call({
 String habitId, bool isCompleted
});




}
/// @nodoc
class __$ToggleHabitCompletionCopyWithImpl<$Res>
    implements _$ToggleHabitCompletionCopyWith<$Res> {
  __$ToggleHabitCompletionCopyWithImpl(this._self, this._then);

  final _ToggleHabitCompletion _self;
  final $Res Function(_ToggleHabitCompletion) _then;

/// Create a copy of HabitsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? habitId = null,Object? isCompleted = null,}) {
  return _then(_ToggleHabitCompletion(
null == habitId ? _self.habitId : habitId // ignore: cast_nullable_to_non_nullable
as String,null == isCompleted ? _self.isCompleted : isCompleted // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class _ReorderHabits implements HabitsEvent {
  const _ReorderHabits(final  List<HabitEntity> reorderedHabits): _reorderedHabits = reorderedHabits;
  

 final  List<HabitEntity> _reorderedHabits;
 List<HabitEntity> get reorderedHabits {
  if (_reorderedHabits is EqualUnmodifiableListView) return _reorderedHabits;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_reorderedHabits);
}


/// Create a copy of HabitsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReorderHabitsCopyWith<_ReorderHabits> get copyWith => __$ReorderHabitsCopyWithImpl<_ReorderHabits>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReorderHabits&&const DeepCollectionEquality().equals(other._reorderedHabits, _reorderedHabits));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_reorderedHabits));

@override
String toString() {
  return 'HabitsEvent.reorderHabits(reorderedHabits: $reorderedHabits)';
}


}

/// @nodoc
abstract mixin class _$ReorderHabitsCopyWith<$Res> implements $HabitsEventCopyWith<$Res> {
  factory _$ReorderHabitsCopyWith(_ReorderHabits value, $Res Function(_ReorderHabits) _then) = __$ReorderHabitsCopyWithImpl;
@useResult
$Res call({
 List<HabitEntity> reorderedHabits
});




}
/// @nodoc
class __$ReorderHabitsCopyWithImpl<$Res>
    implements _$ReorderHabitsCopyWith<$Res> {
  __$ReorderHabitsCopyWithImpl(this._self, this._then);

  final _ReorderHabits _self;
  final $Res Function(_ReorderHabits) _then;

/// Create a copy of HabitsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? reorderedHabits = null,}) {
  return _then(_ReorderHabits(
null == reorderedHabits ? _self._reorderedHabits : reorderedHabits // ignore: cast_nullable_to_non_nullable
as List<HabitEntity>,
  ));
}


}

/// @nodoc


class _RefreshHabits implements HabitsEvent {
  const _RefreshHabits();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RefreshHabits);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HabitsEvent.refreshHabits()';
}


}




/// @nodoc


class _SyncHabitsWithServer implements HabitsEvent {
  const _SyncHabitsWithServer();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SyncHabitsWithServer);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HabitsEvent.syncHabitsWithServer()';
}


}




/// @nodoc


class _SwipeCard implements HabitsEvent {
  const _SwipeCard(this.borderRadius);
  

 final  double borderRadius;

/// Create a copy of HabitsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SwipeCardCopyWith<_SwipeCard> get copyWith => __$SwipeCardCopyWithImpl<_SwipeCard>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SwipeCard&&(identical(other.borderRadius, borderRadius) || other.borderRadius == borderRadius));
}


@override
int get hashCode => Object.hash(runtimeType,borderRadius);

@override
String toString() {
  return 'HabitsEvent.swipeCard(borderRadius: $borderRadius)';
}


}

/// @nodoc
abstract mixin class _$SwipeCardCopyWith<$Res> implements $HabitsEventCopyWith<$Res> {
  factory _$SwipeCardCopyWith(_SwipeCard value, $Res Function(_SwipeCard) _then) = __$SwipeCardCopyWithImpl;
@useResult
$Res call({
 double borderRadius
});




}
/// @nodoc
class __$SwipeCardCopyWithImpl<$Res>
    implements _$SwipeCardCopyWith<$Res> {
  __$SwipeCardCopyWithImpl(this._self, this._then);

  final _SwipeCard _self;
  final $Res Function(_SwipeCard) _then;

/// Create a copy of HabitsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? borderRadius = null,}) {
  return _then(_SwipeCard(
null == borderRadius ? _self.borderRadius : borderRadius // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

/// @nodoc
mixin _$HabitsState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HabitsState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HabitsState()';
}


}

/// @nodoc
class $HabitsStateCopyWith<$Res>  {
$HabitsStateCopyWith(HabitsState _, $Res Function(HabitsState) __);
}


/// Adds pattern-matching-related methods to [HabitsState].
extension HabitsStatePatterns on HabitsState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( _Loading value)?  loading,TResult Function( _Success value)?  success,TResult Function( _Failure value)?  failure,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _Loading() when loading != null:
return loading(_that);case _Success() when success != null:
return success(_that);case _Failure() when failure != null:
return failure(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( _Loading value)  loading,required TResult Function( _Success value)  success,required TResult Function( _Failure value)  failure,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case _Loading():
return loading(_that);case _Success():
return success(_that);case _Failure():
return failure(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( _Loading value)?  loading,TResult? Function( _Success value)?  success,TResult? Function( _Failure value)?  failure,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _Loading() when loading != null:
return loading(_that);case _Success() when success != null:
return success(_that);case _Failure() when failure != null:
return failure(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( List<HabitEntity> habits,  List<HabitEntity> completedHabits,  List<HabitEntity> uncompletedHabits,  bool? isSyncedWithServer,  double? cardBorderRadius)?  success,TResult Function( String message)?  failure,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _Loading() when loading != null:
return loading();case _Success() when success != null:
return success(_that.habits,_that.completedHabits,_that.uncompletedHabits,_that.isSyncedWithServer,_that.cardBorderRadius);case _Failure() when failure != null:
return failure(_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( List<HabitEntity> habits,  List<HabitEntity> completedHabits,  List<HabitEntity> uncompletedHabits,  bool? isSyncedWithServer,  double? cardBorderRadius)  success,required TResult Function( String message)  failure,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case _Loading():
return loading();case _Success():
return success(_that.habits,_that.completedHabits,_that.uncompletedHabits,_that.isSyncedWithServer,_that.cardBorderRadius);case _Failure():
return failure(_that.message);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( List<HabitEntity> habits,  List<HabitEntity> completedHabits,  List<HabitEntity> uncompletedHabits,  bool? isSyncedWithServer,  double? cardBorderRadius)?  success,TResult? Function( String message)?  failure,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _Loading() when loading != null:
return loading();case _Success() when success != null:
return success(_that.habits,_that.completedHabits,_that.uncompletedHabits,_that.isSyncedWithServer,_that.cardBorderRadius);case _Failure() when failure != null:
return failure(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements HabitsState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HabitsState.initial()';
}


}




/// @nodoc


class _Loading implements HabitsState {
  const _Loading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Loading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HabitsState.loading()';
}


}




/// @nodoc


class _Success implements HabitsState {
  const _Success({required final  List<HabitEntity> habits, required final  List<HabitEntity> completedHabits, required final  List<HabitEntity> uncompletedHabits, this.isSyncedWithServer = false, this.cardBorderRadius = 16.0}): _habits = habits,_completedHabits = completedHabits,_uncompletedHabits = uncompletedHabits;
  

 final  List<HabitEntity> _habits;
 List<HabitEntity> get habits {
  if (_habits is EqualUnmodifiableListView) return _habits;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_habits);
}

 final  List<HabitEntity> _completedHabits;
 List<HabitEntity> get completedHabits {
  if (_completedHabits is EqualUnmodifiableListView) return _completedHabits;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_completedHabits);
}

 final  List<HabitEntity> _uncompletedHabits;
 List<HabitEntity> get uncompletedHabits {
  if (_uncompletedHabits is EqualUnmodifiableListView) return _uncompletedHabits;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_uncompletedHabits);
}

@JsonKey() final  bool? isSyncedWithServer;
@JsonKey() final  double? cardBorderRadius;

/// Create a copy of HabitsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SuccessCopyWith<_Success> get copyWith => __$SuccessCopyWithImpl<_Success>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Success&&const DeepCollectionEquality().equals(other._habits, _habits)&&const DeepCollectionEquality().equals(other._completedHabits, _completedHabits)&&const DeepCollectionEquality().equals(other._uncompletedHabits, _uncompletedHabits)&&(identical(other.isSyncedWithServer, isSyncedWithServer) || other.isSyncedWithServer == isSyncedWithServer)&&(identical(other.cardBorderRadius, cardBorderRadius) || other.cardBorderRadius == cardBorderRadius));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_habits),const DeepCollectionEquality().hash(_completedHabits),const DeepCollectionEquality().hash(_uncompletedHabits),isSyncedWithServer,cardBorderRadius);

@override
String toString() {
  return 'HabitsState.success(habits: $habits, completedHabits: $completedHabits, uncompletedHabits: $uncompletedHabits, isSyncedWithServer: $isSyncedWithServer, cardBorderRadius: $cardBorderRadius)';
}


}

/// @nodoc
abstract mixin class _$SuccessCopyWith<$Res> implements $HabitsStateCopyWith<$Res> {
  factory _$SuccessCopyWith(_Success value, $Res Function(_Success) _then) = __$SuccessCopyWithImpl;
@useResult
$Res call({
 List<HabitEntity> habits, List<HabitEntity> completedHabits, List<HabitEntity> uncompletedHabits, bool? isSyncedWithServer, double? cardBorderRadius
});




}
/// @nodoc
class __$SuccessCopyWithImpl<$Res>
    implements _$SuccessCopyWith<$Res> {
  __$SuccessCopyWithImpl(this._self, this._then);

  final _Success _self;
  final $Res Function(_Success) _then;

/// Create a copy of HabitsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? habits = null,Object? completedHabits = null,Object? uncompletedHabits = null,Object? isSyncedWithServer = freezed,Object? cardBorderRadius = freezed,}) {
  return _then(_Success(
habits: null == habits ? _self._habits : habits // ignore: cast_nullable_to_non_nullable
as List<HabitEntity>,completedHabits: null == completedHabits ? _self._completedHabits : completedHabits // ignore: cast_nullable_to_non_nullable
as List<HabitEntity>,uncompletedHabits: null == uncompletedHabits ? _self._uncompletedHabits : uncompletedHabits // ignore: cast_nullable_to_non_nullable
as List<HabitEntity>,isSyncedWithServer: freezed == isSyncedWithServer ? _self.isSyncedWithServer : isSyncedWithServer // ignore: cast_nullable_to_non_nullable
as bool?,cardBorderRadius: freezed == cardBorderRadius ? _self.cardBorderRadius : cardBorderRadius // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}


}

/// @nodoc


class _Failure implements HabitsState {
  const _Failure(this.message);
  

 final  String message;

/// Create a copy of HabitsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FailureCopyWith<_Failure> get copyWith => __$FailureCopyWithImpl<_Failure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Failure&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'HabitsState.failure(message: $message)';
}


}

/// @nodoc
abstract mixin class _$FailureCopyWith<$Res> implements $HabitsStateCopyWith<$Res> {
  factory _$FailureCopyWith(_Failure value, $Res Function(_Failure) _then) = __$FailureCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class __$FailureCopyWithImpl<$Res>
    implements _$FailureCopyWith<$Res> {
  __$FailureCopyWithImpl(this._self, this._then);

  final _Failure _self;
  final $Res Function(_Failure) _then;

/// Create a copy of HabitsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_Failure(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
