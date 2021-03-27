import 'package:NuClone/mock/mock.dart';
import 'package:flutter/material.dart';

class MenuWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20),
      height: 100,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: MenuMock.map((item) => _card(context, item)).toList(),
        ),
      ),
    );
  }

  Widget _card(dynamic context, dynamic item) {
    return Container(
      margin: EdgeInsets.only(right: item.title != 'Me ajuda' ? 20 : 0),
      width: 100,
      color: Theme.of(context).accentColor,
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Container(
              alignment: Alignment.topLeft,
              child:
                  Icon(item.icon, color: Theme.of(context).primaryColorLight),
            ),
            // SizedBox(height: 10),
            Expanded(
              child: Container(),
            ),
            Container(
              alignment: Alignment.bottomLeft,
              child: Text(
                '${item.title}',
                style: TextStyle(color: Theme.of(context).primaryColorLight),
              ),
            )
          ],
        ),
      ),
    );
  }
}
