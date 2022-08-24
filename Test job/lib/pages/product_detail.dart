import 'package:flutter/material.dart';


class ProductDetailPage extends StatelessWidget {
  // final ProductList productList;
  const ProductDetailPage({
    Key? key,
    /*required this.productList*/
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * .6,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/black_1.jpg"),
                      fit: BoxFit.cover)),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                padding: EdgeInsets.only(top: 20, left: 20, right: 20),
                height: MediaQuery.of(context).size.height * .5,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 236, 217, 217),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(.2),
                        offset: Offset(0, -4),
                        blurRadius: 8,
                      ),
                    ]),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Hoodie",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "for man",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          CircleAvatar(
                            radius: 40,
                            backgroundColor: Color.fromARGB(255, 208, 61, 20),
                            child: Center(
                              child: Text(
                                "-11%",
                                style: TextStyle(
                                    fontSize: 31,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),
                            ),
                          )
                        ],
                      ),
                      flex: 8,
                    ),
                    Expanded(
                      flex: 12,
                      child: Row(
                        children: [
                          Expanded(
                              flex: 2,
                              child: Column(
                                children: [
                                  Container(
                                    margin: EdgeInsets.all(5),
                                    height: 80,
                                    width: double.infinity,
                                    child: Image(
                                      image: AssetImage("assets/white_1.jpg"),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Text("White small"),
                                ],
                              )),
                          Expanded(
                              flex: 2,
                              child: Column(
                                children: [
                                  Container(
                                    margin: EdgeInsets.all(5),
                                    height: 80,
                                    width: double.infinity,
                                    child: Image(
                                      image: AssetImage("assets/white_1.jpg"),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Text("White large"),
                                ],
                              )),
                          Expanded(
                              flex: 2,
                              child: Column(
                                children: [
                                  Container(
                                    margin: EdgeInsets.all(5),
                                    height: 80,
                                    width: double.infinity,
                                    child: Image(
                                      image: AssetImage("assets/black_1.jpg"),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Text("Black small"),
                                ],
                              )),
                          Expanded(
                              flex: 2,
                              child: Column(
                                children: [
                                  Container(
                                    margin: EdgeInsets.all(5),
                                    height: 80,
                                    width: double.infinity,
                                    child: Image(
                                      image: AssetImage("assets/black_1.jpg"),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Text("Black large"),
                                ],
                              )),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: Row(
                        children: [
                          Expanded(
                            flex: 2,
                            child: Container(
                              decoration: BoxDecoration(
                                color: Color.fromARGB(255, 30, 165, 223),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              margin: EdgeInsets.only(
                                  left: 35, right: 35, bottom: 5),
                              child: Center(child: Text("400 tk")),
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Container(
                              margin: EdgeInsets.only(
                                  left: 35, right: 35, bottom: 5),
                              decoration: BoxDecoration(
                                color: Color.fromARGB(255, 30, 165, 223),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Center(child: Text("Add to cart")),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
