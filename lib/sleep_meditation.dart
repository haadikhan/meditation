import 'package:flutter/material.dart';

class SleepMeditation extends StatefulWidget {
  @override
  _SleepMeditationState createState() => _SleepMeditationState();
}

class _SleepMeditationState extends State<SleepMeditation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo[900],
        leading: Icon(Icons.arrow_back),
      ),
      backgroundColor: Colors.indigo[900],
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 7),
        child: ListView(
          children: [
            _header(),
            _startContainer("", Colors.purpleAccent),
            const SizedBox(height: 10),
            _sleepMusicText(),
            const SizedBox(height: 10),
            _adviceText(),
            const SizedBox(height: 10),
            _ratingAndListing(),
            const SizedBox(height: 10),
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
        "Sleep Meditation",
        style: TextStyle(
            color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),
      ),
      subtitle: Text(
        "Best Practice meditaion",
        style: TextStyle(color: Colors.white, fontSize: 15),
      ),
      trailing: Icon(
        Icons.search,
        color: Colors.white,
        size: 45,
      ),
    );
  }

  Widget _startContainer(String text, Color color) {
    return Container(
      width: 160,
      height: 150,
      margin: EdgeInsets.symmetric(vertical: 20, horizontal: 5),
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
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
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(
                Icons.headphones,
                color: Colors.white,
                size: 40,
              ),
              MaterialButton(
                minWidth: 20,
                color: Colors.blue,
                onPressed: () {},
                child: Text(
                  "Start",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  Widget _sleepMusicText() {
    return Text(
      "Sleep music . 45 min ",
      style: TextStyle(
        color: Colors.white,
        fontSize: 18,
      ),
    );
  }

  Widget _adviceText() {
    return Text(
      "Ease the mind into a restful  nights sleep with these deep,a,blent tones. ",
      style: TextStyle(
        color: Colors.white,
        fontSize: 18,
      ),
    );
  }

  Widget _ratingAndListing() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Icon(
          Icons.star,
          color: Colors.white,
        ),
        Text(
          "12542 Saved",
          style: TextStyle(color: Colors.white, fontSize: 15),
        ),
        const SizedBox(width: 30),
        Icon(
          Icons.headphones,
          color: Colors.white,
        ),
        Text(
          "12542 Saved",
          style: TextStyle(
            color: Colors.white,
            fontSize: 15,
          ),
        ),
      ],
    );
  }

  Widget _featuredText() {
    return Row(
      children: [
        const SizedBox(width: 10),
        Text(
          "Related",
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
