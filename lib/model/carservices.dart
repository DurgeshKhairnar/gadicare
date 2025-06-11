import 'package:flutter/material.dart';

class Carservices {
  final String title;
  final String prices;
  final String benefites1;
  final String benefites2;

  Carservices({
    required this.title,
    required this.prices,
    required this.benefites1,
    required this.benefites2,
  });
}

class Servicescar extends ChangeNotifier{
  
  List<Carservices> carservicesList = [];

  void addCarServices({required String title, required String prices,required String benefites1,required String benefites2 }){
    carservicesList.add(
        Carservices(title: title,prices:prices,benefites1:benefites1,benefites2:benefites2)
    );
  }

}