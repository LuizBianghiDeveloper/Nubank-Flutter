import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SecondCard extends StatefulWidget {
  @override
  _SecondCardState createState() => _SecondCardState();
}

class _SecondCardState extends State<SecondCard> with AutomaticKeepAliveClientMixin {
  bool _showSaldo = false;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
        borderRadius: BorderRadius.circular(5),
        child: Column(
          children: [
            Expanded(
                flex: 3,
                child: Container(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                        padding: EdgeInsets.all(20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.attach_money,
                                  color: Colors.grey,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "Conta",
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 13),
                                )
                              ],
                            ),
                            GestureDetector(
                              child: SvgPicture.asset(
                                !_showSaldo ? 'assets/icons/eye-off-outline.svg' : 'assets/icons/eye-check-outline.svg',
                                color: Colors.grey,
                                semanticsLabel: 'disabe_eye',
                              ),
                              onTap: (){
                                setState(() {
                                  _showSaldo = !_showSaldo;
                                });
                              },
                            )
                          ],
                        )),
                    Padding(
                        padding: EdgeInsets.only(left: 20, top: 20, bottom: 20),
                        child: SizedBox(
                            width: double.infinity,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Saldo disponível",
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 13),
                                ),
                                _showSaldo ?
                                Text.rich(
                                  TextSpan(
                                    text: "R\$ 2845,78",
                                  ),
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 28,
                                  ),
                                ) :
                                    Container(
                                      height: 34,
                                      width: 160,
                                      color: Colors.grey[300],
                                    )
                              ],
                            ))),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.05,
                    )
                  ],
                ))),
            Expanded(
                flex: 1,
                child: Container(
                  child: Padding(
                    padding: EdgeInsets.all(20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.credit_card,
                          color: Colors.grey,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Flexible(
                            child: Text(
                          "Compra mais recente em Centauro no valor de R\$ 74,00 sexta",
                          style: TextStyle(color: Colors.black, fontSize: 15),
                        )),
                        Icon(
                          Icons.chevron_right,
                          color: Colors.grey[400],
                          size: 18,
                        ),
                      ],
                    ),
                  ),
                  color: Colors.grey[200],
                ))
          ],
        ));
  }

  @override
  bool get wantKeepAlive => true;
}
