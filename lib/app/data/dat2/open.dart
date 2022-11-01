import 'package:flutter/material.dart';
import 'package:restaurant_delivery_app/app/data/dat2/element1.dart';
import 'package:restaurant_delivery_app/app/data/dat2/element2.dart';
import 'package:restaurant_delivery_app/app/data/dat2/element3.dart';
import 'package:restaurant_delivery_app/app/data/dat2/element4.dart';
import 'package:restaurant_delivery_app/app/data/dat2/foodlist.dart';
import 'package:restaurant_delivery_app/app/data/dat2/total.dart';

class Open {
  static Total generate() {
    //1
    final e41 = Element4(
        image:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTgUkh6vAc_jO-wzmT_ZPdE4E0RCv8Wgxn-GA&usqp=CAU",
        d1: "Classic ramen with chiken and eggs",
        d2: "The cheeseburger is a six-ounce burger with American cheese, applewood smoked bacon, crispy onion rings, Lobel's BBQ Sauce.",
        price: "\$4.99",
        kcal: "100",
        proteins: "485",
        fat: "89",
        carbs: "89");

    final e42 = Element4(
        image:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQxzirRAeRiuvq5iJQdVw6FV2CwFgUzCHjdYg&usqp=CAU",
        d1: "Classic ramen with chiken and eggs",
        d2: "The cheeseburger is a six-ounce burger with American cheese, applewood smoked bacon, crispy onion rings.",
        price: "\$4.99",
        kcal: "100",
        proteins: "485",
        fat: "89",
        carbs: "89");

    final e43 = Element4(
        image:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTKWs3WrxFvyZDcPZuuFCSg-XRKzPhP61o8yg&usqp=CAU",
        d1: "Classic ramen with chiken and eggs",
        d2: "The cheeseburger is a six-ounce burger with American cheese, applewood smoked bacon, crispy onion rings.",
        price: "\$4.99",
        kcal: "100",
        proteins: "485",
        fat: "89",
        carbs: "89");

    final e44 = Element4(
        image:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSraci9hu2xzaBQ-IgxrHWH4C8kpCnBPYutNA&usqp=CAU",
        d1: "Classic ramen with chiken and eggs",
        d2: "The cheeseburger is a six-ounce burger with American cheese, applewood smoked bacon, crispy onion rings.",
        price: "\$4.99",
        kcal: "100",
        proteins: "485",
        fat: "89",
        carbs: "89");

    final e45 = Element4(
        image:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSqf7eBoGQBIYkszvh7MiddGMW7xYRu_gEStQ&usqp=CAU",
        d1: "Classic ramen with chiken and eggs",
        d2: "The cheeseburger is a six-ounce burger with American cheese, applewood smoked bacon, crispy onion rings.",
        price: "\$4.99",
        kcal: "100",
        proteins: "485",
        fat: "89",
        carbs: "89");

    final e46 = Element4(
        image:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSyRsW35VtZwOcJCrjtcUzUKYhSV8BCR-WvYQ&usqp=CAU",
        d1: "Classic ramen with chiken and eggs",
        d2: "The cheeseburger is a six-ounce burger with American cheese, applewood smoked bacon, crispy onion rings.",
        price: "\$4.99",
        kcal: "100",
        proteins: "485",
        fat: "89",
        carbs: "89");

    final e47 = Element4(
        image:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSl1Ma2nzvhdNRTLh_XwcRTQ7b01MuDgH1yBg&usqp=CAU",
        d1: "Classic ramen with chiken and eggs",
        d2: "The cheeseburger is a six-ounce burger with American cheese, applewood smoked bacon, crispy onion rings.",
        price: "\$4.99",
        kcal: "100",
        proteins: "485",
        fat: "89",
        carbs: "89");

    final e48 = Element4(
        image:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT3OUPJz0eyZvCHZ9JVCMQDc33V9yjXlDAKCSaeeYrrnPGug6_bJHP5hqanoytL4uT1SBE&usqp=CAU",
        d1: "Classic ramen with chiken and eggs",
        d2: "The cheeseburger is a six-ounce burger with American cheese, applewood smoked bacon, crispy onion rings.",
        price: "\$4.99",
        kcal: "100",
        proteins: "485",
        fat: "89",
        carbs: "89");
    final e4t1 = [e41, e45, e43, e47, e46, e41, e45, e46];
    final e4t2 = [e48, e48, e46, e41, e45, e44, e47, e42];
    final e4t3 = [e45, e44, e48, e46, e48, e43, e48, e48];
    final e4t4 = [e46, e43, e44, e41, e45, e46, e41, e41];
    final e4t5 = [e43, e46, e46, e43, e46, e45, e48, e42];
    final e4t6 = [e42, e45, e42, e45, e47, e46, e47, e43];
    final e4t7 = [e46, e47, e45, e47, e42, e47, e46, e44];

    final e2t1 = Element2(
        title: "Fastest Delivery",
        timer: "30 - 45min",
        image:
            "https://selecciones-1bf98.kxcdn.com/wp-content/uploads/2022/03/que-tan-malo-es-el-ramen.jpg.webp",
        name: "Noodles & Ramen",
        address: "6145 Stoltenberg Vista");
    final e2t2 = Element2(
        title: "Fastest Delivery",
        timer: "30 - 45min",
        image:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTFstnDkSmoNavuLCeOYRdlsRbvhZuZ8L00Cw&usqp=CAU",
        name: "Tacos",
        address: "845 Stephen Brook");
    final e2t3 = Element2(
        title: "Fastest Delivery",
        timer: "30 - 45min",
        image:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQDx1N5A9b1l0EnF0qLkkZO_tjAVsEBPyFulw&usqp=CAU",
        name: "Burguers",
        address: "6171 Phoebe Place	");
    final e2t4 = Element2(
        title: "Fastest Delivery",
        timer: "30 - 45min",
        image:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRvMYSog4nPtFUgQQLtheCvv7TONv65IMmoyg&usqp=CAU",
        name: "Pizzas",
        address: "586 Guiseppe Ville Suite 871	");
    final e2t5 = Element2(
        title: "Fastest Delivery",
        timer: "30 - 45min",
        image:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSHQsmcdggG2Rtq7UQvyDkKac_krs88Zh6jtA&usqp=CAU",
        name: "Sweet",
        address: "3118 Cyrus Street Apt. 447	");
    final e2t6 = Element2(
        title: "Fastest Delivery",
        timer: "30 - 45min",
        image:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTM6Jag9QO_dZtFvb4MXzTdrZqfBFMnaJ7w7w&usqp=CAU",
        name: "Sodas",
        address: "31629 Davon Bypass	");
    final e2t7 = Element2(
        title: "Fastest Delivery",
        timer: "30 - 45min",
        image:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQdmhaH1gsLPD9JArxvDQjybWXt1XzkVp8c4j825__g0-V6BbEvohTOYWbsEyCm5YCt1wQ&usqp=CAU",
        name: "Exotic Food",
        address: "18448 Dwight Way	");

    final e3t1 = Element3(
      element2: e2t1,
      cost: "\$10 - 25",
      eats: e4t1,
    );
    final e3t2 = Element3(
      element2: e2t2,
      cost: "\$10 - 25",
      eats: e4t2,
    );
    final e3t3 = Element3(
      element2: e2t3,
      cost: "\$10 - 25",
      eats: e4t3,
    );
    final e3t4 = Element3(
      element2: e2t4,
      cost: "\$10 - 25",
      eats: e4t4,
    );
    final e3t5 = Element3(
      element2: e2t5,
      cost: "\$10 - 25",
      eats: e4t5,
    );
    final e3t6 = Element3(
      element2: e2t6,
      cost: "\$10 - 25",
      eats: e4t6,
    );
    final e3t7 = Element3(
      element2: e2t7,
      cost: "\$10 - 25",
      eats: e4t7,
    );

    final e1t1 =
        Element1(name: "Noodles", iconData: Icons.ramen_dining_outlined);
    final e1t2 = Element1(name: "Tacos", iconData: Icons.food_bank_outlined);
    final e1t3 = Element1(name: "Burguers", iconData: Icons.fastfood);
    final e1t4 = Element1(name: "Pizzas", iconData: Icons.local_pizza_outlined);
    final e1t5 = Element1(name: "Sweet", iconData: Icons.desk_rounded);
    final e1t6 = Element1(name: "Sodas", iconData: Icons.bolt);
    final e1t7 = Element1(name: "Exotic Food", iconData: Icons.food_bank_sharp);

    final e1 = FoodList(
      element1: e1t1,
      element2: e2t1,
      element3: e3t1,
    );
    final e2 = FoodList(
      element1: e1t2,
      element2: e2t2,
      element3: e3t2,
    );
    final e3 = FoodList(
      element1: e1t3,
      element2: e2t3,
      element3: e3t3,
    );
    final e4 = FoodList(
      element1: e1t4,
      element2: e2t4,
      element3: e3t4,
    );
    final e5 = FoodList(
      element1: e1t5,
      element2: e2t5,
      element3: e3t5,
    );
    final e6 = FoodList(
      element1: e1t6,
      element2: e2t6,
      element3: e3t6,
    );
    final e7 = FoodList(
      element1: e1t7,
      element2: e2t7,
      element3: e3t7,
    );

    return Total(listfinal: [e1, e2, e3, e4, e5, e6, e7]);
  }
}
