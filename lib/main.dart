import "package:flutter/material.dart";

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.green),
      darkTheme: ThemeData(primarySwatch: Colors.blue),
      title: "Demo",
      home: HomeActivity(),
    );
  }
}

class HomeActivity extends StatelessWidget {
  HomeActivity({super.key});

  MySnackBar(message, context) {
    return ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(message)));
  }

  var myItems = [
    {
      "img":
          "https://cdn.pixabay.com/photo/2015/04/19/08/32/marguerite-729510__340.jpg",
      "title": "flower-1"
    },
    {
      "img":
          "https://cdn.pixabay.com/photo/2015/04/19/08/32/marguerite-729510__340.jpg",
      "title": "flower-2"
    },
    {
      "img":
          "https://cdn.pixabay.com/photo/2015/04/19/08/32/marguerite-729510__340.jpg",
      "title": "flower-3"
    },
    {
      "img":
          "https://cdn.pixabay.com/photo/2015/04/19/08/32/marguerite-729510__340.jpg",
      "title": "flower-4"
    },
    {
      "img":
          "https://cdn.pixabay.com/photo/2015/04/19/08/32/marguerite-729510__340.jpg",
      "title": "flower-5"
    },
    {
      "img":
          "https://cdn.pixabay.com/photo/2015/04/19/08/32/marguerite-729510__340.jpg",
      "title": "flower-6"
    },
    {
      "img":
          "https://cdn.pixabay.com/photo/2015/04/19/08/32/marguerite-729510__340.jpg",
      "title": "flower-7"
    },
    {
      "img":
          "https://cdn.pixabay.com/photo/2015/04/19/08/32/marguerite-729510__340.jpg",
      "title": "flower-8"
    },
  ];

  @override
  Widget build(BuildContext context) {
    var _currentIndex = 0;
    ButtonStyle buttonStyle = ElevatedButton.styleFrom(
        backgroundColor: Colors.green,
        minimumSize: Size(double.infinity, 60),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10))),
        padding: EdgeInsets.all(20));
    return Scaffold(
        appBar: AppBar(
          title: Text("Inventory App"),
          centerTitle: true,
          titleSpacing: 0,
          elevation: 0,
          backgroundColor: Colors.blue,
          toolbarHeight: 50,
          actions: [
            IconButton(
              onPressed: () {
                MySnackBar("Your shopping cart is empty", context);
              },
              icon: Icon(Icons.shopping_cart),
              tooltip: "Check your shopping cart",
            )
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            MySnackBar("This is floating button action", context);
          },
          child: Icon(Icons.add),
          backgroundColor: Colors.blue,
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.message), label: "Contact"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile")
          ],
          currentIndex: _currentIndex,
          onTap: (int index) {
            if (index == 0) {
              MySnackBar("This home bottom navbar", context);
              _currentIndex = 0;
            } else if (index == 1) {
              MySnackBar("This contact bottom navbar", context);
              _currentIndex = 1;
            } else {
              MySnackBar("This profile bottom navbar", context);
              _currentIndex = 3;
            }
          },
        ),
        drawer: Drawer(
          child: ListView(
            children: [
              DrawerHeader(
                  padding: EdgeInsets.all(0),
                  child: UserAccountsDrawerHeader(
                      decoration: BoxDecoration(color: Colors.white),
                      currentAccountPicture: Image.network(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSoKJPxxwPeNvISnBbZsZHe887Ws0FnrL7o0w&usqp=CAU"),
                      accountName: Text(
                        "Md Arif",
                        style: TextStyle(color: Colors.black),
                      ),
                      accountEmail: Text(
                        "mdarif1129@gmail.com",
                        style: TextStyle(color: Colors.black),
                      ))),
              ListTile(
                title: Text("Home"),
                leading: Icon(Icons.home),
                onTap: () {
                  MySnackBar("I am home", context);
                },
              ),
              ListTile(
                title: Text("Contact"),
                leading: Icon(Icons.message),
                onTap: () {
                  MySnackBar("I am contact", context);
                },
              ),
              ListTile(
                title: Text("Email"),
                leading: Icon(Icons.contact_mail),
                onTap: () {
                  MySnackBar("I am email", context);
                },
              ),
              ListTile(
                title: Text("Profile"),
                leading: Icon(Icons.person),
                onTap: () {
                  MySnackBar("I am profile", context);
                },
              ),
              ListTile(
                title: Text("Share"),
                leading: Icon(Icons.share),
                onTap: () {
                  MySnackBar("I am share", context);
                },
              )
            ],
          ),
        ),
        endDrawer: Drawer(
          child: ListView(
            children: [
              DrawerHeader(
                  padding: EdgeInsets.all(0),
                  child: UserAccountsDrawerHeader(
                      decoration: BoxDecoration(color: Colors.white),
                      currentAccountPicture: Image.network(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSoKJPxxwPeNvISnBbZsZHe887Ws0FnrL7o0w&usqp=CAU"),
                      accountName: Text(
                        "Md Arif",
                        style: TextStyle(color: Colors.black),
                      ),
                      accountEmail: Text(
                        "mdarif1129@gmail.com",
                        style: TextStyle(color: Colors.black),
                      ))),
              ListTile(
                title: Text("Home"),
                leading: Icon(Icons.home),
                onTap: () {
                  MySnackBar("I am home", context);
                },
              ),
              ListTile(
                title: Text("Contact"),
                leading: Icon(Icons.message),
                onTap: () {
                  MySnackBar("I am contact", context);
                },
              ),
              ListTile(
                title: Text("Email"),
                leading: Icon(Icons.contact_mail),
                onTap: () {
                  MySnackBar("I am email", context);
                },
              ),
              ListTile(
                title: Text("Profile"),
                leading: Icon(Icons.person),
                onTap: () {
                  MySnackBar("I am profile", context);
                },
              ),
              ListTile(
                title: Text("Share"),
                leading: Icon(Icons.share),
                onTap: () {
                  MySnackBar("I am share", context);
                },
              )
            ],
          ),
        ),
        body: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, childAspectRatio: 1.2),
          padding: EdgeInsets.all(10),
          itemCount: myItems.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                MySnackBar(myItems[index]["title"], context);
              },
              child: Container(
                width: double.infinity,
                height: 200,
                child: Image.network(myItems[index]["img"]!, fit: BoxFit.fill),
                margin: EdgeInsets.all(10),
              ),
            );
          },
        ));
  }
}
