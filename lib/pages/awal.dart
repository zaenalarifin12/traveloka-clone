import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class Awal extends StatefulWidget {
  @override
  _AwalState createState() => _AwalState();
}

class _AwalState extends State<Awal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Traveloka"),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.more_horiz), onPressed: () {})
        ],
      ),
      body: ListView(
        children: <Widget>[
          Akun(),
          Divider(),
          MenuUtama(),
          MenuTambahan(),
          Promo()
        ],
      ),
    );
  }
}

class Akun extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: ListTile(
        leading: Container(
          width: 50.0,
          height: 50.0,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                  fit: BoxFit.fill,
                  image:
                      NetworkImage("https://source.unsplash.com/ZHvM3XIOHoE"))),
        ),
        title: Text(
          "Zainal Arifin",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Row(
          children: <Widget>[
            RaisedButton.icon(
              onPressed: () {},
              icon: Icon(Icons.album),
              label: Text("305 point"),
              color: Colors.grey[200],
              elevation: 0.0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8)),
            ),
            Padding(padding: EdgeInsets.all(8.0)),
            RaisedButton(
              onPressed: () {},
              child: Text("Traveloka pay"),
              color: Colors.grey[200],
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              elevation: 0.0,
            )
          ],
        ),
      ),
    );
  }
}

class MenuUtama extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      shrinkWrap: true,
      crossAxisCount: 5,
      children: menuUtamaItem,
    );
  }
}

List<MenuUtamaItem> menuUtamaItem = [
  MenuUtamaItem(
    title: "tiket pesawat",
    icon: Icons.flight,
    iconColor: Colors.white,
    colorBox: Colors.blue,
  ),
  MenuUtamaItem(
    title: "Hotel",
    icon: Icons.hotel,
    iconColor: Colors.white,
    colorBox: Colors.blue[900],
  ),
  MenuUtamaItem(
    title: "Pesawat + hotel",
    icon: Icons.flight_land,
    iconColor: Colors.white,
    colorBox: Colors.purple,
  ),
  MenuUtamaItem(
    title: "Aktivitas & rekreasi",
    icon: Icons.local_play,
    iconColor: Colors.white,
    colorBox: Colors.green[300],
  ),
  MenuUtamaItem(
    title: "tiket pesawat",
    icon: Icons.flight,
    iconColor: Colors.white,
    colorBox: Colors.blue,
  ),
  MenuUtamaItem(
    title: "tiket pesawat",
    icon: Icons.flight,
    iconColor: Colors.white,
    colorBox: Colors.blue,
  ),
  MenuUtamaItem(
    title: "Hotel",
    icon: Icons.hotel,
    iconColor: Colors.white,
    colorBox: Colors.blue[900],
  ),
  MenuUtamaItem(
    title: "Pesawat + hotel",
    icon: Icons.flight_land,
    iconColor: Colors.white,
    colorBox: Colors.purple,
  ),
  MenuUtamaItem(
    title: "Aktivitas & rekreasi",
    icon: Icons.local_play,
    iconColor: Colors.white,
    colorBox: Colors.green[300],
  ),
  MenuUtamaItem(
    title: "tiket pesawat",
    icon: Icons.flight,
    iconColor: Colors.white,
    colorBox: Colors.blue,
  )
];

class MenuUtamaItem extends StatelessWidget {
  final String title;
  final IconData icon;
  final Color colorBox, iconColor;

  MenuUtamaItem({this.title, this.icon, this.colorBox, this.iconColor});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        GestureDetector(
          onTap: (){},
          child: Container(
            height: 40.0,
            width: 40.0,
            decoration: BoxDecoration(
              color: colorBox,
              shape: BoxShape.circle
            ),
            child: Icon(icon, color: iconColor,),
          ),
        ),
        Text(title, style: TextStyle(fontSize: 12.0), textAlign: TextAlign.center,)
      ],
    );
  }
}

List<MenuTambahanItem> menuTambahanItem = [
  MenuTambahanItem(
    title: "tiket pesawat",
    icon: Icons.flight
  ),
  MenuTambahanItem(
      title: "tiket pesawat",
      icon: Icons.flight
  ),MenuTambahanItem(
      title: "tiket pesawat",
      icon: Icons.flight
  )
  ,MenuTambahanItem(
      title: "tiket pesawat",
      icon: Icons.flight
  )
  ,MenuTambahanItem(
      title: "tiket pesawat",
      icon: Icons.flight
  ),
  MenuTambahanItem(
      title: "tiket pesawat",
      icon: Icons.flight
  ),
  MenuTambahanItem(
      title: "tiket pesawat",
      icon: Icons.flight
  ),MenuTambahanItem(
      title: "tiket pesawat",
      icon: Icons.flight
  )
  ,MenuTambahanItem(
      title: "tiket pesawat",
      icon: Icons.flight
  )
  ,MenuTambahanItem(
      title: "tiket pesawat",
      icon: Icons.flight
  )
];

class MenuTambahanItem extends StatelessWidget {
  MenuTambahanItem({ this.title, this.icon });
  final String title;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Column(
        children: <Widget>[
          Container(
            height: 50.0,
            width: 50.0,
            child: Icon(icon),
          ),
          Text(title, style: TextStyle( fontSize: 12.0, fontWeight: FontWeight.bold),)
        ],
      ),
    );
  }
}


class MenuTambahan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
//      padding: EdgeInsets.symmetric(vertical: 20.0),
      height: 70.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: menuTambahanItem,
      ),
    );
  }
}

class Promo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ListTile(
          title: Text("Promo saat ini", style: TextStyle(fontWeight: FontWeight.w700, fontSize: 22.0),),
          trailing: IconButton(
              icon: Icon(Icons.arrow_forward),
              onPressed: (){}
          ),
        ),
        Container(
          width: double.infinity,
          height: 150.0,
          padding: EdgeInsets.only(left: 8.0, right: 8.0),
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              Container(
                height: 150.0,
                width: 150.0,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.blue,
                      Colors.blue[800]
                    ],
                  ),
                  borderRadius: BorderRadius.circular(8)
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.red[300],
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.elliptical(20.0, 20.0),
                          bottomRight: Radius.elliptical(150.0, 150.0)
                        )
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 10.0, left: 10.0, bottom: 20.0, right: 30.0),
                        child: Text("%", style: TextStyle(fontSize: 22.0, color: Colors.white),),
                      ),
                    ),
                    Expanded(child: Container()),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Lihat Semua \nPromo", style: TextStyle(fontSize: 18.0, color: Colors.white),),
                    ),
                  ],
                ),
              ),
              Container(
                width: 300.0,
                height: 150.0,
                margin: EdgeInsets.only(left: 20.0),
                decoration: BoxDecoration(
                  color: Colors.blue[100],
                    borderRadius: BorderRadius.circular(8),
                    image: DecorationImage(
                        image: AssetImage("images/pertama.jpg")
                    )
                ),
                child: null,
              ),
            ],
          ),
        )
      ],
    );
  }
}


