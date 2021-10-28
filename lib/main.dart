import 'package:flutter/material.dart';
import 'package:flutter_app_iot4/views/foodlist_ui.dart';

main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FoodListUI(),
      theme: ThemeData(
        fontFamily: 'Kanit',
      ),
    ),
  );
}