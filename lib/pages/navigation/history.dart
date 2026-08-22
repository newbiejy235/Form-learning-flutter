import 'package:flutter/material.dart';

class History extends StatefulWidget {
  // final String nama;
  // final int umur;
  const History({
    super.key,
    //  required this.nama,
    //   required this.umur
  });

  @override
  State<History> createState() => _HistoryState();
}

class _HistoryState extends State<History> {
  @override
  Widget build(BuildContext context) {
    int currentIndex = 1;
    // final data =
    //     ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;

    // final nama = data["nama"];
    // final umur = data["umur"];
    return Scaffold(
      appBar: AppBar(title: Text("history")),
      backgroundColor: Colors.pinkAccent,

      // body: ListView(
      //   children: [
      //     // Text(nama),
      //     // Text(umur.toString())
      //   ],
      // ),
      body: Center(child: Text("history")),

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        selectedItemColor: Colors.lightBlue,
        unselectedItemColor: Colors.blueGrey,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),

          BottomNavigationBarItem(icon: Icon(Icons.history), label: "History"),
          BottomNavigationBarItem(icon: Icon(Icons.wallet), label: "Wallet"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],

        onTap: (value) {
          setState(() {
            currentIndex = value;
          });
          if (value == 0) {
            Navigator.pushReplacementNamed(context, "/homepage");
          } else if (value == 1) {
            Navigator.pushReplacementNamed(context, "/history");
          } else if (value == 2) {
            Navigator.pushReplacementNamed(context, "/Wallet");
          } else if (value == 3) {
            Navigator.pushReplacementNamed(context, "/profile");
          }
        },
      ),
    );
  }
}

class userTile extends StatelessWidget {
  final String? nama;
  final String? job;

  const userTile({super.key, this.nama, this.job});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListTile(
        title: Text(nama == null ? "dummy" : nama.toString()),
        subtitle: Text(job == null ? "ngangur" : job.toString()),
        leading: Icon(Icons.person),
        trailing: Icon(Icons.menu),
      ),
    );
  }
}
