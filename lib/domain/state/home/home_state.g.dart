// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_state.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeState on HomeStateBase, Store {
  final _$weatherAtom = Atom(name: 'HomeStateBase.weather');

  @override
  Weather get weather {
    _$weatherAtom.reportRead();
    return super.weather;
  }

  @override
  set weather(Weather value) {
    _$weatherAtom.reportWrite(value, super.weather, () {
      super.weather = value;
    });
  }

  final _$isLoadingAtom = Atom(name: 'HomeStateBase.isLoading');

  @override
  bool get isLoading {
    _$isLoadingAtom.reportRead();
    return super.isLoading;
  }

  @override
  set isLoading(bool value) {
    _$isLoadingAtom.reportWrite(value, super.isLoading, () {
      super.isLoading = value;
    });
  }

  final _$locationErrorAtom = Atom(name: 'HomeStateBase.locationError');

  @override
  bool get locationError {
    _$locationErrorAtom.reportRead();
    return super.locationError;
  }

  @override
  set locationError(bool value) {
    _$locationErrorAtom.reportWrite(value, super.locationError, () {
      super.locationError = value;
    });
  }

  final _$getWeatherAsyncAction = AsyncAction('HomeStateBase.getWeather');

  @override
  Future<void> getWeather({@required int cityId}) {
    return _$getWeatherAsyncAction.run(() => super.getWeather(cityId: cityId));
  }

  @override
  String toString() {
    return '''
weather: ${weather},
isLoading: ${isLoading},
locationError: ${locationError}
    ''';
  }
}
