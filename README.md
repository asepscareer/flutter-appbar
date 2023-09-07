# AppBar
Berikut adalah penjelasan singkat tentang setiap properti yang ada dalam konstruktor AppBar dalam Flutter:
- **leading**: Widget yang akan ditampilkan di sebelah kiri AppBar. Biasanya, ini digunakan untuk menambahkan tombol kembali atau ikon akses cepat.

- **automaticallyImplyLeading**: Mengontrol apakah tombol kembali akan ditampilkan secara otomatis. Jika diatur ke true, tombol kembali akan muncul jika tidak ada widget leading yang diberikan.

- **title**: Widget yang akan digunakan sebagai judul AppBar.

- **actions**: Daftar widget yang akan ditampilkan di sebelah kanan AppBar.

- **flexibleSpace**: Widget yang akan ditampilkan di belakang AppBar. Biasanya digunakan untuk menambahkan latar belakang yang beranimasi.

- **bottom**: Widget yang akan ditampilkan di bawah AppBar, seperti tab atau teks tambahan.

- **elevation**: Mewakili ketinggian bayangan di bawah AppBar saat digulir.

- **scrolledUnderElevation**: Ketinggian bayangan saat AppBar digulir di bawahnya.

- **notificationPredicate**: Pradikat yang digunakan untuk memutuskan apakah notifikasi gulir akan diterima oleh AppBar.

- **shadowColor**: Warna bayangan di bawah AppBar.

- **surfaceTintColor**: Warna permukaan AppBar.

- **shape**: Bentuk AppBar, seperti sudut atau radius sudutnya.

- **backgroundColor**: Warna latar belakang AppBar.

- **foregroundColor**: Warna teks dan ikon di dalam AppBar.

- **iconTheme**: Tema ikon untuk ikon di dalam AppBar.

- **actionsIconTheme**: Tema ikon untuk ikon-ikon yang terletak di sebelah kanan AppBar.

- **primary**: Menentukan apakah AppBar adalah AppBar utama dalam aplikasi.

- **centerTitle**: Mengontrol apakah judul AppBar akan dipusatkan secara horizontal.

- **excludeHeaderSemantics**: Jika diatur ke true, akan mengecualikan semantik dari judul AppBar saat diakses oleh pembaca layar.

- **titleSpacing**: Ruang antara judul dan elemen-elemen lain dalam AppBar.

- **toolbarOpacity**: Tingkat kejelasan (opacity) elemen-elemen di dalam AppBar.

- **bottomOpacity**: Tingkat kejelasan (opacity) elemen-elemen di dalam bottom AppBar.

- **toolbarHeight**: Ketinggian AppBar.

- **leadingWidth**: Lebar widget leading.

- **toolbarTextStyle**: Gaya teks untuk elemen-elemen di dalam AppBar.

- **titleTextStyle**: Gaya teks untuk judul AppBar.

- **systemOverlayStyle**: Gaya overlay sistem, seperti warna status bar.

- **forceMaterialTransparency**: Memaksa transparansi bahan pada AppBar.

- **clipBehavior**: Menentukan cara pemotongan konten dalam AppBar. Ini dapat memiliki nilai Clip.none, Clip.hardEdge, Clip.antiAlias, atau Clip.antiAliasWithSaveLayer.