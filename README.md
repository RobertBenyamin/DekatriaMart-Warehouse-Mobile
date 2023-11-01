## DekatriaMart Warehouse

<details>
<summary>Tugas 7</summary>

## Daftar Isi

1. [Proses Pengerjaan Tugas](#proses-pengerjaan-tugas)
2. [Perbedaan antara Stateless dan Stateful Widget](#perbedaan-antara-stateless-dan-stateful-widget)
3. [Daftar Widget pada Tugas ini beserta Kegunaannya](#daftar-widget-pada-tugas-ini-beserta-kegunaannya)

## Proses Pengerjaan Tugas

1. Membuat project flutter `dekatriamart_warehouse`.
    ```
    flutter create dekatriamart_warehouse
    ```
2. Membuat file baru bernama `menu.dart`.
3. Mengisi file `menu.dart` dengan widget stateless bernama `MyHomePage`.
    ```dart
    class MyHomePage extends StatelessWidget {
        MyHomePage({Key? key}) : super(key: key);

        @override
        Widget build(BuildContext context) {
            return Scaffold(
                ...
            );
        }
    }
    ```
4. Meng-import file `menu.dart` ke file `main.dart`.
    ```dart
    import 'package:dekatriamart_warehouse/menu.dart';
    ```
5. Membuat class widget bernama `ShopItem` untuk membuat object item pada file `menu.dart`.
    ```dart
    class ShopItem {
        final String name;
        final IconData icon;
        final Color color;

        ShopItem(this.name, this.icon, this.color);
    }
    ```
6. Membuat list of items yang ingin dibuat pada file `menu.dart`.
7. Membuat class widget bernama `ShopCard` untuk menampilkan object-object `ShopItem` dalam bentuk card pada file `menu.dart`. Card akan menampilkan `SnackBar` ketika diklik.
8. Menambahkan kode untuk menampilkan semua `ShopCard` yang telah dibuat dalam tampilan grid pada `Scaffold` `MyHomePage` pada file `menu.dart`.
9. Membuat repositori baru di github bernama `DekatriaMart-Warehouse-Mobile` dengan visibilitas `Public`
10. Menghubungkan Repositori Lokal dengan Repositori di GitHub

## Perbedaan antara Stateless dan Stateful Widget

<table>
  <thead>
    <tr>
      <th>Stateless Widget</th>
      <th>Stateful Widget</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>Static Widgets</td>
      <td>Dynamic Widgets</td>
    </tr>
    <tr>
      <td>Tidak bergantung pada perubahan data atau perubahan perilaku.</td>
      <td>Dapat diperbarui selama runtime berdasarkan tindakan pengguna atau perubahan data.</td>
    </tr>
    <tr>
      <td>Tidak memiliki state internal.</td>
      <td>Memiliki state internal.</td>
    </tr>
    <tr>
      <td>Akan dirender sekali dan tidak akan memperbarui dirinya sendiri, tetapi hanya akan diperbarui ketika data eksternal berubah.</td>
      <td>Dapat merender ulang jika data masukan berubah atau jika state Widget berubah.</td>
    </tr>
    <tr>
      <td>
        <pre>
            <code>
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
            </code>
        </pre>
      </td>
      <td>
        <pre>
            <code>
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}
class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
            </code>
          </pre>
        </td>
    </tr>
  </tbody>
</table>

<small>
Sumber: <br>  
https://www.geeksforgeeks.org/flutter-stateful-vs-stateless-widgets/ <br>
https://www.codingninjas.com/studio/library/flutter-stateful-and-stateless-widgets
</small>

## Daftar Widget pada Tugas ini beserta Kegunaannya

1. `Scaffold`: Ini adalah widget yang digunakan untuk membuat kerangka aplikasi dengan elemen-elemen seperti appBar, body, dan lain-lain.

2. `AppBar`: Widget ini digunakan untuk menampilkan bilah atas aplikasi yang berisi judul aplikasi.

3. `Text`: Widget ini digunakan untuk menampilkan teks. 

4. `SingleChildScrollView`: Ini adalah widget wrapper yang dapat  memungkinkan konten didalamnya dapat di-scroll jika dibutuhkan.

5. `Padding`: Ini adalah widget yang digunakan untuk memberikan jarak atau bantalan pada elemen-elemen dalam widget.

6. `Column`: Ini adalah widget yang digunakan untuk menampilkan anak-anak (children) dalam tata letak vertikal.

7. `GridView`: Widget ini digunakan untuk menampilkan item-item yang terorganisir dalam grid. Jumlah kolom dan baris grid dapat ditentukan oleh parameter crossAxisCount dan mainAxisCount.

8. `ShopItem`: Ini adalah class untuk merepresentasikan item. Class ini memiliki atribut name, icon, dan color.

9. `ShopCard`: Ini adalah widget untuk menampilkan card yang berisi icon dan text, dengan warna latar belakang dari setiap item. Ini menggunakan data dari ShopItem untuk mengatur tampilan card.

10. `Material`: Ini adalah widget yang digunakan untuk memberikan latar belakang (background) dengan warna pada card di dalam tata letak grid.

11. `InkWell`: Widget ini digunakan sebagai area yang responsif terhadap sentuhan pengguna. Ini digunakan di dalam card untuk mendeteksi ketika pengguna menyentuh card. Ketika card disentuh, sebuah SnackBar ditampilkan kepada pengguna.

12. `Container`: Ini adalah widget yang digunakan untuk mengelompokkan icon dan teks dalam setiap card. Ini juga mengatur jarak (padding) dan latar belakang card.

13. `Center`: Widget ini digunakan untuk mengatur children-nya menjadi di tengah card, sehingga icon dan teks berada di tengah card.

14. `Icon`: Widget ini digunakan untuk menampilkan icon. Setiap card memiliki icon yang berbeda sesuai dengan jenis item yang direpresentasikan.

<small>
Sumber: <br>  
https://api.flutter.dev/flutter/material/material-library.html
</small>

</details>
