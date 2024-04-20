import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:url_launcher/url_launcher_string.dart';

class DevelopersPage extends StatelessWidget {
  const DevelopersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        scrolledUnderElevation: 0,
        backgroundColor: Colors.grey[200],
          //   title: const Text(
          //     "Developers",
          //     style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
          //   ),
          //   toolbarHeight: 65,
          //   centerTitle: true,
          //   backgroundColor: const Color(0xFFD9D9D9),
          //   shape:
          //       ContinuousRectangleBorder(borderRadius: BorderRadius.circular(20)),
          ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: Column(
              children: [
                const SizedBox(height: 20),
                const Text("Project App Guides",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 30)),
                const SizedBox(height: 20),
                personCard(
                    name: "Prof. Uma Patil",
                    img: "assets/uma_patil.jpg",
                    contactNo: 'TPO Cell',
                    profession: "Dean III, GCEK"),
                const Divider(indent: 40, endIndent: 40),
                const SizedBox(height: 20),
                personCard(
                    name: "Prof. Pournima Kawalkar",
                    img: "assets/pournima_mam.jpg",
                    contactNo: 'TPO Cell',
                    profession: "Assistant Professor"),
                const Divider(),
                const SizedBox(height: 20),
                const Text("Developers",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 30)),
                const SizedBox(height: 20),
                personCard(
                    name: "Pooja Chavan",
                    img: "assets/pooja.jpg",
                    contactNo: '9579363569',
                    profession: "B.Tech IT 2025"),
                const Divider(indent: 40, endIndent: 40),
                personCard(
                    name: "Nandan Magdum",
                    img: "assets/nandan.png",
                    contactNo: '8180097590',
                    profession: "B.Tech IT 2025"),
                const Divider(indent: 40, endIndent: 40),
                personCard(
                    name: "Atharv Chougule",
                    img: "assets/atharv.jpg",
                    contactNo: '9422324904',
                    profession: "B.Tech IT 2025"),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF22223b),
                      ),
                      onPressed: () {
                        launchUrlString(
                          'https://docs.google.com/forms/d/e/1FAIpQLScLf-Tg5ieQPVFyAnwYWVasUM4BMv5Sgtfr9rHpPB_mGWXwrQ/viewform?usp=sf_link',
                          // "http://google.com"
                        );
                      },
                      child: const Center(
                          child: Text(
                        "Give your Feedback here",
                        style: TextStyle(color: Colors.white),
                      ))),
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget personCard(
    {required String name,
    required String img,
    required String contactNo,
    required String profession}) {
  return Column(
    children: [
      const SizedBox(height: 10),
      CircleAvatar(
        radius: 75,
        backgroundColor: Colors.grey.withOpacity(0.5),
        child: CircleAvatar(
          radius: 70,
          child: img != "img"
              ? ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: Image.asset(img))
              : const Icon(Icons.person),
        ),
      ),
      Text(
        name,
        style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 25),
      ),
      Text(
        profession,
        style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 20,
            color: Colors.grey.shade800),
      ),
      Text(
        contactNo,
        style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 15,
            color: Colors.grey.shade500),
      ),
      const SizedBox(height: 10),
    ],
  );
}
