class PlanetModel {
  PlanetModel({
    this.name,
    this.order,
    this.thumbnail,
    this.shortDescription,
    this.diameter,
    this.distance,
    this.revolution,
    this.rotation,
    this.revolutionUnit,
    this.description,
  });

  String name;
  int order;
  String thumbnail;
  String shortDescription;
  int rotation;
  int revolution;
  int diameter;
  num distance;
  String revolutionUnit;
  String description;
}

List<PlanetModel> planets = [
  PlanetModel(
    name: "Merkurius",
    order: 1,
    thumbnail: "assets/images/mercury.png",
    distance: 58,
    rotation: 59,
    revolution: 88,
    revolutionUnit: "hari",
    diameter: 4879,
    description: '''
    Merkurius adalah planet yang paling dekat dengan matahari. Jarak dari Merkurius ke matahari hanya sekitar 58 juta km. Dengan jarak yang dekat ini, pada siang hari suhu permukaan Merkurius mencapai 450 derajat Celcius dan pada malam hari sekitar 180 derajat Celcius.

    Planet merkurius adalah planet terkecil disistem tata surya karena hanya memiliki diameter 4862 km dan tidak memiliki satelit alami. Oleh karena itu, merkurius membutuhkan waktu 88 hari untuk mengelilingi matahari dan memiliki periode rotasi 59 hari.
    ''',
    shortDescription:
        "Merupakan planet yang paling dekat dengan matahari, memiliki orbit yang paling pendek dan paling cepat mengelilingi matahari.",
  ),
  PlanetModel(
    name: "Venus",
    order: 3,
    thumbnail: "assets/images/venus.png",
    distance: 108,
    rotation: 243,
    revolution: 225,
    revolutionUnit: "hari",
    diameter: 12104,
    description: '''
    Venus adalah planet kedua terdekat dengan matahari yang berjarak sekitar 108 juta km. Planet Venus tidak memiliki satelit seperti bumi tetapi Venus adalah benda langit paling terang setelah matahari dan bulan.

    Bentuk dan ukuran venus hampir mirip dengan bumi. Tidak hanya itu saja komposisi planet, dan gravitasi mirip dengan planet Bumi. Namun kenyataannya venus dan bumi adalah planet yang berbeda.

    Venus memiliki tekanan atmosfer 92 kali lipat lebih besar dari bumi. Planet Venus memiliki orbit mengelilingi matahari selama 224,7 hari. Selain itu, Venus adalah planet terpanas di tata surya karena suhu permukaannya bisa mencapai 735 derajat kelvin.
    ''',
    shortDescription:
        "Merupakan planet dengan temperatur permukaan paling panas dibandingkan dengan semua planet lainnya",
  ),
  PlanetModel(
    name: "Bumi",
    order: 3,
    distance: 150,
    rotation: 24,
    revolution: 365,
    revolutionUnit: "hari",
    diameter: 12742,
    thumbnail: "assets/images/earth.png",
    description: '''
    Bumi adalah planet ketiga setelah Venus yang mengelilingi matahari dan satu-satunya planet yang memiliki kehidupan. Hal ini ditandai dengan adanya sumber kehidupan berupa air, oksigen, karbon dioksida, lapisan ozon dan unsur kehidupan lainnya.

    Interaksi bumi dengan objek lain diluar angkasa disebabkan karena adanya gravitasi. Gravitasi ini yang menyebabkan bumi dapat berinteraksi dengan matahari dan bulan yang merupakan satelit alami bumi.

    Planet bumi memiliki orbit mengelilingi matahari atau berevolusi selama 365,26 hari, yang kita kenal selama 1 tahun. Revolusi bumi terhadap matahari menyebabkan terjadinya pergantian musim, sedangkan rotasi bumi adalah perputaran bumi yang menyebabkan terjadinya siang dan malam.

    Bumi tidak berbentuk seperti bola atau lingkaran sempurna. Melainkan terdapat tonjolan pada daerah khatulistiwa yang disebabkan karena perputaran bumi.
    ''',
    shortDescription:
        "Merupakan satu-satunya planet yang memiliki air dalam bentuk cair dan satu-satunya planet yang memiliki kehidupan saat ini",
  ),
  PlanetModel(
    name: "Mars",
    order: 4,
    thumbnail: "assets/images/mars.png",
    distance: 228,
    rotation: 25,
    revolution: 687,
    revolutionUnit: "hari",
    diameter: 6779,
    description: '''
    Planet mars adalah planet keempatdari matahari dan planet kedua terkecil setelah merkurius yang memiliki diameter sekitar 6.800 km. Mars memiliki jarak ke matahari sekitar 228 juta km dengan waktu satu kali orbit selama 687 hari dan periode rotasi sekitar 24,6 jam.

    Kata Mars diambil dari bahasa Romawi yang berarti dewa perang, selain itu Mars juga sering disebut sebagai planet merah karena permukaannya yang berwarna merah ketika dilihat dengan mata telanjang, hal ini disebabkan karena reaksi oksida besi yang terjadi pada permukaan mars.

    Mars memiliki dua satelit alami yaitu Phobos dan Deimos yang berukuran kecil dan berbentuk tidak teratur. Karakteristik planet mars yaitu planet berbatu dengan lapisan atmosfer tipis, terdapat kawah, arus lahar gunung berapi yang dahsyat, lembah-lembah, padang pasir, dan es di kutubnya.
    ''',
    shortDescription:
        "Merupakan planet keempat dari matahari, dikenal sebagai Planet Merah",
  ),
  PlanetModel(
    name: "Jupiter",
    order: 5,
    thumbnail: "assets/images/jupiter.png",
    distance: 776.43,
    rotation: 9,
    revolution: 12,
    revolutionUnit: "tahun",
    diameter: 142860,
    description: '''
    Jupiter adalah planet kelima dari matahari dan merupakan planet yang terbesar dalam sistem tata surya. Jupiter memiliki diameter pada permukaannya sekitar 142.860 km dan memiliki volume yang mampu menampung 1.300 kali bumi.

    Jupiter adalah gas raksasa yang sebagian besar tersusun dari helium dan hidrogen dengan massa seperseribu massa Matahari dan 2,5 kali jumlah massa seluruh planet di Tata Surya.

    Jupiter memiliki gas berwarna merah yang berputar mengelilingi tengah-tengah planet jupiter sehingga akan membentuk ikat pinggang merah raksasa yang menyebabkan terjadinya badai besar di permukaan Jupiter. Perlu diketahui bahwa rotasi Jupiter terjadi selama 9,8 jam yang sekitar 2,5 kali lebih cepat dari bumi dan mempunyai waktu revolusi sekitar 12 tahun.
    ''',
    shortDescription:
        "Merupakan planet yang paling besar dan paling masif, serta berputar paling cepat dibandingkan planet lainnya",
  ),
  PlanetModel(
    name: "Saturnus",
    order: 6,
    thumbnail: "assets/images/saturn.png",
    distance: 1400,
    rotation: 10,
    revolution: 29,
    revolutionUnit: "tahun",
    diameter: 116460,
    description: '''
    Saturnus adalah planet keenam dari Matahari dan merupakan planet terbesar kedua setelah Jupiter. Kita tahu bahwa planet Saturnus adalah planet paling cantik diantara planet lainnya karena saturnus memiliki cincin yang mengelilingi planet.

    Cincin pada saturnus tersusun dari komponen cincin-cincin kecil yang berjumlah sangat banyak. Cincin-cincin kecil ini tersusun dari gas beku dan butiran-butiran. Menurut para ahli Astronomi butiran-butiran ini merupakan peninggalan dari satelit yang hancur karena benturan dengan planet-planet yang lainnya.

    Jika kita mengamati dari Bumi, pengamatan terhadap Saturnus tidak terlalu tampak hal ini dikarenakan letak Saturnus sangat jauh dari Matahari sehingga cahaya pantulan Saturnus kurang jelas.

    Dalam satu kali berevolusi mengelilingi matahari, planet Saturnus membutuhkan waktu selama 29,46 tahun. Planet Saturnus juga melakukan rotasi atau berputar pada porosnya. Dalam sekali berotasi Saturnus membutuhkan waktu 10 jam 40 menit 24 detik, sangat singkat dibandingkan dengan Bumi. Dan setiap 378 hari, Planet Bumi dan Planet Saturnus serta Matahari berada dalam satu garis lurus.
    ''',
    shortDescription:
        "Merupakan planet yang memiliki sistim cincin paling besar dan luas. Cincin tersebut dibentuk oleh milyaran batuan beku yang mengitari Saturnus.",
  ),
  PlanetModel(
    name: "Uranus",
    order: 7,
    thumbnail: "assets/images/uranus.png",
    distance: 2900,
    rotation: 17,
    revolution: 84,
    revolutionUnit: "tahun",
    diameter: 50100,
    description: '''
    Uranus adalah planet ketujuh dari matahari dan termasuk planet terbesar ketiga setelah Jupiter dan Saturnus. Planet Uranus terkenal dengan sebutannya sebagai planet paling dingin di tata surya. Hal ini karena suhu minimun disana bisa mencapai -224 celsius.

    Selain menjadi planet terdingin, Planet Saturnus mempunyai keunikan dalam rotasinya. Planet ini berotasi atau berputar ke porosnya dengan arah ke depan sehingga salah satu kutub menghadap ke arah matahari. Menurut para astronom salah satu kutub yang mengarah ke matahari tersebut disebabkan karena tumbukan dengan suatu objek yang besar sehingga mengakibatkan arah rotasinya bergeser dan berbeda dengan planet-planet lainnya.

    Objek Astronomi ini hancur dan membekas ketika benturan dengan uranus. Sisa dari kehancuran ini membentuk awan dan uap air batu-batu di sekeliling uranus yang berbentuk cincin tipis.

    Planet Uranus memiliki jarak dari matahari sekitar 2.870 juta km yang mempunyai diameter sekitar 50.100 km. Sekali berotasi Uranus membutuhkan waktu selama 11 jam dan dalam revolusinya Uranus membutuhkan waktu mengelilingi matahari sekitar 4 tahun.  
    ''',
    shortDescription:
        "Merupakan planet yang mengorbit matahari dengan sisi kemiringan planet sebesar 98 derajat",
  ),
  PlanetModel(
    name: "Neptunus",
    order: 8,
    thumbnail: "assets/images/neptune.png",
    distance: 4450,
    rotation: 16,
    revolution: 164,
    revolutionUnit: "tahun",
    diameter: 49530,
    description: '''
    Planet Neptunus adalah planet kedelapan yang dihitung dari Matahari. Neptunus merupakan planet terbesar keempat di tata surya yang memiliki diameter sekitar 49.530 km. Menurut para ahli Astronomi massa Neptunus 17 kali lipat lebih besar daripada Bumi dan sedikit lebih besar dari pada Planet Uranus.

    Neptunus mengelilingi matahari pada jarak 4.450 juta kilo metermeter sehingga membutuhkan waktu sekitar 164,8 tahun dalam sekali berevolusi dan dalam sekali putaran, Neptunus membutuhkan waktu 16,1 jam.

    Neptunus dinobatkan sebagai planet paling berangin di tata surya hal ini dikarenakan Neptunus memiliki angin yang badai yang sangat sering terjadi, sehingga kapan saja badai besar bisa terjadi di planet ini. 

    Hampir sama dengan Saturnus dan Uranus, Planet Neptunus juga emiliki cincin yang tipis. Disamping itu, jarak Neptunus dengan Matahari sangat jauh sehingga atmosfer Neptunus terluar merupakan tempat yang sangat dingin di dalam Tata Surya dengan suhu minus 218 derajat celcius.
    ''',
    shortDescription:
        "Merupakan planet yang terjauh dari matahari dan menjadikannya sebagai tempat yang sangat dingin.",
  )
];
