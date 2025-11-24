import 'package:flutter/material.dart';
import 'package:wisata_candi_nabila_syahwalrani/data/candi_data.dart';
import 'package:wisata_candi_nabila_syahwalrani/models/candi.dart';
import 'package:wisata_candi_nabila_syahwalrani/widgets/item_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    //TODO : 6 Implementasi routing ke DetailScreen
    return Scaffold(
      //TODO : 1 Buat appbar dengan judul wisata candi
      appBar: AppBar(title: Text('Wisata Candi'),),
      //TODO : 2 Buat body dengan GridView,builder,
      body: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          padding: EdgeInsets.all(8),
          itemCount: candiList.length,
          itemBuilder: (context, index){
            Candi candi = candiList[index];
            //TODO : 3 Buat ItemCard sebagai return value dengan GridView.Builder
            return ItemCard(candi : candi);
          },

      ),
    );
  }
}
