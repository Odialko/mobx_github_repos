// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'github_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$GitHubStore on _GitHubStore, Store {
  Computed<bool>? _$hasResultsComputed;

  @override
  bool get hasResults =>
      (_$hasResultsComputed ??= Computed<bool>(() => super.hasResults,
              name: '_GitHubStore.hasResults'))
          .value;

  final _$userAtom = Atom(name: '_GitHubStore.user');

  @override
  String get user {
    _$userAtom.reportRead();
    return super.user;
  }

  @override
  set user(String value) {
    _$userAtom.reportWrite(value, super.user, () {
      super.user = value;
    });
  }

  final _$fetchRepoFutureAtom = Atom(name: '_GitHubStore.fetchRepoFuture');

  @override
  ObservableFuture<List<Repository>> get fetchRepoFuture {
    _$fetchRepoFutureAtom.reportRead();
    return super.fetchRepoFuture;
  }

  @override
  set fetchRepoFuture(ObservableFuture<List<Repository>> value) {
    _$fetchRepoFutureAtom.reportWrite(value, super.fetchRepoFuture, () {
      super.fetchRepoFuture = value;
    });
  }

  final _$fetchReposAsyncAction = AsyncAction('_GitHubStore.fetchRepos');

  @override
  Future<List<Repository>> fetchRepos() {
    return _$fetchReposAsyncAction.run(() => super.fetchRepos());
  }

  final _$_GitHubStoreActionController = ActionController(name: '_GitHubStore');

  @override
  void setUser(String text) {
    final _$actionInfo = _$_GitHubStoreActionController.startAction(
        name: '_GitHubStore.setUser');
    try {
      return super.setUser(text);
    } finally {
      _$_GitHubStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
user: ${user},
fetchRepoFuture: ${fetchRepoFuture},
hasResults: ${hasResults}
    ''';
  }
}
