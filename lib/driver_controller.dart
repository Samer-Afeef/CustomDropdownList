
import 'package:flutter/material.dart';

import 'driver_model.dart';


class DriverController extends ChangeNotifier {

  List<DriverModel> drivers = [
    DriverModel(id: 1, name: "حمود السمة",),
    DriverModel(id: 2, name: "علي عطيفة",),
    DriverModel(id: 3, name: "حسين محب",),
    DriverModel(id: 4, name: "ابو بكر سالم",),
    DriverModel(id: 5, name: "صلاح الاخفش",),
  ];
  String? driverName = "اختر السائق";
  String driverID = "";

  void update() async {
    notifyListeners();
  }

}