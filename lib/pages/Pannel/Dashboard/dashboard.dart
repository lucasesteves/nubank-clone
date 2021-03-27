import 'package:flutter/material.dart';
import 'package:NuClone/store/store.dart';
import 'package:get/get.dart';
import '../../../mock/mock.dart';

class DashboardWidget extends StatelessWidget {
  final storeController = Get.put(StoreController());

  Future<void> _refreshDash() async {
    print('refresh');
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: RefreshIndicator(
        onRefresh: () => _refreshDash(),
        child: SingleChildScrollView(
          child: Column(
            children:
                DashboardMock.map((item) => _card(context, item)).toList(),
          ),
        ),
      ),
    );
  }

  Widget _card(BuildContext context, dynamic item) {
    return Container(
      alignment: Alignment.topLeft,
      margin: EdgeInsets.only(bottom: 20),
      color: Theme.of(context).primaryColorLight,
      child: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(children: [
              Icon(item.icon, color: Theme.of(context).primaryColorDark),
              SizedBox(width: 10),
              Text(item.title, style: Theme.of(context).textTheme.headline2)
            ]),
            SizedBox(height: 10),
            Text(
              item.subtitle,
              style: Theme.of(context).textTheme.bodyText2,
            ),
            SizedBox(height: 10),
            item.currentBill != null
                ? Obx(
                    () => Text(
                      storeController.visible.value
                          ? "R\$ ${item.currentBill}"
                          : "----",
                      style: Theme.of(context).textTheme.headline3,
                    ),
                  )
                : Container(),
            SizedBox(height: 10),
            item.moneyAvaible != null
                ? Row(
                    children: [
                      item.limitText != null
                          ? Text(item.limitText)
                          : Container(),
                      SizedBox(width: 5),
                      item.moneyAvaible != null
                          ? Text(
                              "R\$ ${item.moneyAvaible}",
                              style:
                                  TextStyle(color: Theme.of(context).hintColor),
                            )
                          : Container()
                    ],
                  )
                : Container(),
            item.limitText != null && item.moneyAvaible == null
                ? Text(item.limitText)
                : Container(),
            item.button
                ? OutlinedButton(
                    style: TextButton.styleFrom(
                      primary: Theme.of(context).primaryColor,
                      side: BorderSide(color: Theme.of(context).primaryColor),
                    ),
                    child: Text(
                      item.buttonText,
                    ),
                    onPressed: () {},
                  )
                : Container(),
          ],
        ),
      ),
    );
  }
}
