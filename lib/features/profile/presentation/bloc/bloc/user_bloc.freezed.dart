// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$UserEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UserEvent()';
}


}

/// @nodoc
class $UserEventCopyWith<$Res>  {
$UserEventCopyWith(UserEvent _, $Res Function(UserEvent) __);
}


/// Adds pattern-matching-related methods to [UserEvent].
extension UserEventPatterns on UserEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _FetchUserProfile value)?  fetchUserProfile,TResult Function( _UpdateSyncSettings value)?  updateSyncSettings,TResult Function( _ProfileSaved value)?  profileSaved,TResult Function( _LogOut value)?  logOut,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FetchUserProfile() when fetchUserProfile != null:
return fetchUserProfile(_that);case _UpdateSyncSettings() when updateSyncSettings != null:
return updateSyncSettings(_that);case _ProfileSaved() when profileSaved != null:
return profileSaved(_that);case _LogOut() when logOut != null:
return logOut(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _FetchUserProfile value)  fetchUserProfile,required TResult Function( _UpdateSyncSettings value)  updateSyncSettings,required TResult Function( _ProfileSaved value)  profileSaved,required TResult Function( _LogOut value)  logOut,}){
final _that = this;
switch (_that) {
case _FetchUserProfile():
return fetchUserProfile(_that);case _UpdateSyncSettings():
return updateSyncSettings(_that);case _ProfileSaved():
return profileSaved(_that);case _LogOut():
return logOut(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _FetchUserProfile value)?  fetchUserProfile,TResult? Function( _UpdateSyncSettings value)?  updateSyncSettings,TResult? Function( _ProfileSaved value)?  profileSaved,TResult? Function( _LogOut value)?  logOut,}){
final _that = this;
switch (_that) {
case _FetchUserProfile() when fetchUserProfile != null:
return fetchUserProfile(_that);case _UpdateSyncSettings() when updateSyncSettings != null:
return updateSyncSettings(_that);case _ProfileSaved() when profileSaved != null:
return profileSaved(_that);case _LogOut() when logOut != null:
return logOut(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  fetchUserProfile,TResult Function( bool isActive)?  updateSyncSettings,TResult Function( UserEntity user)?  profileSaved,TResult Function()?  logOut,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FetchUserProfile() when fetchUserProfile != null:
return fetchUserProfile();case _UpdateSyncSettings() when updateSyncSettings != null:
return updateSyncSettings(_that.isActive);case _ProfileSaved() when profileSaved != null:
return profileSaved(_that.user);case _LogOut() when logOut != null:
return logOut();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  fetchUserProfile,required TResult Function( bool isActive)  updateSyncSettings,required TResult Function( UserEntity user)  profileSaved,required TResult Function()  logOut,}) {final _that = this;
switch (_that) {
case _FetchUserProfile():
return fetchUserProfile();case _UpdateSyncSettings():
return updateSyncSettings(_that.isActive);case _ProfileSaved():
return profileSaved(_that.user);case _LogOut():
return logOut();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  fetchUserProfile,TResult? Function( bool isActive)?  updateSyncSettings,TResult? Function( UserEntity user)?  profileSaved,TResult? Function()?  logOut,}) {final _that = this;
switch (_that) {
case _FetchUserProfile() when fetchUserProfile != null:
return fetchUserProfile();case _UpdateSyncSettings() when updateSyncSettings != null:
return updateSyncSettings(_that.isActive);case _ProfileSaved() when profileSaved != null:
return profileSaved(_that.user);case _LogOut() when logOut != null:
return logOut();case _:
  return null;

}
}

}

/// @nodoc


class _FetchUserProfile implements UserEvent {
  const _FetchUserProfile();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FetchUserProfile);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UserEvent.fetchUserProfile()';
}


}




/// @nodoc


class _UpdateSyncSettings implements UserEvent {
  const _UpdateSyncSettings({required this.isActive});
  

 final  bool isActive;

/// Create a copy of UserEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateSyncSettingsCopyWith<_UpdateSyncSettings> get copyWith => __$UpdateSyncSettingsCopyWithImpl<_UpdateSyncSettings>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateSyncSettings&&(identical(other.isActive, isActive) || other.isActive == isActive));
}


@override
int get hashCode => Object.hash(runtimeType,isActive);

@override
String toString() {
  return 'UserEvent.updateSyncSettings(isActive: $isActive)';
}


}

/// @nodoc
abstract mixin class _$UpdateSyncSettingsCopyWith<$Res> implements $UserEventCopyWith<$Res> {
  factory _$UpdateSyncSettingsCopyWith(_UpdateSyncSettings value, $Res Function(_UpdateSyncSettings) _then) = __$UpdateSyncSettingsCopyWithImpl;
@useResult
$Res call({
 bool isActive
});




}
/// @nodoc
class __$UpdateSyncSettingsCopyWithImpl<$Res>
    implements _$UpdateSyncSettingsCopyWith<$Res> {
  __$UpdateSyncSettingsCopyWithImpl(this._self, this._then);

  final _UpdateSyncSettings _self;
  final $Res Function(_UpdateSyncSettings) _then;

/// Create a copy of UserEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? isActive = null,}) {
  return _then(_UpdateSyncSettings(
isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class _ProfileSaved implements UserEvent {
  const _ProfileSaved(this.user);
  

 final  UserEntity user;

/// Create a copy of UserEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProfileSavedCopyWith<_ProfileSaved> get copyWith => __$ProfileSavedCopyWithImpl<_ProfileSaved>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProfileSaved&&(identical(other.user, user) || other.user == user));
}


@override
int get hashCode => Object.hash(runtimeType,user);

@override
String toString() {
  return 'UserEvent.profileSaved(user: $user)';
}


}

/// @nodoc
abstract mixin class _$ProfileSavedCopyWith<$Res> implements $UserEventCopyWith<$Res> {
  factory _$ProfileSavedCopyWith(_ProfileSaved value, $Res Function(_ProfileSaved) _then) = __$ProfileSavedCopyWithImpl;
@useResult
$Res call({
 UserEntity user
});


$UserEntityCopyWith<$Res> get user;

}
/// @nodoc
class __$ProfileSavedCopyWithImpl<$Res>
    implements _$ProfileSavedCopyWith<$Res> {
  __$ProfileSavedCopyWithImpl(this._self, this._then);

  final _ProfileSaved _self;
  final $Res Function(_ProfileSaved) _then;

/// Create a copy of UserEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? user = null,}) {
  return _then(_ProfileSaved(
null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as UserEntity,
  ));
}

/// Create a copy of UserEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserEntityCopyWith<$Res> get user {
  
  return $UserEntityCopyWith<$Res>(_self.user, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}

/// @nodoc


class _LogOut implements UserEvent {
  const _LogOut();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LogOut);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UserEvent.logOut()';
}


}




