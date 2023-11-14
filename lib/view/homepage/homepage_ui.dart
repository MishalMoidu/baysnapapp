import 'package:chatapp_project/provider/tab_bar_index.dart';
import 'package:chatapp_project/utilities/app_main_color.dart';
import 'package:chatapp_project/utilities/responsive.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomePageUi extends ConsumerStatefulWidget {
  HomePageUi({super.key});

  final PageController pageViewController = PageController();

  @override
  ConsumerState<HomePageUi> createState() => _HomePageUiState();
}

class _HomePageUiState extends ConsumerState<HomePageUi> {
  @override
  Widget build(
    BuildContext context,
  ) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        drawer: const Drawer(),
        appBar: AppBar(
          leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                icon: Icon(
                  Icons.more_vert,
                  color: AppColors.primaryTheme,
                  size: Responsive.w(28, context),
                ),
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
                tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
              );
            },
          ),
          title: const Text(
            "BaySnap",
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.camera_alt_outlined,
                size: Responsive.w(30, context),
                color: AppColors.primaryTheme,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.search,
                  size: Responsive.w(30, context),
                  color: AppColors.primaryTheme,
                ),
              ),
            ),
          ],
          bottom: TabBar(
            onTap: (value) {
              ref.watch(tabindex);
            },
            indicatorColor: const Color.fromARGB(255, 255, 255, 255),
            tabs: const [
              Tab(
                text: "Chats",
              ),
              Tab(
                text: "Updates",
              ),
              Tab(
                text: "Calls",
              )
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                color: const Color.fromARGB(255, 215, 228, 255)),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              color: const Color.fromARGB(255, 215, 228, 255),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              color: const Color.fromARGB(255, 215, 228, 255),
            ),
          ],
        ),
        floatingActionButton: SizedBox(
          height: 75.0,
          width: 75.0,
          child: FittedBox(
            child: FloatingActionButton(
              onPressed: () {},
              backgroundColor: AppColors.primaryTheme,
              focusColor: Colors.white,
              hoverColor: Colors.white,
              materialTapTargetSize: MaterialTapTargetSize.padded,
              child: const Icon(
                Icons.message_outlined,
                size: 28,
                color: AppColors.appBarBackGroundColor,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
