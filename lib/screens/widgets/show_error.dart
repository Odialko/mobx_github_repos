import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx/mobx.dart';
import 'package:mobx_github_repos/github_store.dart';
import 'package:provider/provider.dart';

class ShowError extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final store = Provider.of<GitHubStore>(context);

    return Observer(
        builder: (_) => store.fetchRepoFuture.status == FutureStatus.rejected
            ? Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                    const Icon(
                      Icons.warning,
                      color: Colors.deepOrange,
                    ),
                    Container(
                      width: 8,
                    ),
                    const Text(
                      'Failed to fetch repos for',
                      style: TextStyle(color: Colors.deepOrange),
                    ),
                    Text(
                      store.user,
                      style: const TextStyle(
                          color: Colors.deepOrange,
                          fontWeight: FontWeight.bold),
                    )
                  ])
            : Container());
  }
}
