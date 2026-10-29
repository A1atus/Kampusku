import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../models/mata_kuliah.dart';

class BerandaScreen extends StatelessWidget {
  const BerandaScreen({super.key});

  static const _jadwal = [
    MataKuliah(
      kode: 'IF-024',
      nama: 'Pemrograman Mobile II',
      sks: 3,
      hari: 'Senin',
      jam: '08.00 - 10.30',
      ruang: 'A101',
    ),
    MataKuliah(
      kode: 'IF-021',
      nama: 'Basis Data',
      sks: 3,
      hari: 'Selasa',
      jam: '10.00 - 12.00',
      ruang: 'B202',
    ),
    MataKuliah(
      kode: 'IF-023',
      nama: 'B.Indo',
      sks: 2,
      hari: 'Rabu',
      jam: '11.00 - 15.00',
      ruang: 'Online',
    ),
    MataKuliah(
      kode: 'IF-025',
      nama: 'Algoritma dan Struktur Data',
      sks: 3,
      hari: 'Kamis',
      jam: '08.00 - 10.00',
      ruang: 'A102',
    ),
    MataKuliah(
      kode: 'IF-026',
      nama: 'Jaringan Komputer',
      sks: 3,
      hari: 'Jumat',
      jam: '10.00 - 12.00',
      ruang: 'B203',
    ),
    MataKuliah(
      kode: 'IF-027',
      nama: 'Sistem Operasi',
      sks: 3,
      hari: 'Jumat',
      jam: '08.00 - 10.00',
      ruang: 'Online',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('KampusKu')),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Text(
              DateFormat('EEEE, d MMMM y', 'id_ID').format(DateTime.now()),
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ),
          for (final mk in _jadwal)
            ListTile(
              isThreeLine: true,
              leading: const Icon(Icons.class_),
              title: Text(mk.nama),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('${mk.kode} · ${mk.hari} · ${mk.sks} SKS'),
                  Text(mk.jam),
                  Text(mk.ruang),
                ],
              ),
            ),
        ],
      ),
    );
  }
}