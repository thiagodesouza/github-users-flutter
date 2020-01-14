// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_create.store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$UserCreateStore on _UserCreateStore, Store {
  final _$usernameAtom = Atom(name: '_UserCreateStore.username');

  @override
  String get username {
    _$usernameAtom.context.enforceReadPolicy(_$usernameAtom);
    _$usernameAtom.reportObserved();
    return super.username;
  }

  @override
  set username(String value) {
    _$usernameAtom.context.conditionallyRunInAction(() {
      super.username = value;
      _$usernameAtom.reportChanged();
    }, _$usernameAtom, name: '${_$usernameAtom.name}_set');
  }

  final _$loadingAtom = Atom(name: '_UserCreateStore.loading');

  @override
  bool get loading {
    _$loadingAtom.context.enforceReadPolicy(_$loadingAtom);
    _$loadingAtom.reportObserved();
    return super.loading;
  }

  @override
  set loading(bool value) {
    _$loadingAtom.context.conditionallyRunInAction(() {
      super.loading = value;
      _$loadingAtom.reportChanged();
    }, _$loadingAtom, name: '${_$loadingAtom.name}_set');
  }

  final _$errorAtom = Atom(name: '_UserCreateStore.error');

  @override
  String get error {
    _$errorAtom.context.enforceReadPolicy(_$errorAtom);
    _$errorAtom.reportObserved();
    return super.error;
  }

  @override
  set error(String value) {
    _$errorAtom.context.conditionallyRunInAction(() {
      super.error = value;
      _$errorAtom.reportChanged();
    }, _$errorAtom, name: '${_$errorAtom.name}_set');
  }

  final _$_UserCreateStoreActionController =
      ActionController(name: '_UserCreateStore');

  @override
  void setUsername(String value) {
    final _$actionInfo = _$_UserCreateStoreActionController.startAction();
    try {
      return super.setUsername(value);
    } finally {
      _$_UserCreateStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setLoading(bool value) {
    final _$actionInfo = _$_UserCreateStoreActionController.startAction();
    try {
      return super.setLoading(value);
    } finally {
      _$_UserCreateStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setError(String message) {
    final _$actionInfo = _$_UserCreateStoreActionController.startAction();
    try {
      return super.setError(message);
    } finally {
      _$_UserCreateStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void resetStore() {
    final _$actionInfo = _$_UserCreateStoreActionController.startAction();
    try {
      return super.resetStore();
    } finally {
      _$_UserCreateStoreActionController.endAction(_$actionInfo);
    }
  }
}
