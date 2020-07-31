import 'package:flutter/material.dart';
import 'package:flutter_pet_app/theme/constant.dart';
import 'package:flutter_pet_app/widgets/card_build.dart';
import 'package:flutter_pet_app/widgets/destaque_dia.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 50, left: 30, right: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  
                  // Apresentação
                  SizedBox(height: 20,),
                  Text('Olá, Anderson', style: appTitle,),
                  SizedBox(height: 10,),
                  Text('Confira os novos produtos, grupos, eventos, lugares e muito mais', style: contentBlack,),
                  SizedBox(height: 50,),

                  // Destaque do dia
                  DestaqueDIa(),

                  // Descrição
                  SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text('Grupos'.toUpperCase(), style: TextStyle(fontSize: 17),),
                      Text('Ver tudo', style: TextStyle(fontSize: 17)),
                    ],
                  ),
                  
                  // Cards
                  SizedBox(height: 20),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: <Widget>[
                        CardBuild(
                          imgCard: 'img/card_dog_1.png',
                          textTitle: 'Conheça nossos adoráveis ​​cães andando conosco',
                          textLocal: 'Itapecerica, São Paulo',
                          textMembers: '8 membros',
                          textOrg: 'Alice',
                        ),

                        CardBuild(
                          imgCard: 'img/card_dog_2.png',
                          textTitle: 'Conheça nossos adoráveis ​​cães andando conosco',
                          textLocal: 'Itapecerica, São Paulo',
                          textMembers: '8 membros',
                          textOrg: 'Alice',
                        ),
                      ],
                    ),
                  ),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

