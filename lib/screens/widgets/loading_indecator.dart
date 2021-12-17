import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx/mobx.dart';
import 'package:mobx_github_repos/github_store.dart';
import 'package:provider/provider.dart';

class LoadingIndicator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final store = Provider.of<GitHubStore>(context);
    return Observer(
        builder: (_) => store.fetchRepoFuture.status == FutureStatus.pending
            ? const LinearProgressIndicator()
            : Container());
  }
}
