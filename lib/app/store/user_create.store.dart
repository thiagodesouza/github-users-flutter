import 'package:mobx/mobx.dart';

part 'user_create.store.g.dart';

class UserCreateStore = _UserCreateStore with _$UserCreateStore;

abstract class _UserCreateStore with Store {
  @observable
  String username = '';

  @action
  void setUsername(String value) {
    username = value;
  }

  @observable
  bool loading = false;

  @action
  void setLoading(bool value) {
    loading = value;
  }

  @observable
  String error;

  @action
  void setError(String message) {
    error = message;
  }

  @action
  void resetStore() {
    username = '';
    loading = false;
    error = null;
  }
}
