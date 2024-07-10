import 'package:flutter/material.dart';

import 'driver_controller.dart';


class CustomDropdown extends StatefulWidget {


  const CustomDropdown({super.key});

  @override
  State<CustomDropdown> createState() => _CustomDropdownState();
}

class _CustomDropdownState extends State<CustomDropdown> {

  final DriverController driverController = DriverController() ;
  init() {
    driverController.addListener(() {
      if (mounted) {
        setState(() {});
      }
    });
  }
@override
  void initState() {
   init();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          padding: const EdgeInsets.symmetric(vertical:16,horizontal: 10),
          margin: const EdgeInsets.symmetric(vertical:16,),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16.0),
              color: Colors.white
          ),
          child: InkWell(
            onTap:  () {
              showModalBottomSheet(
                context: context,
                builder: (context) {
                  return Directionality(
                    textDirection: TextDirection.rtl,
                    child: Container(
                        width: double.infinity,
                        padding: const EdgeInsets.all(20),
                        child: ListView.builder(
                          itemCount:driverController.drivers.length,itemBuilder: (context, index) => ListTile(title: Text("${driverController.drivers[index].name}"),onTap: () {
                          driverController.driverName = "${driverController.drivers[index].name}";
                          driverController.driverID = "${driverController.drivers[index].id}";
                          //  print("Driver ID is : ${orderDetailsController?.driverID}");
                          driverController.update();
                          Navigator.pop(context);
                        },),)
                    ),
                  );
                },);
            },
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  color: Colors.white,
                  border: Border.all(color: Colors.purple,width: 1)
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16,),
                        child: Text(driverController.driverName ?? '')),
                    const Icon(Icons.arrow_drop_down,color: Colors.black,),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
