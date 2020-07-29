import 'package:flutter/material.dart';
import 'package:flutter_pet_app/theme/constant.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CardBuild extends StatelessWidget {
  
  final String imgCard;
  final String textTitle;
  final String textLocal;
  final String textMembers;
  final String textOrg;
  
  const CardBuild({
    Key key, this.imgCard, this.textTitle, this.textLocal, this.textMembers, this.textOrg,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 30, bottom: 10),
      child: Container(
        decoration: BoxDecoration(
          color: textWhite,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            blurRadius: 8,
            offset: Offset(3, 1)
          )],
        ),
        child: Container(
          width: 250,
          child: Column(
            children: <Widget>[
              Image.asset(imgCard),
              Padding(
                padding: EdgeInsets.all(18),
                child: Column(
                  children: <Widget>[
                    Text(
                      textTitle,
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, height: 1.0),
                    ),

                    SizedBox(height: 10),
                    Row(
                      children: <Widget>[
                        Icon(FontAwesomeIcons.mapMarkerAlt, size: 17,),
                        SizedBox(width: 15,),
                        Text(textLocal, style: contentBlack,),
                      ],
                    ),
                    
                    SizedBox(height: 10),
                    Row(
                      children: <Widget>[
                        Icon(FontAwesomeIcons.users, size: 17,),
                        SizedBox(width: 15,),
                        Text(textMembers, style: contentBlack,),
                      ],
                    ),
                    
                    SizedBox(height: 10),
                    Row(
                      children: <Widget>[
                        Icon(Icons.account_circle, size: 22,),
                        SizedBox(width: 10,),
                        RichText(text: TextSpan(
                          text: 'Organizado por ',
                          style: contentBlack,
                          children: <TextSpan>[
                            TextSpan(
                              text: textOrg,
                              style: TextStyle(color: primary)
                            )
                          ],
                        ),)
                      ],
                    ),
                  ]
                ),
              ),
            ],
          )
        ),
      ),
    );
  }
}