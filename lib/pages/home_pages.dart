import 'package:flutter/material.dart';

import '../widgets/home_bottom_widget.dart';
import '../widgets/item_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    // TODO: implement initState
    _tabController = TabController(length: 4, vsync: this, initialIndex: 0);
    _tabController.addListener(_handleTabSelection);
    super.initState();
  }

  _handleTabSelection() {
    if (_tabController.indexIsChanging) {
      setState(() {});
    }
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: HomeBottomWidget(),



      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(top: 15),
          child: ListView(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {},
                      child: Icon(
                        Icons.sort_rounded,
                        size: 35,
                        color: Colors.white.withOpacity(0.5),
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Icon(
                        Icons.notifications,
                        size: 35,
                        color: Colors.white.withOpacity(0.5),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Text(
                  "It's a Greate Day for Coffee",
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                      fontWeight: FontWeight.w500),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 20, horizontal: 15),
                width: MediaQuery.of(context).size.width,
                height: 60,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Color.fromARGB(225, 50, 54, 56),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextFormField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search,size: 30,
                    color: Colors.white.withOpacity(0.5),),
                    border: InputBorder.none,
                      hintText: "Find your office",
                      hintStyle:
                          TextStyle(color: Colors.white.withOpacity(0.5))),
                ),
              ),
              TabBar(
                  controller: _tabController,
                  labelColor: Color(0xFFE57734),
                  unselectedLabelColor: Colors.white.withOpacity(0.5),
                  isScrollable: true,
                  indicator: UnderlineTabIndicator(
                    borderSide: BorderSide(
                      width: 3,
                      color: Color(0xFFE57734)
                    ),
                    insets: EdgeInsets.symmetric(horizontal: 16)
                  ),
                  labelStyle: TextStyle(fontSize: 18,
                  fontWeight: FontWeight.w500),
                  labelPadding: EdgeInsets.symmetric(horizontal: 20),
                  tabs: [
                  Tab(text: "Hot Coffee",),
                  Tab(text: "Cold Coffe",),
                  Tab(text: "Cappuiccino",),
                  Tab(text: "Americano",),

              ]),
              SizedBox(height: 10,),
          Center(
            child: [

              ItemWidget(),
              ItemWidget(),
              ItemWidget(),
              ItemWidget(),

            ][_tabController.index],
          )
            ],
          ),
        ),
      ),
    );
  }
}
