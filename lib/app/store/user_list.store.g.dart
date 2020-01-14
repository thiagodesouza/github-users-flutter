// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_list.store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$UserListStore on _UserListStore, Store {
  Computed<int> _$totalItemsComputed;

  @override
  int get totalItems =>
      (_$totalItemsComputed ??= Computed<int>(() => super.totalItems)).value;

  final _$itemsAtom = Atom(name: '_UserListStore.items');

  @override
  ObservableList<UserModel> get items {
    _$itemsAtom.context.enforceReadPolicy(_$itemsAtom);
    _$itemsAtom.reportObserved();
    return super.items;
  }

  @override
  set items(ObservableList<UserModel> value) {
    _$itemsAtom.context.conditionallyRunInAction(() {
      super.items = value;
      _$itemsAtom.reportChanged();
    }, _$itemsAtom, name: '${_$itemsAtom.name}_set');
  }

  final _$_UserListStoreActionController =
      ActionController(name: '_UserListStore');

  @override
  void addUser(UserModel item) {
    final _$actionInfo = _$_UserListStoreActionController.startAction();
    try {
      return super.addUser(item);
    } finally {
      _$_UserListStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void removeUser(UserModel item) {
    final _$actionInfo = _$_UserListStoreActionController.startAction();
    try {
      return super.removeUser(item);
    } finally {
      _$_UserListStoreActionController.endAction(_$actionInfo);
    }
  }
}
