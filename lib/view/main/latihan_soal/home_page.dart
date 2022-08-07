import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:latsol/constants/r.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 20.0, vertical: 70.0),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Hei Nama User",
                        style: GoogleFonts.poppins().copyWith(
                            fontSize: 12, fontWeight: FontWeight.w700),
                      ),
                      Text("Selamat Datang"),
                    ],
                  ),
                ),
                Image.asset(
                  R.assets.imgUser,
                  width: 35,
                  height: 35,
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 20.0,
              vertical: 15,
            ),
            height: 150,
            width: double.infinity,
            child: Stack(children: []),
          )
        ],
      ),
    );
  }
}
