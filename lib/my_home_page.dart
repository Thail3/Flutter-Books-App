import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_ebook_app/my_tab.dart';
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
  late List Books;
  ScrollController? scrollController;
  TabController? tapController;

  void ReadData() async {
    await DefaultAssetBundle.of(context)
        .loadString('json/popularBooks.json')
        .then((value) => {setState(() => popularBooks = json.decode(value))});
    await DefaultAssetBundle.of(context)
        .loadString('json/books.json')
        .then((value) => {setState(() => Books = json.decode(value))});
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
                          itemCount:
                              popularBooks == null ? 0 : popularBooks.length,
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
                              tabs: const [
                                AppTab(
                                  color: AppColors.menu1Color,
                                  text: "New",
                                ),
                                AppTab(
                                  color: AppColors.menu2Color,
                                  text: "Popular",
                                ),
                                AppTab(
                                  color: AppColors.menu3Color,
                                  text: "Tech",
                                ),
                              ],
                            ))),
                  )
                ];
              },
              body: TabBarView(controller: tapController, children: [
                ListView.builder(
                    itemCount: Books == null ? 0 : Books.length,
                    itemBuilder: (_, index) {
                      return Container(
                        margin: const EdgeInsets.only(
                            bottom: 10, left: 20, right: 20, top: 20),
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: AppColors.tabVarViewColor,
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 2,
                                  offset: Offset(0, 0),
                                  color: Colors.grey.withOpacity(0.2),
                                ),
                              ]),
                          child: Container(
                            padding: EdgeInsets.all(8),
                            child: Row(
                              children: [
                                Container(
                                  width: 90,
                                  height: 120,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    image: DecorationImage(
                                      image: AssetImage(Books[index]["img"]),
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 10),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        const Icon(
                                          Icons.star,
                                          size: 34,
                                          color: AppColors.starColor,
                                        ),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        Text(
                                          Books[index]['rating'],
                                          style: const TextStyle(
                                              color: AppColors.menu2Color),
                                        ),
                                      ],
                                    ),
                                    Text(
                                      Books[index]['title'],
                                      style: const TextStyle(
                                          fontSize: 20,
                                          fontFamily: 'Avenir',
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      Books[index]['text'],
                                      style: const TextStyle(
                                          fontSize: 20,
                                          fontFamily: 'Avenir',
                                          color: AppColors.subTitleText),
                                    ),
                                    Container(
                                      width: 60,
                                      height: 20,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        color: AppColors.loveColor,
                                      ),
                                      child: const Text(
                                        "Love",
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontFamily: 'Avenir',
                                            color: Colors.white),
                                      ),
                                      alignment: Alignment.center,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    }),
                const Material(
                  child: ListTile(
                    leading: CircleAvatar(backgroundColor: Colors.grey),
                    title: Text("Contents"),
                  ),
                ),
                const Material(
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
