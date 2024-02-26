import 'package:flutter/material.dart';

void main() => runApp(const MiDrawerCeniceros());

class MiDrawerCeniceros extends StatelessWidget {
  const MiDrawerCeniceros({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(
                Icons.more_vert,
              ),
              onPressed: () {},
            )
          ],
          title: const Text("Drawer Ceniceros"),
          centerTitle: true,
          backgroundColor: Color(0xff920b0b),
        ),
        backgroundColor: Color(0xfff7f7f5),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              UserAccountsDrawerHeader(
                accountName: Text("Vinill Store.co"),
                accountEmail: Text("a.21308051280450@cbtis128.edu.mx"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://avatars.githubusercontent.com/u/143547970?v=4"),
                ),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                      "https://keepthemspinning.com/cdn/shop/articles/Tiendas-Discos-de-Vinilo-Madrid-Keep-Them-Spinning-Cover.jpg?v=1697559821",
                    ),
                    fit: BoxFit.fill,
                  ),
                ),
                otherAccountsPictures: [
                  CircleAvatar(
                    backgroundColor: Color(0xffec0000),
                    backgroundImage: NetworkImage(
                        "data:image/png;base64,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"),
                  ),
                  CircleAvatar(
                    backgroundColor: Color(0xfff10202),
                    backgroundImage: NetworkImage(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSz2QYVLJs1QMtIFTy3MVi9CbtJfF2mSYEJ5w&usqp=CAU"),
                  ),
                ],
              ),
              ListTile(
                leading: Icon(Icons.home),
                title: Text("Productos"),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.account_box),
                title: Text("Cliente"),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.grid_3x3_outlined),
                title: Text("Sucursales"),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.contact_mail),
                title: Text("Proveedores"),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.account_balance_outlined),
                title: Text("Empleados"),
                onTap: () {},
              )
            ],
          ),
        ),
      ),
    );
  }
}
