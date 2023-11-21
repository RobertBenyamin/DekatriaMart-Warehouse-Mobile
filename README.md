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

14. `SnackBar`: Widget ini digunakan untuk menampilkan pesan umpan balik singkat di bagian bawah layar.

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

<details>
<summary>Tugas 9</summary>

## Daftar Isi

1. [Proses Pengerjaan Tugas](#proses-pengerjaan-tugas-2)
2. [Apakah bisa kita melakukan pengambilan data JSON tanpa membuat model terlebih dahulu? Jika iya, apakah hal tersebut lebih baik daripada membuat model sebelum melakukan pengambilan data JSON?](#apakah-bisa-kita-melakukan-pengambilan-data-json-tanpa-membuat-model-terlebih-dahulu-jika-iya-apakah-hal-tersebut-lebih-baik-daripada-membuat-model-sebelum-melakukan-pengambilan-data-json)
3. [Fungsi dari CookieRequest dan Mengapa Instance CookieRequest Perlu untuk Dibagikan ke Semua Komponen di Aplikasi Flutter](#fungsi-dari-cookierequest-dan-mengapa-instance-cookierequest-perlu-untuk-dibagikan-ke-semua-komponen-di-aplikasi-flutter)
4. [Mekanisme Pengambilan Data dari JSON ke Flutter](#mekanisme-pengambilan-data-dari-json-ke-flutter)
5. [Mekanisme Autentikasi dari Input Data Akun pada Flutter ke Django](#mekanisme-autentikasi-dari-input-data-akun-pada-flutter-ke-django)
6. [Daftar Widget pada Tugas ini beserta Kegunaannya](#daftar-widget-pada-tugas-ini-beserta-kegunaannya-1)

## Proses Pengerjaan Tugas

1. Menambahkan dependensi yang diperlukan.
    ```
    flutter pub add provider
    flutter pub add pbp_django_auth
    flutter pub add http
    ```
2. Menyediakan `CookieRequest` *library* ke semua *child widgets* dengan menggunakan `Provider` pada file `menu.dart`.
3. Membuat file `login.dart` pada direktori `screens` yang berfungsi untuk menampilkan form untuk login.
4. Mengarahkan `main.dart` ke `login.dart`.
5. Membuat file `item.dart` pada `models` yang berisikan class `Item`.
6. Membuat file `list_item.dart` pada direktori `screens` yang berfungsi untuk menampilkan list seluruh `Item` yang telah di*fetch* dari server.
7. Memodifikasi file `item_form.dart` pada direktori `screens` agar dapat mengubah input yang diterima ke dalam JSON kemudian mengirimkannya ke server.
8. Membuat file `detail_screen.dart` pada direktori `screens` yang berfungsi untuk menampilkan seluruh informasi Item dengan detail.
9. Memodifikasi `menu.dart` pada direktori `screens` agar tombol logout dapat membuat pengguna keluar dari aplikasi kemudian pergi ke halaman login.

## Apakah bisa kita melakukan pengambilan data JSON tanpa membuat model terlebih dahulu? Jika iya, apakah hal tersebut lebih baik daripada membuat model sebelum melakukan pengambilan data JSON?

Ya, kita bisa melakukan pengambilan data JSON tanpa membuat model terlebih dahulu, tetapi hal ini tidak terlalu disarankan karena JSON menggunakan syntax JavaScript sehingga rawan terjadi error ketika berinteraksi dengan JSON polos karena adanya perbedaan syntax tersebut. Di sisi lain, ketika kita membuat model terlebih dahulu, kita memastikan JSON telah dikonversi ke syntax pemrograman yang sedang kita gunakan sehingga menjadi lebih aman ketika mengolah data tersebut.

<small>
Sumber: <br>  
https://medium.com/geekculture/analyze-json-data-like-a-pro-without-writing-a-single-line-of-code-be5a0ec2b335 <br>
https://medium.flutterdevs.com/parsing-complex-json-in-flutter-b7f991611d3e
</small>

## Fungsi dari CookieRequest dan Mengapa Instance CookieRequest Perlu untuk Dibagikan ke Semua Komponen di Aplikasi Flutter

Fungsi dari CookieRequest adalah untuk menyediakan akses ke data cookie yang dibutuhkan oleh berbagai bagian dari aplikasi. CookieRequest perlu untuk dibagikan ke semua komponen di aplikasi Flutter agar komponen-komponen yang berbeda dapat mengakses dan menggunakan data cookie tersebut tanpa perlu membuat instance CookieRequest baru setiap kali. Membagikan instance CookieRequest ke semua komponen mempermudah koordinasi dan pertukaran data antar komponen dalam aplikasi. Hal ini dapat meningkatkan efisiensi dan memastikan konsistensi dalam penggunaan data cookie di seluruh aplikasi Flutter.

<small>
Sumber: <br>  
https://pub.dev/packages/pbp_django_auth
</small>

## Mekanisme Pengambilan Data dari JSON ke Flutter

1. Mengirimkan GET Request ke url `http://robert-benyamin-tugas.pbp.cs.ui.ac.id/get-item/` untuk mendapatkan JSON yang berisi list of Items.
    ```dart
    var url = Uri.parse('http://robert-benyamin-tugas.pbp.cs.ui.ac.id/get-item/');
        var response = await http.get(
          url,
          headers: {"Content-Type": "application/json"},
        );
    ```
2. Menggunakan `jsonDecode` untuk mengubah http response body menjadi bentuk JSON.
    ```dart
    var data = jsonDecode(utf8.decode(response.bodyBytes));
    ```
3. Membuat object Item menggunakan data JSON yang telah didapatkan kemudian menyimpannya dalam `listItem`.
    ```dart
    List<Item> listItem = [];
    for (var d in data) {
      if (d != null) {
        listItem.add(Item.fromJson(d));
      }
    }
    return listItem;
    ```
4. Menampilkan semua Item menggunakan `ListView.builder()`. Setiap Item ditampilkan menggunakan `Card()` yang dibungkus oleh `InkWell()`.
    ```dart
    ListView.builder(
      itemCount: snapshot.data!.length,
      itemBuilder: (_, index) => InkWell(
            ...
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                ...
              ),
            ),
      )
    )
    ```
5. Jika suatu Item diklik, maka seluruh data Item tersebut akan dikirimkan ke halaman `DetailItemPage()` untuk kemudian ditampilkan secara lebih detail.
    ```dart
    onTap: () {
      Navigator.push(context,
          MaterialPageRoute(builder: (context) {
        return DetailItemPage(
            fields: snapshot.data![index].fields);
      }));
    },
    ```

## Mekanisme Autentikasi dari Input Data Akun pada Flutter ke Django

1. Membuat object `request` menggunakan `CookieRequest`.
    ```dart
    final request = context.watch<CookieRequest>();
    ```
2. Mengambil input `Username` dan `Password` dari pengguna menggunakan `TextFormField()`.
3. Mengirimkan data Username dan Password ke url http://robert-benyamin-tugas.pbp.cs.ui.ac.id/auth/login/ dengan melakukan login request.
    ```dart
    final response =
        await request.login("http://robert-benyamin-tugas.pbp.cs.ui.ac.id/auth/login/", {
      'username': username,
      'password': password,
    });
    ```
4. Jika autentikasi berhasil, maka pengguna diarahkan ke halaman `MyHomePage()`. Jika gagal maka akan ditampilkan `AlertDialog()` berisi pesan bahwa login gagal.
    ```dart
    if (request.loggedIn) {
      ...
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => MyHomePage()),
      );
      ...
    } else {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          ...
        ),
      );
    }
    ```

## Daftar Widget pada Tugas ini beserta Kegunaannya

1. `Provider`: Widget ini menyediakan objek atau data untuk diakses oleh widget di bawahnya.

2. `LeftDrawer`: Widget untuk menampilkan drawer di bagian kiri pada halaman utama. 

3. `TextFormField`: Widget untuk menerima input teks dari pengguna pada formulir. 

4. `ElevatedButton`: Widget untuk menampilkan tombol untuk memicu tindakan tertentu.

5. `Row`: Widget ini digunakan untuk mengatur letak *children* widgetnya secara horizontal.

6. `ListView`: Widget ini digunakan untuk mengatur letak *children* widgetnya dalam sebuah *scrollable list* secara vertikal.

7. `FutureBuilder`:  Widget ini digunakan untuk membangun antarmuka pengguna berdasarkan hasil dari sebuah **Future**, yang biasanya digunakan untuk menangani operasi asinkron seperti permintaan HTTP, pembacaan file, atau tugas-tugas asinkron 
lainnya. 

8. `CircularProgressIndicator`: Widget ini digunakan sebagai indikator *loading* ketika aplikasi sedang menunggu data dari server.

9. `Navigator.push`: Widget ini digunakan untuk menambahkan rute lain ke atas tumpukan *screen* (*stack*) saat ini.

10. `Navigator.pushReplacement`: Widget digunakan untuk mengganti rute paling atas tumpukan *screen* (*stack*) saat ini.

11. `MaterialPageRoute`: Widget ini digunakan untuk memberikan efek animasi ketika berpindah layar.

12. `Align`: Widget ini digunakan untuk menempatkan *child* widget di dalamnya secara relatif terhadap posisi yang ditentukan di dalam *parent*. 

13. `SizedBox`: Widget ini digunakan untuk memberikan dimensi tetap pada *child* widget di dalamnya. 

14. `NumberFormat.decimalPattern`: WIdget ini digunakan untuk memformat angka dengan pemisah ribuan.

Beberapa widget lainnya masih sama seperti tugas sebelumnya yang dapat di lihat [di sini](#daftar-widget-pada-tugas-ini-beserta-kegunaannya)

<small>
Sumber: <br>  
https://api.flutter.dev/flutter/material/material-library.html
</small>

</details>