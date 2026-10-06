// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'activity_indicator_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ActivityIndicatorState {

 bool get isLoading; String get message;
/// Create a copy of ActivityIndicatorState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ActivityIndicatorStateCopyWith<ActivityIndicatorState> get copyWith => _$ActivityIndicatorStateCopyWithImpl<ActivityIndicatorState>(this as ActivityIndicatorState, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as ActivityIndicatorState;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ActivityIndicatorState&&(identical(other.isLoading, _this.isLoading) || other.isLoading == _this.isLoading)&&(identical(other.message, _this.message) || other.message == _this.message));
}


@override
int get hashCode {
  final _this = this as ActivityIndicatorState;
  return Object.hash(runtimeType,_this.isLoading,_this.message);
}

@override
String toString() {
  final _this = this as ActivityIndicatorState;
  return 'ActivityIndicatorState(isLoading: ${_this.isLoading}, message: ${_this.message})';
}


}

/// @nodoc
abstract mixin class $ActivityIndicatorStateCopyWith<$Res>  {
  factory $ActivityIndicatorStateCopyWith(ActivityIndicatorState value, $Res Function(ActivityIndicatorState) _then) = _$ActivityIndicatorStateCopyWithImpl;
@useResult
$Res call({
 bool isLoading, String message
});




}
/// @nodoc
class _$ActivityIndicatorStateCopyWithImpl<$Res>
    implements $ActivityIndicatorStateCopyWith<$Res> {
  _$ActivityIndicatorStateCopyWithImpl(this._self, this._then);

  final ActivityIndicatorState _self;
  final $Res Function(ActivityIndicatorState) _then;

/// Create a copy of ActivityIndicatorState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isLoading = null,Object? message = null,}) {
  return _then(ActivityIndicatorState(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ActivityIndicatorState].
extension ActivityIndicatorStatePatterns on ActivityIndicatorState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ActivityIndicatorState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ActivityIndicatorState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ActivityIndicatorState value)  $default,){
final _that = this;
switch (_that) {
case _ActivityIndicatorState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ActivityIndicatorState value)?  $default,){
final _that = this;
switch (_that) {
case _ActivityIndicatorState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isLoading,  String message)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ActivityIndicatorState() when $default != null:
return $default(_that.isLoading,_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isLoading,  String message)  $default,) {final _that = this;
switch (_that) {
case _ActivityIndicatorState():
return $default(_that.isLoading,_that.message);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isLoading,  String message)?  $default,) {final _that = this;
switch (_that) {
case _ActivityIndicatorState() when $default != null:
return $default(_that.isLoading,_that.message);case _:
  return null;

}
}

}

/// @nodoc


class _ActivityIndicatorState implements ActivityIndicatorState {
  const _ActivityIndicatorState({this.isLoading = false, this.message = ''});
  

@override@JsonKey() final  bool isLoading;
@override@JsonKey() final  String message;

/// Create a copy of ActivityIndicatorState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ActivityIndicatorStateCopyWith<_ActivityIndicatorState> get copyWith => __$ActivityIndicatorStateCopyWithImpl<_ActivityIndicatorState>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ActivityIndicatorState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode {
    return Object.hash(runtimeType,isLoading,message);
}

@override
String toString() {
    return 'ActivityIndicatorState(isLoading: $isLoading, message: $message)';
}


}

/// @nodoc
abstract mixin class _$ActivityIndicatorStateCopyWith<$Res> implements $ActivityIndicatorStateCopyWith<$Res> {
  factory _$ActivityIndicatorStateCopyWith(_ActivityIndicatorState value, $Res Function(_ActivityIndicatorState) _then) = __$ActivityIndicatorStateCopyWithImpl;
@override @useResult
$Res call({
 bool isLoading, String message
});




}
/// @nodoc
class __$ActivityIndicatorStateCopyWithImpl<$Res>
    implements _$ActivityIndicatorStateCopyWith<$Res> {
  __$ActivityIndicatorStateCopyWithImpl(this._self, this._then);

  final _ActivityIndicatorState _self;
  final $Res Function(_ActivityIndicatorState) _then;

/// Create a copy of ActivityIndicatorState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isLoading = null,Object? message = null,}) {
  return _then(_ActivityIndicatorState(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
