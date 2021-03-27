import 'package:flutter/material.dart';
import 'package:NuClone/store/store.dart';
import 'package:get/get.dart';

class HeaderWidget extends StatelessWidget {
  final storeController = Get.put(StoreController());

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Olá, Lucas",
            style: Theme.of(context).textTheme.headline1,
          ),
          SizedBox(width: 20),
          Row(
            children: [
              IconButton(
                icon: Obx(
                  () => Icon(
                    storeController.visible.value
                        ? Icons.visibility
                        : Icons.visibility_off,
                    color: Theme.of(context).primaryColorLight,
                  ),
                ),
                onPressed: () {
                  storeController.change();
                },
              ),
              IconButton(
                icon: Icon(
                  Icons.settings,
                  color: Theme.of(context).primaryColorLight,
                ),
                onPressed: () {},
              ),
            ],
          )
        ],
      ),
    );
  }
}
