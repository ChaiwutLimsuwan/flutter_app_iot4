import 'package:flutter/material.dart';
import 'package:flutter_app_iot4/models/fooddata.dart';
import 'package:flutter_app_iot4/views/foodshow_ui.dart';

class FoodListUI extends StatefulWidget {
  const FoodListUI({Key? key}) : super(key: key);

  @override
  _FoodListUIState createState() => _FoodListUIState();
}

class _FoodListUIState extends State<FoodListUI> {
  List<Fooddata> fooddata = [
    Fooddata(
      name: 'Chesters Grill',
      website: 'http://www.chesters.co.th',
      facebook: 'chesterthai',
      mobile: '1145',
      image: 'f1.jpg',
      gps: 'https://www.google.com/maps/@13.7082015,100.2811226,15z?hl=th-TH',
    ),
    Fooddata(
      name: 'Narai Pizzeria',
      website: 'http://www.naraipizzeria.com',
      facebook: 'naraipizzeria',
      mobile: '1744',
      image: 'f2.jpg',
      gps: 'https://www.google.com/maps/@13.7386426,100.3446288,11z?hl=th-TH',
    ),
    Fooddata(
      name: 'S&P',
      website: 'http://www.snpfood.com',
      facebook: 'snpfood',
      mobile: '1344',
      image: 'f3.jpg',
      gps: 'https://www.google.com/maps/@13.7978637,99.9721,15z?hl=th-TH',
    ),
    Fooddata(
      name: 'Oishi',
      website: 'http://www.oishifood.com',
      facebook: 'oishifoodstation',
      mobile: '1773',
      image: 'f4.jpg',
      gps: 'https://www.google.com/maps/@13.7461109,100.5254119,15z?hl=th-TH',
    ),
    Fooddata(
      name: 'MK Restaurants',
      website: 'http://www.mkrestaurant.com',
      facebook: 'mkrestaurants',
      mobile: '02-248-5555',
      image: 'f5.jpg',
      gps: 'https://www.google.com/maps/@13.7075651,100.2727987,15z?hl=th-TH',
    ),
    Fooddata(
      name: 'The Pizza',
      website: 'http://www.1112.com',
      facebook: 'thepizzacompany',
      mobile: '1112',
      image: 'f6.jpg',
      gps: 'https://www.google.com/maps/@13.7077345,100.2752879,15z?hl=th-TH',
    ),
    Fooddata(
      name: 'Mc Donals',
      website: 'http://www.mcdonalds.co.th',
      facebook: 'McThai',
      mobile: '1711',
      image: 'f7.jpg',
      gps: 'https://www.google.com/maps/@13.7045968,100.3139693,15z?hl=th-TH',
    ),
    Fooddata(
      name: 'Pizza Hut',
      website: 'http://www.pizzahut.co.th',
      facebook: 'pizzahutthailand',
      mobile: '1150',
      image: 'f8.jpg',
      gps: 'https://www.google.com/maps/@13.7070598,100.2727752,15z?hl=th-TH',
    ),
    Fooddata(
      name: 'KFC',
      website: 'http://www.kfc.co.th',
      facebook: 'kfcth',
      mobile: '1150',
      image: 'f9.jpg',
      gps: '',
    ),
    Fooddata(
      name: 'JJ Delivery',
      website: 'http://www.jjdelivery.com',
      facebook: 'jjdelivery',
      mobile: '02-712-3000',
      image: 'f10.jpg',
      gps: 'https://www.google.com/maps/@13.7296474,100.2897721,15z?hl=th-TH',
    ),
    Fooddata(
      name: 'Burger King',
      website: 'http://www.burgerking.co.th',
      facebook: 'burgerkingthailand',
      mobile: '1112',
      image: 'f11.jpg',
      gps: 'https://www.google.com/maps/@13.7070543,100.3439819,15z?hl=th-TH',
    ),
    Fooddata(
      name: 'See Fah',
      website: 'http://www.seefah.com',
      facebook: 'seefahfanpage',
      mobile: '02-800-8080',
      image: 'f12.jpg',
      gps: 'https://www.google.com/maps/@13.7260723,100.5713553,15z?hl=th-TH',
    ),
    Fooddata(
      name: 'ฮองมิน',
      website: 'http://www.hongminrestaurant.net',
      facebook: 'hongminfanpage',
      mobile: '02-248-0123',
      image: 'f13.jpg',
      gps: 'https://www.google.com/maps/@13.6703672,100.6257611,15z?hl=th-TH',
    ),
    Fooddata(
      name: 'Yoshinoya',
      website: 'http://www.yoshinoya.co.th',
      facebook: 'YoshinoyaThailand',
      mobile: '02-663-3888',
      image: 'f14.jpg',
      gps: 'https://www.google.com/maps/@13.6700694,100.6260088,15z?hl=th-TH',
    ),
    Fooddata(
      name: 'ฮั่วเซ่งฮง',
      website: 'http://www.huasenghong.co.th',
      facebook: 'huasenghong',
      mobile: '02-2480123',
      image: 'f15.jpg',
      gps: 'https://www.google.com/maps/@13.6904953,100.6000074,15z?hl=th-TH',
    ),
    Fooddata(
      name: 'Scoozi Pizza',
      website: 'http://www.scoozipizza.com',
      facebook: 'scoozipizzaclub',
      mobile: '02-715-8555',
      image: 'f16.jpg',
      gps: 'https://www.google.com/maps/@13.6512633,100.6325547,15z?hl=th-TH',
    ),
    Fooddata(
      name: 'โดมิโน่ พิซซ่า',
      website: 'http://www.dominospizza.co.th',
      facebook: 'DominosPizzaThailand',
      mobile: '1612',
      image: 'f17.jpg',
      gps: 'https://www.google.com/maps/@13.7131272,100.5751527,15z?hl=th-TH',
    ),
  ];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //backgroundColor: Colors.red,
      appBar: AppBar(
        backgroundColor: Color(0xFFE72A0D),
        title: Text(
          'สายด่วนชวนกิน (V.1.0)',
        ),
        centerTitle: true,
      ),
      body: ListView.separated(
        separatorBuilder: (context, index){
          return Divider(
            height: 10.0,
            color: Colors.grey[400],
          );
        },
        itemCount: fooddata.length,
        itemBuilder: (context, index){
          return ListTile(
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context){
                    return FoodshowUI(
                      name: fooddata[index].name,
                      website: fooddata[index].website,
                      facebook: fooddata[index].facebook,
                      mobile: fooddata[index].mobile,
                      image: fooddata[index].image,
                      gps: fooddata[index].gps,
                    );
                  },
                )
              );
            },
            leading: Image.asset(
              'assets/images/' + fooddata[index].image,
            ),
            title: Text(
              fooddata[index].name,
            ),
            subtitle: Text(
              fooddata[index].mobile,
            ),
            trailing: Icon(
              Icons.arrow_forward_ios,
              color: Color(0xFFE72A0D),
            ),
          );
        },
      ),
    );
  }
}


