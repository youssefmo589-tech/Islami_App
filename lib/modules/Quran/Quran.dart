import 'package:flutter/material.dart';
import 'package:islami/core/utilities/recentSura.dart';
import 'package:islami/modules/Quran/Widgets/Recently.dart';
import 'package:islami/modules/Quran/Widgets/SuraItem.dart';

import '../../core/AppRoutes/AppRouteName.dart';
import '../../core/gen/assets.gen.dart';
import '../../core/theme/AppColors.dart';
import '../../model/sura_datamodel.dart';


List<SuraDatamodel> suras = [
  SuraDatamodel(suraNameEN: 'Al-Fatiha',
      suraNameAR: 'الفاتحه',
      versecount: 7,
      suranumber: 1),
  SuraDatamodel(suraNameEN: 'Al-Baqarah',
      suraNameAR: 'البقرة',
      versecount: 286,
      suranumber: 2),
  SuraDatamodel(suraNameEN: 'Aal-E-Imran',
      suraNameAR: 'آل عمران',
      versecount: 200,
      suranumber: 3),
  SuraDatamodel(suraNameEN: 'An-Nisa',
      suraNameAR: 'النساء',
      versecount: 176,
      suranumber: 4),
  SuraDatamodel(suraNameEN: 'Al-Maidah',
      suraNameAR: 'المائدة',
      versecount: 120,
      suranumber: 5),
  SuraDatamodel(suraNameEN: 'Al-Anam',
      suraNameAR: 'الأنعام',
      versecount: 165,
      suranumber: 6),
  SuraDatamodel(suraNameEN: 'Al-Araf',
      suraNameAR: 'الأعراف',
      versecount: 206,
      suranumber: 7),
  SuraDatamodel(suraNameEN: 'Al-Anfal',
      suraNameAR: 'الأنفال',
      versecount: 75,
      suranumber: 8),
  SuraDatamodel(suraNameEN: 'At-Tawbah',
      suraNameAR: 'التوبة',
      versecount: 129,
      suranumber: 9),
  SuraDatamodel(suraNameEN: 'Yunus',
      suraNameAR: 'يونس',
      versecount: 109,
      suranumber: 10),
  SuraDatamodel(
      suraNameEN: 'Hud', suraNameAR: 'هود', versecount: 123, suranumber: 11),
  SuraDatamodel(suraNameEN: 'Yusuf',
      suraNameAR: 'يوسف',
      versecount: 111,
      suranumber: 12),
  SuraDatamodel(suraNameEN: 'Ar-Rad',
      suraNameAR: 'الرعد',
      versecount: 43,
      suranumber: 13),
  SuraDatamodel(suraNameEN: 'Ibrahim',
      suraNameAR: 'إبراهيم',
      versecount: 52,
      suranumber: 14),
  SuraDatamodel(suraNameEN: 'Al-Hijr',
      suraNameAR: 'الحجر',
      versecount: 99,
      suranumber: 15),
  SuraDatamodel(suraNameEN: 'An-Nahl',
      suraNameAR: 'النحل',
      versecount: 128,
      suranumber: 16),
  SuraDatamodel(suraNameEN: 'Al-Isra',
      suraNameAR: 'الإسراء',
      versecount: 111,
      suranumber: 17),
  SuraDatamodel(suraNameEN: 'Al-Kahf',
      suraNameAR: 'الكهف',
      versecount: 110,
      suranumber: 18),
  SuraDatamodel(suraNameEN: 'Maryam',
      suraNameAR: 'مريم',
      versecount: 98,
      suranumber: 19),
  SuraDatamodel(
      suraNameEN: 'Ta-Ha', suraNameAR: 'طه', versecount: 135, suranumber: 20),
  SuraDatamodel(suraNameEN: 'Al-Anbiya',
      suraNameAR: 'الأنبياء',
      versecount: 112,
      suranumber: 21),
  SuraDatamodel(suraNameEN: 'Al-Hajj',
      suraNameAR: 'الحج',
      versecount: 78,
      suranumber: 22),
  SuraDatamodel(suraNameEN: 'Al-Muminun',
      suraNameAR: 'المؤمنون',
      versecount: 118,
      suranumber: 23),
  SuraDatamodel(suraNameEN: 'An-Nur',
      suraNameAR: 'النّور',
      versecount: 64,
      suranumber: 24),
  SuraDatamodel(suraNameEN: 'Al-Furqan',
      suraNameAR: 'الفرقان',
      versecount: 77,
      suranumber: 25),
  SuraDatamodel(suraNameEN: 'Ash-Shuara',
      suraNameAR: 'الشعراء',
      versecount: 227,
      suranumber: 26),
  SuraDatamodel(suraNameEN: 'An-Naml',
      suraNameAR: 'النّمل',
      versecount: 93,
      suranumber: 27),
  SuraDatamodel(suraNameEN: 'Al-Qasas',
      suraNameAR: 'القصص',
      versecount: 88,
      suranumber: 28),
  SuraDatamodel(suraNameEN: 'Al-Ankabut',
      suraNameAR: 'العنكبوت',
      versecount: 69,
      suranumber: 29),
  SuraDatamodel(suraNameEN: 'Ar-Rum',
      suraNameAR: 'الرّوم',
      versecount: 60,
      suranumber: 30),
  SuraDatamodel(suraNameEN: 'Luqman',
      suraNameAR: 'لقمان',
      versecount: 34,
      suranumber: 31),
  SuraDatamodel(suraNameEN: 'As-Sajda',
      suraNameAR: 'السجدة',
      versecount: 30,
      suranumber: 32),
  SuraDatamodel(suraNameEN: 'Al-Ahzab',
      suraNameAR: 'الأحزاب',
      versecount: 73,
      suranumber: 33),
  SuraDatamodel(
      suraNameEN: 'Saba', suraNameAR: 'سبأ', versecount: 54, suranumber: 34),
  SuraDatamodel(suraNameEN: 'Fatir',
      suraNameAR: 'فاطر',
      versecount: 45,
      suranumber: 35),
  SuraDatamodel(
      suraNameEN: 'Ya-Sin', suraNameAR: 'يس', versecount: 83, suranumber: 36),
  SuraDatamodel(suraNameEN: 'As-Saffat',
      suraNameAR: 'الصافات',
      versecount: 182,
      suranumber: 37),
  SuraDatamodel(
      suraNameEN: 'Sad', suraNameAR: 'ص', versecount: 88, suranumber: 38),
  SuraDatamodel(suraNameEN: 'Az-Zumar',
      suraNameAR: 'الزمر',
      versecount: 75,
      suranumber: 39),
  SuraDatamodel(suraNameEN: 'Ghafir',
      suraNameAR: 'غافر',
      versecount: 85,
      suranumber: 40),
  SuraDatamodel(suraNameEN: 'Fussilat',
      suraNameAR: 'فصّلت',
      versecount: 54,
      suranumber: 41),
  SuraDatamodel(suraNameEN: 'Ash-Shura',
      suraNameAR: 'الشورى',
      versecount: 53,
      suranumber: 42),
  SuraDatamodel(suraNameEN: 'Az-Zukhruf',
      suraNameAR: 'الزخرف',
      versecount: 89,
      suranumber: 43),
  SuraDatamodel(suraNameEN: 'Ad-Dukhan',
      suraNameAR: 'الدّخان',
      versecount: 59,
      suranumber: 44),
  SuraDatamodel(suraNameEN: 'Al-Jathiya',
      suraNameAR: 'الجاثية',
      versecount: 37,
      suranumber: 45),
  SuraDatamodel(suraNameEN: 'Al-Ahqaf',
      suraNameAR: 'الأحقاف',
      versecount: 35,
      suranumber: 46),
  SuraDatamodel(suraNameEN: 'Muhammad',
      suraNameAR: 'محمد',
      versecount: 38,
      suranumber: 47),
  SuraDatamodel(suraNameEN: 'Al-Fath',
      suraNameAR: 'الفتح',
      versecount: 29,
      suranumber: 48),
  SuraDatamodel(suraNameEN: 'Al-Hujurat',
      suraNameAR: 'الحجرات',
      versecount: 18,
      suranumber: 49),
  SuraDatamodel(
      suraNameEN: 'Qaf', suraNameAR: 'ق', versecount: 45, suranumber: 50),
  SuraDatamodel(suraNameEN: 'Adh-Dhariyat',
      suraNameAR: 'الذاريات',
      versecount: 60,
      suranumber: 51),
  SuraDatamodel(suraNameEN: 'At-Tur',
      suraNameAR: 'الطور',
      versecount: 49,
      suranumber: 52),
  SuraDatamodel(suraNameEN: 'An-Najm',
      suraNameAR: 'النجم',
      versecount: 62,
      suranumber: 53),
  SuraDatamodel(suraNameEN: 'Al-Qamar',
      suraNameAR: 'القمر',
      versecount: 55,
      suranumber: 54),
  SuraDatamodel(suraNameEN: 'Ar-Rahman',
      suraNameAR: 'الرحمن',
      versecount: 78,
      suranumber: 55),
  SuraDatamodel(suraNameEN: 'Al-Waqia',
      suraNameAR: 'الواقعة',
      versecount: 96,
      suranumber: 56),
  SuraDatamodel(suraNameEN: 'Al-Hadid',
      suraNameAR: 'الحديد',
      versecount: 29,
      suranumber: 57),
  SuraDatamodel(suraNameEN: 'Al-Mujadila',
      suraNameAR: 'المجادلة',
      versecount: 22,
      suranumber: 58),
  SuraDatamodel(suraNameEN: 'Al-Hashr',
      suraNameAR: 'الحشر',
      versecount: 24,
      suranumber: 59),
  SuraDatamodel(suraNameEN: 'Al-Mumtahina',
      suraNameAR: 'الممتحنة',
      versecount: 13,
      suranumber: 60),
  SuraDatamodel(suraNameEN: 'As-Saff',
      suraNameAR: 'الصف',
      versecount: 14,
      suranumber: 61),
  SuraDatamodel(suraNameEN: 'Al-Jumua',
      suraNameAR: 'الجمعة',
      versecount: 11,
      suranumber: 62),
  SuraDatamodel(suraNameEN: 'Al-Munafiqun',
      suraNameAR: 'المنافقون',
      versecount: 11,
      suranumber: 63),
  SuraDatamodel(suraNameEN: 'At-Taghabun',
      suraNameAR: 'التغابن',
      versecount: 18,
      suranumber: 64),
  SuraDatamodel(suraNameEN: 'At-Talaq',
      suraNameAR: 'الطلاق',
      versecount: 12,
      suranumber: 65),
  SuraDatamodel(suraNameEN: 'At-Tahrim',
      suraNameAR: 'التحريم',
      versecount: 12,
      suranumber: 66),
  SuraDatamodel(suraNameEN: 'Al-Mulk',
      suraNameAR: 'الملك',
      versecount: 30,
      suranumber: 67),
  SuraDatamodel(suraNameEN: 'Al-Qalam',
      suraNameAR: 'القلم',
      versecount: 52,
      suranumber: 68),
  SuraDatamodel(suraNameEN: 'Al-Haqqah',
      suraNameAR: 'الحاقة',
      versecount: 52,
      suranumber: 69),
  SuraDatamodel(suraNameEN: 'Al-Maarij',
      suraNameAR: 'المعارج',
      versecount: 44,
      suranumber: 70),
  SuraDatamodel(
      suraNameEN: 'Nuh', suraNameAR: 'نوح', versecount: 28, suranumber: 71),
  SuraDatamodel(suraNameEN: 'Al-Jinn',
      suraNameAR: 'الجن',
      versecount: 28,
      suranumber: 72),
  SuraDatamodel(suraNameEN: 'Al-Muzzammil',
      suraNameAR: 'المزّمّل',
      versecount: 20,
      suranumber: 73),
  SuraDatamodel(suraNameEN: 'Al-Muddathir',
      suraNameAR: 'المدّثر',
      versecount: 56,
      suranumber: 74),
  SuraDatamodel(suraNameEN: 'Al-Qiyamah',
      suraNameAR: 'القيامة',
      versecount: 40,
      suranumber: 75),
  SuraDatamodel(suraNameEN: 'Al-Insan',
      suraNameAR: 'الإنسان',
      versecount: 31,
      suranumber: 76),
  SuraDatamodel(suraNameEN: 'Al-Mursalat',
      suraNameAR: 'المرسلات',
      versecount: 50,
      suranumber: 77),
  SuraDatamodel(suraNameEN: 'An-Naba',
      suraNameAR: 'النبأ',
      versecount: 40,
      suranumber: 78),
  SuraDatamodel(suraNameEN: 'An-Naziat',
      suraNameAR: 'النازعات',
      versecount: 46,
      suranumber: 79),
  SuraDatamodel(
      suraNameEN: 'Abasa', suraNameAR: 'عبس', versecount: 42, suranumber: 80),
  SuraDatamodel(suraNameEN: 'At-Takwir',
      suraNameAR: 'التكوير',
      versecount: 29,
      suranumber: 81),
  SuraDatamodel(suraNameEN: 'Al-Infitar',
      suraNameAR: 'الإنفطار',
      versecount: 19,
      suranumber: 82),
  SuraDatamodel(suraNameEN: 'Al-Mutaffifin',
      suraNameAR: 'المطفّفين',
      versecount: 36,
      suranumber: 83),
  SuraDatamodel(suraNameEN: 'Al-Inshiqaq',
      suraNameAR: 'الإنشقاق',
      versecount: 25,
      suranumber: 84),
  SuraDatamodel(suraNameEN: 'Al-Buruj',
      suraNameAR: 'البروج',
      versecount: 22,
      suranumber: 85),
  SuraDatamodel(suraNameEN: 'At-Tariq',
      suraNameAR: 'الطارق',
      versecount: 17,
      suranumber: 86),
  SuraDatamodel(suraNameEN: 'Al-Ala',
      suraNameAR: 'الأعلى',
      versecount: 19,
      suranumber: 87),
  SuraDatamodel(suraNameEN: 'Al-Ghashiyah',
      suraNameAR: 'الغاشية',
      versecount: 26,
      suranumber: 88),
  SuraDatamodel(suraNameEN: 'Al-Fajr',
      suraNameAR: 'الفجر',
      versecount: 30,
      suranumber: 89),
  SuraDatamodel(suraNameEN: 'Al-Balad',
      suraNameAR: 'البلد',
      versecount: 20,
      suranumber: 90),
  SuraDatamodel(suraNameEN: 'Ash-Shams',
      suraNameAR: 'الشمس',
      versecount: 15,
      suranumber: 91),
  SuraDatamodel(suraNameEN: 'Al-Lail',
      suraNameAR: 'الليل',
      versecount: 21,
      suranumber: 92),
  SuraDatamodel(suraNameEN: 'Ad-Duha',
      suraNameAR: 'الضحى',
      versecount: 11,
      suranumber: 93),
  SuraDatamodel(suraNameEN: 'Ash-Sharh',
      suraNameAR: 'الشرح',
      versecount: 8,
      suranumber: 94),
  SuraDatamodel(suraNameEN: 'At-Tin',
      suraNameAR: 'التين',
      versecount: 5,
      suranumber: 95),
  SuraDatamodel(suraNameEN: 'Al-Alaq',
      suraNameAR: 'العلق',
      versecount: 19,
      suranumber: 96),
  SuraDatamodel(suraNameEN: 'Al-Qadr',
      suraNameAR: 'القدر',
      versecount: 5,
      suranumber: 97),
  SuraDatamodel(suraNameEN: 'Al-Bayyina',
      suraNameAR: 'البينة',
      versecount: 8,
      suranumber: 98),
  SuraDatamodel(suraNameEN: 'Az-Zalzalah',
      suraNameAR: 'الزلزلة',
      versecount: 8,
      suranumber: 99),
  SuraDatamodel(suraNameEN: 'Al-Adiyat',
      suraNameAR: 'العاديات',
      versecount: 11,
      suranumber: 100),
  SuraDatamodel(suraNameEN: 'Al-Qaria',
      suraNameAR: 'القارعة',
      versecount: 11,
      suranumber: 101),
  SuraDatamodel(suraNameEN: 'At-Takathur',
      suraNameAR: 'التكاثر',
      versecount: 8,
      suranumber: 102),
  SuraDatamodel(suraNameEN: 'Al-Asr',
      suraNameAR: 'العصر',
      versecount: 3,
      suranumber: 103),
  SuraDatamodel(suraNameEN: 'Al-Humazah',
      suraNameAR: 'الهمزة',
      versecount: 9,
      suranumber: 104),
  SuraDatamodel(suraNameEN: 'Al-Fil',
      suraNameAR: 'الفيل',
      versecount: 5,
      suranumber: 105),
  SuraDatamodel(suraNameEN: 'Quraysh',
      suraNameAR: 'قريش',
      versecount: 4,
      suranumber: 106),
  SuraDatamodel(suraNameEN: 'Al-Maun',
      suraNameAR: 'الماعون',
      versecount: 6,
      suranumber: 107),
  SuraDatamodel(suraNameEN: 'Al-Kawthar',
      suraNameAR: 'الكوثر',
      versecount: 3,
      suranumber: 108),
  SuraDatamodel(suraNameEN: 'Al-Kafirun',
      suraNameAR: 'الكافرون',
      versecount: 6,
      suranumber: 109),
  SuraDatamodel(suraNameEN: 'An-Nasr',
      suraNameAR: 'النصر',
      versecount: 3,
      suranumber: 110),
  SuraDatamodel(suraNameEN: 'Al-Masad',
      suraNameAR: 'المسد',
      versecount: 5,
      suranumber: 111),
  SuraDatamodel(suraNameEN: 'Al-Ikhlas',
      suraNameAR: 'الإخلاص',
      versecount: 4,
      suranumber: 112),
  SuraDatamodel(suraNameEN: 'Al-Falaq',
      suraNameAR: 'الفلق',
      versecount: 5,
      suranumber: 113),
  SuraDatamodel(suraNameEN: 'An-Nas',
      suraNameAR: 'الناس',
      versecount: 6,
      suranumber: 114),
];

