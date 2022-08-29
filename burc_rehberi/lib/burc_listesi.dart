import 'package:burc_rehberi/burc_item.dart';
import 'package:burc_rehberi/data/Strings.dart';
import 'package:flutter/material.dart';

import 'modeller/burc.dart';

class BurcListesi extends StatelessWidget {
  late List<Burc> tumBurclar;

  BurcListesi() {
    tumBurclar = veriKaynaginiHazirla();
    print(tumBurclar);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Burclar Listesi"),
      ),
      body: Center(
        child: ListView.builder(
          itemCount: tumBurclar.length,
          itemBuilder: (context, index) {
            return BurcItem(
              listelenenBurc: tumBurclar[index],
            );
          },
        ),
      ),
    );
  }

  List<Burc> veriKaynaginiHazirla() {
    List<Burc> gecici = [];
    for (var i = 0; i < 12; i++) {
      Burc eklencekBurc = Burc(
          Strings.BURC_ADLARI[i],
          Strings.BURC_TARIHLERI[i],
          Strings.BURC_GENEL_OZELLIKLERI[i],
          Strings.BURC_ADLARI[i] + '${i + 1}.png',
          Strings.BURC_ADLARI[i] + '_buyuk${i + 1}.png');
      gecici.add(eklencekBurc);
    }
    return gecici;
  }
}
