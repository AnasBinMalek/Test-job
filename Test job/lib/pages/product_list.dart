
import 'package:flutter/material.dart';
import 'package:testjob/data.dart';
import 'package:testjob/pages/home.dart';
import 'package:testjob/pages/product_detail.dart';

class ProductList extends StatefulWidget {
  const ProductList({Key? key}) : super(key: key);

  @override
  State<ProductList> createState() => _ProductListState();
}

class _ProductListState extends State<ProductList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: BackButton(
            onPressed: (() {
              Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => const HomePage()));
            }),
          ),
        ),
        backgroundColor: Color.fromARGB(255, 224, 221, 221),
        body: SafeArea(
            child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(25),
              child: Padding(
                padding: const EdgeInsets.all(25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Trending',
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 22),
                    ),
                    Text(
                      'See All',
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 15),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.only(left: 25, right: 25),
                child: GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithMaxCrossAxisExtent(
                            maxCrossAxisExtent: 200,
                            childAspectRatio: 2 / 2.5,
                            crossAxisSpacing: 20,
                            mainAxisSpacing: 20),
                    itemCount: data.length,
                    itemBuilder: (BuildContext ctx, index) {
                      return Container(
                        width: double.infinity,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 239, 186, 30),
                            borderRadius: BorderRadius.circular(15)),
                        child: Column(
                          children: [
                            InkWell(
                                onTap: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) => ProductDetailPage(
                                          /*productList: data[index],*/
                                          )));
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15)),
                                  width: double.infinity,
                                  child: Image.asset(
                                    data[index]["image"],
                                    fit: BoxFit.cover,
                                  ),
                                )),
                            Container(
                              padding: EdgeInsets.symmetric(vertical: 8),
                              child: Text(data[index]['Product name']),
                            ),
                          ],
                        ),
                      );
                    }),
              ),
            )
          ],
        )));
  }
}
