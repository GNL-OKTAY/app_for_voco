import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/navigation/constant/routes.dart';
import '../../../navigation_service.dart';
import '../../auth/controller/login_token_controller.dart';
import '../controller/home_controller.dart';

class HomePage extends ConsumerStatefulWidget {
  const HomePage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
  late final HomeProvider _homeProvider;

  @override
  void initState() {
    Future(() async {
      _homeProvider = ref.read(homeProvider);
      await _homeProvider.fetchData();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: ref.watch(homeProvider).fetchDataState.when(
        initial: () {
          return const Center();
        },
        loading: () {
          return const CupertinoActivityIndicator();
        },
        completed: (data) {
          print(data);
          return ListView.builder(
            shrinkWrap: true,
            itemCount: data.length,
            itemBuilder: (context, index) {
              return SizedBox(
                height: 100,
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(data[index].avatar ?? "https://reqres.in/img/faces/7-image.jpg"),
                  ),
                  title: Text('${data[index].firstName} ${data[index].lastName}'),
                  subtitle: Text(data[index].email ?? ""),
                  onTap: () {},
                ),
              );
            },
          );
        },
        failed: (failed) {
          return Text(failed.message);
        },
      ),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      actions: [
        IconButton.filled(
          onPressed: () async {
            await ref.read(loginTokenController).deleteLoginToken();
            navigator.navigaToClear(path: KRoute.authRootPage);
          },
          icon: const Icon(
            Icons.exit_to_app,
          ),
        )
      ],
    );
  }
}
