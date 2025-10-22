import 'package:flutter/material.dart';
import '../../data/data.dart';
import '../../model/GallaryModel.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  var future;

  @override
  void initState() {
    super.initState();
    future = AppData().getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        title: const Text("NASA Gallery"),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: FutureBuilder<List<GallaryModel>>(
        future: future,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }  if (snapshot.hasError) {
            return Center(child: Text(" ${snapshot.error}"));
          } if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return const Center(child: Text("no information"));
          }

          final galleryList = snapshot.data!;

          return ListView.builder(
            itemCount: galleryList.length,
            itemBuilder: (context, index) {
              final item = galleryList[index];
              return Card(
                margin: const EdgeInsets.all(8),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                elevation: 4,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    if (item.imageUrl.isNotEmpty)
                      ClipRRect(
                        borderRadius: const BorderRadius.vertical(
                          top: Radius.circular(15),
                        ),
                        child: Image.network(
                          item.imageUrl,
                          fit: BoxFit.cover,
                          width: double.infinity,
                          height: 200,
                          loadingBuilder: (context, child, loadingProgress) {
                            if (loadingProgress == null) return child;
                            return const Center(
                              child: CircularProgressIndicator(),
                            );
                          },
                          errorBuilder: (context, error, stackTrace) {
                            return const SizedBox(
                              height: 200,
                              child: Center(child: Text("لا يمكن تحميل الصورة")),
                            );
                          },
                        ),
                      ),
                    Padding(
                      padding: const EdgeInsets.all(12),
                      child: Text(
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                        item.description.isNotEmpty
                            ? item.description
                            : "بدون وصف",
                        style: const TextStyle(fontSize: 16),
                      ),
                    ),
                  ],
                ),
              );
            },
          );
        },
      ),
    );
  }
}

