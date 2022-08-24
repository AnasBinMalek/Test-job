import 'package:flutter/material.dart';
import 'package:testjob/pages/add_product.dart';
import 'package:testjob/pages/product_list.dart';
import 'package:testjob/widget/myButton.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController mytextEditingCon = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
            leading: Icon(
              Icons.home,
              color: Colors.black45,
            ),
            actions: [
              Icon(
                Icons.settings,
                color: Colors.black45,
              ),
              SizedBox(
                width: 15,
              )
            ],
            backgroundColor: Color.fromARGB(255, 211, 239, 238),
            shadowColor: Colors.transparent,
            title: Center(
              child: Text(
                "Home Page",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            )),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(color: Color.fromARGB(255, 211, 239, 238)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                child: MyButton(Button_name: "Add a product"),
                onTap: () {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (context) => const AddProduct()));
                },
              ),
              InkWell(
                  onTap: () {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (context) => const ProductList()));
                  },
                  child: MyButton(
                    Button_name: "Product list",
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
