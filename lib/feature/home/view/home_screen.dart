import 'package:app_for_voco/feature/home/controller/home_provider.dart';
import 'package:app_for_voco/injection/injection_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomePage extends ConsumerStatefulWidget {
  const HomePage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
  final HomeProvider _homeProvider = getit.get<HomeProvider>();

  @override
  void initState() {
    // ref.watch(homeProvider).currentUserState;
    _homeProvider.fetchData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ref.watch(homeProvider).fetchDataState.when(initial: () {
      return Scaffold(appBar: AppBar(title: const Text('User List')));
    }, loading: () {
      return Scaffold(appBar: AppBar(title: const Text('User List')));
    }, completed: (data) {
      print("oktay");
      print("oktay");
      print("oktay");
      print("oktay");
      print("oktay");
      print("oktay");
      print(data);
      return Scaffold(
        appBar: AppBar(title: const Text('User List')),
        body: ListView.builder(
          itemCount: data.length,
          itemBuilder: (context, index) {
            final user = data[index];
            ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(
                    user.avatar ?? "https://reqres.in/img/faces/7-image.jpg"),
              ),
              title: Text('${user.firstName} ${user.lastName}'),
              subtitle: Text(user.email ?? ""),
              onTap: () {
                // İlgili kullanıcıya tıklama işlemleri burada yapılabilir
                print('Tapped on user: ${user.firstName} ${user.lastName}');
              },
            );
            return null;
          },
        ),
      );
    }, failed: (failed) {
      return Scaffold(appBar: AppBar(title: const Text('User List')));
    });
  }
}
