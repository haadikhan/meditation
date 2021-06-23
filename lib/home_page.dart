import 'package:flutter/material.dart';
import 'package:meditation/sleep_meditation.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          unselectedItemColor: Colors.white70,
          backgroundColor: Colors.indigo[900],
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Colors.white70,
              ),
              label: "Home",
            ),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.nightlight_round,
                  color: Colors.white70,
                ),
                label: "Sleep"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.music_note,
                  color: Colors.white70,
                ),
                label: "Music"),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.people,
                color: Colors.white70,
              ),
              label: "Profile",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.medical_services,
                color: Colors.white70,
              ),
              label: "Meditation",
            ),
          ]),
      backgroundColor: Colors.indigo[900],
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 7),
        child: ListView(
          children: [
            const SizedBox(height: 40),
            _header(),
            const SizedBox(height: 10),
            SizedBox(
                height: 50,
                width: 400,
                child: _sleepingDisordersHorizontalList()),
            _dailyThoughtContainer(),
            _featuredText(),
            const SizedBox(height: 10),
            _featuredMeditations(),
          ],
        ),
      ),
    );
  }

  Widget _header() {
    return ListTile(
      title: Text(
        "Good Morning,Misha",
        style: TextStyle(
            color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),
      ),
      subtitle: Text(
        "We wish you have a good day",
        style: TextStyle(color: Colors.white, fontSize: 15),
      ),
      trailing: Icon(
        Icons.search,
        color: Colors.white,
        size: 45,
      ),
    );
  }

  Widget _disorders(String text) {
    return Container(
      width: 120,
      height: 50,
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.horizontal(
            left: Radius.circular(10), right: Radius.circular(10)),
        color: Colors.blue[600],
      ),
      child: Text(
        text,
        style: TextStyle(
          color: Colors.white,
        ),
      ),
    );
  }

  Widget _sleepingDisordersHorizontalList() {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: [
        _disorders("Sweet Sleep"),
        const SizedBox(width: 10),
        _disorders("Insomia"),
        const SizedBox(width: 10),
        _disorders("Depression"),
        const SizedBox(width: 10),
        _disorders("Bad Sleep"),
        const SizedBox(width: 10),
        _disorders("Sweet Sleep"),
        const SizedBox(width: 10),
        _disorders("Insomia"),
        const SizedBox(width: 10),
        _disorders("Depression"),
        const SizedBox(width: 10),
        _disorders("Bad Sleep"),
      ],
    );
  }

  Widget _dailyThoughtContainer() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 30, horizontal: 10),
      decoration: BoxDecoration(
        color: Colors.pink[100],
        borderRadius: BorderRadius.horizontal(
            left: Radius.circular(10), right: Radius.circular(10)),
      ),
      height: 80,
      child: ListTile(
        title: Text(
          "Daily thought",
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
        ),
        subtitle: Text(
          "Meditation . 3-10 min",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        trailing: CircleAvatar(
          backgroundColor: Colors.blue[600],
          child: Icon(
            Icons.play_arrow,
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  Widget _featuredText() {
    return Row(
      children: [
        const SizedBox(width: 10),
        Text(
          "Featured",
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 30),
        ),
      ],
    );
  }

  Widget _meditaionContainer(String text, Color color) {
    return Container(
      width: 160,
      height: 150,
      margin: EdgeInsets.symmetric(vertical: 20, horizontal: 5),
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: color,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            text,
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 17),
          ),
          const SizedBox(height: 60),
          Row(
            children: [
              Icon(
                Icons.headphones,
                color: Colors.white,
              ),
              const SizedBox(width: 60),
              MaterialButton(
                minWidth: 10,
                color: Colors.blue,
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => SleepMeditation()));
                },
                child: Text(
                  "Start",
                  style: TextStyle(color: Colors.white),
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  Widget _featuredMeditations() {
    return Column(
      children: [
        Row(
          children: [
            _meditaionContainer("Sleep Meditaion", Colors.purple),
            _meditaionContainer("Tips Sleeping", Colors.green),
          ],
        ),
        Row(
          children: [
            _meditaionContainer("Calming sound", Colors.yellow),
            _meditaionContainer("Night Istand", Colors.orange),
          ],
        ),
        Row(
          children: [
            _meditaionContainer("Many others", Colors.purple),
            _meditaionContainer("Sleep well", Colors.green),
          ],
        ),
        Row(
          children: [
            _meditaionContainer("Sleep Meditaion", Colors.yellow),
            _meditaionContainer("Sleep Meditaion", Colors.orange),
          ],
        ),
        Row(
          children: [
            _meditaionContainer("Sleep Meditaion", Colors.purple),
            _meditaionContainer("Sleep Meditaion", Colors.green),
          ],
        ),
      ],
    );
  }
}
