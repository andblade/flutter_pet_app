import 'package:flutter/material.dart';
import 'package:flutter_pet_app/theme/constant.dart';

class DestaqueDIa extends StatelessWidget {
  const DestaqueDIa({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      width: double.infinity,
      child: Stack(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 12),
            child: Container(
              height: 70,
              width: double.infinity,
              decoration: BoxDecoration(
                color: primary,
                borderRadius: BorderRadius.circular(15),
                boxShadow: [ BoxShadow( color: primary, blurRadius: 1.5)]
              ),
              child: Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: EdgeInsets.only(left: 80, right: 10),
                  child: Text('Lola está perdida no seu bairro! Ajude-nos a encontrá-la!', style: contentWhite),
                ),
              ),
            ),
          ),
          Container(
            child: Image.asset('img/lolo_dog.png'),
          ),
        ],
      ),
    );
  }
}