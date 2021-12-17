import 'package:github/github.dart';
import 'package:mobx/mobx.dart';

part 'github_store.g.dart';

class GitHubStore = _GitHubStore with _$GitHubStore;

abstract class _GitHubStore with Store {
  final GitHub client = GitHub();

  List<Repository> repositories = [];

  @observable
  String user = '';

  @observable
  ObservableFuture<List<Repository>> fetchRepoFuture = emptyResponse;

  static ObservableFuture<List<Repository>> emptyResponse =
      ObservableFuture.value([]);

  @computed
  bool get hasResults =>
      fetchRepoFuture != emptyResponse &&
      fetchRepoFuture.status == FutureStatus.fulfilled;

  @action
  Future<List<Repository>> fetchRepos() async {
    repositories = [];
    final future = client.repositories.listUserRepositories(user).toList();
    fetchRepoFuture = ObservableFuture(future);

    return repositories = await future;
  }

  @action
  void setUser(String text) {
    fetchRepoFuture = emptyResponse;
    user = text;
  }
}
