import 'package:flutter/material.dart';
import 'package:flutter_project/week5/feature/photos/view/photos_view.dart';
import 'package:flutter_project/week5/feature/tabbar/model/tab_model.dart';

class AppTabBar extends StatelessWidget {
  final List<TabModel> tabsItem = [
    TabModel(title: 'Photos', icon: Icons.ac_unit, page: PhotosView()),
    TabModel(
        title: 'Basket',
        icon: Icons.access_alarms_sharp,
        page: Container(
          color: Colors.red,
        )),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        bottomNavigationBar: BottomAppBar(
          child: buildTabBar(),
        ),
        body: buildTabBarView(),
      ),
    );
  }

  TabBar buildTabBar() {
    return TabBar(
      tabs: List.generate(
        tabsItem.length,
        (index) =>
            Tab(text: tabsItem[index].title, icon: Icon(tabsItem[index].icon)),
      ),
    );
  }

  TabBarView buildTabBarView() => TabBarView(
        children: tabsItem.map((e) => e.page).toList(),
      );
}
