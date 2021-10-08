import 'package:flutter/material.dart';
import 'package:flutter_simple_cart/my_cart.dart';
import 'package:flutter_simple_cart/my_controller.dart';
import 'package:get/get.dart';

class TotalPage extends StatelessWidget {
  TotalPage({Key? key}) : super(key: key);

  final MyController c = Get.put(MyController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Total items',
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.blue,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Obx(() => Text('${c.sum.toString()}', style: TextStyle(
                fontSize: 40.0,
                color: Colors.redAccent
              ),)),
              SizedBox(
                height: 10,
              ),
              Container(
                width: 155,
                height: 70,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.0),
                  color: Colors.blue.shade900,
                ),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                  ),
                  onPressed: () => Get.to(() => MyCart()),
                  child: Text(
                    'Go Back',
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
