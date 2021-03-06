import 'package:flutter/material.dart';
import 'package:my_portfolio/Screens/Contato/contato.dart';
import 'package:my_portfolio/Screens/MeusTrabalhos/Projetos/Appjur/appjur.dart';
import 'package:my_portfolio/Screens/MeusTrabalhos/Projetos/Parceiro/parceiro.dart';
import 'package:my_portfolio/Screens/MeusTrabalhos/Projetos/Pitacofut/pitacofut.dart';
import 'package:my_portfolio/Screens/MeusTrabalhos/Projetos/Skill/skill.dart';
import 'package:my_portfolio/Screens/Sobre/sobre.dart';
import 'package:my_portfolio/Widgets/Botao/button_row.dart';
import 'package:my_portfolio/Widgets/BotoesTopo/botoes_topo.dart';
import 'package:my_portfolio/Widgets/Imagem_Fundo/imagem_fundo.dart';
import 'package:my_portfolio/Widgets/NextBackButton/next_back_button.dart';
import 'package:my_portfolio/styles/styles.dart';
import 'Projetos/Pettech/pettech.dart';

class MeusTrabalhos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.white,
          title: BotoesTopo(),
          centerTitle: true,
          elevation: 8,
        ),
        backgroundColor: Colors.grey[900],
        body: Stack(children: [
          ImagemFundo(),
          Container(
              child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  alignment: Alignment.topCenter,
                  margin: EdgeInsets.all(8),
                  child: Text(
                    "Meus projetos como Freelancer",
                    textAlign: TextAlign.center,
                    style: Styles().styleWhiteBigger,
                  ),
                ),
                ButtonRow(
                    icon: Icon(
                      Icons.open_in_browser,
                      color: Colors.green,
                    ),
                    title: "Meu perfil na plataforma",
                    link: "https://freelancer.com.br/perfil/pedro-f68389"),
                Pettech(),
                Appjur(),
                Parceiro(),
                Skill(),
                Pitacofut(),
              ],
            ),
          )),
          NextBackButton(
            alignment: Alignment.centerLeft,
            icone: Icons.arrow_back_ios,
            widget: Sobre(),
            dx: -1,
          ),
          NextBackButton(
            alignment: Alignment.centerRight,
            icone: Icons.arrow_forward_ios,
            widget: Contato(),
            dx: 1,
          ),
        ]));
  }
}
