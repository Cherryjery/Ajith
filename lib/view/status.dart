import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

import '../widget/cardtempelate.dart';
class Status extends StatefulWidget {
  const Status({Key? key}) : super(key: key);

  @override
  State<Status> createState() => _StatusState();
}

class _StatusState extends State<Status> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(10.0),
      children: [
        CardTempelate(
            Imageurl:"https://th.bing.com/th/id/OIP.davn6NPbO2fvo8u-SHA3CQHaGE?pid=ImgDet&rs=1",
            Title:"Kishore Kumar",
            Subtitle:"Good morning",
            Trailing:"10:20"
        ),
        CardTempelate(
            Imageurl:"https://th.bing.com/th?id=OIP.PKxPi2aecHrdp-SFhog61AHaHV&w=251&h=248&c=8&rs=1&qlt=90&o=6&dpr=1.1&pid=3.1&rm=2",
            Title:"Ajith Kumar",
            Subtitle:"Whats plan today",
            Trailing:"10:50"
        ),
        CardTempelate(
            Imageurl:"https://th.bing.com/th?id=OIP.EpRczwj7bVQuO_FF_6X-eAHaE7&w=306&h=204&c=8&rs=1&qlt=90&o=6&dpr=1.1&pid=3.1&rm=2",
            Title:"Divya",
            Subtitle:"Having Doubt",
            Trailing:"10:55"
        ),
        CardTempelate(
            Imageurl:"https://th.bing.com/th?id=OIP.HPGZnGqF5uNRpkdydbM-VgHaK4&w=206&h=302&c=8&rs=1&qlt=90&o=6&dpr=1.1&pid=3.1&rm=2",
            Title:"Pravin",
            Subtitle:"Happy Good morning",
            Trailing:"10:56"
        ),
      ],
    );
  }
}
