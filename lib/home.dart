import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(color: Colors.indigo),
              child: Text('To Do'),
            ),
            ListTile(
              title: const Text('Starred'),
              onTap: () {},
            ),
            ListTile(
              title: const Text('My Tasks'),
              onTap: () {},
            ),
            ListTile(
              title: const Text('Create New List'),
              onTap: () {},
            ),
            ListTile(
              title: const Text('Settings'),
              onTap: () {},
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text('To Do'),
        backgroundColor: Colors.indigo,
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: Icon(Icons.star)),
          PopupMenuButton(onSelected: (value) {
            print(value);
          }, itemBuilder: (BuildContext context) {
            return [
              PopupMenuItem(value: 1, child: Text("Starred")),
              PopupMenuItem(value: 2, child: Text("My Tasks")),
              PopupMenuItem(value: 3, child: Text("Create New Task")),
              PopupMenuItem(value: 4, child: Text("Settings")),
            ];
          })
        ],
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            backgroundColor: Colors.indigo,
            onPressed: (){
            },
            tooltip: 'Increment',
            child: const Icon(Icons.add),
          )
        ],
      ),
    );
  }
}
