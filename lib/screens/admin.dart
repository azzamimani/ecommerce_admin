import 'package:flutter/material.dart';

enum Page { dashboard, manage }

class Admin extends StatefulWidget {
  @override
  _AdminState createState() => _AdminState();
}

class _AdminState extends State<Admin> {
  Page _selectedPage = Page.dashboard;
  MaterialColor active = Colors.deepPurple;
  MaterialColor notActive = Colors.grey;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: <Widget>[
            Expanded(
              child: FlatButton.icon(
                onPressed: () {
                  setState(() {
                    _selectedPage = Page.dashboard;
                  });
                },
                icon: Icon(
                  Icons.dashboard,
                  color: _selectedPage == Page.dashboard ? active : notActive,
                ),
                label: Text("Dashboard"),
              ),
            ),
            Expanded(
              child: FlatButton.icon(
                onPressed: () {
                  setState(() {
                    _selectedPage = Page.manage;
                  });
                },
                icon: Icon(
                  Icons.sort,
                  color: _selectedPage == Page.manage ? active : notActive,
                ),
                label: Text("Manage"),
              ),
            ),
          ],
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: _loadScreen(),
    );
  }

  Widget _loadScreen() {
    switch (_selectedPage) {
      case Page.dashboard:
        return Column(
          children: <Widget>[
            ListTile(
              subtitle: FlatButton.icon(
                onPressed: null,
                icon: Icon(Icons.attach_money, size: 30, color: Colors.green),
                label: Text(
                  "46.000",
                  textAlign: TextAlign.center,
                  style:
                      TextStyle(color: Colors.deepPurpleAccent, fontSize: 30),
                ),
              ),
              title: Text(
                "Revenue",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.grey, fontSize: 24),
              ),
            ),
            Expanded(
              child: GridView(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Card(
                      child: ListTile(
                        title: FlatButton.icon(
                          onPressed: null,
                          label: Text("Users"),
                          icon: Icon(Icons.people_outline),
                        ),
                        subtitle: Text(
                          "46",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 30, color: active),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Card(
                      child: ListTile(
                        title: FlatButton.icon(
                          onPressed: null,
                          label: Text("Categories"),
                          icon: Icon(Icons.sort),
                        ),
                        subtitle: Text(
                          "10",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 30, color: active),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Card(
                      child: ListTile(
                        title: FlatButton.icon(
                          onPressed: null,
                          label: Text("Product"),
                          icon: Icon(Icons.shopping_basket),
                        ),
                        subtitle: Text(
                          "55",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 30, color: active),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Card(
                      child: ListTile(
                        title: FlatButton.icon(
                          onPressed: null,
                          label: Text("Sold"),
                          icon: Icon(Icons.check),
                        ),
                        subtitle: Text(
                          "1.000",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 30, color: active),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Card(
                      child: ListTile(
                        title: FlatButton.icon(
                          onPressed: null,
                          label: Text("Order"),
                          icon: Icon(Icons.shopping_cart),
                        ),
                        subtitle: Text(
                          "25",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 30, color: active),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Card(
                      child: ListTile(
                        title: FlatButton.icon(
                          onPressed: null,
                          label: Text("Return"),
                          icon: Icon(Icons.refresh),
                        ),
                        subtitle: Text(
                          "0",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 30, color: active),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        );
        break;
      case Page.manage:
        return ListView(
          children: <Widget>[
            ListTile(
              leading: Icon(Icons.add),
              title: Text("Add Product"),
              onTap: null,
            ),
            ListTile(
              leading: Icon(Icons.sort),
              title: Text("Product List"),
              onTap: null,
            ),
            ListTile(
              leading: Icon(Icons.add_circle),
              title: Text("Add Categories"),
              onTap: null,
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.category),
              title: Text("Category List"),
              onTap: null,
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.add_circle_outline),
              title: Text("Add Brand"),
              onTap: null,
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.library_books),
              title: Text("Brand List"),
              onTap: null,
            ),
          ],
        );
        break;
      default:
      return Container();
    }
  }
}
