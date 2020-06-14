import 'package:flutter/material.dart';
import 'package:mytribe_flutter/provider/users.dart';
import 'package:mytribe_flutter/routers/app_routers.dart';
import 'package:mytribe_flutter/views/user_form.dart';
import 'package:mytribe_flutter/views/user_list.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (ctx) => Users(),
        ),
      ],
      child: MaterialApp(
        title: 'My Tribe',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        routes: {
          AppRoutes.HOME: (_) => UserList(),
          AppRoutes.USER_FORM: (_) => UserForm()
        },
      ),
    );
  }
}