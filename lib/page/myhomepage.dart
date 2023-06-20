import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../widgets/gridview.dart';
import '../widgets/listwidget.dart';
import '../widgets/textwidget.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final TextEditingController searchbarcontroller = TextEditingController();
  var arrrecommendimg = [
    "https://hips.hearstapps.com/hmg-prod/images/easy-dinner-ideas-chicken-pot-pie-0917-1642692467.jpg?crop=1.00xw:0.834xh;0,0.0192xh&resize=980:*",
    "https://hips.hearstapps.com/hmg-prod/images/lasagna-soup-vert-64512720747fd.jpg?crop=1.00xw:0.834xh;0,0.0738xh&resize=1200:*",
    "https://hips.hearstapps.com/hmg-prod/images/gnocchi-with-creamed-spinach-644ae3db44882.jpg?crop=1.00xw:0.836xh;0,0.0205xh&resize=1200:*",
    "https://hips.hearstapps.com/hmg-prod/images/migas-with-chorizo-644aea730ba5f.jpg?crop=1.00xw:0.836xh;0,0.108xh&resize=1200:*",
    "https://hips.hearstapps.com/hmg-prod/images/salmon-and-creamed-spinach-fettuccini-644bc411920f1.jpg?crop=1.00xw:0.835xh;0,0.0288xh&resize=1200:*",
    "https://hips.hearstapps.com/hmg-prod/images/easy-dinner-ideas-tuna-melt-64529b179c289.jpg?crop=1.00xw:0.834xh;0,0.0341xh&resize=980:*",
    "https://hips.hearstapps.com/hmg-prod/images/easy-dinner-ideas-chicken-and-veggies-stir-fry-6452a10aa5c3f.jpg?crop=0.536xw:1.00xh;0,0&resize=980:*",
    "https://hips.hearstapps.com/hmg-prod/images/easy-dinner-ideas-chicken-marsala-1642715952.jpg?crop=1xw:0.9998662386302836xh;center,top&resize=980:*",
    "https://hips.hearstapps.com/hmg-prod/images/easy-dinner-ideas-salisbury-steak-1642715810.jpg?crop=1xw:1xh;center,top&resize=980:*",
    "https://hips.hearstapps.com/hmg-prod/images/easy-dinner-ideas-air-fryer-fajitas-1674488607.jpg?crop=1xw:1xh;center,top&resize=980:*",
  ];
  var arrrecommenditmname = [
    'Stovetop Chicken Pot Pie',
    'Lasagna Soup',
    'Gnocchi with Spinach',
    'Migas with Chorizo',
    'Spinach Fettuccini',
    'Tuna Melt',
    'Veggies Stir Fry',
    'Chicken Marsala',
    'Salisbury Steak',
    'Air Fryer Fajitas',
  ];
  var arrpopularimg = [
    'https://hips.hearstapps.com/hmg-prod/images/easy-dinner-recipes-1676057761.jpeg?crop=1.00xw:0.502xh;0,0.229xh&resize=1200:*',
    'https://hips.hearstapps.com/hmg-prod/images/easy-dinner-ideas-crispy-gnocchi-with-sausage-1674488774.jpg?crop=0.847xw:0.848xh;0.0867xw,0.0912xh&resize=980:*',
    'https://hips.hearstapps.com/hmg-prod/images/easy-dinner-ideas-bagel-pizza-1674488855.jpg?crop=0.857xw:0.857xh;0.0697xw,0.121xh&resize=980:*',
    'https://hips.hearstapps.com/hmg-prod/images/easy-dinner-ideas-asparagus-frittata-1674488992.jpg?crop=0.861xw:0.719xh;0.0561xw,0.161xh&resize=980:*',
    'https://hips.hearstapps.com/hmg-prod/images/easy-dinner-ideas-air-fryer-enchilada-pie-1674489122.jpg?crop=0.837xw:0.698xh;0.0595xw,0.0647xh&resize=980:*',
    'https://hips.hearstapps.com/hmg-prod/images/easy-dinner-ideas-vermouth-air-fried-shrimp-1674489316.jpg?crop=0.833xw:0.696xh;0.0221xw,0.134xh&resize=980:*',
    'https://hips.hearstapps.com/hmg-prod/images/easy-dinner-ideas-stovetop-burgers-1674489414.jpg?crop=0.707xw:0.707xh;0.0323xw,0.103xh&resize=980:*',
    'https://hips.hearstapps.com/hmg-prod/images/easy-dinner-ideas-peasy-mac-n-cheesy-1674489523.jpg?crop=0.874xw:0.875xh;0,0&resize=980:*',
    'https://hips.hearstapps.com/hmg-prod/images/easy-dinner-ideas-fish-sticks-1674489637.jpg?crop=1xw:1xh;center,top&resize=980:*',
    'https://hips.hearstapps.com/hmg-prod/images/easy-dinner-ideas-grain-salad-trout-1674490196.jpg?crop=0.8382110290924881xw:1xh;center,top&resize=980:*',
  ];
  var arrpopularname = [
    'Caitlin bensel',
    'Crispy Gnocchi',
    'Bagel Pizza',
    'Asparagus Frittata',
    'Air Fryer Salsa',
    'Air Fried Shrimp',
    'Stovetop Cheeseburger',
    'Stovetop MacCheesy',
    'Cornflake Crusted',
    'Salad with Trout',
  ];
  var arrthisseasonimg = [
    'https://thespruceeats.com/thmb/JtOA_LnrhrW_TfS3MYCqlPqhUFA=/750x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/basic-congee-recipes-4065244-hero-01-5cf81547c34d4520be10bb57c6cda902.jpg',
    'https://hips.hearstapps.com/hmg-prod/images/easy-dinner-ideas-tortellini-soup-1642630358.jpg?crop=1xw:0.9999530428249437xh;center,top&resize=980:*',
    'https://hips.hearstapps.com/hmg-prod/images/easy-dinner-ideas-stir-fry-1642630003.jpg?crop=0.879xw:0.880xh;0.0678xw,0.0411xh&resize=980:*',
    'https://hips.hearstapps.com/hmg-prod/images/easy-dinner-ideas-salmon-pasta-salad-1642691416.jpg?crop=1xw:0.9849221789883269xh;center,top&resize=980:*',
    'https://hips.hearstapps.com/hmg-prod/images/easy-dinner-ideas-orange-chicken-1642716020.jpg?crop=0.9998438719750194xw:1xh;center,top&resize=980:*',
    'https://hips.hearstapps.com/hmg-prod/images/easy-dinner-ideas-fried-rice-1642629715.jpg?crop=1.00xw:1.00xh;0,0&resize=980:*',
    'https://hips.hearstapps.com/hmg-prod/images/easy-dinner-ideas-beefstroganoff-1642629794.jpg?crop=1xw:1xh;center,top&resize=980:*',
    'https://hips.hearstapps.com/hmg-prod/images/easy-dinner-ideas-quesadilla-1642629835.jpg?crop=1xw:1xh;center,top&resize=980:*',
    'https://hips.hearstapps.com/hmg-prod/images/easy-dinner-ideas-lemon-butter-broiled-salmon-1657139236.jpg?crop=1xw:1xh;center,top&resize=980:*',
    'https://hips.hearstapps.com/hmg-prod/images/easy-dinner-ideas-tunanoodlecasserole-1642629944.jpg?crop=1.00xw:1.00xh;0,0&resize=980:*',
  ];
  var arrthisseasonname = [
    'Diana Chistruga',
    'Tortellini Soup',
    'Broccoli Stir-Fry',
    'Spring Pasta ',
    'Orange Chicken',
    'Fried Rice',
    'Beef Stroganoff',
    'Chicken Quesadilla',
    'Bibb Salad',
    'Tuna Noodle Casserole',
  ];

  var arrgridimg = [
    'https://hips.hearstapps.com/hmg-prod/images/easy-dinner-ideas-fettuccinealfredo-1642629871.jpg?crop=0.9999295029961227xw:1xh;center,top&resize=980:*',
    'https://hips.hearstapps.com/hmg-prod/images/easy-dinner-ideas-cobb-salad-1642630044.jpg?crop=1xw:0.9998777904513606xh;center,top&resize=980:*',
    'https://hips.hearstapps.com/hmg-prod/images/easy-dinner-ideas-caprese-salad-1657134340.jpg?crop=0.845xw:0.705xh;0.0850xw,0.123xh&resize=980:*',
    'https://hips.hearstapps.com/hmg-prod/images/easy-dinner-ideas-crispy-pan-seared-salmon-1657139345.jpg?crop=1xw:1xh;center,top&resize=980:*',
    'https://hips.hearstapps.com/hmg-prod/images/easy-dinner-ideas-teriyaki-salmon-1657139781.jpg?crop=1xw:1xh;center,top&resize=980:*',
    'https://hips.hearstapps.com/hmg-prod/images/easy-dinner-ideas-chicken-pad-thai-1657136874.jpg?crop=1xw:0.9998184898354308xh;center,top&resize=980:*',
    'https://hips.hearstapps.com/hmg-prod/images/easy-dinner-ideas-tex-mex-chicken-meatballs-1657136552.jpg?crop=1xw:1xh;center,top&resize=980:*',
    'https://hips.hearstapps.com/hmg-prod/images/easy-dinner-ideas-salmon-in-foil-1657139879.jpg?crop=1xw:0.9997849154000573xh;center,top&resize=980:*',
    'https://hips.hearstapps.com/hmg-prod/images/easy-dinner-ideas-shrimp-fettuccini-1642630241.jpg?crop=0.899xw:0.900xh;0.0123xw,0&resize=980:*',
    'https://hips.hearstapps.com/hmg-prod/images/easy-dinner-ideas-sweet-and-sour-chicken-meatballs-1657136693.jpg?crop=1xw:1xh;center,top&resize=980:*',
    'https://hips.hearstapps.com/hmg-prod/images/easy-dinner-ideas-swedish-meatballs-with-chicken-1657137112.jpg?crop=1xw:1xh;center,top&resize=980:*',
    'https://hips.hearstapps.com/hmg-prod/images/easy-dinner-ideas-roasted-chicken-1642631271.jpg?crop=0.8066298342541437xw:1xh;center,top&resize=980:*',
    'https://hips.hearstapps.com/hmg-prod/images/easy-dinner-ideas-pear-prosciutto-pizza-1642715633.jpg?crop=1.00xw:0.834xh;0,0.0438xh&resize=980:*',
    'https://hips.hearstapps.com/hmg-prod/images/easy-dinner-ideas-air-fry-shrimp-1642631401.jpg?crop=1xw:0.9373828271466067xh;center,top&resize=980:*',
    'https://hips.hearstapps.com/hmg-prod/images/easy-dinner-ideas-salmon-with-spinach-royalty-free-1642631536.jpg?crop=0.534xw:1.00xh;0.312xw,0&resize=980:*',
    'https://hips.hearstapps.com/hmg-prod/images/easy-dinner-ideas-creamy-pumpkin-pasta-1642631585.jpg?crop=1xw:0.8333333333333334xh;center,top&resize=980:*',
    'https://hips.hearstapps.com/hmg-prod/images/easy-dinner-ideas-shrimp-couscous-1642631887.jpg?crop=1.00xw:0.968xh;0,0.0318xh&resize=980:*',
    'https://hips.hearstapps.com/hmg-prod/images/easy-dinner-ideas-crispy-chicken-thighs-1642691794.jpg?crop=1xw:0.9998010346199762xh;center,top&resize=980:*',
    'https://hips.hearstapps.com/hmg-prod/images/easy-dinner-ideas-hot-dogs-with-quick-cast-iron-beans-1642691868.jpg?crop=1.00xw:0.834xh;0,0.0781xh&resize=980:*',
    'https://hips.hearstapps.com/hmg-prod/images/easy-dinner-ideas-strip-steak-mashed-potatoes-1642692047.jpg?crop=1xw:0.9452160493827161xh;center,top&resize=980:*',
    'https://hips.hearstapps.com/hmg-prod/images/easy-dinner-ideas-skillet-chicken-brussels-sprouts-apples-0917-1642692507.jpg?crop=1.00xw:0.834xh;0,0.0822xh&resize=980:*',
    'https://hips.hearstapps.com/hmg-prod/images/easy-dinner-ideas-butternut-squash-ravioli-1642694822.jpg?crop=1.00xw:0.835xh;0,0.0700xh&resize=980:*',
    'https://hips.hearstapps.com/hmg-prod/images/easy-dinner-ideas-parm-chicken-tomatoes-1642695322.jpg?crop=1.00xw:0.834xh;0,0.107xh&resize=980:*',
    'https://hips.hearstapps.com/hmg-prod/images/easy-dinner-ideas-crispy-roast-carrots-1642695670.jpg?crop=1.00xw:0.835xh;0,0.0672xh&resize=980:*',
    'https://hips.hearstapps.com/hmg-prod/images/easy-dinner-ideas-dijon-chicken-legs-brccolini-0917-1642697468.jpg?crop=1.00xw:0.834xh;0,0.104xh&resize=980:*',
    'https://hips.hearstapps.com/hmg-prod/images/easy-dinner-ideas-chicken-salsa-verde-1642702745.jpg?crop=1xw:0.9358288770053476xh;center,top&resize=980:*',
  ];

  var arrgridname = [
    'Easy - Peasy Fettuccini Alfredo',
    'Cobb Salad',
    'Caprese Pasta Salad',
    'Crispy Pan-Seared Salmon with Broiled Broccolini and Capers',
    'Teriyaki Salmon with Crispy Roasted Broccoli',
    'Ground Chicken Pad Thai',
    'Tex-Mex Chicken Meatballs',
    'Salmon in Foil with Vegetables',
    'Shrimp Scampi Pasta',
    'Sweet-and-Sour Chicken Meatballs',
    'Swedish Meatballs with Chicken',
    'Chicken Thighs with White Beans and Escarole',
    'Pear, Prosciutto, and Goat Cheese Pizza with Arugula',
    'Super Fast Scampi-Style Air Fryer Shrimp',
    'Easy Marinated Air Fryer Salmon',
    'Creamy Pumpkin Pasta with Pine Nut Gremolata',
    'Herbes de Provence Shrimp with Basil and Pea Couscous',
    'Crispy Chicken Thighs with Garlic and Rosemary',
    'Hot Dogs with Quick Cast-Iron Beans',
    'Strip Steak with Lemon Mashed Potatoes',
    'Skillet Chicken with Brussels Sprouts and Apples',
    'Butternut Squash Ravioli with Seared Chicken',
    'Roasted Parmesan Chicken and Tomatoes',
    'Crispy Chicken with Roasted Carrots and Couscous',
    'Dijon-Smothered Chicken Legs with Broccolini',
    'Crispy Chicken Thighs with Peppers and Salsa Verde',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        systemOverlayStyle: SystemUiOverlayStyle.dark,
        toolbarHeight: 0,
      ),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              style: const TextStyle(fontSize: 16),
              controller: searchbarcontroller,
              decoration: InputDecoration(
                  hintText: 'Discover Tasty Food',
                  focusedBorder: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(11)),
                    borderSide: BorderSide(color: Colors.purple, width: 3),
                  ),
                  enabledBorder: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(11)),
                      borderSide: BorderSide(color: Colors.green)),
                  suffixIcon: IconButton(
                    icon: const Icon(Icons.clear),
                    color: Colors.black87,
                    onPressed: () {
                      searchbarcontroller.clear();
                    },
                  ),
                  prefixIcon: IconButton(
                    icon: const Icon(Icons.search_rounded),
                    color: Colors.black87,
                    onPressed: () {},
                  )),
            ),
          ),
          Flexible(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  const textwidget(
                    value: "What we're Loving Now",
                  ),
                  Padding(
                    padding: const EdgeInsets.all(11.0),
                    child: Stack(children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10.0),
                        child: Image.network(
                            'https://hips.hearstapps.com/hmg-prod/images/easy-dinner-ideas-pancetta-linguini-1642702375.jpg?crop=1.00xw:0.935xh;0,0.00768xh&resize=980:*'),
                      ),
                      const Positioned(
                          bottom: 3,
                          left: 55,
                          child: Text(
                            "Let's Try Sprouts Linguini",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 20),
                          ))
                    ]),
                  ),
                  const textwidget(value: 'Recommended For You'),
                  SizedBox(
                      width: double.infinity,
                      height: 250,
                      child: Listwidget(
                          imageData: arrrecommendimg,
                          name: arrrecommenditmname)),
                  const textwidget(value: 'Popular Recipes This Week'),
                  SizedBox(
                      width: double.infinity,
                      height: 250,
                      child: Listwidget(
                          imageData: arrpopularimg, name: arrpopularname)),
                  const textwidget(value: 'Try New This Season'),
                  SizedBox(
                      width: double.infinity,
                      height: 250,
                      child: Listwidget(
                          imageData: arrthisseasonimg,
                          name: arrthisseasonname)),
                  const textwidget(
                    value: 'Something New',
                  ),
                  SizedBox(
                    child: MansonryGridTile(
                        imageData: arrgridimg, name: arrgridname),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
