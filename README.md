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

8. `ShopCard`: Ini adalah widget untuk menampilkan card yang berisi icon dan text, dengan warna latar belakang dari setiap item. Ini menggunakan data dari ShopItem untuk mengatur tampilan card.

9. `Material`: Ini adalah widget yang digunakan untuk memberikan latar belakang (background) dengan warna pada card di dalam tata letak grid.

10. `InkWell`: Widget ini digunakan sebagai area yang responsif terhadap sentuhan pengguna. Ini digunakan di dalam card untuk mendeteksi ketika pengguna menyentuh card. Ketika card disentuh, sebuah SnackBar ditampilkan kepada pengguna.

11. `Container`: Ini adalah widget yang digunakan untuk mengelompokkan icon dan teks dalam setiap card. Ini juga mengatur jarak (padding) dan latar belakang card.

12. `Center`: Widget ini digunakan untuk mengatur children-nya menjadi di tengah card, sehingga icon dan teks berada di tengah card.

13. `Icon`: Widget ini digunakan untuk menampilkan icon. Setiap card memiliki icon yang berbeda sesuai dengan jenis item yang direpresentasikan.

<small>
Sumber: <br>  
https://api.flutter.dev/flutter/material/material-library.html
</small>

</details>

<details>
<summary>Tugas 8</summary>

## Daftar Isi

