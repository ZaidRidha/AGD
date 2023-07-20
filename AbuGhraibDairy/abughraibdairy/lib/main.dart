import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:abughraibdairy/pages/ItemDetailPage.dart';
import 'package:abughraibdairy/pages/ContactUs.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AbuGhraib',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'bye'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<String> imageList = [
    'assets/carousel1.jpg',
    'assets/carousel2.jpg',
    'assets/carousel3.jpg',
    // Add more image paths as needed
  ];

  int _currentImageIndex = 0;
  final GlobalKey _section1Key = GlobalKey();
  final GlobalKey _section2Key = GlobalKey();
  final GlobalKey _section3Key = GlobalKey();
  final GlobalKey _section4Key = GlobalKey();
  final GlobalKey _section5Key = GlobalKey();
  final GlobalKey _section6Key = GlobalKey();

  final Uri _twitterUrl = Uri.parse('https://www.twitter.com/abu_ghraibdairy');
  final Uri _instagramUrl =
      Uri.parse('https://www.instagram.com/abu.ghraibdairy');
  final Uri _youtubeUrl = Uri.parse('https://www.youtube.com/@abu-ghraibdairy');

  Future<void> _launchUrl(Uri turi) async {
    if (!await launchUrl(turi)) {
      throw Exception('Could not launch $turi');
    }
  }

  final List<Map<String, dynamic>> sec2items = [
    {
      'name': 'دهن حر ابو غريب',
      'text':
          'دهن حر مصانع البان ابو غريب هو منتج عالي الجودة والذي يتميز بنكهته الطبيعية الرائعة',
      'image': 'assets/sec1img1.jpg',
      'fulltext':
          'دهن حر مصانع البان ابو غريب هو منتج عالي الجودة والذي يتميز بنكهته الطبيعية الرائعة والمميزة. يتم إنتاجه باستخدام أفضل المكونات الطبيعية والحليب الطازج، وهو خالٍ من الدهون المشبعة والمواد الحافظة والإضافات الصناعية. يحتوي دهن حر مصانع البان ابو غريب على العديد من العناصر الغذائية المهمة مثل البروتينات والكالسيوم والفيتامينات، مما يجعله خيارًا مثاليًا للأشخاص الذين يرغبون في تحسين صحتهم والحفاظ على لياقتهم البدنية. يمكن استخدام دهن حر مصانع البان ابو غريب في العديد من الوصفات اللذيذة مثل السلطات والمشروبات الصحية والمخبوزات، ويمكن استخدامه كبديل صحي للزبدة والزيوت الأخرى. باختصار، دهن حر مصانع البان ابو غريب هو منتج عالي الجودة والذي يتميز بنكهته الطبيعية الرائعة والفوائد الصحية العديدة. جربوه اليوم واستمتعوا بفوائده الصحية ونكهته الرائعة. دهن حر مصانع البان ابو غريب هو منتج عالي الجودة والذي يتميز بنكهته الطبيعية الرائعة والمميزة. يتم إنتاجه باستخدام أفضل المكونات الطبيعية والحليب الطازج، وهو خالٍ من الدهون المشبعة والمواد الحافظة والإضافات الصناعية. يحتوي دهن حر مصانع البان ابو غريب على العديد من العناصر الغذائية المهمة مثل البروتينات والكالسيوم والفيتامينات، مما يجعله خيارًا مثاليًا للأشخاص الذين يرغبون في تحسين صحتهم والحفاظ على لياقتهم البدنية. يمكن استخدام دهن حر مصانع البان ابو غريب في العديد من الوصفات اللذيذة مثل السلطات والمشروبات الصحية والمخبوزات، ويمكن استخدامه كبديل صحي للزبدة والزيوت الأخرى. باختصار، دهن حر مصانع البان ',
    },
    {
      'name': 'جبن مطبوخ ابو غريب',
      'text': 'جبن مطبوخ ابو غريب هو منتج لذيذ ومغذي يتميز',
      'image': 'assets/sec1img2.jpg',
      'fulltext':
          "هل تتذكرون جبنة الأبطال الشهيرة التي كنا نحبها في طفولتنا؟ حسنًا، لقد عادت! والآن حان دورنا لنتذكر هذه الذكريات الجميلة ونعيشها مع أطفالنا. تتكون جبنة الأبطال من مزيج فريد من نوعه من جبن الشيدر والزبدة والحليب المجفف والأملاح والماء، ونسبة الدهون فيها لا تزيد عن 40% من المواد الصلبة، مما يجعلها خيارًا صحيًا مفضلًا. تمتاز جبنة الأبطال من مصانع البان ابو غريب بجودتها العالية وطعمها الرائع، وهي متوفرة الآن في العديد من المتاجر والأسواق في المنطقة. فلنستمتع بطعم الطفولة مع جبنة الأبطال من مصانع البان ابو غريب، ولنخلق ذكريات جديدة مع أطفالنا."
    },

    {
      'name': 'جبنة الابطال',
      'text':
          '"هل تتذكرون جبنة الأبطال الشهيرة التي كنا نحبها في طفولتنا؟ حسنًا، لقد عادت! والآن حان دورنا',
      'image': 'assets/sec1img3.jpg',
      'fulltext':
          '"هل تتذكرون جبنة الأبطال الشهيرة التي كنا نحبها في طفولتنا؟ حسنًا، لقد عادت! والآن حان دورنا لنتذكر هذه الذكريات الجميلة ونعيشها مع أطفالنا. تتكون جبنة الأبطال من مزيج فريد من نوعه من جبن الشيدر والزبدة والحليب المجفف والأملاح والماء، ونسبة الدهون فيها لا تزيد عن 40% من المواد الصلبة، مما يجعلها خيارًا صحيًا مفضلًا. تمتاز جبنة الأبطال من مصانع البان ابو غريب بجودتها العالية وطعمها الرائع، وهي متوفرة الآن في العديد من المتاجر والأسواق في المنطقة. فلنستمتع بطعم الطفولة مع جبنة الأبطال من مصانع البان ابو غريب، ولنخلق ذكريات جديدة مع أطفالنا."',
    },
    {
      'name': 'قشطة بالزبدة النباتية',
      'text':
          'تتميز قشطة مصانع البان ابو غريب بنكهتها الغنية والكريمية، وهي مصنوعة من أجود أنواع الحليب ',
      'image': 'assets/sec1img4.jpg',
      'fulltext':
          'تتميز قشطة مصانع البان ابو غريب بنكهتها الغنية والكريمية، وهي مصنوعة من أجود أنواع الحليب الطازج والمحبب للجميع. تستخدم القشطة عادة كمكون أساسي في العديد من الحلويات والمخبوزات، وتضيف نكهة لذيذة وكريمية للأطباق. تحتوي قشطة مصانع البان ابو غريب على الكثير من العناصر الغذائية الهامة التي تحتاجها جسمك، مثل الكالسيوم والبروتين والفيتامينات. كما أنها تحتوي على نسبة منخفضة من الدهون، مما يجعلها خيارًا صحيًا للأشخاص الذين يهتمون بصحتهم. جرب قشطة مصانع البان ابو غريب في الحلويات الخاصة بك، وستشعر بالفرق الكبير في النكهة والجودة. جربها اليوم ولا تنسى مشاركة تجربتك معنا! #قشطة_مصانع_البان_ابو_غريب ',
    },
    {
      'name': 'لبن زبادي ابو غريب',
      'text':
          'لبن الزبادي من مصانع البان ابو غريب هو منتج عالي الجودة والذي يتميز بنكهته الرائعة والمميزة. ',
      'image': 'assets/sec1img5.jpg',
      'fulltext':
          'لبن الزبادي من مصانع البان ابو غريب هو منتج عالي الجودة والذي يتميز بنكهته الرائعة والمميزة. يتم إنتاجه باستخدام أفضل المكونات الطبيعية والحليب الطازج، ويتميز بقوامه الكريمي والملس. يحتوي لبن الزبادي من مصانع البان ابو غريب على العديد من العناصر الغذائية المهمة مثل البروتينات والكالسيوم والفيتامينات، مما يجعله خيارًا مثاليًا للأشخاص الذين يرغبون في تحسين صحتهم والحفاظ على لياقتهم البدنية. يمكن تناول لبن الزبادي من مصانع البان ابو غريب كوجبة خفيفة أو كوجبة إفطار، ويمكن تناوله بمفرده أو مع الفواكه أو الحبوب. كما يمكن استخدامه في العديد من الوصفات اللذيذة مثل السلطات والمشروبات الصحية. باختصار، لبن الزبادي من ',
    },
    {
      'name': 'شنينة ابو غريب',
      'text':
          'شنينة مصانع البان ابو غريب هي منتج شهير ومحبوب في المملكة العربية السعودية. إنها عبارة عن حلوى',
      'image': 'assets/sec1img6.jpg',
      'fulltext':
          'شنينة مصانع البان ابو غريب هي منتج شهير ومحبوب في المملكة العربية السعودية. إنها عبارة عن حلوى تقليدية مصنوعة من الحليب والسكر والماء الوردية، وتتميز بنكهتها الحلوة والمميزة. انها خيار مثالي لتناولها كوجبة خفيفة أو كحلوى بعد الوجبات. تتميز شنينة مصانع البان ابو غريب بجودتها العالية ونكهتها الرائعة، وهي مصنوعة باستخدام أفضل المكونات الطبيعية والحليب الطازج. كما أنها تحتوي على العديد من العناصر الغذائية المفيدة مثل الكالسيوم والبروتينات. إذا كنتم ترغبون في تجربة حلوى شهية ومميزة، فجربوا ',
    },
    {
      'name': 'لبن شنينة ابو غريب',
      'text':
          'لبن شنينة من مصانع البان ابو غريب هو منتج لذيذ ومغذي يتميز بنكهته الفريدة والمميزة. يتم إنتاجه من حليب طازج عالي الجودة،',
      'image': 'assets/sec1img7.jpg',
      'fulltext':
          'لبن شنينة من مصانع البان ابو غريب هو منتج لذيذ ومغذي يتميز بنكهته الفريدة والمميزة. يتم إنتاجه من حليب طازج عالي الجودة، ويتميز بقوامه الكريمي والمليء بالفيتامينات والمعادن الهامة لصحة الجسم. يحتوي لبن شنينة على العديد من الفوائد الصحية، فهو يحتوي على البروبيوتيك الذي يساعد على تحسين صحة الجهاز الهضمي ويعزز جهاز المناعة. كما أنه يحتوي على الكالسيوم الذي يعزز صحة العظام والأسنان. يمكن تناول لبن شنينة من مصانع البان ابو غريب كوجبة خفيفة أو كوجبة إفطار صحية، ويمكن أيضاً استخدامه في العديد من الوصفات اللذيذة مثل الحلويات والمشروبات. جرب لبن شنينة من مصانع البان ابو غريب اليوم واستمتع بنكهته الرائعة ',
    },

    // Add more items here
  ];

  final List<Map<String, dynamic>> sec3items = [
    {
      'name': 'معمل ألبان أبو غريب - العراق',
      'text': 'بغداد - العراق',
      'image': 'assets/logo2.png',
    },
    {
      'name': 'معمل ألبان أبو غريب',
      'text': 'بغداد - العراق',
      'image': 'assets/logo2.png',
    },
    {
      'name': 'البان ابو غريب',
      'text': 'بغداد - العراق',
      'image': 'assets/logo2.png',
    },
    // Add more items here
  ];

  final List<Map<String, dynamic>> sec4items = [
    {
      'text':
          'رجعنـا بقوة | بشكــل جديــد | وطعــم ولا اروع | البــــان ابو غريب | عاد الافضـــــــــــل',
      'videoID': 'wOUQCZ0PYHQ',
    },
    {
      'text': 'استمتع بتاريخ وجودة مصانع البان ابو غريب',
      'videoID': 'D4MPK1Pul5s',
    },
    {
      'text': 'رجعنـا بقوة | بشكــل جديــد | وطعــم ولا ',
      'videoID': 'wOUQCZ0PYHQ',
    },
    {
      'text': 'منتجات البان ابو غريب | عراقة الماضي ',
      'videoID': '11Etpc75A7o',
    },
    {
      'text': 'تعرفوا ويانه على ابرز فوائد لبن شنينة من',
      'videoID': '0bKg9DQJE0k',
    },
    {
      'text': 'منتجات البان ابو غريب | عراقة الماضي ',
      'videoID': '11Etpc75A7o',
    },

    // Add more items here
  ];

  final List<Map<String, dynamic>> sec5items = [
    {
      'name': 'قشطة بالزبدة النباتية',
      'text': 'البان الو غريب تعرفوا ويانه على ابرز فوائد لبن',
      'image': 'assets/sec5img.jpg',
      'fulltext':
          'تعرفوا ويانه على ابرز فوائد لبن شنينة من مصنع البان الو غريب تعرفوا ويانه على ابرز فوائد لبن شنينة من مصنع البان الو غريب تعرفوا ويانه على ابرز فوائد لبن شنينة من مصنع البان الو غريب تعرفوا ويانه على ابرز فوائد لبن شنينة من مصنع البان الو غريب تعرفوا ويانه ',
    },
    {
      'name': 'قشطة بالزبدة النباتية',
      'text': 'جبن مطبوخ ابو غريب هو منتج لذيذ ومغذي يتميز',
      'image': 'assets/sec5img.jpg',
      'fulltext':
          "تعرفوا ويانه على ابرز فوائد لبن شنينة من مصنع البان الو غريب تعرفوا ويانه على ابرز فوائد لبن شنينة من مصنع البان الو غريب تعرفوا ويانه على ابرز فوائد لبن شنينة من مصنع البان الو غريب تعرفوا ويانه على ابرز فوائد لبن شنينة من مصنع البان الو غريب تعرفوا ويانه ",
    },

    {
      'name': 'قشطة بالزبدة النباتية',
      'text': 'جبن مطبوخ ابو غريب هو منتج لذيذ ومغذي يتميز',
      'image': 'assets/sec5img.jpg',
      'fulltext':
          "تعرفوا ويانه على ابرز فوائد لبن شنينة من مصنع البان الو غريب تعرفوا ويانه على ابرز فوائد لبن شنينة من مصنع البان الو غريب تعرفوا ويانه على ابرز فوائد لبن شنينة من مصنع البان الو غريب تعرفوا ويانه على ابرز فوائد لبن شنينة من مصنع البان الو غريب تعرفوا ويانه ",
    },

    {
      'name': 'قشطة بالزبدة النباتية',
      'text': 'جبن مطبوخ ابو غريب هو منتج لذيذ ومغذي يتميز',
      'image': 'assets/sec5img.jpg',
      'fulltext':
          "تعرفوا ويانه على ابرز فوائد لبن شنينة من مصنع البان الو غريب تعرفوا ويانه على ابرز فوائد لبن شنينة من مصنع البان الو غريب تعرفوا ويانه على ابرز فوائد لبن شنينة من مصنع البان الو غريب تعرفوا ويانه على ابرز فوائد لبن شنينة من مصنع البان الو غريب تعرفوا ويانه ",
    },

    {
      'name': 'قشطة بالزبدة النباتية',
      'text': 'جبن مطبوخ ابو غريب هو منتج لذيذ ومغذي يتميز',
      'image': 'assets/sec5img.jpg',
      'fulltext':
          "تعرفوا ويانه على ابرز فوائد لبن شنينة من مصنع البان الو غريب تعرفوا ويانه على ابرز فوائد لبن شنينة من مصنع البان الو غريب تعرفوا ويانه على ابرز فوائد لبن شنينة من مصنع البان الو غريب تعرفوا ويانه على ابرز فوائد لبن شنينة من مصنع البان الو غريب تعرفوا ويانه ",
    },

    // Add more items here
  ];

  final List<Map<String, dynamic>> sec6items = [
    {
      'text': 'تعرفوا ويانه على ابرز فوائد لبن شنينة من مصنع',
      'videoID': '0bKg9DQJE0k',
    },
    {
      'text': 'تعرفوا ويانه على ابرز فوائد لبن شنينة من مصنع',
      'videoID': '0bKg9DQJE0k',
    },
    {
      'text': 'تعرفوا ويانه على ابرز فوائد لبن شنينة من مصنع',
      'videoID': '0bKg9DQJE0k',
    },
    {
      'text': 'تعرفوا ويانه على ابرز فوائد لبن شنينة من مصنع',
      'videoID': '0bKg9DQJE0k',
    },
    {
      'text': 'تعرفوا ويانه على ابرز فوائد لبن شنينة من مصنع',
      'videoID': '0bKg9DQJE0k',
    },
    {
      'text': 'تعرفوا ويانه على ابرز فوائد لبن شنينة من مصنع',
      'videoID': '0bKg9DQJE0k',
    },

    // Add more items here
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Container(
          margin:
              const EdgeInsets.only(left: 12), // Adjust the margin as needed
          child: Image.asset(
            'assets/logo2.png',
            height: 20, // Adjust the height as needed
            width: 20, // Adjust the width as needed
          ),
        ),
        actions: [
          PopupMenuButton<String>(
            icon: Icon(Icons.menu, color: Colors.black),
            onSelected: (String result) {
              // Handle menu item selection
              if (result == 'section1') {
                Scrollable.ensureVisible(
                  _section1Key.currentContext!,
                  duration: const Duration(milliseconds: 500),
                  curve: Curves.easeInOut,
                );
              } else if (result == 'section2') {
                Scrollable.ensureVisible(
                  _section2Key.currentContext!,
                  duration: const Duration(milliseconds: 500),
                  curve: Curves.easeInOut,
                );
              } else if (result == 'section3') {
                Scrollable.ensureVisible(
                  _section3Key.currentContext!,
                  duration: const Duration(milliseconds: 500),
                  curve: Curves.easeInOut,
                );
              } else if (result == 'section4') {
                Scrollable.ensureVisible(
                  _section4Key.currentContext!,
                  duration: const Duration(milliseconds: 500),
                  curve: Curves.easeInOut,
                );
              } else if (result == 'section5') {
                Scrollable.ensureVisible(
                  _section5Key.currentContext!,
                  duration: const Duration(milliseconds: 500),
                  curve: Curves.easeInOut,
                );
              } else if (result == 'section6') {
                Scrollable.ensureVisible(
                  _section6Key.currentContext!,
                  duration: const Duration(milliseconds: 500),
                  curve: Curves.easeInOut,
                );
              } else if (result == "contactus") {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => ContactUs(),
                  ),
                );
              }
              // Add more conditions for other menu items if needed
            },
            itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
              PopupMenuItem<String>(
                value: 'section1',
                child: Text('الرئيسية'),
              ),
              PopupMenuItem<String>(
                value: 'section2',
                child: Text('رسالتنا'),
              ),
              PopupMenuItem<String>(
                value: 'section3',
                child: Text('منتجاتنا'),
              ),
              PopupMenuItem<String>(
                value: 'section4',
                child: Text('وكلائنا'),
              ),
              PopupMenuItem<String>(
                value: 'section5',
                child: Text('مكتبة الفيديو'),
              ),
              PopupMenuItem<String>(
                value: 'section6',
                child: Text('الأخبار'),
              ),
              PopupMenuItem<String>(
                value: 'contactus',
                child: Text('أتصل بنا'),
              ),
              PopupMenuItem<String>(
                value: 'twitter',
                child: ListTile(
                  onTap: () {
                    launchUrl(_twitterUrl);
                  },
                  leading: SvgPicture.asset('assets/twitter.svg', height: 24),
                  title: Text('Twitter'),
                ),
              ),
              PopupMenuItem<String>(
                value: 'instagram',
                child: ListTile(
                  onTap: () {
                    launchUrl(_instagramUrl);
                  },
                  leading: SvgPicture.asset('assets/instagram.svg', height: 24),
                  title: Text('Instagram'),
                ),
              ),
              PopupMenuItem<String>(
                value: 'youtube',
                child: ListTile(
                  onTap: () {
                    launchUrl(_youtubeUrl);
                  },
                  leading: SvgPicture.asset('assets/youtube.svg', height: 24),
                  title: Text('Youtube'),
                ),
              ),
              // Add more menu items as needed
            ],
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 20, // Adjust the top margin as needed
            ),
            CarouselSlider(
              options: CarouselOptions(
                height: 200,
                aspectRatio: 16 / 9, // Adjust the aspect ratio as needed
                autoPlay: true,
                autoPlayInterval:
                    const Duration(seconds: 3), // Adjust the interval as needed
                enlargeCenterPage: true,
                onPageChanged: (index, reason) {
                  setState(() {
                    _currentImageIndex = index;
                  });
                },
              ),
              items: imageList.map((String imagePath) {
                return Container(
                  child: Image.asset(
                    imagePath,
                    fit: BoxFit.cover,
                  ),
                );
              }).toList(),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: imageList.map((String imagePath) {
                int index = imageList.indexOf(imagePath);
                return Container(
                  width: 8,
                  height: 8,
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 2),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color:
                        _currentImageIndex == index ? Colors.blue : Colors.grey,
                  ),
                );
              }).toList(),
            ),
            SizedBox(
              height: 20,
            ), // this will provide margin under the carousel

            RepaintBoundary(
              key: _section1Key,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    'رسالتنا - رؤيتنا - قيمنا',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 31),
                    textAlign: TextAlign.right,
                  ), // Bold Title
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'رسالتنا في مصانع الألبان أبو غريب هي تقديم منتجات الألبان الطازجة والصحية لعملائنا الكرام، والالتزام بأعلى معايير الجودة والنظافة والسلامة الغذائية. نحن نؤمن بأن الألبان الطازجة والصحية هي المفتاح لحياة صحية ونشطة، ونسعى جاهدين لتلبية احتياجات عملائنا وتقديم أفضل الخدمات لهم.',
                    style: TextStyle(fontSize: 15),
                    textAlign: TextAlign.right,
                  ),
                  SizedBox(
                    height: 20,
                  ),

                  Text(
                    'رؤيتنا هي أن نصبح الشركة الرائدة في صناعة الألبان في العراق، وأن نحتل مكانة مرموقة في قلوب عملائنا وأن نكون دائمًا على المستوى الأعلى من الجودة والابتكار والتميز. نحن نسعى جاهدين لتحقيق هذه الرؤية من خلال تطوير منتجاتنا وتحسين خدماتنا وتوسيع نطاق عملنا لتلبية احتياجات عملائنا في جميع أنحاء العراق.',
                    style: TextStyle(fontSize: 15),
                    textAlign: TextAlign.right,
                  ),

                  SizedBox(
                    height: 10,
                  ),

                  Text(
                    'معمل ألبان أبو غريب',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    textAlign: TextAlign.right,
                  ), // Bold Title

                  SizedBox(
                    height: 10,
                  ),

                  Container(
                    width: 380, // Adjust the width as desired
                    height: 380, // Adjust the height as desired
                    decoration: BoxDecoration(
                      color: Colors.white, // Add this line
                      borderRadius: BorderRadius.circular(
                          30), // Adjust the border radius as desired
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(
                          30), // Match the border radius of the container
                      child: Image.asset(
                        'assets/placeimage1.jpg',
                        // Add this line if you want the image to cover the entire container
                      ),
                    ),
                  ),

                  // Add the rest of your content widgets here
                ],
              ),
            ),

            SizedBox(
              height: 20,
            ),

            RepaintBoundary(
              key: _section2Key,
              child: Container(
                color: Colors.blue.shade900, // Dark blue color
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      'منتجاتنا',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 31,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.center,
                    ), // Bold Title
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 450,
                      width:
                          450, // Make sure to set the height here so the ListView knows how much space it should take up
                      child: ListView.builder(
                        scrollDirection: Axis
                            .horizontal, // This makes the list scroll horizontally
                        itemCount: sec2items.length,
                        itemBuilder: (context, index) {
                          return Container(
                            height: 400,
                            width: 400,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(40),
                              child: Column(
                                children: <Widget>[
                                  Expanded(
                                    child: Image.asset(
                                      sec2items[index]['image'],
                                      fit: BoxFit
                                          .cover, // This makes the image cover the entire container
                                    ),
                                  ),
                                  Text(
                                    sec2items[index]['name'],
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 24,
                                        color: Colors
                                            .white // Adjust the text size as desired
                                        ),
                                  ),
                                  Container(
                                    width:
                                        250, // replace with the desired width
                                    child: Text(
                                      sec2items[index]['text'],
                                      style: TextStyle(
                                          fontSize: 15,
                                          color: Colors
                                              .white // Adjust the text size as desired
                                          ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  ElevatedButton(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => ItemDetailPage(
                                              item: sec2items[index]),
                                        ),
                                      );
                                    },
                                    style: ElevatedButton.styleFrom(
                                      textStyle: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15,
                                        color: Colors
                                            .black, // Set the text color to black
                                      ),
                                      primary: Colors
                                          .white, // Set the button's background color to white
                                    ),
                                    child: Text(
                                      'أقرأ المزيد',
                                      style: TextStyle(
                                          color: Colors
                                              .black), // Set the text color to black
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),

            RepaintBoundary(
              key: _section3Key,
              child: Container(
                color: Color.fromARGB(255, 67, 134, 71), // Dark blue color
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      'وكلائنا',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 31,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.center,
                    ), // Bold Title
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 400,
                      width:
                          400, // Make sure to set the height here so the ListView knows how much space it should take up
                      child: ListView.builder(
                        scrollDirection: Axis
                            .horizontal, // This makes the list scroll horizontally
                        itemCount: sec3items.length,
                        itemBuilder: (context, index) {
                          return Container(
                            height: 400,
                            width: 400,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(40),
                              child: Column(
                                children: <Widget>[
                                  Expanded(
                                    child: Image.asset(
                                      sec3items[index]['image'],
                                      fit: BoxFit
                                          .cover, // This makes the image cover the entire container
                                    ),
                                  ),
                                  Text(
                                    sec3items[index]['name'],
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 24,
                                        color: Colors
                                            .white // Adjust the text size as desired
                                        ),
                                  ),
                                  Container(
                                    width:
                                        250, // replace with the desired width
                                    child: Text(
                                      sec3items[index]['text'],
                                      style: TextStyle(
                                          fontSize: 15,
                                          color: Colors
                                              .white // Adjust the text size as desired
                                          ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  SizedBox(height: 10),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),

            RepaintBoundary(
              key: _section4Key,
              child: Container(
                color: Colors.blue.shade900, // Dark blue color
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      'مكتبة الفيديو',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 31,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.center,
                    ), // Bold Title
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 350, // Increased the height
                      width: 400, // Increased the width
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: sec4items.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.all(
                                15.0), // Add padding around each video
                            child: Container(
                              width:
                                  350, // Increased the width of the video container
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment
                                    .center, // Center the children vertically
                                children: <Widget>[
                                  AspectRatio(
                                    aspectRatio:
                                        16 / 9, // Maintained the aspect ratio
                                    child: YoutubePlayer(
                                      controller: YoutubePlayerController(
                                        initialVideoId: sec4items[index]
                                            ['videoID'],
                                        flags: YoutubePlayerFlags(
                                          autoPlay: false,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    child: Center(
                                      // Center the text horizontally
                                      child: Text(
                                        sec4items[index][
                                            'text'], // The text that you want to add
                                        textAlign:
                                            TextAlign.center, // Center the text
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 18,
                                        ),
                                      ),
                                    ),
                                  ), // Your text here
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),

            RepaintBoundary(
              key: _section5Key,
              child: Container(
                color: Color.fromARGB(255, 67, 134, 71), // Dark blue color
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      'منتجاتنا',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 31,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.center,
                    ), // Bold Title
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 450,
                      width:
                          450, // Make sure to set the height here so the ListView knows how much space it should take up
                      child: ListView.builder(
                        scrollDirection: Axis
                            .horizontal, // This makes the list scroll horizontally
                        itemCount: sec5items.length,
                        itemBuilder: (context, index) {
                          return Container(
                            height: 400,
                            width: 400,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(40),
                              child: Column(
                                children: <Widget>[
                                  Expanded(
                                    child: Image.asset(
                                      sec5items[index]['image'],
                                      fit: BoxFit
                                          .cover, // This makes the image cover the entire container
                                    ),
                                  ),
                                  Text(
                                    sec5items[index]['name'],
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 24,
                                        color: Colors
                                            .white // Adjust the text size as desired
                                        ),
                                  ),
                                  Container(
                                    width:
                                        250, // replace with the desired width
                                    child: Text(
                                      sec5items[index]['text'],
                                      style: TextStyle(
                                          fontSize: 15,
                                          color: Colors
                                              .white // Adjust the text size as desired
                                          ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  ElevatedButton(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => ItemDetailPage(
                                              item: sec5items[index]),
                                        ),
                                      );
                                    },
                                    style: ElevatedButton.styleFrom(
                                      textStyle: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15,
                                        color: Colors
                                            .black, // Set the text color to black
                                      ),
                                      primary: Colors
                                          .white, // Set the button's background color to white
                                    ),
                                    child: Text(
                                      'أقرأ المزيد',
                                      style: TextStyle(
                                          color: Colors
                                              .black), // Set the text color to black
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),

            RepaintBoundary(
              key: _section6Key,
              child: Container(
                color: Colors.blue.shade900, // Dark blue color
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      'مكتبة الفيديو',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 31,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.center,
                    ), // Bold Title
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 350, // Increased the height
                      width: 400, // Increased the width
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: sec6items.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.all(
                                15.0), // Add padding around each video
                            child: Container(
                              width:
                                  350, // Increased the width of the video container
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment
                                    .center, // Center the children vertically
                                children: <Widget>[
                                  AspectRatio(
                                    aspectRatio:
                                        16 / 9, // Maintained the aspect ratio
                                    child: YoutubePlayer(
                                      controller: YoutubePlayerController(
                                        initialVideoId: sec6items[index]
                                            ['videoID'],
                                        flags: YoutubePlayerFlags(
                                          autoPlay: false,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    child: Center(
                                      // Center the text horizontally
                                      child: Text(
                                        sec6items[index][
                                            'text'], // The text that you want to add
                                        textAlign:
                                            TextAlign.center, // Center the text
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 18,
                                        ),
                                      ),
                                    ),
                                  ), // Your text here
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),

            Container(
              width: double.infinity,
              color: Color.fromARGB(255, 3, 37, 88),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  SizedBox(height: 10),
                  Text(
                    'عدد الزيارات: 12831',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'معمل ألبان أبو غريب',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'أبو غريب - بغداد',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'الأدارة: info@issexperts.co.uk',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'المبيعات: info@issexperts.co.uk',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'تابعونا على وسائل التواصل الإجتماعي',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
