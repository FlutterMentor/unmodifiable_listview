import 'package:provider/provider.dart';
import 'package:unmodifiable_list_view/provider_data.dart';

import 'home.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ProviderData(),
      child: MaterialApp(
        title: 'UnmodifiableListView',
        theme: ThemeData(
          primaryColor: Color(0xFF55C1EF),
        ),
        home: Home(),
      ),
    );
  }
}
