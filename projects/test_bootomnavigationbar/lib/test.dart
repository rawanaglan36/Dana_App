import 'package:flutter/material.dart';

class Test extends StatefulWidget {
  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  int currentIndex = 0;
  bool showPassword = true;

  List<String> navigat = [
    "Home",
    'search',
    'setting'
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.add),
          elevation: 0,
          backgroundColor: Colors.yellowAccent,
          centerTitle: true,
          title: Text(
            'Habiba Eladawy',
            style: TextStyle(
              color: Colors.deepPurple,
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(Icons.search)),
            IconButton(
                onPressed: () {},
                icon: Icon(Icons.settings)),
          ],
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(14.0),
              child: TextFormField(
                
                 obscureText: showPassword,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16),
                      borderSide: BorderSide(color: Colors.greenAccent,width: 7),
                  ),
                  labelText: 'Password',
                  labelStyle: TextStyle(color: Colors.pink),
                  hintText: 'take a password',
                  prefixIcon: Icon(Icons.access_time_filled),
                  suffixIcon: IconButton(onPressed: (){
                    showPassword=!showPassword;
                    setState(() {

                    });
                  },
                      icon: showPassword?
                      Icon(
                          Icons.visibility_off)
                  :
                          Icon(Icons.visibility),
                  )


                  
                   
                

              ),
                
            ),
            ),
          ],
        ),

        // ===== BODY =====
        // body: Column(
        //   children: [
        //     Padding(
        //       padding: const EdgeInsets.all(13.0),
        //       child: TextFormField(
        //         obscureText: true,
        //         keyboardType: TextInputType.multiline,
        //         decoration: InputDecoration(
        //           enabledBorder: OutlineInputBorder(),
        //           suffixIcon: Icon(
        //             Icons.visibility_off,
        //             size: 22,
        //             color: Colors.deepPurple,
        //           ),
        //           prefixIcon: Icon(
        //             Icons.key,
        //             size: 22,
        //             color: Colors.deepPurple,
        //           ),
        //           hintText: 'Example @ gmail.com',
        //           labelText: 'Password',
        //           labelStyle: TextStyle(fontSize: 15),
        //         ),
        //       ),
        //     ),
        //     Padding(
        //       padding: const EdgeInsets.all(8.0),
        //       child: TextFormField(
        //         obscureText: showPassword,
        //         keyboardType: TextInputType.multiline,
        //         decoration: InputDecoration(
        //           enabledBorder: OutlineInputBorder(
        //             borderRadius: BorderRadius.circular(19),
        //             borderSide: BorderSide(
        //               color: Colors.green,
        //               width: 7,
        //             ),
        //           ),
        //           suffixIcon: IconButton(
        //             onPressed: () {
        //               setState(() {
        //                 showPassword = !showPassword;
        //               });
        //             },
        //             icon: Icon(
        //               showPassword
        //                   ? Icons.visibility
        //                   : Icons.visibility_off,
        //               size: 22,
        //               color: Colors.deepPurple,
        //             ),
        //           ),
        //           prefixIcon: Icon(
        //             Icons.key,
        //             size: 22,
        //             color: Colors.deepPurple,
        //           ),
        //           hintText: 'Example @ gmail.com',
        //           labelText: 'Password',
        //           labelStyle: TextStyle(fontSize: 15),
        //         ),
        //       ),
        //     ),
        //   ],
        // ),

        // ===== BOTTOM NAVIGATION BAR (لو حابة تفعّليه احذفي الكومنت) =====
        // bottomNavigationBar: BottomNavigationBar(
        //   currentIndex: currentIndex,
        //   onTap: (int x) {
        //     setState(() {
        //       currentIndex = x;
        //     });
        //   },
        //   backgroundColor: Colors.blueAccent,
        //   selectedItemColor: Colors.tealAccent,
        //   unselectedItemColor: Colors.red,
        //   items: [
        //     BottomNavigationBarItem(icon: Icon(Icons.add), label: 'home'),
        //     BottomNavigationBarItem(icon: Icon(Icons.search), label: 'search'),
        //     BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'settings'),
        //   ],
        // ),
      ),
    );
  }
}


