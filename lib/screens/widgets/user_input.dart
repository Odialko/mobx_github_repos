import 'package:flutter/material.dart';
import 'package:mobx_github_repos/github_store.dart';
import 'package:provider/provider.dart';

class UserInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final store = Provider.of<GitHubStore>(context);

    return Row(
      children: <Widget>[
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(left: 8),
            child: TextField(
              autocorrect: false,
              autofocus: true,
              onSubmitted: (String user) {
                store.setUser(user);
                store.fetchRepos();
              },
            ),
          ),
        ),
        IconButton(
          icon: const Icon(Icons.search),
          onPressed: store.fetchRepos,
        )
      ],
    );
  }
}