class Quran extends StatefulWidget {
  const Quran({super.key});

  State<Quran> createState() {
    return _QuranState();
  }
}

class _QuranState extends State<Quran> {
  @override
  void initState() {
    super.initState();
    _loadrececentsura();
  }

  Future<void> _loadrececentsura() async
  {
    final recentlist = await RecentSura.getRecentSyra();
    final newlist = recentlist.map((suranum) =>
        suras.firstWhere((sura) => sura.suranumber == suranum)).toList();
    setState(() {
      RecentDataList = newlist;
    });
  }


  List<SuraDatamodel>RecentDataList = [];

  void _onopensura(SuraDatamodel sura) async
  {
    await RecentSura.addSura(sura.suranumber);
    _loadrececentsura();
    Navigator.pushNamed(
        context, AppRouteName.QuranDetailsView, arguments: sura);
  }


  List<SuraDatamodel>_filteredsura = suras;

  void _onchangedsearch(String value) {
    final query = value.trim();
    if (query.isEmpty) {
      setState(() {
        _filteredsura = suras;
      });
    }
    else {
      setState(() {
        _filteredsura = suras.where((sura) =>
        sura.suraNameEN.toLowerCase().contains(query.toLowerCase()) ||
            sura.suraNameAR.toLowerCase().contains(query.toLowerCase())
        ).toList();
      });
    }
  }


  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: Assets.images.quran.provider(),
                  fit: BoxFit.cover,
                ),
              ),
            ),

            SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                      width: 299,
                      height: 141,
                      child: Assets.images.group31.image()),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: SizedBox(
                      width: 390,
                      height: 55,
                      child: TextFormField(
                        onChanged: (value) {
                          _onchangedsearch(value);
                        },
                        textAlignVertical: TextAlignVertical.center,
                        cursorColor: Colors.white,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          fontFamily: "Janna",
                          color: Colors.white,
                        ),
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(vertical: 16),
                          prefixIcon: Padding(
                            padding: const EdgeInsets.all(10),
                            child: Assets.icons.quran.svg(
                              colorFilter: ColorFilter.mode(
                                AppColors.gold,
                                BlendMode.srcIn,
                              ),
                              width: 24.5,
                              height: 28,
                            ),
                          ),

                          hintText: "Surah Name",
                          filled: true,
                          fillColor: Colors.black.withValues(alpha: 0.6),
                          hintStyle: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            fontFamily: "Janna",
                            color: Colors.white,
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(color: AppColors.gold),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(color: AppColors.gold),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: RecentDataList.isEmpty ? SizedBox() : Text(
                          "Most Recently ", style: TextStyle(
                            fontFamily: "Janna",
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            color: AppColors.white),),
                      )

                  ),
                  SizedBox(height: 10),
                  RecentDataList.isEmpty ? SizedBox() :
                  SizedBox(
                    height: 150,
                    child: ListView.separated(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        scrollDirection: Axis.horizontal,

                        itemBuilder: (context, index) {
                          return Recently(sura: RecentDataList[index]);
                        },
                        separatorBuilder: (context, index) {
                          return SizedBox(width: 10,);
                        },
                      itemCount: RecentDataList.length,
                    ),
                  ),
                  SizedBox(height: 10),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Text("Surah List ", style: TextStyle(
                            fontFamily: "Janna",
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            color: AppColors.white),
                        ),
                      )),
                  SizedBox(height: 5),


                  ListView.separated(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      padding: EdgeInsets.symmetric(
                          horizontal: 16, vertical: 16),
                      itemBuilder: (context, index) {
                        return SuraItem(Sura: _filteredsura[index],
                            ontap: () {
                              _onopensura(_filteredsura[index]);
                            });
                      },
                      separatorBuilder: (context, index) {
                        return Divider(
                          color: AppColors.white, indent: 40, endIndent: 40,);
                      },
                      itemCount: _filteredsura.length),


                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}
