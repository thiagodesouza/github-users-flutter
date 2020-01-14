import 'package:github_users/app/models/user.model.dart';
import 'package:mobx/mobx.dart';

part 'user_list.store.g.dart';

class UserListStore = _UserListStore with _$UserListStore;

abstract class _UserListStore with Store {
  @observable
  ObservableList<UserModel> items = ObservableList<UserModel>();

  @action
  void addUser(UserModel item) {
    if (items.any((x) => x.login == item.login)) {
      var aux = items.firstWhere((x) => x.login == item.login);
      items.remove(aux);
    }

    items.insert(0, item);
  }

  @action
  void removeUser(UserModel item) {
    items.remove(item);
  }

  @computed
  int get totalItems => this.items.length;
}
