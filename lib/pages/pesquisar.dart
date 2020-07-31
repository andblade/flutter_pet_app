import 'package:flutter/material.dart';
import 'package:flutter_pet_app/theme/constant.dart';

class Pesquisar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 70, left: 30, right: 30, bottom: 100),
            child: Column(
              children: <Widget>[
                Text('Encontre o que precisar para seu Pet', style: appTitle, textAlign: TextAlign.center,),
                SizedBox(height: 30,),

                // cards
                PesquisaCard(
                  primeiroItemTitle: 'Clínica \nVeterinária',
                  primeiroItemImg: 'img/card_1.png',
                  primeiroItemBg: card1,
                  primeiroItemColor: textWhite,

                  segundoItemTitle: 'Lugares \npara comer',
                  segundoItemImg: 'img/card_2.png',
                  segundoItemBg: card2,
                  segundoItemColor: textWhite,
                ),

                PesquisaCard(
                  primeiroItemTitle: 'Locais \npara andar',
                  primeiroItemImg: 'img/card_3.png',
                  primeiroItemBg: card3,
                  primeiroItemColor: textWhite,

                  segundoItemTitle: 'Spas e \nsalões',
                  segundoItemImg: 'img/card_4.png',
                  segundoItemBg: card4,
                  segundoItemColor: textWhite,
                ),

                PesquisaCard(
                  primeiroItemTitle: 'Lojas e \nProdutos',
                  primeiroItemImg: 'img/card_5.png',
                  primeiroItemBg: card5,
                  primeiroItemColor: textWhite,

                  segundoItemTitle: 'Grupos de \ncaminhada',
                  segundoItemImg: 'img/card_6.png',
                  segundoItemBg: card6,
                  segundoItemColor: textWhite,
                ),

                PesquisaCard(
                  primeiroItemTitle: 'Animais',
                  primeiroItemImg: 'img/card_7.png',
                  primeiroItemBg: card7,
                  primeiroItemColor: textWhite,

                  segundoItemTitle: 'Lugares \npara comer',
                  segundoItemImg: 'img/card_8.png',
                  segundoItemBg: card8,
                  segundoItemColor: textWhite,
                ),

                PesquisaCard(
                  primeiroItemTitle: 'Animais',
                  primeiroItemImg: 'img/card_7.png',
                  primeiroItemBg: card7,
                  primeiroItemColor: textWhite,

                  segundoItemTitle: 'Lugares \npara comer',
                  segundoItemImg: 'img/card_8.png',
                  segundoItemBg: card8,
                  segundoItemColor: textWhite,
                ),
                
              ]
            ),
          ),
        ]
      ),
    );
  }
}

class PesquisaCard extends StatelessWidget {
  
  final String primeiroItemImg;
  final String primeiroItemTitle;
  final Color primeiroItemBg;
  final Color primeiroItemColor;
  
  final String segundoItemImg;
  final String segundoItemTitle;
  final Color segundoItemBg;
  final Color segundoItemColor;
    
  const PesquisaCard({
    Key key,
    
    this.primeiroItemImg,
    this.primeiroItemTitle,
    this.primeiroItemBg,
    this.primeiroItemColor,
    
    this.segundoItemImg,
    this.segundoItemTitle,
    this.segundoItemBg,
    this.segundoItemColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 0),
      child: Row(
        children: <Widget>[
          
          Flexible(
            child: Container(
              width: double.infinity,
              height: 140,
              child: Stack(
                children: <Widget>[
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      width: double.infinity,
                      height: 100,
                      decoration: BoxDecoration(
                        color: primeiroItemBg,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: EdgeInsets.only(left: 6),
                          child: Text(primeiroItemTitle, style: TextStyle(fontSize: 13, height: 1.2, color: primeiroItemColor)),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    right: -25,
                    top: -12,
                    child: Align(
                      alignment: Alignment.topRight,
                      child: Image.asset(primeiroItemImg, width: 150,),
                    ),
                  ),
                ],
              )
            ),
          ),

          SizedBox(
            width: 20,
          ),

          Flexible(
            child: Container(
              width: double.infinity,
              height: 140,
              child: Stack(
                children: <Widget>[
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      width: double.infinity,
                      height: 100,
                      decoration: BoxDecoration(
                        color: segundoItemBg,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: EdgeInsets.only(left: 6),
                          child: Text(segundoItemTitle, style: TextStyle(fontSize: 13, height: 1.2, color: segundoItemColor)),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    right: -25,
                    top: -5,
                    child: Align(
                      alignment: Alignment.topRight,
                      child: Image.asset(segundoItemImg),
                    ),
                  ),
                ],
              )
            ),
          ),
          
        ],
      ),
    );
  }
}