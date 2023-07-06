import 'package:flutter/material.dart';
import 'package:labs_flutter/config/menu/menu_items.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatelessWidget {
  static const String name = 'home_screen';
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
      ),
      body: const _HomeView(),
    );
  }
}

class _HomeView extends StatelessWidget {
  const _HomeView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: appMenuItems.length,
        prototypeItem: ListTile(
          leading: const Icon(Icons.location_city),
          title: Text(appMenuItems.first.title),
          subtitle: Text(appMenuItems.first.subTitle),
        ),
        itemBuilder: (context, index) {
          final menuItem = appMenuItems[index];
          return _CustomMenuTile(menuItem: menuItem);
        });
  }
}

class _CustomMenuTile extends StatelessWidget {
  const _CustomMenuTile({
    Key? key,
    required this.menuItem,
  }) : super(key: key);

  final MenuItems menuItem;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return ListTile(
      leading: Icon(
        menuItem.icon,
        color: colors.primary,
      ),
      title: Text(menuItem.title),
      subtitle: Text(menuItem.subTitle),
      trailing: Icon(
        Icons.arrow_forward_ios_outlined,
        color: colors.primary,
      ),
      onTap: () {
        context.push(menuItem.link);
        // context.pushNamed(menuItem.name);

        // Navigator.push(
        //   context,
        //   MaterialPageRoute(builder: (context) => const ButtonsScreen()),
        // );

        ///Navigator.pushNamed(context, menuItem.link);
      },
    );
  }
}
