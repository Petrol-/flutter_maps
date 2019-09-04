// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'application_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars

mixin _$ApplicationStore on _ApplicationStore, Store {
  final _$titleAtom = Atom(name: '_ApplicationStore.title');

  @override
  String get title {
    _$titleAtom.context.enforceReadPolicy(_$titleAtom);
    _$titleAtom.reportObserved();
    return super.title;
  }

  @override
  set title(String value) {
    _$titleAtom.context.conditionallyRunInAction(() {
      super.title = value;
      _$titleAtom.reportChanged();
    }, _$titleAtom, name: '${_$titleAtom.name}_set');
  }

  final _$reportSavedAtom = Atom(name: '_ApplicationStore.reportSaved');

  @override
  int get reportSaved {
    _$reportSavedAtom.context.enforceReadPolicy(_$reportSavedAtom);
    _$reportSavedAtom.reportObserved();
    return super.reportSaved;
  }

  @override
  set reportSaved(int value) {
    _$reportSavedAtom.context.conditionallyRunInAction(() {
      super.reportSaved = value;
      _$reportSavedAtom.reportChanged();
    }, _$reportSavedAtom, name: '${_$reportSavedAtom.name}_set');
  }

  final _$reportPausedAtom = Atom(name: '_ApplicationStore.reportPaused');

  @override
  int get reportPaused {
    _$reportPausedAtom.context.enforceReadPolicy(_$reportPausedAtom);
    _$reportPausedAtom.reportObserved();
    return super.reportPaused;
  }

  @override
  set reportPaused(int value) {
    _$reportPausedAtom.context.conditionallyRunInAction(() {
      super.reportPaused = value;
      _$reportPausedAtom.reportChanged();
    }, _$reportPausedAtom, name: '${_$reportPausedAtom.name}_set');
  }
}
