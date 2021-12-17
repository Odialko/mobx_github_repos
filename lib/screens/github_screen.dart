import 'package:flutter/material.dart';
import 'package:mobx_github_repos/github_store.dart';
import 'package:mobx_github_repos/screens/widgets/loading_indecator.dart';
import 'package:mobx_github_repos/screens/widgets/repository_list_view.dart';
import 'package:mobx_github_repos/screens/widgets/show_error.dart';
import 'package:mobx_github_repos/screens/widgets/user_input.dart';
import 'package:provider/provider.dart';

class GitHubScreen extends StatefulWidget {
  @override
  _GitHubScreenState createState() => _GitHubScreenState();
}

class _GitHubScreenState extends State<GitHubScreen> {

  @override
  Widget build(BuildContext context) => Provider(
    create: (_) => GitHubStore(),
    child: Scaffold(
        appBar: AppBar(
          title: const Text('Github Repos'),
        ),
        body: Column(
          children: <Widget>[
            UserInput(),
            ShowError(),
            LoadingIndicator(),
            RepositoryListView()
          ],
        ),
    ),
  );
}
