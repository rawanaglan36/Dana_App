import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whats_app/widget/item_whatsApp.dart';

class WhatsAppScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 90,
          backgroundColor: Color(0xFF168C4B),
          leading: Icon(Icons.arrow_back_ios, color: Colors.white, size: 27),
          title: Row(
            children: [
              Image.asset(
                'assets/images/Rectangle 2 (2).png',
                fit: BoxFit.cover,
              ),
              SizedBox(width: 12),
              Text(
                'John Safwat',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          actions: [
            Icon(Icons.phone, color: Colors.white, size: 24),
            SizedBox(width: 12),
            Icon(Icons.videocam_rounded, color: Colors.white, size: 24),
            SizedBox(width: 12),
            Icon(Icons.add, color: Colors.white, size: 24),
          ],
        ),
        body: Stack(
          children: [
            Image.asset(
              'assets/images/iPhone 16 - 1 (1).png',
              fit: BoxFit.fill,
              width: double.infinity,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ItemWhatsapp(color: Color(0xFF168C4B), text: 'Hello'),
                  Container(
                    alignment: Alignment.centerRight,
                    child: ItemWhatsapp(color: Color(0xFF181818), text: 'Hello'),
                  ),
                  Container(

                    width: 400,
                    height: 259,
                    child: ItemWhatsapp(
                      color: Color(0xFF168C4B),
                      text:'Hey! Have you ever thought about how random moments '
                          'can sometimes turn into the best memories? It’s like the universe loves to surprise us when we least expect it!',
                    ),
                  ),

                  Container(
                    width: 260,
                    height: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20),
                        bottomLeft: Radius.circular(20),
                      ),
                      color: Color(0xFF168C4B),
                    ),
                    child: Image.asset(
                      "assets/images/429820590_791043733050594_2437304548159507703_n 1.png",fit: BoxFit.fill,
                    ),
                  ),
                  Container(
                    alignment: Alignment.centerRight,
                    child: Container(
                    width: 380,
                      height: 140,

                      child: ItemWhatsapp(
                        color: Color(0xFF181818),
                        text: 'What a Great Content Tp learn \n Flutter ',
                      ),
                    ),
                  ),
                  Spacer(flex: 1),
                  TextFormField(
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(
                          width: 2,
                          color: Colors.lightGreen,
                        ),
                      ),
                      prefixIcon: Icon(
                        Icons.camera_alt_outlined,
                        color: Colors.white,
                        size: 20,
                      ),
                      hintText: 'Type a Message',
                      suffixIcon: Icon(
                        Icons.telegram,
                        color: Colors.white,
                        size: 20,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
