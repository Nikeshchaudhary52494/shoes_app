import 'package:flutter/material.dart';

class ShopePgae extends StatelessWidget {
  const ShopePgae({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body: const Center(child: Text("this is shope page")),
    );
  }
}
