import 'package:flutter/material.dart';
import 'package:wisata_candi_restuandra/models/candi.dart';

class DetailScreen extends StatelessWidget {
  final Candi candi;
  const DetailScreen({super.key, required this.candi});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(children: [
        Stack(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(20.0),
                  child: Image.asset(candi.imageAsset,
                      width: double.infinity, height: 300, fit: BoxFit.cover)),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
              child: Container(
                  decoration: BoxDecoration(
                    color: Colors.deepPurple[100]?.withOpacity(0.8),
                    shape: BoxShape.circle,
                  ),
                  child: IconButton(
                      onPressed: () {}, icon: const Icon(Icons.arrow_back))),
            ),
          ],
        ),
        Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 16.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      candi.name,
                      style: const TextStyle(
                          fontSize: 28, fontWeight: FontWeight.bold),
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.favorite_border))
                  ],
                ),
                const SizedBox(height: 16.0),
                Row(
                  children: [
                    const Icon(
                      Icons.place,
                      color: Colors.red,
                    ),
                    const SizedBox(width: 8),
                    const SizedBox(
                        width: 70,
                        child: Text(
                          'Lokasi',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )),
                    Text(': ${candi.location}'),
                  ],
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.place,
                      color: Colors.blue,
                    ),
                    const SizedBox(width: 8),
                    const SizedBox(
                        width: 70,
                        child: Text(
                          'Dibangun',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )),
                    Text(': ${candi.built}'),
                  ],
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.place,
                      color: Colors.green,
                    ),
                    const SizedBox(width: 8),
                    const SizedBox(
                        width: 70,
                        child: Text(
                          'Tipe ',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )),
                    Text(': ${candi.type}'),
                  ],
                ),
                const SizedBox(height: 16.0),
                Divider(color: Colors.deepPurple.shade100),
                const SizedBox(height: 16.0),
                const Text(
                  "Deskripsi",
                  style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 16.0),
                Text(
                  candi.description,
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Divider(color: Colors.deepPurple.shade100),
                      const Text(''),
                      const SizedBox(height: 10.0),
                      const SizedBox(),
                      const SizedBox(height: 4.0),
                      const Text('')
                    ],
                  ),
                )
              ],
            ))
      ]),
    ));
  }
}
