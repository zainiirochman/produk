import 'package:flutter/material.dart';

class produk extends StatefulWidget {
  produk({super.key});

  @override
  State<produk> createState() => _produkState();
}

class _produkState extends State<produk> {
  bool isReadMore = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(48),
          child: Column(
            children: [
              Container(
                height: 34,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(255, 255, 255, 1),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    color: Color.fromRGBO(255, 255, 255, 0.9),
                    borderRadius: BorderRadius.only(bottomRight: Radius.circular(10),bottomLeft: Radius.circular(10))
                ),
                child: Row(
                  children: [
                    IconButton(
                      onPressed: (){},
                      icon: Icon(Icons.arrow_back_ios_rounded),
                    ),
                    Spacer(),
                    IconButton(
                      onPressed: (){},
                      icon: Icon(Icons.file_download_outlined),
                    ),
                    IconButton(
                      onPressed: (){},
                      icon: Icon(Icons.shopping_cart_outlined),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      body: ListView(
        children: [
          Stack(
            children: [
              Container(
                child: Image.asset(
                  'assets/images/produk.jpg',
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                left: 0,
                right: 0,
                top: 240,
                child: Container(
                  // top: 50,
                  height: 300,
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius:BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20),
                    ),
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            padding: EdgeInsets.all(5),
                            decoration : BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(5),),
                              color: Colors.yellow,
                            ),
                            child: Row(
                              children: [
                                Text(
                                  'New ',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                ),
                                Text(
                                  'Produk Baru',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w200,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Spacer(),
                          IconButton(
                              onPressed: (){},
                              icon: Icon(Icons.share_outlined),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Beauty Set by Irvie',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                Text(
                  'Irvie Group Official',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w100,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Text(
                          'Rp 178.000',
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 16,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          'Harga Customer',
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 40,
                      width: 100,
                      child: VerticalDivider(
                        width: 20,
                        thickness: 1,
                        color: Colors.black,
                      ),
                    ),
                    Column(
                      children: [
                        Text(
                          'Rp 142.400',
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 16,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          'Harga Reseller',
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 10,),
                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(15),bottomRight: Radius.circular(15),),
                    color: Colors.yellow,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Komisi ',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        'Rp 35.600 ',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        '(20%)',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10,),
                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)
                    ),
                    border: Border.all(color: Colors.grey,),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                          'Ukuran',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(height: 10,),
                      Row(
                        children: [
                          ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.resolveWith<Color>((states) {
                                if (states.contains(MaterialState.pressed)) {
                                  return Colors.black45;
                                }
                                return Colors.grey;
                              }),
                              foregroundColor: MaterialStateProperty.resolveWith<Color>((states) {
                                if (states.contains(MaterialState.pressed)) {
                                  return Colors.white;
                                }
                                return Colors.black;
                              }),
                                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(6.0),
                                        // side: BorderSide(color: Colors.red)
                                    ),
                                ),
                            ),
                            onPressed: (){},
                              child: Text(
                                  'Paket 1',
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14,
                                ),
                              ),
                          ),
                          SizedBox(width: 10,),
                          ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.resolveWith<Color>((states) {
                                if (states.contains(MaterialState.pressed)) {
                                  return Colors.black45;
                                }
                                return Colors.grey;
                              }),
                              foregroundColor: MaterialStateProperty.resolveWith<Color>((states) {
                                if (states.contains(MaterialState.pressed)) {
                                  return Colors.white;
                                }
                                return Colors.black;
                              }),
                              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(6.0),
                                  // side: BorderSide(color: Colors.red)
                                ),
                              ),
                            ),
                            onPressed: (){},
                            child: Text(
                              'Paket 2',
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10,),
                      Text(
                        'Warna',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(height: 10,),
                      Row(
                        children: [
                          SizedBox(
                            height: 44,
                            width: 44,
                            child: ElevatedButton(
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all<Color>(Color.fromRGBO(221, 182, 154, 1)),
                                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(80.0),
                                    // side: BorderSide(color: Colors.red),
                                  ),
                                ),
                              ),
                              onPressed: (){},
                              child: null,
                            ),
                          ),
                          SizedBox(width: 10,),
                          SizedBox(
                            height: 44,
                            width: 44,
                            child: ElevatedButton(
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all<Color>(Color.fromRGBO(91, 62, 54, 1)),
                                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(80.0),
                                    // side: BorderSide(color: Colors.red),
                                  ),
                                ),
                              ),
                              onPressed: (){},
                              child: null,
                            ),
                          ),

                        ],
                      ),
                      SizedBox(height: 10,),
                      Row(
                        children: [
                          Text(
                            'Stok : ',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            '99+ pcs',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 40,
                  width: MediaQuery.of(context).size.width,
                  child: Divider(
                    thickness: 1,
                    color: Colors.black45,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Deskripsi',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                        color: Colors.black,
                      ),
                    ),
                    Icon(
                      Icons.copy_rounded,
                      color: Color.fromRGBO(14, 165, 233, 1),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Serum ini mengandung 5% niacinamide yang membantu untuk mencerahkan secara maksimal, '
                      'memperbaiki tekstur kulit, melembabkan, dan menyamarkan noda hitam.Produk ini sudah '
                      'mendapatkan No. BPOM: NA742424207 sehingga aman di aplikasikan pada wajah. Produk ini '
                      'cocok untuk semua jenis kulit termasuk sensitif. Untuk pemakaiannya, bersihkan wajah '
                      'terlebih dahulu. Kemudian, oleskan 5-10 tetes serum ke telapak tangan. '
                      'Lalu, tepuk-tepuk perlahan pada wajah. Tunggu 1-3 menit sampai  produk terserap sempurna. ',
                  maxLines: isReadMore ? 10 : 2,
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                      onPressed: () {
                        setState(() {
                          isReadMore = !isReadMore;
                        });
                      },
                      child: Row(
                        children: [
                          Text(isReadMore ? "Lebih Sedikit" : "Selengkapnya"),
                          Icon(isReadMore ? Icons.keyboard_arrow_up_rounded : Icons.keyboard_arrow_down_rounded),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 40,
                  width: MediaQuery.of(context).size.width,
                  child: Divider(
                    thickness: 1,
                    color: Colors.black45,
                  ),
                ),
                Text(
                  'Produk lain dari Irvie Group Official',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Container(
                      // width: 2000,
                      width: MediaQuery.of(context).size.width + 340,
                      child: Row(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width/2-30,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(40),),
                              color: Colors.white,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Stack(
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.only(topRight: Radius.circular(6),topLeft: Radius.circular(6),),
                                      child: Image.asset(
                                        'assets/images/produk.jpg',
                                        // fit: BoxFit.cover,
                                      ),
                                    ),
                                    Positioned(
                                      left: 10,
                                      top: 90,
                                      child: Container(
                                        padding: EdgeInsets.all(3),
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.all(Radius.circular(6),
                                          ),
                                          color: Color.fromRGBO(14, 165, 233, 0.7),
                                        ),
                                        child: Text(
                                          '30% Komisi',
                                          style: TextStyle(
                                            fontSize: 10,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 5,),
                                Text(
                                  'Beauty Set by Irvie',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 12,
                                  ),
                                ),
                                SizedBox(height: 5,),
                                Text(
                                  'Harga Reseller',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 10,
                                  ),
                                ),
                                Row(
                                  children: [
                                    Text(
                                      'Rp 143.000',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 14,
                                        color: Color.fromRGBO(22, 163, 74, 1),
                                      ),
                                    ),
                                    Spacer(),
                                    Icon(
                                      Icons.shop_outlined,
                                      size: 12,
                                    ),
                                    Text(
                                      '99+ pcs',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 10,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 10,),
                                SizedBox(
                                  width: MediaQuery.of(context).size.width,
                                  child: ElevatedButton(
                                    style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Color.fromRGBO(36, 38, 38, 1))),
                                    onPressed: (){
                                      showModalBottomSheet(
                                          context: context,
                                          builder: (BuildContext context){
                                            return Container(
                                              decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20),)
                                              ),
                                              padding: EdgeInsets.all(10),
                                              width: MediaQuery.of(context).size.width,
                                              child: Column(
                                                children: [
                                                  Row(
                                                    children: [
                                                      IconButton(
                                                        onPressed: (){
                                                          Navigator.pop(context);},
                                                        icon: Icon(Icons.close),
                                                      ),
                                                      Text('Bagikan Produk'),
                                                    ],
                                                  ),
                                                  Container(
                                                    padding: EdgeInsets.all(10),
                                                    width: MediaQuery.of(context).size.width,
                                                    child: Column(
                                                      children: [
                                                        SizedBox(
                                                          width: MediaQuery.of(context).size.width,
                                                          child: ElevatedButton(
                                                            style : ButtonStyle(
                                                              backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                                                              foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
                                                              elevation: MaterialStateProperty.all(0),
                                                            ),
                                                            onPressed:(){},
                                                            child: Text('Teks dan Link'),
                                                          ),
                                                        ),
                                                        SizedBox(
                                                          width: MediaQuery.of(context).size.width,
                                                          height: 20,
                                                          child: Divider(
                                                            thickness: 1,
                                                            color: Colors.black,
                                                          ),
                                                        ),
                                                        SizedBox(
                                                          width: MediaQuery.of(context).size.width,
                                                          child: ElevatedButton(
                                                            style : ButtonStyle(
                                                              backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                                                              foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
                                                              elevation: MaterialStateProperty.all(0),
                                                            ),
                                                            onPressed:(){},
                                                            child: Text('Gambar'),
                                                          ),
                                                        ),
                                                        SizedBox(
                                                          width: MediaQuery.of(context).size.width,
                                                          height: 20,
                                                          child: Divider(
                                                            thickness: 1,
                                                            color: Colors.black,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  )
                                                ],
                                              ),
                                            );
                                          }
                                      );
                                    },
                                    child: Text(
                                      'Bagikan Produk',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 12,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: 20,),
                          Container(
                            width: MediaQuery.of(context).size.width/2-30,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(40),),
                              color: Colors.white,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Stack(
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.only(topRight: Radius.circular(6),topLeft: Radius.circular(6),),
                                      child: Image.asset(
                                        'assets/images/produk.jpg',
                                        // fit: BoxFit.cover,
                                      ),
                                    ),
                                    Positioned(
                                      left: 10,
                                      top: 90,
                                      child: Container(
                                        padding: EdgeInsets.all(3),
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.all(Radius.circular(6),
                                          ),
                                          color: Color.fromRGBO(14, 165, 233, 0.7),
                                        ),
                                        child: Text(
                                          '30% Komisi',
                                          style: TextStyle(
                                            fontSize: 10,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 5,),
                                Text(
                                  'Beauty Set by Irvie',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 12,
                                  ),
                                ),
                                SizedBox(height: 5,),
                                Text(
                                  'Harga Reseller',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 10,
                                  ),
                                ),
                                Row(
                                  children: [
                                    Text(
                                      'Rp 143.000',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 14,
                                        color: Color.fromRGBO(22, 163, 74, 1),
                                      ),
                                    ),
                                    Spacer(),
                                    Icon(
                                      Icons.shop_outlined,
                                      size: 12,
                                    ),
                                    Text(
                                      '99+ pcs',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 10,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 10,),
                                SizedBox(
                                  width: MediaQuery.of(context).size.width,
                                  child: ElevatedButton(
                                    style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Color.fromRGBO(36, 38, 38, 1))),
                                    onPressed: (){
                                      showModalBottomSheet(
                                          context: context,
                                          builder: (BuildContext context){
                                            return Container(
                                              decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20),)
                                              ),
                                              padding: EdgeInsets.all(10),
                                              width: MediaQuery.of(context).size.width,
                                              child: Column(
                                                children: [
                                                  Row(
                                                    children: [
                                                      IconButton(
                                                        onPressed: (){
                                                          Navigator.pop(context);},
                                                        icon: Icon(Icons.close),
                                                      ),
                                                      Text('Bagikan Produk'),
                                                    ],
                                                  ),
                                                  Container(
                                                    padding: EdgeInsets.all(10),
                                                    width: MediaQuery.of(context).size.width,
                                                    child: Column(
                                                      children: [
                                                        SizedBox(
                                                          width: MediaQuery.of(context).size.width,
                                                          child: ElevatedButton(
                                                            style : ButtonStyle(
                                                              backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                                                              foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
                                                              elevation: MaterialStateProperty.all(0),
                                                            ),
                                                            onPressed:(){},
                                                            child: Text('Teks dan Link'),
                                                          ),
                                                        ),
                                                        SizedBox(
                                                          width: MediaQuery.of(context).size.width,
                                                          height: 20,
                                                          child: Divider(
                                                            thickness: 1,
                                                            color: Colors.black,
                                                          ),
                                                        ),
                                                        SizedBox(
                                                          width: MediaQuery.of(context).size.width,
                                                          child: ElevatedButton(
                                                            style : ButtonStyle(
                                                              backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                                                              foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
                                                              elevation: MaterialStateProperty.all(0),
                                                            ),
                                                            onPressed:(){},
                                                            child: Text('Gambar'),
                                                          ),
                                                        ),
                                                        SizedBox(
                                                          width: MediaQuery.of(context).size.width,
                                                          height: 20,
                                                          child: Divider(
                                                            thickness: 1,
                                                            color: Colors.black,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  )
                                                ],
                                              ),
                                            );
                                          }
                                      );
                                    },
                                    child: Text(
                                      'Bagikan Produk',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 12,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: 20,),
                          Container(
                            width: MediaQuery.of(context).size.width/2-30,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(40),),
                              color: Colors.white,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Stack(
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.only(topRight: Radius.circular(6),topLeft: Radius.circular(6),),
                                      child: Image.asset(
                                        'assets/images/produk.jpg',
                                        // fit: BoxFit.cover,
                                      ),
                                    ),
                                    Positioned(
                                      left: 10,
                                      top: 90,
                                      child: Container(
                                        padding: EdgeInsets.all(3),
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.all(Radius.circular(6),
                                          ),
                                          color: Color.fromRGBO(14, 165, 233, 0.7),
                                        ),
                                        child: Text(
                                          '30% Komisi',
                                          style: TextStyle(
                                            fontSize: 10,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 5,),
                                Text(
                                  'Beauty Set by Irvie',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 12,
                                  ),
                                ),
                                SizedBox(height: 5,),
                                Text(
                                  'Harga Reseller',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 10,
                                  ),
                                ),
                                Row(
                                  children: [
                                    Text(
                                      'Rp 143.000',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 14,
                                        color: Color.fromRGBO(22, 163, 74, 1),
                                      ),
                                    ),
                                    Spacer(),
                                    Icon(
                                      Icons.shop_outlined,
                                      size: 12,
                                    ),
                                    Text(
                                      '99+ pcs',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 10,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 10,),
                                SizedBox(
                                  width: MediaQuery.of(context).size.width,
                                  child: ElevatedButton(
                                    style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Color.fromRGBO(36, 38, 38, 1))),
                                    onPressed: (){
                                      showModalBottomSheet(
                                          context: context,
                                          builder: (BuildContext context){
                                            return Container(
                                              decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20),)
                                              ),
                                              padding: EdgeInsets.all(10),
                                              width: MediaQuery.of(context).size.width,
                                              child: Column(
                                                children: [
                                                  Row(
                                                    children: [
                                                      IconButton(
                                                        onPressed: (){
                                                          Navigator.pop(context);},
                                                        icon: Icon(Icons.close),
                                                      ),
                                                      Text('Bagikan Produk'),
                                                    ],
                                                  ),
                                                  Container(
                                                    padding: EdgeInsets.all(10),
                                                    width: MediaQuery.of(context).size.width,
                                                    child: Column(
                                                      children: [
                                                        SizedBox(
                                                          width: MediaQuery.of(context).size.width,
                                                          child: ElevatedButton(
                                                            style : ButtonStyle(
                                                              backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                                                              foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
                                                              elevation: MaterialStateProperty.all(0),
                                                            ),
                                                            onPressed:(){},
                                                            child: Text('Teks dan Link'),
                                                          ),
                                                        ),
                                                        SizedBox(
                                                          width: MediaQuery.of(context).size.width,
                                                          height: 20,
                                                          child: Divider(
                                                            thickness: 1,
                                                            color: Colors.black,
                                                          ),
                                                        ),
                                                        SizedBox(
                                                          width: MediaQuery.of(context).size.width,
                                                          child: ElevatedButton(
                                                            style : ButtonStyle(
                                                              backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                                                              foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
                                                              elevation: MaterialStateProperty.all(0),
                                                            ),
                                                            onPressed:(){},
                                                            child: Text('Gambar'),
                                                          ),
                                                        ),
                                                        SizedBox(
                                                          width: MediaQuery.of(context).size.width,
                                                          height: 20,
                                                          child: Divider(
                                                            thickness: 1,
                                                            color: Colors.black,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  )
                                                ],
                                              ),
                                            );
                                          }
                                      );
                                    },
                                    child: Text(
                                      'Bagikan Produk',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 12,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: 20,),
                          Container(
                            width: MediaQuery.of(context).size.width/2-30,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(40),),
                              color: Colors.white,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Stack(
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.only(topRight: Radius.circular(6),topLeft: Radius.circular(6),),
                                      child: Image.asset(
                                        'assets/images/produk.jpg',
                                        // fit: BoxFit.cover,
                                      ),
                                    ),
                                    Positioned(
                                      left: 10,
                                      top: 90,
                                      child: Container(
                                        padding: EdgeInsets.all(3),
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.all(Radius.circular(6),
                                          ),
                                          color: Color.fromRGBO(14, 165, 233, 0.7),
                                        ),
                                        child: Text(
                                          '30% Komisi',
                                          style: TextStyle(
                                            fontSize: 10,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 5,),
                                Text(
                                  'Beauty Set by Irvie',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 12,
                                  ),
                                ),
                                SizedBox(height: 5,),
                                Text(
                                  'Harga Reseller',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 10,
                                  ),
                                ),
                                Row(
                                  children: [
                                    Text(
                                      'Rp 143.000',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 14,
                                        color: Color.fromRGBO(22, 163, 74, 1),
                                      ),
                                    ),
                                    Spacer(),
                                    Icon(
                                      Icons.shop_outlined,
                                      size: 12,
                                    ),
                                    Text(
                                      '99+ pcs',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 10,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 10,),
                                SizedBox(
                                  width: MediaQuery.of(context).size.width,
                                  child: ElevatedButton(
                                    style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Color.fromRGBO(36, 38, 38, 1))),
                                    onPressed: (){
                                      showModalBottomSheet(
                                          context: context,
                                          builder: (BuildContext context){
                                            return Container(
                                              decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20),)
                                              ),
                                              padding: EdgeInsets.all(10),
                                              width: MediaQuery.of(context).size.width,
                                              child: Column(
                                                children: [
                                                  Row(
                                                    children: [
                                                      IconButton(
                                                        onPressed: (){
                                                          Navigator.pop(context);},
                                                        icon: Icon(Icons.close),
                                                      ),
                                                      Text('Bagikan Produk'),
                                                    ],
                                                  ),
                                                  Container(
                                                    padding: EdgeInsets.all(10),
                                                    width: MediaQuery.of(context).size.width,
                                                    child: Column(
                                                      children: [
                                                        SizedBox(
                                                          width: MediaQuery.of(context).size.width,
                                                          child: ElevatedButton(
                                                            style : ButtonStyle(
                                                              backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                                                              foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
                                                              elevation: MaterialStateProperty.all(0),
                                                            ),
                                                            onPressed:(){},
                                                            child: Text('Teks dan Link'),
                                                          ),
                                                        ),
                                                        SizedBox(
                                                          width: MediaQuery.of(context).size.width,
                                                          height: 20,
                                                          child: Divider(
                                                            thickness: 1,
                                                            color: Colors.black,
                                                          ),
                                                        ),
                                                        SizedBox(
                                                          width: MediaQuery.of(context).size.width,
                                                          child: ElevatedButton(
                                                            style : ButtonStyle(
                                                              backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                                                              foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
                                                              elevation: MaterialStateProperty.all(0),
                                                            ),
                                                            onPressed:(){},
                                                            child: Text('Gambar'),
                                                          ),
                                                        ),
                                                        SizedBox(
                                                          width: MediaQuery.of(context).size.width,
                                                          height: 20,
                                                          child: Divider(
                                                            thickness: 1,
                                                            color: Colors.black,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  )
                                                ],
                                              ),
                                            );
                                          }
                                      );
                                    },
                                    child: Text(
                                      'Bagikan Produk',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 12,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Text(
                  'Produk Serupa',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Container(
                      // width: 2000,
                      width: MediaQuery.of(context).size.width + 340,
                      child: Row(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width/2-30,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(40),),
                              color: Colors.white,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Stack(
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.only(topRight: Radius.circular(6),topLeft: Radius.circular(6),),
                                      child: Image.asset(
                                        'assets/images/produk.jpg',
                                        // fit: BoxFit.cover,
                                      ),
                                    ),
                                    Positioned(
                                      left: 10,
                                      top: 90,
                                      child: Container(
                                        padding: EdgeInsets.all(3),
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.all(Radius.circular(6),
                                          ),
                                          color: Color.fromRGBO(14, 165, 233, 0.7),
                                        ),
                                        child: Text(
                                          '30% Komisi',
                                          style: TextStyle(
                                            fontSize: 10,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 5,),
                                Text(
                                  'Beauty Set by Irvie',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 12,
                                  ),
                                ),
                                SizedBox(height: 5,),
                                Text(
                                  'Harga Reseller',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 10,
                                  ),
                                ),
                                Row(
                                  children: [
                                    Text(
                                      'Rp 143.000',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 14,
                                        color: Color.fromRGBO(22, 163, 74, 1),
                                      ),
                                    ),
                                    Spacer(),
                                    Icon(
                                      Icons.shop_outlined,
                                      size: 12,
                                    ),
                                    Text(
                                      '99+ pcs',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 10,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 10,),
                                SizedBox(
                                  width: MediaQuery.of(context).size.width,
                                  child: ElevatedButton(
                                    style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Color.fromRGBO(36, 38, 38, 1))),
                                    onPressed: (){
                                      showModalBottomSheet(
                                          context: context,
                                          builder: (BuildContext context){
                                            return Container(
                                              decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20),)
                                              ),
                                              padding: EdgeInsets.all(10),
                                              width: MediaQuery.of(context).size.width,
                                              child: Column(
                                                children: [
                                                  Row(
                                                    children: [
                                                      IconButton(
                                                        onPressed: (){
                                                          Navigator.pop(context);},
                                                        icon: Icon(Icons.close),
                                                      ),
                                                      Text('Bagikan Produk'),
                                                    ],
                                                  ),
                                                  Container(
                                                    padding: EdgeInsets.all(10),
                                                    width: MediaQuery.of(context).size.width,
                                                    child: Column(
                                                      children: [
                                                        SizedBox(
                                                          width: MediaQuery.of(context).size.width,
                                                          child: ElevatedButton(
                                                            style : ButtonStyle(
                                                              backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                                                              foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
                                                              elevation: MaterialStateProperty.all(0),
                                                            ),
                                                            onPressed:(){},
                                                            child: Text('Teks dan Link'),
                                                          ),
                                                        ),
                                                        SizedBox(
                                                          width: MediaQuery.of(context).size.width,
                                                          height: 20,
                                                          child: Divider(
                                                            thickness: 1,
                                                            color: Colors.black,
                                                          ),
                                                        ),
                                                        SizedBox(
                                                          width: MediaQuery.of(context).size.width,
                                                          child: ElevatedButton(
                                                            style : ButtonStyle(
                                                              backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                                                              foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
                                                              elevation: MaterialStateProperty.all(0),
                                                            ),
                                                            onPressed:(){},
                                                            child: Text('Gambar'),
                                                          ),
                                                        ),
                                                        SizedBox(
                                                          width: MediaQuery.of(context).size.width,
                                                          height: 20,
                                                          child: Divider(
                                                            thickness: 1,
                                                            color: Colors.black,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  )
                                                ],
                                              ),
                                            );
                                          }
                                      );
                                    },
                                    child: Text(
                                      'Bagikan Produk',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 12,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: 20,),
                          Container(
                            width: MediaQuery.of(context).size.width/2-30,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(40),),
                              color: Colors.white,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Stack(
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.only(topRight: Radius.circular(6),topLeft: Radius.circular(6),),
                                      child: Image.asset(
                                        'assets/images/produk.jpg',
                                        // fit: BoxFit.cover,
                                      ),
                                    ),
                                    Positioned(
                                      left: 10,
                                      top: 90,
                                      child: Container(
                                        padding: EdgeInsets.all(3),
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.all(Radius.circular(6),
                                          ),
                                          color: Color.fromRGBO(14, 165, 233, 0.7),
                                        ),
                                        child: Text(
                                          '30% Komisi',
                                          style: TextStyle(
                                            fontSize: 10,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 5,),
                                Text(
                                  'Beauty Set by Irvie',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 12,
                                  ),
                                ),
                                SizedBox(height: 5,),
                                Text(
                                  'Harga Reseller',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 10,
                                  ),
                                ),
                                Row(
                                  children: [
                                    Text(
                                      'Rp 143.000',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 14,
                                        color: Color.fromRGBO(22, 163, 74, 1),
                                      ),
                                    ),
                                    Spacer(),
                                    Icon(
                                      Icons.shop_outlined,
                                      size: 12,
                                    ),
                                    Text(
                                      '99+ pcs',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 10,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 10,),
                                SizedBox(
                                  width: MediaQuery.of(context).size.width,
                                  child: ElevatedButton(
                                    style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Color.fromRGBO(36, 38, 38, 1))),
                                    onPressed: (){
                                      showModalBottomSheet(
                                          context: context,
                                          builder: (BuildContext context){
                                            return Container(
                                              decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20),)
                                              ),
                                              padding: EdgeInsets.all(10),
                                              width: MediaQuery.of(context).size.width,
                                              child: Column(
                                                children: [
                                                  Row(
                                                    children: [
                                                      IconButton(
                                                        onPressed: (){
                                                          Navigator.pop(context);},
                                                        icon: Icon(Icons.close),
                                                      ),
                                                      Text('Bagikan Produk'),
                                                    ],
                                                  ),
                                                  Container(
                                                    padding: EdgeInsets.all(10),
                                                    width: MediaQuery.of(context).size.width,
                                                    child: Column(
                                                      children: [
                                                        SizedBox(
                                                          width: MediaQuery.of(context).size.width,
                                                          child: ElevatedButton(
                                                            style : ButtonStyle(
                                                              backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                                                              foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
                                                              elevation: MaterialStateProperty.all(0),
                                                            ),
                                                            onPressed:(){},
                                                            child: Text('Teks dan Link'),
                                                          ),
                                                        ),
                                                        SizedBox(
                                                          width: MediaQuery.of(context).size.width,
                                                          height: 20,
                                                          child: Divider(
                                                            thickness: 1,
                                                            color: Colors.black,
                                                          ),
                                                        ),
                                                        SizedBox(
                                                          width: MediaQuery.of(context).size.width,
                                                          child: ElevatedButton(
                                                            style : ButtonStyle(
                                                              backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                                                              foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
                                                              elevation: MaterialStateProperty.all(0),
                                                            ),
                                                            onPressed:(){},
                                                            child: Text('Gambar'),
                                                          ),
                                                        ),
                                                        SizedBox(
                                                          width: MediaQuery.of(context).size.width,
                                                          height: 20,
                                                          child: Divider(
                                                            thickness: 1,
                                                            color: Colors.black,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  )
                                                ],
                                              ),
                                            );
                                          }
                                      );
                                    },
                                    child: Text(
                                      'Bagikan Produk',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 12,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: 20,),
                          Container(
                            width: MediaQuery.of(context).size.width/2-30,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(40),),
                              color: Colors.white,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Stack(
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.only(topRight: Radius.circular(6),topLeft: Radius.circular(6),),
                                      child: Image.asset(
                                        'assets/images/produk.jpg',
                                        // fit: BoxFit.cover,
                                      ),
                                    ),
                                    Positioned(
                                      left: 10,
                                      top: 90,
                                      child: Container(
                                        padding: EdgeInsets.all(3),
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.all(Radius.circular(6),
                                          ),
                                          color: Color.fromRGBO(14, 165, 233, 0.7),
                                        ),
                                        child: Text(
                                          '30% Komisi',
                                          style: TextStyle(
                                            fontSize: 10,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 5,),
                                Text(
                                  'Beauty Set by Irvie',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 12,
                                  ),
                                ),
                                SizedBox(height: 5,),
                                Text(
                                  'Harga Reseller',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 10,
                                  ),
                                ),
                                Row(
                                  children: [
                                    Text(
                                      'Rp 143.000',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 14,
                                        color: Color.fromRGBO(22, 163, 74, 1),
                                      ),
                                    ),
                                    Spacer(),
                                    Icon(
                                      Icons.shop_outlined,
                                      size: 12,
                                    ),
                                    Text(
                                      '99+ pcs',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 10,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 10,),
                                SizedBox(
                                  width: MediaQuery.of(context).size.width,
                                  child: ElevatedButton(
                                    style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Color.fromRGBO(36, 38, 38, 1))),
                                    onPressed: (){
                                      showModalBottomSheet(
                                          context: context,
                                          builder: (BuildContext context){
                                            return Container(
                                              decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20),)
                                              ),
                                              padding: EdgeInsets.all(10),
                                              width: MediaQuery.of(context).size.width,
                                              child: Column(
                                                children: [
                                                  Row(
                                                    children: [
                                                      IconButton(
                                                        onPressed: (){
                                                          Navigator.pop(context);},
                                                        icon: Icon(Icons.close),
                                                      ),
                                                      Text('Bagikan Produk'),
                                                    ],
                                                  ),
                                                  Container(
                                                    padding: EdgeInsets.all(10),
                                                    width: MediaQuery.of(context).size.width,
                                                    child: Column(
                                                      children: [
                                                        SizedBox(
                                                          width: MediaQuery.of(context).size.width,
                                                          child: ElevatedButton(
                                                            style : ButtonStyle(
                                                              backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                                                              foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
                                                              elevation: MaterialStateProperty.all(0),
                                                            ),
                                                            onPressed:(){},
                                                            child: Text('Teks dan Link'),
                                                          ),
                                                        ),
                                                        SizedBox(
                                                          width: MediaQuery.of(context).size.width,
                                                          height: 20,
                                                          child: Divider(
                                                            thickness: 1,
                                                            color: Colors.black,
                                                          ),
                                                        ),
                                                        SizedBox(
                                                          width: MediaQuery.of(context).size.width,
                                                          child: ElevatedButton(
                                                            style : ButtonStyle(
                                                              backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                                                              foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
                                                              elevation: MaterialStateProperty.all(0),
                                                            ),
                                                            onPressed:(){},
                                                            child: Text('Gambar'),
                                                          ),
                                                        ),
                                                        SizedBox(
                                                          width: MediaQuery.of(context).size.width,
                                                          height: 20,
                                                          child: Divider(
                                                            thickness: 1,
                                                            color: Colors.black,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  )
                                                ],
                                              ),
                                            );
                                          }
                                      );
                                    },
                                    child: Text(
                                      'Bagikan Produk',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 12,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: 20,),
                          Container(
                            width: MediaQuery.of(context).size.width/2-30,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(40),),
                              color: Colors.white,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Stack(
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.only(topRight: Radius.circular(6),topLeft: Radius.circular(6),),
                                      child: Image.asset(
                                        'assets/images/produk.jpg',
                                        // fit: BoxFit.cover,
                                      ),
                                    ),
                                    Positioned(
                                      left: 10,
                                      top: 90,
                                      child: Container(
                                        padding: EdgeInsets.all(3),
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.all(Radius.circular(6),
                                          ),
                                          color: Color.fromRGBO(14, 165, 233, 0.7),
                                        ),
                                        child: Text(
                                          '30% Komisi',
                                          style: TextStyle(
                                            fontSize: 10,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 5,),
                                Text(
                                  'Beauty Set by Irvie',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 12,
                                  ),
                                ),
                                SizedBox(height: 5,),
                                Text(
                                  'Harga Reseller',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 10,
                                  ),
                                ),
                                Row(
                                  children: [
                                    Text(
                                      'Rp 143.000',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 14,
                                        color: Color.fromRGBO(22, 163, 74, 1),
                                      ),
                                    ),
                                    Spacer(),
                                    Icon(
                                      Icons.shop_outlined,
                                      size: 12,
                                    ),
                                    Text(
                                      '99+ pcs',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 10,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 10,),
                                SizedBox(
                                  width: MediaQuery.of(context).size.width,
                                  child: ElevatedButton(
                                    style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Color.fromRGBO(36, 38, 38, 1))),
                                    onPressed: (){
                                      showModalBottomSheet(
                                          context: context,
                                          builder: (BuildContext context){
                                            return Container(
                                              decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20),)
                                              ),
                                              padding: EdgeInsets.all(10),
                                              width: MediaQuery.of(context).size.width,
                                              child: Column(
                                                children: [
                                                  Row(
                                                    children: [
                                                      IconButton(
                                                        onPressed: (){
                                                          Navigator.pop(context);},
                                                        icon: Icon(Icons.close),
                                                      ),
                                                      Text('Bagikan Produk'),
                                                    ],
                                                  ),
                                                  Container(
                                                    padding: EdgeInsets.all(10),
                                                    width: MediaQuery.of(context).size.width,
                                                    child: Column(
                                                      children: [
                                                        SizedBox(
                                                          width: MediaQuery.of(context).size.width,
                                                          child: ElevatedButton(
                                                            style : ButtonStyle(
                                                              backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                                                              foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
                                                              elevation: MaterialStateProperty.all(0),
                                                            ),
                                                            onPressed:(){},
                                                            child: Text('Teks dan Link'),
                                                          ),
                                                        ),
                                                        SizedBox(
                                                          width: MediaQuery.of(context).size.width,
                                                          height: 20,
                                                          child: Divider(
                                                            thickness: 1,
                                                            color: Colors.black,
                                                          ),
                                                        ),
                                                        SizedBox(
                                                          width: MediaQuery.of(context).size.width,
                                                          child: ElevatedButton(
                                                            style : ButtonStyle(
                                                              backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                                                              foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
                                                              elevation: MaterialStateProperty.all(0),
                                                            ),
                                                            onPressed:(){},
                                                            child: Text('Gambar'),
                                                          ),
                                                        ),
                                                        SizedBox(
                                                          width: MediaQuery.of(context).size.width,
                                                          height: 20,
                                                          child: Divider(
                                                            thickness: 1,
                                                            color: Colors.black,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  )
                                                ],
                                              ),
                                            );
                                          }
                                      );
                                    },
                                    child: Text(
                                      'Bagikan Produk',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 12,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Row(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width-95,
                      height: 50,
                      child: ElevatedButton(
                        style : ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(Colors.white),
                            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8.0),
                                    side: BorderSide(color: Colors.black)
                                ),
                            ),
                        ),
                        onPressed: (){},
                        child: Text(
                          'Tambahkan Ke Toko',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 5,),
                    SizedBox(
                      width: 50,
                      height: 50,
                      child: ElevatedButton(
                        style : ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(Color.fromRGBO(36, 38, 38, 1)),
                            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8.0),
                                  side: BorderSide(color: Colors.black)
                              ),
                            ),
                        ),
                        onPressed: (){},
                        child: Icon(Icons.shopping_cart_outlined,size: 20,),),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
      ),
    );
  }
}