1. [Proses Pengerjaan Tugas](#proses-pengerjaan-tugas-1)
2. [Perbedaan antara Navigator.push() dan Navigator.pushReplacement()](#perbedaan-antara-navigatorpush-dan-navigatorpushreplacement)
3. [Macam-Macam Layout Widget pada Flutter](#macam-macam-layout-widget-pada-flutter)
4. [Elemen Input Form pada Tugas ini](#elemen-input-form-pada-tugas-ini)
5. [Penerapan Clean Architecture pada Aplikasi Flutter](#penerapan-clean-architecture-pada-aplikasi-flutter)

## Proses Pengerjaan Tugas

1. Membuat direktori `widgets` dan `screens` di dalam direktori `lib`.
2. Memindahkan file `menu.dart` ke direktori `screens`.
3. Memindahkan class `ShopItem` pada file `menu.dart` ke file baru `shop_item.dart` yang terdapat pada direktori `widgets`.
4. Membuat file `item.dart` pada `widgets` yang berisikan class `Item`.
5. Membuat file `item_form.dart` pada direktori `screens` yang berfungsi untuk menampilkan form untuk membuat `Item` baru.
6. Membuat file `item_list.dart` pada direktori `screens` yang berfungsi untuk menampilkan list seluruh `Item` yang telah dibuat.
7. Membuat file `left_drawer.dart` pada direktori `widgets` yang berfungsi untuk menampilkan drawer pada sisi kiri layar.
8. Menambahkan `LeftDrawer` pada file `menu.dart`, `item_form.dart`, dan `item_list.dart`.

## Perbedaan antara Navigator.push() dan Navigator.pushReplacement()

`Navigator.push()`: Metode ini digunakan untuk menambahkan rute lain ke atas tumpukan screen (stack) saat ini. Halaman baru ditampilkan di atas halaman sebelumnya.
```dart
Navigator.push(
  context,
  MaterialPageRoute(builder: (context) => HalamanBaru()),
);
```

`Navigator.pushReplacement()`: Metode ini digunakan untuk menambahkan rute lain ke atas tumpukan screen (stack) saat ini. Halaman pada tumpukan screen paling atas saat ini akan digantikan dengan halaman baru.
```dart
Navigator.pushReplacement(
  context,
  MaterialPageRoute(builder: (context) => HalamanBaru()),
);
```
<small>
Sumber: <br>  
https://belajarflutter.com/memahami-navigasi-routing-di-flutter/ <br>
https://api.flutter.dev/flutter/widgets/Navigator/pushReplacement.html
</small>

## Macam-Macam Layout Widget pada Flutter

Layout widget merupakan widget yang digunakan untuk mengatur tata letak dan posisi dari widget-widget lain yang ada di dalam aplikasi. Layout widget pada Flutter dapat dibagi menjadi 2 jenis, yaitu *single child widget* dan *multiple child widget*.

*Single Child Widget* merupakan jenis widget yang hanya memiliki satu *child widget* di dalam *parent layout widget*. Beberapa contoh *single child widget* adalah:
- `Container`: Widget ini berfungsi untuk mengatur tampilan *child widget*nya. Widget ini dapat mengatur posisi, warna, ukuran layar, dll.
- `Center`: Widget ini digunakan untuk menempatkan *child widget* di tengah-tengah layar.
- `Expanded`: Widget ini digunakan untuk mendistribusikan ruang yang tersedia ke *child widget*nya. Widget ini biasa digunakan di dalam widget `Row` dan `Column`.

*Multiple Child Widget* merupakan jenis widget yang bisa memiliki *child widget* lebih dari satu di dalam *parent layout widget*. Beberapa contoh *multiple child widget* adalah:
- `Row`: Widget ini digunakan untuk mengatur letak *children widget*nya secara horizontal.
- `Column`: Widget ini digunakan untuk mengatur letak *children widget*nya secara vertikal.
- `GridView`: Widget ini digunakan untuk mengatur letak *children widget*nya dalam format 2D grid.
- `ListView`: Widget ini digunakan untuk mengatur letak *children widget*nya dalam sebuah *scrollable list* baik secara vertikal maupun horizontal.

<small>
Sumber: <br>  
https://docs.flutter.dev/ui/widgets/layout <br>
https://www.educative.io/answers/layouts-in-flutter
</small>

## Elemen Input Form pada Tugas ini

Pada tugas ini terdapat 4 input form pada file `item_form.dart`, yaitu Nama Item, Jumlah, Harga, dan Deskripsi. Keempat input form tersebut diimplementasikan menggunakan widget `TextFormField`. `TextFormField` digunakan karena form tersebut hanya memerlukan input dari pengguna yang berupa teks. 

<small>
Sumber: <br>  
https://api.flutter.dev/flutter/material/TextFormField-class.html
</small>

## Penerapan Clean Architecture pada Aplikasi Flutter

Clean Architecture adalah prinsip desain perangkat lunak yang mengutamakan pemisahan masalah dan bertujuan untuk menciptakan basis kode yang modular, terukur, dan mudah diuji. Clean Architecture memberikan panduan tentang cara menyusun basis kode dan mendefinisikan dependensi di antara berbagai lapisan aplikasi.

Dalam konteks Flutter, Clean Architecture biasanya terdiri dari beberapa lapisan berikut ini:
- Presentation Layer (UI): Lapisan ini berisi komponen antarmuka pengguna, seperti *widgets*, *screens*, dan *views*.
- Domain Layer (Business Logic): Lapisan ini berisi *use cases*, *entities*, dan *business rules*. *Use cases* mendefinisikan operasi atau tindakan yang dapat dilakukan dalam aplikasi. Entitas mewakili objek-objek penting dalam domain dan mengenkapsulasi *behavior* dan *state* mereka.
- Data Layer: Lapisan ini bertanggung jawab untuk pengambilan dan penyimpanan data. Lapisan ini terdiri dari *repositories* dan *data sources*. *Repositories* menyediakan lapisan abstraksi untuk mengakses dan memanipulasi data. *Data sources* dapat berupa *remote APIs*, database lokal, atau penyedia data eksternal lainnya.

<div align="center">
  <img src="https://res.cloudinary.com/practicaldev/image/fetch/s--8Fs2hOeU--/c_limit%2Cf_auto%2Cfl_progressive%2Cq_auto%2Cw_500/https://dev-to-uploads.s3.amazonaws.com/uploads/articles/fqeiepngw5aeco73r3wx.png" alt="Clean Architecture">
</div>

<small>
Sumber: <br>  
https://medium.com/@samra.sajjad0001/flutter-clean-architecture-5de5e9b8d093 <br>
https://dev.to/marwamejri/flutter-clean-architecture-1-an-overview-project-structure-4bhf
</small>

</details>