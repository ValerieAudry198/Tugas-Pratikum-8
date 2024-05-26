import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';
import 'cart_item.dart';
import 'food_menu.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SUKA CAFE',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
        appBarTheme: AppBarTheme(
          foregroundColor: Colors.white,
        ),
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        backgroundColor: Color.fromARGB(255, 180, 167, 92),
      ),
      body: Stack(
        children: <Widget>[
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                const SizedBox(height: 65),
                const Text(
                  'WELCOME',
                  style: TextStyle(
                    color: Color(0XFF6E4333),
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Text(
                  'To Suka Cafe',
                  style: TextStyle(
                    color: Color(0XFF6E4333),
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => MenuPage()),
                        );
                      },
                      child: const Text('Our Menu'),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0XFF6E4333),
                        foregroundColor: Colors.white,
                        textStyle: const TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const SizedBox(width: 30),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => AboutPage()),
                        );
                      },
                      child: const Text('About Us'),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0XFF6E4333),
                        foregroundColor: Colors.white,
                        textStyle: const TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class MenuPage extends StatefulWidget {
  @override
  _MenuPageState createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  List<FoodMenu> foodMenus = [
    FoodMenu(
      imageUrl:
          'https://plus.unsplash.com/premium_photo-1705412929013-459dc9b90652?q=80&w=1472&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      name: 'Pasta',
      price: 45000,
    ),
    FoodMenu(
      imageUrl:
          'https://images.unsplash.com/photo-1710508836763-870d58493662?q=80&w=1522&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      name: 'Beef Bourguignon',
      price: 55000,
    ),
    FoodMenu(
      imageUrl:
          'https://images.unsplash.com/photo-1623961990059-28356e226a77?q=80&w=1471&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      name: 'Seafood Paella',
      price: 135000,
    ),
    FoodMenu(
      imageUrl:
          'https://plus.unsplash.com/premium_photo-1691664005940-be81f9ffd18a?q=80&w=1374&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      name: 'Pastel de Nata',
      price: 105000,
    ),
    FoodMenu(
      imageUrl:
          'https://images.unsplash.com/photo-1625943555419-56a2cb596640?q=80&w=1480&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      name: 'Pickled Herring',
      price: 71000,
    ),
    FoodMenu(
      imageUrl:
          'https://plus.unsplash.com/premium_photo-1713803861305-9b968c22b520?q=80&w=1469&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      name: 'Carpaccio',
      price: 99000,
    ),
    FoodMenu(
      imageUrl:
          'https://plus.unsplash.com/premium_photo-1695028378268-38e3432c5cf0?q=80&w=1470&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      name: 'Roast & Yorkshire Pudding',
      price: 45000,
    ),
    FoodMenu(
      imageUrl:
          'https://images.unsplash.com/photo-1554998171-7e599bc95ccd?q=80&w=1374&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      name: 'Gyros with Tzatziki',
      price: 75000,
    ),
    FoodMenu(
      imageUrl:
          'https://images.unsplash.com/photo-1589187151053-5ec8818e661b?q=80&w=1374&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      name: 'Pizza with Cheesy Mushroom',
      price: 85000,
    ),
    FoodMenu(
      imageUrl:
          'https://images.unsplash.com/photo-1578554813309-8196f50f6811?q=80&w=1374&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      name: 'Churros',
      price: 45000,
    ),
  ];

  List<CartItem> _cartItems = [];

  void _addToCart(FoodMenu foodMenu, {int quantity = 1}) {
    setState(() {
      _cartItems.add(CartItem(foodMenu: foodMenu, quantity: quantity));
      print("_cartItems:");
      _cartItems.forEach((element) {
        print(element.foodMenu.name);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Menu'),
        backgroundColor: Color(0XFF6E4333),
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CartDialog(cartItems: _cartItems),
                ),
              );
            },
          ),
        ],
      ),
      body: GridView.builder(
        itemCount: foodMenus.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.8,
        ),
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => FoodDetailPage(
                    foodMenu: foodMenus[index],
                    addToCart: _addToCart,
                    cartItems: _cartItems,
                  ),
                ),
              );
            },
            child: Card(
              child: Column(
                children: [
                  Expanded(
                    child: Image.network(
                      foodMenus[index].imageUrl,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      foodMenus[index].name,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  Text('Rp ${foodMenus[index].price.toStringAsFixed(0)}'),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

class FoodDetailPage extends StatelessWidget {
  final FoodMenu foodMenu;
  final List<CartItem> cartItems;
  final void Function(FoodMenu) addToCart;

  FoodDetailPage({
    Key? key,
    required this.foodMenu,
    required this.addToCart,
    required this.cartItems,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(foodMenu.name),
        backgroundColor: Color(0XFF6E4333),
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CartDialog(cartItems: cartItems),
                ),
              );
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.network(foodMenu.imageUrl),
              SizedBox(height: 16),
              Text(
                foodMenu.name,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8),
              Text('Harga: Rp ${foodMenu.price.toStringAsFixed(0)}'),
              ElevatedButton(
                onPressed: () {
                  addToCart(foodMenu);
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content:
                          Text('${foodMenu.name} ditambahkan ke keranjang'),
                    ),
                  );
                },
                child: Text('Tambah ke Keranjang'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class AboutPage extends StatefulWidget {
  @override
  _AboutPageState createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  String restaurantExteriorUrl =
      'https://asset.kompas.com/crops/xsl1deNEAKFRpqKSNjRlWxbecfk=/0x18:578x404/750x500/data/photo/2022/01/11/61dd8a2a1e462.png';
  String restaurantInteriorUrl =
      'https://assets-pergikuliner.com/0HfQ3viHZqwfexbMUTOuwwzJBes=/fit-in/1366x768/smart/filters:no_upscale()/https://assets-pergikuliner.com/uploads/image/picture/2678002/picture-1666171696.jpg';
  String restaurantName = 'Suka Cafe';
  String restaurantLocation = 'Jl. Ampera Raya No 7';
  String mapsUrl =
      'https://www.google.com/maps/place/Cerita+Rasa+Nusantara/@-6.2898621,106.8169251,18.77z/data=!4m14!1m7!3m6!1s0x2e69f1b53607488d:0xe4992528c9e6692b!2sSMK+Sumbangsih+Multimedia!8m2!3d-6.2901423!4d106.8171997!16s%2Fg%2F11fhr1nh_7!3m5!1s0x2e69f1b55f0496c3:0x24bc9923f5a0b994!8m2!3d-6.2893489!4d106.8177559!16s%2Fg%2F11f61dgf_j?entry=ttu';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About'),
        backgroundColor: Color(0XFF6E4333),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                restaurantName,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 16),
              Text('Foto Interior Restoran:'),
              SizedBox(height: 8),
              Image.network(restaurantExteriorUrl),
              SizedBox(height: 16),
              Text('Foto Eksterior Restoran:'),
              SizedBox(height: 8),
              Image.network(restaurantInteriorUrl),
              SizedBox(height: 16),
              Text(
                'Lokasi:',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8),
              Text(restaurantLocation),
              SizedBox(height: 8),
              ElevatedButton.icon(
                onPressed: () async {
                  await launch(mapsUrl);
                },
                icon: Icon(Icons.map),
                label: Text('Buka di Google Maps'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CartDialog extends StatelessWidget {
  final List<CartItem> cartItems;

  CartDialog({required this.cartItems});

  @override
  Widget build(BuildContext context) {
    int itemCount = cartItems.fold<int>(0, (sum, item) => sum + item.quantity);
    double totalPrice = cartItems.fold<double>(
        0, (sum, item) => sum + item.foodMenu.price * item.quantity);

    print("itemCount $itemCount");
    print("totalPrice $totalPrice");

    return Scaffold(
      appBar: AppBar(
        title: Text("Keranjang"),
        backgroundColor: Color(0XFF6E4333),
      ),
      body: Column(
        children: [
          ListView.builder(
            shrinkWrap: true,
            itemCount: cartItems.length,
            itemBuilder: (BuildContext context, int index) {
              print("a. $cartItems");
              return ListTile(
                leading: Image.network(
                  cartItems[index].foodMenu.imageUrl,
                  width: 50,
                  height: 50,
                  fit: BoxFit.cover,
                ),
                title: Text(cartItems[index].foodMenu.name),
                subtitle: Text(
                    'Rp ${cartItems[index].foodMenu.price.toStringAsFixed(0)} x ${cartItems[index].quantity}'),
                trailing: Text(
                    'Rp ${(cartItems[index].foodMenu.price * cartItems[index].quantity).toStringAsFixed(0)}'),
              );
            },
          ),
          Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Total Price Rp. $totalPrice"),
              ))
        ],
      ),
    );
  }
}
