import 'package:flutter/material.dart';
import 'package:sh_mobiledev_proj_2/models/money.dart';
import 'screens.dart';

class Cart extends StatelessWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<MoneyMoodel> breakdown = [
      MoneyMoodel(title: "Set up Microwave", price: "\$22"),
      MoneyMoodel(title: "Repair Microwave", price: "\$80")
    ];

    var size = MediaQuery.of(context);
    return Scaffold(
      backgroundColor: const Color(0xffF9F9F9),
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              right: 0,
              child: Opacity(
                  opacity: 0.1,
                  child: Image.asset(
                    "assets/images/owk.png",
                    scale: 0.75,
                  )),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    child: Column(
                      children: [
                        SizedBox(
                          child: Padding(
                            padding: EdgeInsets.only(
                                top: size.size.height * 0.05,
                                bottom: size.size.height * 0.07),
                            child: Row(
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (_) => SignUpScreen()));
                                  },
                                  child: const Icon(
                                    Icons.navigate_before,
                                    size: 48,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                      left: size.size.width * 0.25),
                                  child: Text(
                                    "Cart",
                                    style: TextStyle(
                                        color: const Color(0xff1B1B1D),
                                        fontSize: size.size.width * 0.06,
                                        fontFamily: "Gotham"),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          // width: double.maxFinite,
                          child: Column(
                            children: [
                              NewList(
                                leading: Icons.microwave,
                                title: "Fix Microwave",
                                sub: "Kitchen",
                                widget: Column(
                                  children: List.generate(
                                      breakdown.length,
                                      (index) => ListNew(
                                            title: breakdown[index].title,
                                            price: breakdown[index].price,
                                          )),
                                ),
                              ),
                              const NewList(
                                leading: Icons.phone_forwarded_sharp,
                                title: "Fix Fridge",
                                sub: "Kitchen",
                                trailing: "\$70",
                              ),
                              const NewList(
                                leading: Icons.tv,
                                title: "Fix Computer",
                                sub: "1 service",
                                trailing: "\$135",
                              ),
                              const NewList(
                                leading: Icons.local_laundry_service,
                                title: "Fix Washer",
                                sub: "1 service",
                                trailing: "\$30",
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 30.0),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 25.0, vertical: 1),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text(
                                "Total Price",
                                style: TextStyle(color: Colors.grey),
                              ),
                              Text("\$302",
                                  style: TextStyle(
                                      fontFamily: "Gotham",
                                      fontWeight: FontWeight.w700))
                            ],
                          ),
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            alignment: Alignment.center,
                            height: size.size.height * 0.07,
                            width: double.maxFinite,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: Colors.black,
                            ),
                            child: const Text(
                              "Make an Order",
                              style: TextStyle(
                                  color: Colors.white, fontFamily: "Gotham"),
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ListNew extends StatelessWidget {
  final String title;
  final String price;
  const ListNew({
    required this.title,
    required this.price,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 4.0),
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
        tileColor: const Color(0xffD6E3FF),
        leading: const Icon(
          Icons.do_not_disturb_on_rounded,
          color: Color(0xf3CA1414),
        ),
        title: Text(
          title,
          style: const TextStyle(fontFamily: "Gotham"),
        ),
        trailing: Text(
          price,
          style: const TextStyle(fontFamily: "Gotham"),
        ),
      ),
    );
  }
}

class NewList extends StatelessWidget {
  const NewList(
      {Key? key,
      required this.leading,
      required this.title,
      required this.sub,
      this.widget,
      this.trailing})
      : super(key: key);

  final IconData leading;
  final String title;
  final String sub;
  final String? trailing;
  final Widget? widget;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            margin: trailing == null
                ? const EdgeInsets.only(bottom: 0.0)
                : const EdgeInsets.only(bottom: 24.0),
            width: double.maxFinite,
            height: 65,
            decoration: BoxDecoration(
                color: const Color(0xffF1F4FD),
                borderRadius: BorderRadius.circular(12.0)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(
                          right: MediaQuery.of(context).size.width * 0.1),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 5, vertical: 5),
                      decoration: BoxDecoration(
                          color: const Color(0xffC7D9FF),
                          borderRadius: BorderRadius.circular(5)),
                      child: Icon(
                        leading,
                        color: Colors.white,
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          title,
                          style: const TextStyle(
                              fontFamily: "Gotham", fontSize: 16),
                        ),
                        Text(
                          sub,
                          style: const TextStyle(
                            fontFamily: "Gotham",
                            fontSize: 12,
                            height: 1.5,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                trailing == null
                    ? const Icon(
                        Icons.navigate_next,
                        size: 40,
                        color: Color(0xff1B1B1D),
                      )
                    : Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 18.0),
                            child: Text(
                              trailing!,
                              style: const TextStyle(
                                  fontFamily: "Gotham", color: Colors.grey),
                            ),
                          ),
                          const Icon(
                            Icons.navigate_next,
                            size: 40,
                            color: Color(0xff1B1B1D),
                          ),
                        ],
                      ),
              ],
            )),
        Padding(
          padding: trailing == null
              ? const EdgeInsets.only(bottom: 10.0)
              : const EdgeInsets.all(0.0),
          child: Offstage(offstage: false, child: widget),
        ),
      ],
    );
  }
}
