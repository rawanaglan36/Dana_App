import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_nti/screens/camira_screen.dart';
import '../../cart/cubit/cart_cubit.dart';
import '../../cubit/home_cubit.dart';
import '../../favorites/auth/cubit/auth_cubit.dart';
import '../../favorites/auth/views/screen/register_screen.dart';
import '../../favorites/cubit/favorite_cubit.dart';

class ProjectNti extends StatelessWidget {
  const ProjectNti({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => HomeCubit()..getDataCubit(),
        ),
        BlocProvider(
          create: (context) => CartCubit()..getCartCubit(),
        ),
        BlocProvider(
          create: (context) => AuthCubit(),
        ),
        BlocProvider(
          create: (context) => FavoriteCubit()..getFav(),
        ),
      ],
      child: MaterialApp(debugShowCheckedModeBanner: false,
          home: RegisterScreen(),
          //CamiraScreen()
          // SplashScreen()
          //HomeScreen(),
          ),
    );
  }
}
