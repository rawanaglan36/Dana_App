import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_nti/core/favorites/cubit/favorite_state.dart';
import '../../cubit/favorite_cubit.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({super.key});

  @override
  Widget build(BuildContext context) {

    context.read<FavoriteCubit>().getFav();

    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 90,
        backgroundColor: Colors.pink.shade100,
        centerTitle: true,
        title: Text(
          "FAVORITE",
          style: TextStyle(
            color: Colors.black54,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: BlocConsumer<FavoriteCubit, FavoriteState>(
        listener: (context, state) {
         
        },
        builder: (context, state) {
          if (state is FavoriteSuccessState) {
            if (state.list.isEmpty) {
              return const Center(
                child: Text(
                  "No favorites yet!",
                  style: TextStyle(fontSize: 18, color: Colors.grey),
                ),
              );
            }
            return ListView.builder(
              itemCount: state.list.length,
              itemBuilder: (context, index) {
                final item = state.list[index];
                return Card(
                  margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                  child: Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [Colors.black.withAlpha(10), Colors.pink.shade100],
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                      ),
                    ),
                    child: ListTile(
                      leading: Image.network(item.image, width: 50, height: 50, fit: BoxFit.cover),
                      title: Text(
                          item.name,style: TextStyle(
                        color: Colors.teal.shade100,
                        fontSize: 20,
                        fontWeight: FontWeight.bold
                      ),),
                      subtitle: Text(overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                          style: const TextStyle(
                        color: Colors.black54,
                        fontSize: 15,
                        fontWeight: FontWeight.w500
                      ),
                          item.description),
                      trailing: IconButton(
                        icon: const Icon(Icons.delete, color: Colors.red),
                        onPressed: () {
                          context.read<FavoriteCubit>().deleteFvCubit(
                            productId: item.id,
                          );
                        },
                      ),
                    ),
                  ),
                );
              },
            );
          }
          if (state is FavoriteLoadingState) {
            return const Center(child: CircularProgressIndicator());
          }
          return const Center(child: Text(""));
        },
      ),
    );
  }
}

