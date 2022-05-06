import 'package:flutter/material.dart';

class CategoryAllListModel {
  const CategoryAllListModel(this.name,
      [this.catlist = const <CategoryAllListModel>[]]);

  final String name;
  final List<CategoryAllListModel> catlist;
}

const List<CategoryAllListModel> categoryAllListData = <CategoryAllListModel>[
  CategoryAllListModel(
    'A',
    <CategoryAllListModel>[
      CategoryAllListModel('Medicine A1'),
      CategoryAllListModel('Medicine A2'),
    ],
  ),
  CategoryAllListModel(
    'B',
    <CategoryAllListModel>[
      CategoryAllListModel('Medicine B0'),
      CategoryAllListModel('Medicine B1'),
    ],
  ),
  CategoryAllListModel('C',
  <CategoryAllListModel>[
      CategoryAllListModel('Medicine C0'),
      CategoryAllListModel('Medicine C1'),
    ],
  ),
  CategoryAllListModel('D'),
  CategoryAllListModel('E'),
  CategoryAllListModel('F'),
  CategoryAllListModel('G'),
  CategoryAllListModel('H'),
  CategoryAllListModel('I'),
  CategoryAllListModel('J'),
  CategoryAllListModel('K'),
  CategoryAllListModel('L'),
  CategoryAllListModel('M'),
  CategoryAllListModel('N'),
  CategoryAllListModel('O'),
  CategoryAllListModel('P'),
  CategoryAllListModel('Q'),
  CategoryAllListModel('R'),
  CategoryAllListModel('S'),
  CategoryAllListModel('T'),
  CategoryAllListModel('U'),
  CategoryAllListModel('V'),
  CategoryAllListModel('W'),
  CategoryAllListModel('X'),
  CategoryAllListModel('Y'),
  CategoryAllListModel('Z'),
];


class CategoryAllListModelItem extends StatelessWidget {
  // const CategoryAllListModel(this.name,this.catlistt);
  // final Catlist catlist;
  final CategoryAllListModel categoryAllListModel;
  const CategoryAllListModelItem(this.categoryAllListModel);

  // This function recursively creates the multi-level list rows.
  Widget _buildTiles(CategoryAllListModel root) {
    if (root.catlist.isEmpty) {
      return ListTile(
        title: Text(root.name),
      );
    }
    return ExpansionTile(
      key: PageStorageKey<CategoryAllListModel>(root),
      title: Text(root.name),
      children: root.catlist.map<Widget>(_buildTiles).toList(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return _buildTiles(categoryAllListModel);
  }
}

void main() {
  runApp(MyApp());
}

class Palette { 
  static const MaterialColor kToDark = const MaterialColor( 
    0xfffa7e61, // 0% comes in here, this will be color picked if no shade is selected when defining a Color property which doesn’t require a swatch. 
    const <int, Color>{ 
      50: const Color(0xffffedb9), //10%
      100: const Color(0xfffee1c7), //20% 
      200: const Color(0xfff97068), //30% 
      300: const Color(0xfffa7e61),//40% 
      400: const Color(0xff733024),//50% 
      500: const Color(0xff5c261d),//60% 
      600: const Color(0xff451c16),//70% 
      700: const Color(0xff2e130e),//80% 
      800: const Color(0xff170907),//90% 
      900: const Color(0xff000000),//100% 
    }, 
  ); 
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Palette.kToDark,
      ),
      home: MyHomePage(title: 'Drugs'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key ?key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title, 
                      textAlign: TextAlign.center, 
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold))),
        body: ListView.builder(
            itemCount: categoryAllListData.length,
            itemBuilder: (BuildContext context, int index) =>
                CategoryAllListModelItem(
                  categoryAllListData[index],
                )));
  }
}