import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("HomePage")),
      body: ListView(
        children: [
          userTile(nama: "daep", job: "ui/ux"),
          userTile(nama: "koma", job: "PM"),
          userTile(nama: "digar", job: "Fullstack"),
          userTile(nama: "jr", job: "frontEnd"),
          userTile(nama: "parat",),
          ],
      ),
    );
  }
}

class userTile extends StatelessWidget {
  final String nama;
  final String? job;

  const userTile({super.key, required this.nama, this.job});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(nama.toString()),
      subtitle: Text(job == null ? "ngangur" : job.toString()),
      leading: Icon(Icons.person),
      trailing: Icon(Icons.menu),
    );
  }
}
