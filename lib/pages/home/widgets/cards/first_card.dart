import 'package:flutter/material.dart';

class FirstCard extends StatelessWidget {
  const FirstCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
        borderRadius: BorderRadius.circular(5),
        child: Column(
          children: [
            Expanded(
                flex: 3,
                child: Container(
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                                padding: EdgeInsets.all(20),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.credit_card,
                                      color: Colors.grey,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      "Cartão de Crédito",
                                      style: TextStyle(
                                          color: Colors.grey, fontSize: 13),
                                    )
                                  ],
                                )),
                            Padding(
                                padding: EdgeInsets.only(
                                    left: 20, top: 20, bottom: 20),
                                child: SizedBox(
                                    width: double.infinity,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "FATURA ATUAL",
                                          textAlign: TextAlign.start,
                                          style: TextStyle(
                                              color: Colors.teal,
                                              fontSize: 13,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text.rich(
                                          TextSpan(text: "R\$ ", children: [
                                            TextSpan(
                                                text: "600",
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.bold)),
                                            TextSpan(text: ",50")
                                          ]),
                                          style: TextStyle(
                                            color: Colors.teal,
                                            fontSize: 28,
                                          ),
                                        ),
                                        Text.rich(
                                          TextSpan(
                                              text: "Limite disponível ",
                                              children: [
                                                TextSpan(
                                                    text: " R\$ 2.200,95",
                                                    style: TextStyle(
                                                        color: Colors.green,
                                                        fontWeight:
                                                            FontWeight.bold)),
                                              ]),
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 12,
                                          ),
                                        )
                                      ],
                                    ))),
                            SizedBox(height: MediaQuery.of(context).size.height * 0.05,)
                          ],
                        ),
                      ),
                      Padding(
                          padding: EdgeInsets.only(
                              top: 8, bottom: 12, left: 10, right: 15),
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(5),
                              child: Container(
                                child: Column(
                                  children: [
                                    Expanded(
                                      child: Container(
                                        color: Colors.orange,
                                      ),
                                      flex: 3,
                                    ),
                                    Expanded(
                                      child: Container(
                                        color: Colors.blue,
                                      ),
                                      flex: 1,
                                    ),
                                    Expanded(
                                      child: Container(
                                        color: Colors.green,
                                      ),
                                      flex: 2,
                                    ),
                                  ],
                                ),
                                width: 7,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                ),
                              )))
                    ],
                  ),
                )),
            Expanded(
                flex: 1,
                child: Container(
                  child: Padding(
                    padding: EdgeInsets.all(20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.shopping_cart,
                          color: Colors.grey,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Flexible(
                            child: Text(
                          "Compra mais recente em Supermercado no valor de R\$ 254,00 sexta",
                          style: TextStyle(color: Colors.black, fontSize: 13),
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
}
