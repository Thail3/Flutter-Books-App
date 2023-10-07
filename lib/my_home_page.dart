import 'dart:convert';

import 'package:flutter/material.dart';
import 'app_colors.dart' as AppColors;

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  late List popularBooks;
  ScrollController? scrollController;
  TabController? tapController;

  void ReadData() async {
    await DefaultAssetBundle.of(context)
        .loadString('json/popularBooks.json')
        .then((value) => {setState(() => popularBooks = json.decode(value))});
  }

  @override
  void initState() {
    super.initState();
    tapController = TabController(length: 3, vsync: this);
    scrollController = ScrollController();
    ReadData();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.background,
      child: SafeArea(
        child: Scaffold(
            body: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(
                left: 20,
                right: 20,
              ),
              child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.menu_outlined),
                    Row(children: [
                      Icon(Icons.search),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(Icons.notifications)
                    ])
                  ]),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 20),
                  child: const Text(
                    "Popular Books",
                    style: TextStyle(fontSize: 30),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 180,
              child: Stack(
                children: [
                  Positioned(
                    top: 0,
                    left: -20,
                    right: 0,
                    child: SizedBox(
                      height: 180,
                      child: PageView.builder(
                          controller: PageController(viewportFraction: 0.8),
                          itemCount: popularBooks.length,
                          itemBuilder: (_, i) {
                            return Container(
                              height: 100,
                              width: MediaQuery.of(context).size.width,
                              margin: const EdgeInsets.only(right: 10),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  image: DecorationImage(
                                      image:
                                          NetworkImage(popularBooks[i]['img']),
                                      fit: BoxFit.fill)),
                            );
                          }),
                    ),
                  )
                ],
              ),
            ),
            Expanded(
                child: NestedScrollView(
              controller: scrollController,
              headerSliverBuilder: (context, innerBoxIsScrolled) {
                return [
                  SliverAppBar(
                    pinned: true,
                    backgroundColor: AppColors.sliverBackground,
                    bottom: PreferredSize(
                        preferredSize: const Size.fromHeight(50),
                        child: Container(
                            margin: const EdgeInsets.only(bottom: 20, left: 10),
                            child: TabBar(
                              indicatorPadding: const EdgeInsets.all(0),
                              indicatorSize: TabBarIndicatorSize.label,
                              labelPadding: const EdgeInsets.only(right: 10),
                              controller: tapController,
                              isScrollable: true,
                              indicator: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.grey.withOpacity(0.2),
                                        blurRadius: 7,
                                        offset: const Offset(0, 0))
                                  ]),
                              tabs: [
                                Container(
                                  width: 120,
                                  height: 50,
                                  child: Text(
                                    'New',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: AppColors.menu1Color,
                                      boxShadow: [
                                        BoxShadow(
                                            color: Colors.grey.withOpacity(0.2),
                                            blurRadius: 7,
                                            offset: Offset(0, 0))
                                      ]),
                                ),
                                Container(
                                  width: 120,
                                  height: 50,
                                  child: Text(
                                    'Popular',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: AppColors.menu2Color,
                                      boxShadow: [
                                        BoxShadow(
                                            color: Colors.grey.withOpacity(0.2),
                                            blurRadius: 7,
                                            offset: Offset(0, 0))
                                      ]),
                                ),
                                Container(
                                  width: 120,
                                  height: 50,
                                  child: Text(
                                    'Traning',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: AppColors.menu3Color,
                                      boxShadow: [
                                        BoxShadow(
                                            color: Colors.grey.withOpacity(0.2),
                                            blurRadius: 7,
                                            offset: Offset(0, 0))
                                      ]),
                                ),
                              ],
                            ))),
                  )
                ];
              },
              body: TabBarView(controller: tapController, children: const [
                Material(
                  child: ListTile(
                    leading: CircleAvatar(backgroundColor: Colors.grey),
                    title: Text("Contents"),
                  ),
                ),
                Material(
                  child: ListTile(
                    leading: CircleAvatar(backgroundColor: Colors.grey),
                    title: Text("Contents"),
                  ),
                ),
                Material(
                  child: ListTile(
                    leading: CircleAvatar(backgroundColor: Colors.grey),
                    title: Text("Contents"),
                  ),
                )
              ]),
            )),
          ],
        )),
      ),
    );
  }
}