/// @nodoc
mixin _$UserState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UserState()';
}


}

/// @nodoc
class $UserStateCopyWith<$Res>  {
$UserStateCopyWith(UserState _, $Res Function(UserState) __);
}


/// Adds pattern-matching-related methods to [UserState].
extension UserStatePatterns on UserState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( _Loading value)?  loading,TResult Function( _Loaded value)?  loaded,TResult Function( _Error value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _Loading() when loading != null:
return loading(_that);case _Loaded() when loaded != null:
return loaded(_that);case _Error() when error != null:
return error(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( _Loading value)  loading,required TResult Function( _Loaded value)  loaded,required TResult Function( _Error value)  error,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case _Loading():
return loading(_that);case _Loaded():
return loaded(_that);case _Error():
return error(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( _Loading value)?  loading,TResult? Function( _Loaded value)?  loaded,TResult? Function( _Error value)?  error,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _Loading() when loading != null:
return loading(_that);case _Loaded() when loaded != null:
return loaded(_that);case _Error() when error != null:
return error(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( UserEntity user,  bool syncSettingsActive)?  loaded,TResult Function( String message)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _Loading() when loading != null:
return loading();case _Loaded() when loaded != null:
return loaded(_that.user,_that.syncSettingsActive);case _Error() when error != null:
return error(_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( UserEntity user,  bool syncSettingsActive)  loaded,required TResult Function( String message)  error,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case _Loading():
return loading();case _Loaded():
return loaded(_that.user,_that.syncSettingsActive);case _Error():
return error(_that.message);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( UserEntity user,  bool syncSettingsActive)?  loaded,TResult? Function( String message)?  error,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _Loading() when loading != null:
return loading();case _Loaded() when loaded != null:
return loaded(_that.user,_that.syncSettingsActive);case _Error() when error != null:
return error(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements UserState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UserState.initial()';
}


}




/// @nodoc


class _Loading implements UserState {
  const _Loading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Loading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UserState.loading()';
}


}




/// @nodoc


class _Loaded implements UserState {
  const _Loaded({required this.user, this.syncSettingsActive = true});
  

 final  UserEntity user;
@JsonKey() final  bool syncSettingsActive;

/// Create a copy of UserState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoadedCopyWith<_Loaded> get copyWith => __$LoadedCopyWithImpl<_Loaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Loaded&&(identical(other.user, user) || other.user == user)&&(identical(other.syncSettingsActive, syncSettingsActive) || other.syncSettingsActive == syncSettingsActive));
}


@override
int get hashCode => Object.hash(runtimeType,user,syncSettingsActive);

@override
String toString() {
  return 'UserState.loaded(user: $user, syncSettingsActive: $syncSettingsActive)';
}


}

/// @nodoc
abstract mixin class _$LoadedCopyWith<$Res> implements $UserStateCopyWith<$Res> {
  factory _$LoadedCopyWith(_Loaded value, $Res Function(_Loaded) _then) = __$LoadedCopyWithImpl;
@useResult
$Res call({
 UserEntity user, bool syncSettingsActive
});


$UserEntityCopyWith<$Res> get user;

}
/// @nodoc
class __$LoadedCopyWithImpl<$Res>
    implements _$LoadedCopyWith<$Res> {
  __$LoadedCopyWithImpl(this._self, this._then);

  final _Loaded _self;
  final $Res Function(_Loaded) _then;

/// Create a copy of UserState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? user = null,Object? syncSettingsActive = null,}) {
  return _then(_Loaded(
user: null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as UserEntity,syncSettingsActive: null == syncSettingsActive ? _self.syncSettingsActive : syncSettingsActive // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

/// Create a copy of UserState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserEntityCopyWith<$Res> get user {
  
  return $UserEntityCopyWith<$Res>(_self.user, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}

/// @nodoc


class _Error implements UserState {
  const _Error(this.message);
  

 final  String message;

/// Create a copy of UserState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ErrorCopyWith<_Error> get copyWith => __$ErrorCopyWithImpl<_Error>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Error&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'UserState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class _$ErrorCopyWith<$Res> implements $UserStateCopyWith<$Res> {
  factory _$ErrorCopyWith(_Error value, $Res Function(_Error) _then) = __$ErrorCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class __$ErrorCopyWithImpl<$Res>
    implements _$ErrorCopyWith<$Res> {
  __$ErrorCopyWithImpl(this._self, this._then);

  final _Error _self;
  final $Res Function(_Error) _then;

/// Create a copy of UserState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_Error(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
