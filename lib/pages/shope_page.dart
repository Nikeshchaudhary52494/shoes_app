import 'package:flutter/material.dart';
import 'package:shoes_app/models/shoe.dart';
import 'package:shoes_app/pages/shoe_tiles.dart';

class ShopePgae extends StatelessWidget {
  const ShopePgae({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[300],
        appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            leading: Builder(
              builder: (context) => IconButton(
                  color: Colors.black,
                  iconSize: 30,
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  },
                  icon: const Icon(Icons.menu)),
            )),
        drawer: Drawer(
          backgroundColor: Colors.grey[800],
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  DrawerHeader(
                    child: Image.asset(
                      'lib/images/nikeLogo.png',
                      color: Colors.white,
                      width: 200,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 24),
                    child: ListTile(
                      leading: Icon(
                        Icons.home_rounded,
                        color: Colors.white,
                      ),
                      title: Text(
                        "Home",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 24),
                    child: ListTile(
                      leading: Icon(
                        Icons.shopping_bag_rounded,
                        color: Colors.white,
                      ),
                      title: Text(
                        "cart",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 24),
                    child: ListTile(
                      leading: Icon(
                        Icons.info,
                        color: Colors.white,
                      ),
                      title: Text(
                        "about",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  )
                ],
              ),
              const Padding(
                padding: EdgeInsets.only(
                  left: 24,
                ),
                child: ListTile(
                  leading: Icon(
                    Icons.logout_rounded,
                    color: Colors.white,
                  ),
                  title: Text(
                    "Logout",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              )
            ],
          ),
        ),
        body: Center(
          child: Column(
            children: [
              // Search Bar
              Padding(
                padding: const EdgeInsets.all(24.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.grey[500],
                      borderRadius: BorderRadius.circular(5)),
                  child: const Padding(
                    padding: EdgeInsets.all(15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Search",
                          style: TextStyle(color: Colors.white),
                        ),
                        Icon(
                          Icons.search_rounded,
                          color: Colors.white,
                        )
                      ],
                    ),
                  ),
                ),
              ),

              // Slogan
              const Text(
                "Take the high road and go higher...",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 24, vertical: 40),
                child: Divider(
                  thickness: 1,
                ),
              ),
              Expanded(
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 4,
                  itemBuilder: (BuildContext context, int index) {
                    Shoe shoe = Shoe(
                        name: "jordan a5",
                        price: "200",
                        imagesPath: 'lib/images/shoe3.jpg',
                        description: "Nice shoes buy noww..");
                    return ShoeTile(
                      shoe: shoe,
                    );
                  },
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 24, vertical: 40),
                child: Divider(
                  thickness: 1,
                ),
              ),
            ],
          ),
        ));
  }
}
