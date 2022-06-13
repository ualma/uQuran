import 'ExpandableTree/expandable_tree_menu.dart';

class QTreeDate {
  List<TreeNode<dynamic>> qTreeDate() {
    return [
      TreeNode({
        'ar_id': 1,
        'ar_name': 'أركان الإسلام',
        'ug_name': 'ئىسلام دىنىنىڭ ئاساسلىرى',
        'en_name': 'Pillars Of Islam',
        'c': 8,
        'sa': 0
      }, subNodes: [
        TreeNode({
          'ar_id': 2,
          'ar_name': 'الزكاة والصدقات',
          'ug_name': 'زاكات ۋە سەدىقە',
          'en_name': 'Zakat And Charity',
          'c': 0,
          'sa': 85
        }, subNodes: []),
        TreeNode({
          'ar_id': 3,
          'ar_name': 'التوحيد',
          'ug_name': 'تەۋھىد',
          'en_name': 'Monotheism',
          'c': 8,
          'sa': 0
        }, subNodes: [
          TreeNode({
            'ar_id': 4,
            'ar_name': 'عقوبة المرتدين',
            'ug_name': 'مۇرتەتلەرنىڭ (دىندىن يانغۇچى)جازاسى',
            'en_name': 'The Punishment Of The Apostates',
            'c': 0,
            'sa': 12
          }, subNodes: []),
          TreeNode({
            'ar_id': 5,
            'ar_name': 'الملحدون المنكرون ليوم البعث',
            'ug_name': 'قىيامەتنى ئىنكار قىلغۇچى دەھرىيلەر',
            'en_name': 'Atheists Who Deny The Day Of Resurrection',
            'c': 0,
            'sa': 150
          }, subNodes: []),
          TreeNode({
            'ar_id': 6,
            'ar_name': 'وعيد المفسدين والمجرمين والفاسقين',
            'ug_name': 'بۇزغۇنچى ، گۇناھكار ۋە پاسىقلارنى ئاگاھلاندۇرۇش',
            'en_name': 'Threat To Spoilers, Criminals And Losers',
            'c': 0,
            'sa': 27
          }, subNodes: []),
          TreeNode({
            'ar_id': 7,
            'ar_name': 'توحيد الله تعالى',
            'ug_name':
                'ئاللاھنى يەككە -يېگانە ،ھېچ شىرىكى يوق دەپ ئېتىقاد قىلىش',
            'en_name': 'Unification Of God',
            'c': 30,
            'sa': 0
          }, subNodes: [
            TreeNode({
              'ar_id': 8,
              'ar_name': 'إرادته',
              'ug_name': 'ئاللاھنىڭ ئىرادىسى (خالىشى)',
              'en_name': 'His Will',
              'c': 0,
              'sa': 28
            }, subNodes: []),
            TreeNode({
              'ar_id': 9,
              'ar_name': 'أسماء الله الحسنى',
              'ug_name': 'ئاللاھنىڭ گۈزەل ئىسىملىرى',
              'en_name': 'The Names Of God The Most Beautiful',
              'c': 0,
              'sa': 4
            }, subNodes: []),
            TreeNode({
              'ar_id': 10,
              'ar_name': 'إليه ترجع الامور',
              'ug_name': 'بارلىق شەيئىلەرنىڭ االله نىڭ دەرگاھىغا قايتۇرۇلۇشى',
              'en_name': 'To Him Returns Things',
              'c': 0,
              'sa': 50
            }, subNodes: []),
            TreeNode({
              'ar_id': 11,
              'ar_name': 'إنذار من لا يعترف بتوحيد الله تعالى بالإنتقام',
              'ug_name':
                  'ئاللاھنى يەككە -يېگانە ،ھېچ شىرىكى يوق زات ئىكەنلىكىنى  تونۇمايدىغانلارغا ئۆچ ئېلىش توغرىسىدا ئاگاھلاندۇرۇش',
              'en_name':
                  'Warning Of Revenge To Those Who Do Not Recognize The Unification Of God',
              'c': 0,
              'sa': 100
            }, subNodes: []),
            TreeNode({
              'ar_id': 12,
              'ar_name': 'إنفراده تعالى بالامر والحكم',
              'ug_name':
                  'ئىشلار ۋە ھۆكۈم چىقىرىش  يالغۇز ئاللاھقا خاس ئىكەنلىكى',
              'en_name': 'Alone In Order And Ruling',
              'c': 0,
              'sa': 28
            }, subNodes: []),
            TreeNode({
              'ar_id': 13,
              'ar_name': 'عقائد البشر و أهواؤهم',
              'ug_name': 'ئىنسانلارنىڭ ئەقىدىللىرى ۋە ئارزۇ- ئىستەكلىرى',
              'en_name': 'The Doctrines Of Human Beings And Their Desires',
              'c': 0,
              'sa': 60
            }, subNodes: []),
            TreeNode({
              'ar_id': 14,
              'ar_name': 'أوامره',
              'ug_name': 'ئاللاھنىڭ بۇيرۇقلىرى',
              'en_name': 'His Orders',
              'c': 0,
              'sa': 54
            }, subNodes: []),
            TreeNode({
              'ar_id': 15,
              'ar_name': 'تقريع من لا يقر بوحدانيته تعالى',
              'ug_name':
                  'ئاللاھنى يەككە -يېگانە ،ھېچ شىرىكى يوق زات ئىكەنلىكىنى ئىقرار قىلمىغانلارغا رەددىيە',
              'en_name':
                  'Bashing Of Those Who Do Not Recognize The Unity Of The Almighty',
              'c': 0,
              'sa': 19
            }, subNodes: []),
            TreeNode({
              'ar_id': 16,
              'ar_name': 'تنزيه الله تعالى عن الظلم',
              'ug_name': 'ئۇلۇغ ئاللاھ زۇلۇم قىلىشتىن پاكلىقى',
              'en_name': 'Glorify God Almighty From Injustice',
              'c': 0,
              'sa': 43
            }, subNodes: []),
            TreeNode({
              'ar_id': 17,
              'ar_name': 'التوحيد المطلق لله تعالى',
              'ug_name': 'مۇتلەق يەككە يېگانە بۈيۈك ئاللاھ',
              'en_name': 'The Absolute Unification Of God',
              'c': 0,
              'sa': 30
            }, subNodes: []),
            TreeNode({
              'ar_id': 18,
              'ar_name': 'التوكل على الله',
              'ug_name': 'ئاللاھقا تەۋەككۇل قىلىش',
              'en_name': 'Trust In God',
              'c': 0,
              'sa': 7
            }, subNodes: []),
            TreeNode({
              'ar_id': 19,
              'ar_name': 'حبه تعالى',
              'ug_name': 'بۈيۈك ئاللاھنىڭ مۇھەببىتى (دوستلىقى)',
              'en_name': 'His Love Is Exalted',
              'c': 0,
              'sa': 22
            }, subNodes: []),
            TreeNode({
              'ar_id': 20,
              'ar_name': 'حلمه جل وعلا',
              'ug_name': 'ئۇلۇغ ۋە بۈيۈك  ھەلىم ئاللاھ',
              'en_name': 'His Hilm',
              'c': 0,
              'sa': 6
            }, subNodes: []),
            TreeNode({
              'ar_id': 21,
              'ar_name': 'حمد الله تعالى وتسبيحه والثناء عليه',
              'ug_name': 'ئۇلۇغ ئاللاھقا ھەمدە ،تەسبىھ ۋە سانا ئېيتىش',
              'en_name': 'Praise, Glorifying And Thanks Toward God',
              'c': 0,
              'sa': 80
            }, subNodes: []),
            TreeNode({
              'ar_id': 22,
              'ar_name': 'خشية الله تعالى وتقواه',
              'ug_name': 'ئۇلۇغ ئاللاھتىن قورقۇش ۋە تەقۋادارلىق قىلىش',
              'en_name': 'Fear Of God And Piety',
              'c': 0,
              'sa': 34
            }, subNodes: []),
            TreeNode({
              'ar_id': 23,
              'ar_name': 'دعوة من لا يقر بالوحدانية الى الاعتيار بمن سبقه',
              'ug_name':
                  'ئاللاھنى يەككە -يېگانە ،ھېچ شىرىكى يوق زات ئىكەنلىكىنى ئىتراپ قىلمىغان ئىلگىرى ئۆتكەن ئۈممەتلەرنى دەۋەت قىلغانلىقى',
              'en_name':
                  'Call To Those Who Do Not Recognize The Singularity To Consider The Ones Who Preceded Them',
              'c': 0,
              'sa': 29
            }, subNodes: []),
            TreeNode({
              'ar_id': 24,
              'ar_name': 'ربوبيته جل وعلا',
              'ug_name': 'بۈيۈك ئۇلۇغ ئاللاھنىڭ پەرۋەردىگارلىقى',
              'en_name': 'His Status Of Lordship',
              'c': 0,
              'sa': 143
            }, subNodes: []),
            TreeNode({
              'ar_id': 25,
              'ar_name': 'رحمة الله تعالى',
              'ug_name': 'ئۇلۇغ ئاللاھنىڭ رەھمىتى',
              'en_name': 'The Mercy Of God Almighty',
              'c': 0,
              'sa': 23
            }, subNodes: []),
            TreeNode({
              'ar_id': 26,
              'ar_name': 'رضاه تعالى',
              'ug_name': 'ئۇلۇغ ئاللاھنىڭ رازىلىقى',
              'en_name': 'His Satisfaction',
              'c': 0,
              'sa': 13
            }, subNodes: []),
            TreeNode({
              'ar_id': 27,
              'ar_name': 'علمه جل شأنه',
              'ug_name': 'شەئنى ئۇلۇغ ئاللاھنىڭ ئىلمى',
              'en_name': 'His Knowledge Will Be Great',
              'c': 0,
              'sa': 119
            }, subNodes: []),
            TreeNode({
              'ar_id': 28,
              'ar_name': 'غضبه',
              'ug_name': 'ئاللاھنىڭ غەزىپى',
              'en_name': 'His Wrath',
              'c': 0,
              'sa': 12
            }, subNodes: []),
            TreeNode({
              'ar_id': 29,
              'ar_name': 'غناه وافتقار الناس اليه',
              'ug_name':
                  'ئاللاھنىڭ ئەڭ باي ، مەخلۇقات ئۇنىڭغا مۇھتاج ئىكەنلىكى',
              'en_name': 'His Self-Sufficience And Need Of People To Him',
              'c': 0,
              'sa': 14
            }, subNodes: []),
            TreeNode({
              'ar_id': 30,
              'ar_name': 'مشيئته',
              'ug_name': 'ئاللاھنىڭ ئىرادىسى',
              'en_name': 'His Will',
              'c': 0,
              'sa': 16
            }, subNodes: []),
            TreeNode({
              'ar_id': 31,
              'ar_name': 'نعمه على عباده والامر بالتحدث بها',
              'ug_name':
                  'ئاللاھنىڭ ئۆزگە  ۋە بۇيرۇقلىرىغا ئىتائەت قىلغانلارغا ئاتا قىلغان نېمەتلىرى',
              'en_name':
                  'His Blessings For His Servants And The Order To Speak By',
              'c': 0,
              'sa': 43
            }, subNodes: []),
            TreeNode({
              'ar_id': 32,
              'ar_name': 'وجوده',
              'ug_name':
                  'ئاللاھنىڭ ياراتقۇچى (ۋۇجۇدقا چىقارغۇچى)  زات ئىكەنلىكى',
              'en_name': 'His Presence',
              'c': 0,
              'sa': 79
            }, subNodes: []),
            TreeNode({
              'ar_id': 33,
              'ar_name': 'وحدانيته',
              'ug_name':
                  'ئاللاھنىڭ يەككە -يېگانە ،ھېچ شىرىكى يوق زات ئىكەنلىكىنى',
              'en_name': 'His Oneness',
              'c': 0,
              'sa': 509
            }, subNodes: []),
            TreeNode({
              'ar_id': 34,
              'ar_name': 'الوعد والوعيد',
              'ug_name': 'ئاللاھنىڭ ۋەدىسى ۋە تەھدىتى',
              'en_name': 'Promise And Threat',
              'c': 0,
              'sa': 502
            }, subNodes: []),
            TreeNode({
              'ar_id': 35,
              'ar_name': 'الوعيد',
              'ug_name': 'ۋەز-تەبلىغلەر(ئاگاھلاندۇرۇشلار)',
              'en_name': 'The Preaching',
              'c': 0,
              'sa': 60
            }, subNodes: []),
            TreeNode({
              'ar_id': 36,
              'ar_name': 'يحيي ويميت',
              'ug_name': 'تىرىلدۈرگۈچى ۋە ئۆلتۈرگۈچى  ئاللاھ',
              'en_name': 'He Gives Life And Death',
              'c': 0,
              'sa': 26
            }, subNodes: []),
            TreeNode({
              'ar_id': 37,
              'ar_name': 'صفات الله تعالى',
              'ug_name': 'بۈيۈك ئاللاھنىڭ سۈپەتلىرى',
              'en_name': 'The Attributes Of God Almighty',
              'c': 173,
              'sa': 0
            }, subNodes: [
              TreeNode({
                'ar_id': 38,
                'ar_name': 'الله',
                'ug_name': 'ئاللاھ',
                'en_name': 'Allah',
                'c': 0,
                'sa': 1
              }, subNodes: []),
              TreeNode({
                'ar_id': 39,
                'ar_name': 'إله',
                'ug_name': 'ئىلاھ',
                'en_name': 'Ilah',
                'c': 0,
                'sa': 1
              }, subNodes: []),
              TreeNode({
                'ar_id': 40,
                'ar_name': 'الآخر',
                'ug_name': 'ھەممە يوقالغاندىن كېيىنمۇ مەۋجۇت ئاللاھ',
                'en_name': 'Al-Akhir',
                'c': 0,
                'sa': 1
              }, subNodes: []),
              TreeNode({
                'ar_id': 41,
                'ar_name': 'الاعلى',
                'ug_name': 'ھەممىدىن ئۈستۈن ئاللاھ',
                'en_name': 'Al-Aala',
                'c': 0,
                'sa': 4
              }, subNodes: []),
              TreeNode({
                'ar_id': 42,
                'ar_name': 'أعلم',
                'ug_name': 'ئەڭ بىلگۈچى ئاللاھ',
                'en_name': 'The Most Knowing',
                'c': 0,
                'sa': 43
              }, subNodes: []),
              TreeNode({
                'ar_id': 43,
                'ar_name': 'الأول',
                'ug_name': 'ھېچ نەرسە يوق ۋاقتىدىمۇ مەۋجۇت ئاللاھ',
                'en_name': 'Al-Awal',
                'c': 0,
                'sa': 1
              }, subNodes: []),
              TreeNode({
                'ar_id': 44,
                'ar_name': 'البارئ',
                'ug_name': 'يوقلۇقتىن پەيدا قىلغۇچى ئاللاھ',
                'en_name': 'Al-Bari"',
                'c': 0,
                'sa': 1
              }, subNodes: []),
              TreeNode({
                'ar_id': 45,
                'ar_name': 'الباطن',
                'ug_name': '(كۆزلەرنىڭ كۆرۈشىدىن) مەخپىي ئاللاھ',
                'en_name': 'Al-Batin',
                'c': 0,
                'sa': 1
              }, subNodes: []),
              TreeNode({
                'ar_id': 46,
                'ar_name': 'البر',
                'ug_name': 'ياخشىلىق قىلغۇچى ئاللاھ',
                'en_name': 'Al-Barr',
                'c': 0,
                'sa': 1
              }, subNodes: []),
              TreeNode({
                'ar_id': 47,
                'ar_name': 'البصير',
                'ug_name': 'ھەممىنى كۆرگۈچى ئاللاھ',
                'en_name': 'Al-Basir',
                'c': 0,
                'sa': 31
              }, subNodes: []),
              TreeNode({
                'ar_id': 48,
                'ar_name': 'بصيرا',
                'ug_name': 'ھەممىنى كۆرۈپ تۇرغۇچى ئاللاھ',
                'en_name': 'Knwing',
                'c': 0,
                'sa': 12
              }, subNodes: []),
              TreeNode({
                'ar_id': 49,
                'ar_name': 'التواب',
                'ug_name': 'تەۋبىنى بەك قوبۇل قىلغۇچى ئاللاھ',
                'en_name': 'Al-Thawab',
                'c': 0,
                'sa': 8
              }, subNodes: []),
              TreeNode({
                'ar_id': 50,
                'ar_name': 'توابا',
                'ug_name': 'تەۋبىنى قوبۇل قىلغۇچى ئاللاھ',
                'en_name': 'Repenter',
                'c': 0,
                'sa': 3
              }, subNodes: []),
              TreeNode({
                'ar_id': 51,
                'ar_name': 'الجامع',
                'ug_name': 'توپلىغۇچى ئاللاھ',
                'en_name': 'Aj-Jaami',
                'c': 0,
                'sa': 2
              }, subNodes: []),
              TreeNode({
                'ar_id': 52,
                'ar_name': 'الجبار',
                'ug_name': 'قەھر  قىلغۇچى ئاللاھ',
                'en_name': 'Al-Jabbar',
                'c': 0,
                'sa': 1
              }, subNodes: []),
              TreeNode({
                'ar_id': 53,
                'ar_name': 'الحسيب',
                'ug_name': 'ھېساب ئالغۇچى ئاللاھ',
                'en_name': 'Al-Hasib',
                'c': 0,
                'sa': 3
              }, subNodes: []),
              TreeNode({
                'ar_id': 54,
                'ar_name': 'الحفيظ',
                'ug_name': 'مۇھاپىزەت قىلغۇچى ئاللاھ',
                'en_name': 'Al-Hafeez',
                'c': 0,
                'sa': 3
              }, subNodes: []),
              TreeNode({
                'ar_id': 55,
                'ar_name': 'الحق',
                'ug_name': 'ھەقىقىي ئىگىسى بولغان ئاللاھ',
                'en_name': 'Al-Haqq',
                'c': 0,
                'sa': 11
              }, subNodes: []),
              TreeNode({
                'ar_id': 56,
                'ar_name': 'الحكيم',
                'ug_name': 'ھېكمەت بىلەن ئىش قىلغۇچى ئاللاھ',
                'en_name': 'Al-Hakeem',
                'c': 0,
                'sa': 1
              }, subNodes: []),
              TreeNode({
                'ar_id': 57,
                'ar_name': 'الحليم',
                'ug_name': 'مۇلايىم، ئاسرىغۇچى ئاللاھ',
                'en_name': 'Al-Haleem',
                'c': 0,
                'sa': 8
              }, subNodes: []),
              TreeNode({
                'ar_id': 58,
                'ar_name': 'حليما',
                'ug_name': 'جازالاشقا ئالدىراپ كەتمەيدىغان ئاللاھ',
                'en_name': 'Forebears',
                'c': 0,
                'sa': 3
              }, subNodes: []),
              TreeNode({
                'ar_id': 59,
                'ar_name': 'الحميد',
                'ug_name': 'مەدھىيەگە لايىق ئاللاھ',
                'en_name': 'Al-Hameed',
                'c': 0,
                'sa': 16
              }, subNodes: []),
              TreeNode({
                'ar_id': 60,
                'ar_name': 'حميدا',
                'ug_name': 'ئاللاھنىڭ  مەدھىيەگە لايىق زات  ئىكەنلىكى',
                'en_name': 'Praiseworthy',
                'c': 0,
                'sa': 1
              }, subNodes: []),
              TreeNode({
                'ar_id': 61,
                'ar_name': 'الحي',
                'ug_name': 'مەڭگۈ ھايات ئاللاھ',
                'en_name': 'Al-Hayy',
                'c': 0,
                'sa': 4
              }, subNodes: []),
              TreeNode({
                'ar_id': 62,
                'ar_name': 'الخالق',
                'ug_name': 'ھەممىنى ياراتقۇچى ئاللاھ',
                'en_name': 'Al-Khaaliq',
                'c': 0,
                'sa': 1
              }, subNodes: []),
              TreeNode({
                'ar_id': 63,
                'ar_name': 'الخبير',
                'ug_name': 'ھەممىدىن خەۋەردار ئاللاھ',
                'en_name': 'Al-Khabeer',
                'c': 0,
                'sa': 1
              }, subNodes: []),
              TreeNode({
                'ar_id': 64,
                'ar_name': 'الرؤوف',
                'ug_name': 'كۆيۈمچان ئاللاھ',
                'en_name': 'Al-Raouf',
                'c': 0,
                'sa': 11
              }, subNodes: []),
              TreeNode({
                'ar_id': 65,
                'ar_name': 'الرحمن',
                'ug_name': 'چەكسىز كۈيۈنگۈچى ئاللاھ',
                'en_name': 'Al-Rahman',
                'c': 0,
                'sa': 2
              }, subNodes: []),
              TreeNode({
                'ar_id': 66,
                'ar_name': 'الرحيم',
                'ug_name': 'ئاخىرەتتە كۈيۈنگۈچى ئاللاھ',
                'en_name': 'Al-Raheem',
                'c': 0,
                'sa': 2
              }, subNodes: []),
              TreeNode({
                'ar_id': 67,
                'ar_name': 'الرازق',
                'ug_name': 'رىزىق بەرگۈچى ئاللاھ',
                'en_name': 'Al-Razzaaq',
                'c': 0,
                'sa': 1
              }, subNodes: []),
              TreeNode({
                'ar_id': 68,
                'ar_name': 'الرقيب',
                'ug_name': 'كۆزىتىپ تۇرغۇچى ئاللاھ',
                'en_name': 'Al-Raqeeb',
                'c': 0,
                'sa': 3
              }, subNodes: []),
              TreeNode({
                'ar_id': 69,
                'ar_name': 'السلام',
                'ug_name':
                    'مۆئمىنلەرگە خاتىرجەملىك ، سالامەتلىك بېغىشلىغۇچى ئاللاھ',
                'en_name': 'Al-Salaam',
                'c': 0,
                'sa': 1
              }, subNodes: []),
              TreeNode({
                'ar_id': 70,
                'ar_name': 'السميع',
                'ug_name': 'ھەممىنى ئاڭلاپ تۇرغۇچى ئاللاھ',
                'en_name': 'As-Samee',
                'c': 0,
                'sa': 1
              }, subNodes: []),
              TreeNode({
                'ar_id': 71,
                'ar_name': 'الشاكر',
                'ug_name': 'شۈكۈرنىڭ مۇكاپاتىنى بەرگۈچى ئاللاھ',
                'en_name': 'Ash-Shaker',
                'c': 0,
                'sa': 2
              }, subNodes: []),
              TreeNode({
                'ar_id': 72,
                'ar_name': 'الشكور',
                'ug_name': 'ئاز ياخشىلىققا كۆپ ساۋاب بەرگۈچى ئاللاھ',
                'en_name': 'Ash-Shakoor',
                'c': 0,
                'sa': 5
              }, subNodes: []),
              TreeNode({
                'ar_id': 73,
                'ar_name': 'الشهيد',
                'ug_name': 'شاھىت ئاللاھ',
                'en_name': 'Ash-Shaheed',
                'c': 0,
                'sa': 12
              }, subNodes: []),
              TreeNode({
                'ar_id': 74,
                'ar_name': 'الصادق',
                'ug_name': 'راستچىل ئاللاھ',
                'en_name': 'As-Sadiq',
                'c': 0,
                'sa': 1
              }, subNodes: []),
              TreeNode({
                'ar_id': 75,
                'ar_name': 'الصمد',
                'ug_name': 'بىھاجەت ئاللاھ',
                'en_name': 'As-Samad',
                'c': 0,
                'sa': 1
              }, subNodes: []),
              TreeNode({
                'ar_id': 76,
                'ar_name': 'الضار الظاهر',
                'ug_name': 'ئاللاھنىڭ ئىرادىسىز زىيان يەتمەيدىغانلىقى',
                'en_name': 'Ad-Daar Ad-Dahir',
                'c': 0,
                'sa': 1
              }, subNodes: []),
              TreeNode({
                'ar_id': 77,
                'ar_name': 'العزيز',
                'ug_name': 'ئاللاھنىڭ  غالىب زات  ئىكەنلىكى',
                'en_name': 'Al-Azeez',
                'c': 0,
                'sa': 1
              }, subNodes: []),
              TreeNode({
                'ar_id': 78,
                'ar_name': 'العظيم',
                'ug_name': 'ئاللاھنىڭ  ئۇلۇغ(بۈيۈك) زات  ئىكەنلىكى',
                'en_name': 'Al-Azeem',
                'c': 0,
                'sa': 6
              }, subNodes: []),
              TreeNode({
                'ar_id': 79,
                'ar_name': 'العفو',
                'ug_name': 'ئاللاھنىڭ ئەپۇ قىلغۇچى  زات  ئىكەنلىكى',
                'en_name': 'Al-Afuww',
                'c': 0,
                'sa': 5
              }, subNodes: []),
              TreeNode({
                'ar_id': 80,
                'ar_name': 'العلي',
                'ug_name': 'ئاللاھنىڭ  ئۈستۈن  زات  ئىكەنلىكى',
                'en_name': 'Al-Aliyy',
                'c': 0,
                'sa': 8
              }, subNodes: []),
              TreeNode({
                'ar_id': 81,
                'ar_name': 'العليم',
                'ug_name': 'ئاللاھنىڭ ھەممىنى بىلگۈچى  زات  ئىكەنلىكى',
                'en_name': 'Al-Aleem',
                'c': 0,
                'sa': 1
              }, subNodes: []),
              TreeNode({
                'ar_id': 82,
                'ar_name': 'الغفار',
                'ug_name':
                    'ئاللاھنىڭ ناھايىتى مەغپىرەت قىلغۇچى  زات  ئىكەنلىكى',
                'en_name': 'Al-Ghaffar',
                'c': 0,
                'sa': 5
              }, subNodes: []),
              TreeNode({
                'ar_id': 83,
                'ar_name': 'الغفور',
                'ug_name': 'ئاللاھنىڭ مەغپىرەت قىلغۇچى  زات  ئىكەنلىكى',
                'en_name': 'The Forgiving',
                'c': 0,
                'sa': 1
              }, subNodes: []),
              TreeNode({
                'ar_id': 84,
                'ar_name': 'الغني',
                'ug_name': 'ئاللاھنىڭ ھەممىدىن  بىھاجەت  زات  ئىكەنلىكى',
                'en_name': 'Al-Ghaniyy',
                'c': 0,
                'sa': 17
              }, subNodes: []),
              TreeNode({
                'ar_id': 85,
                'ar_name': 'غنيا',
                'ug_name': 'ئاللاھنىڭ (مەخلۇقاتتىن) بىھاجەت  زات  ئىكەنلىكى',
                'en_name': 'The Rich',
                'c': 0,
                'sa': 1
              }, subNodes: []),
              TreeNode({
                'ar_id': 86,
                'ar_name': 'الفتاح',
                'ug_name': 'ئاللاھنىڭ ھۆكۈم چىقارغۇچى  زات  ئىكەنلىكى',
                'en_name': 'Al-Fattah',
                'c': 0,
                'sa': 1
              }, subNodes: []),
              TreeNode({
                'ar_id': 87,
                'ar_name': 'القادر',
                'ug_name': 'ئاللاھنىڭ ھەممىگە قادىر  زات  ئىكەنلىكى',
                'en_name': 'Al-Qader',
                'c': 0,
                'sa': 11
              }, subNodes: []),
              TreeNode({
                'ar_id': 88,
                'ar_name': 'القاهر',
                'ug_name':
                    'ئاللاھنىڭ بەندىلىرىنى تىزگىنلەپ تۇرغۇچى  زات  ئىكەنلىكى',
                'en_name': 'Al-Qaher',
                'c': 0,
                'sa': 2
              }, subNodes: []),
              TreeNode({
                'ar_id': 89,
                'ar_name': 'القدوس',
                'ug_name': 'ئاللاھنىڭ (ھەممە نۇقسانلاردىن) پاك  زات  ئىكەنلىكى',
                'en_name': 'Al-Quddus',
                'c': 0,
                'sa': 2
              }, subNodes: []),
              TreeNode({
                'ar_id': 90,
                'ar_name': 'القدير',
                'ug_name': 'ئاللاھنىڭ ھەممىگە قادىر زات  ئىكەنلىكى',
                'en_name': 'Al-Qadeer',
                'c': 0,
                'sa': 39
              }, subNodes: []),
              TreeNode({
                'ar_id': 91,
                'ar_name': 'قديرا',
                'ug_name': 'ئاللاھنىڭ ھەممىگە قادىر زات  ئىكەنلىكى',
                'en_name': 'The Mighty',
                'c': 0,
                'sa': 6
              }, subNodes: []),
              TreeNode({
                'ar_id': 92,
                'ar_name': 'القريب',
                'ug_name': 'ئاللاھنىڭ  ئەڭ يېقىن زات  ئىكەنلىكى',
                'en_name': 'Al-Qareeb',
                'c': 0,
                'sa': 3
              }, subNodes: []),
              TreeNode({
                'ar_id': 93,
                'ar_name': 'القهار',
                'ug_name': 'ئاللاھنىڭ  ھەممىگە غالىب زات  ئىكەنلىكى',
                'en_name': 'Al-Kahhar',
                'c': 0,
                'sa': 6
              }, subNodes: []),
              TreeNode({
                'ar_id': 94,
                'ar_name': 'القوي',
                'ug_name': 'ئاللاھنىڭ  ئەڭ كۈچلۈك زات  ئىكەنلىكى',
                'en_name': 'Al-Qawiyy',
                'c': 0,
                'sa': 9
              }, subNodes: []),
              TreeNode({
                'ar_id': 95,
                'ar_name': 'القيوم',
                'ug_name':
                    'ئاللاھنىڭ ھەممىنى ئىدارە قىلىپ تۇرغۇچى زات  ئىكەنلىكى',
                'en_name': 'Al-Qayyum',
                'c': 0,
                'sa': 3
              }, subNodes: []),
              TreeNode({
                'ar_id': 96,
                'ar_name': 'الكافي',
                'ug_name':
                    'ئاللاھنىڭ (ياردەم بېرىشكە) يېتەرلىك  زات  ئىكەنلىكى',
                'en_name': 'Al-Kaafi',
                'c': 0,
                'sa': 1
              }, subNodes: []),
              TreeNode({
                'ar_id': 97,
                'ar_name': 'الكريم',
                'ug_name': 'ئاللاھنىڭ  مەرھەمەتلىك  زات  ئىكەنلىكى',
                'en_name': 'Al-Kareem',
                'c': 0,
                'sa': 2
              }, subNodes: []),
              TreeNode({
                'ar_id': 98,
                'ar_name': 'الكبير',
                'ug_name': 'ئاللاھنىڭ  بۈيۈك  زات  ئىكەنلىكى',
                'en_name': 'Al-Kabeer',
                'c': 0,
                'sa': 6
              }, subNodes: []),
              TreeNode({
                'ar_id': 99,
                'ar_name': 'المؤمن',
                'ug_name': 'ئاللاھنىڭ  ئەمىن قىلغۇچى زات  ئىكەنلىكى',
                'en_name': 'Al-Mu"Min',
                'c': 0,
                'sa': 1
              }, subNodes: []),
              TreeNode({
                'ar_id': 100,
                'ar_name': 'المتعالي',
                'ug_name': 'ئاللاھنىڭ ھەممىدىن ئۈستۈن زات  ئىكەنلىكى',
                'en_name': 'Al-Mutaali',
                'c': 0,
                'sa': 1
              }, subNodes: []),
              TreeNode({
                'ar_id': 101,
                'ar_name': 'المتكبر',
                'ug_name': 'ئاللاھنىڭ ئۇلۇغ  زات  ئىكەنلىكى',
                'en_name': 'Al-Mutakabbir',
                'c': 0,
                'sa': 1
              }, subNodes: []),
              TreeNode({
                'ar_id': 102,
                'ar_name': 'المتين',
                'ug_name': 'ئاللاھنىڭ كۈچ -قۇۋۋەتلىك  زات  ئىكەنلىكى',
                'en_name': 'Al-Mateen',
                'c': 0,
                'sa': 1
              }, subNodes: []),
              TreeNode({
                'ar_id': 103,
                'ar_name': 'المجيب',
                'ug_name': 'ئاللاھنىڭ  (دۇئانى)ئىجابەت قىلغۇچى  زات  ئىكەنلىكى',
                'en_name': 'Al-Mujeeb',
                'c': 0,
                'sa': 1
              }, subNodes: []),
              TreeNode({
                'ar_id': 104,
                'ar_name': 'المجيد',
                'ug_name': 'ئاللاھنىڭ  ناھايىتى ئۇلۇغ  زات  ئىكەنلىكى',
                'en_name': 'Al-Majid',
                'c': 0,
                'sa': 2
              }, subNodes: []),
              TreeNode({
                'ar_id': 105,
                'ar_name': 'المحصي',
                'ug_name':
                    'ئاللاھنىڭ  بىرمۇ - بىر  خاتىرلەپ قويغۇچى  زات  ئىكەنلىكى',
                'en_name': 'Al-Muhsee',
                'c': 0,
                'sa': 1
              }, subNodes: []),
              TreeNode({
                'ar_id': 106,
                'ar_name': 'المحيط',
                'ug_name': 'ئاللاھنىڭ  قورشاپ تۇرغۇچى زات  ئىكەنلىكى',
                'en_name': 'Al-Muheet',
                'c': 0,
                'sa': 6
              }, subNodes: []),
              TreeNode({
                'ar_id': 107,
                'ar_name': 'محيطا',
                'ug_name': 'ئاللاھنىڭ  تولۇق بىلگۈچى زات  ئىكەنلىكى',
                'en_name': 'Knowing',
                'c': 0,
                'sa': 2
              }, subNodes: []),
              TreeNode({
                'ar_id': 108,
                'ar_name': 'المحيي',
                'ug_name': 'ئاللاھنىڭ تىرىلدۈرگۈچى زات  ئىكەنلىكى',
                'en_name': 'Al-Muhyi',
                'c': 0,
                'sa': 2
              }, subNodes: []),
              TreeNode({
                'ar_id': 109,
                'ar_name': 'المذل',
                'ug_name': 'ئاللاھنىڭ خار قىلغۇچى زات  ئىكەنلىكى',
                'en_name': 'Al-Muzill',
                'c': 0,
                'sa': 1
              }, subNodes: []),
              TreeNode({
                'ar_id': 110,
                'ar_name': 'المستعان',
                'ug_name': 'ئاللاھنىڭ ياردەم قىلغۇچى زات  ئىكەنلىكى',
                'en_name': 'Al-Mustaan',
                'c': 0,
                'sa': 2
              }, subNodes: []),
              TreeNode({
                'ar_id': 111,
                'ar_name': 'المصور',
                'ug_name': 'ئاللاھنىڭ سۈرەت(شەكىل)بېغىشلىغۇچى زات  ئىكەنلىكى',
                'en_name': 'Al-Musawwir',
                'c': 0,
                'sa': 1
              }, subNodes: []),
              TreeNode({
                'ar_id': 112,
                'ar_name': 'المعز',
                'ug_name': 'ئاللاھنىڭ ئەزىز قلغۇچى  زات  ئىكەنلىكى',
                'en_name': 'Al-Muiz',
                'c': 0,
                'sa': 1
              }, subNodes: []),
              TreeNode({
                'ar_id': 113,
                'ar_name': 'المعيد',
                'ug_name': 'ئاللاھنىڭ تىرىلدۈرگۈچى  زات  ئىكەنلىكى',
                'en_name': 'Al-Mueed',
                'c': 0,
                'sa': 1
              }, subNodes: []),
              TreeNode({
                'ar_id': 114,
                'ar_name': 'المغني',
                'ug_name': 'ئاللاھنىڭ باي قىلغۇچى  زات  ئىكەنلىكى',
                'en_name': 'Al-Mughni',
                'c': 0,
                'sa': 1
              }, subNodes: []),
              TreeNode({
                'ar_id': 115,
                'ar_name': 'المقتدر',
                'ug_name': 'ئاللاھنىڭ ھەر نەرسىگە قادىر  زات  ئىكەنلىكى',
                'en_name': 'Al-Muqtadir',
                'c': 0,
                'sa': 3
              }, subNodes: []),
              TreeNode({
                'ar_id': 116,
                'ar_name': 'المقني',
                'ug_name': 'ئاللاھنىڭ مەمنۇن قىلغۇچى  زات  ئىكەنلىكى',
                'en_name': 'Al-Muqni',
                'c': 0,
                'sa': 1
              }, subNodes: []),
              TreeNode({
                'ar_id': 117,
                'ar_name': 'المقيت',
                'ug_name': 'ئاللاھنىڭ شاھىت ۋە قادىر زات  ئىكەنلىكى',
                'en_name': 'Al-Muqeet',
                'c': 0,
                'sa': 1
              }, subNodes: []),
              TreeNode({
                'ar_id': 118,
                'ar_name': 'الملك',
                'ug_name': 'ئاللاھنىڭ پادىشاھ  ئىكەنلىكى',
                'en_name': 'Al-Malik',
                'c': 0,
                'sa': 2
              }, subNodes: []),
              TreeNode({
                'ar_id': 119,
                'ar_name': 'المليك',
                'ug_name': 'ئاللاھنىڭ پادىشاھ  ئىكەنلىكى',
                'en_name': 'The King',
                'c': 0,
                'sa': 1
              }, subNodes: []),
              TreeNode({
                'ar_id': 120,
                'ar_name': 'المنتقم',
                'ug_name':
                    'ئاللاھنىڭ ئىنتىقام ئالغۇچى(جازالىغۇچى) زات  ئىكەنلىكى',
                'en_name': 'Al-Munitaqim',
                'c': 0,
                'sa': 3
              }, subNodes: []),
              TreeNode({
                'ar_id': 121,
                'ar_name': 'المهيمن',
                'ug_name': 'ئاللاھنىڭ  ھەممىنى كۈزىتىپ تۇرغۇچى  زات  ئىكەنلىكى',
                'en_name': 'Al-Muhaymin',
                'c': 0,
                'sa': 1
              }, subNodes: []),
              TreeNode({
                'ar_id': 122,
                'ar_name': 'المولى',
                'ug_name': 'ئاللاھنىڭ مەدەتكار(ئىگە بولغۇچى) زات  ئىكەنلىكى',
                'en_name': 'Al-Mawla',
                'c': 0,
                'sa': 9
              }, subNodes: []),
              TreeNode({
                'ar_id': 123,
                'ar_name': 'النصير',
                'ug_name': 'ئاللاھنىڭ ياخشى ياردەمچى زات  ئىكەنلىكى',
                'en_name': 'An-Naseer',
                'c': 0,
                'sa': 6
              }, subNodes: []),
              TreeNode({
                'ar_id': 124,
                'ar_name': 'النور',
                'ug_name': 'ئاللاھنىڭ نۇر ئىكەنلىكى',
                'en_name': 'An-Noor',
                'c': 0,
                'sa': 1
              }, subNodes: []),
              TreeNode({
                'ar_id': 125,
                'ar_name': 'الهادي',
                'ug_name': 'ئاللاھنىڭ  يول كۆرسەتكۈچى زات ئىكەنلىكى',
                'en_name': 'Al-Haade',
                'c': 0,
                'sa': 1
              }, subNodes: []),
              TreeNode({
                'ar_id': 126,
                'ar_name': 'الواحد',
                'ug_name': 'ئاللاھنىڭ  يەككە -يېگانە شىرىكى يوق زات ئىكەنلىكى',
                'en_name': 'Al-Wahid',
                'c': 0,
                'sa': 6
              }, subNodes: []),
              TreeNode({
                'ar_id': 127,
                'ar_name': 'الوارث',
                'ug_name': 'ئاللاھنىڭ ۋارىسلىق قىلغۇچى زات ئىكەنلىكى',
                'en_name': 'Al-Warith',
                'c': 0,
                'sa': 3
              }, subNodes: []),
              TreeNode({
                'ar_id': 128,
                'ar_name': 'الواسع',
                'ug_name': 'ئاللاھنىڭ مەرھەمىتى كەڭ زات ئىكەنلىكى',
                'en_name': 'Al-Wasi',
                'c': 0,
                'sa': 8
              }, subNodes: []),
              TreeNode({
                'ar_id': 129,
                'ar_name': 'الوالي',
                'ug_name': 'ئاللاھنىڭ  ئىگە بولغۇچى زات  ئىكەنلىكى',
                'en_name': 'Al-Wali',
                'c': 0,
                'sa': 1
              }, subNodes: []),
              TreeNode({
                'ar_id': 130,
                'ar_name': 'الودود',
                'ug_name': 'ئاللاھنىڭ (مۆمىنلەرنى) دوسىت تۇتقۇچى ئىكەنلىكى',
                'en_name': 'Al-Wadood',
                'c': 0,
                'sa': 2
              }, subNodes: []),
              TreeNode({
                'ar_id': 131,
                'ar_name': 'الوكيل',
                'ug_name': 'ئاللاھنىڭ ياخشى ھامىي ئىكەنلىكى',
                'en_name': 'Al-Wakeel',
                'c': 0,
                'sa': 13
              }, subNodes: []),
              TreeNode({
                'ar_id': 132,
                'ar_name': 'الولي',
                'ug_name': 'ئاللاھنىڭ دوسىت(مەدەتكار) ئىكەنلىكى',
                'en_name': 'Al-Wali',
                'c': 0,
                'sa': 11
              }, subNodes: []),
              TreeNode({
                'ar_id': 133,
                'ar_name': 'الوهاب',
                'ug_name': 'ئاللاھنىڭ كۆپ ئاتا قىلغۇچى زات ئىكەنلىكى',
                'en_name': 'Al-Wahhab',
                'c': 0,
                'sa': 3
              }, subNodes: []),
              TreeNode({
                'ar_id': 134,
                'ar_name': 'أحكم الحاكمين',
                'ug_name': 'ئاللاھنىڭ ئەڭ ئادىل ھۆكۈم قىلغۇچى ئىكەنلىكى',
                'en_name': 'The Wisest Rulers',
                'c': 0,
                'sa': 2
              }, subNodes: []),
              TreeNode({
                'ar_id': 135,
                'ar_name': 'أرحم الراحمين',
                'ug_name': 'ئاللاھنىڭ ئەڭ رەھىم قىلغۇچى زات  ئىكەنلىكى',
                'en_name': 'The Most Merciful Of The Merciful',
                'c': 0,
                'sa': 4
              }, subNodes: []),
              TreeNode({
                'ar_id': 136,
                'ar_name': 'أسرع الحاسبين',
                'ug_name': 'ئاللاھنىڭ ئەڭ تېز ھېساب ئالغۇچى  ئىكەنلىكى',
                'en_name': 'The Fastest Of Calculators',
                'c': 0,
                'sa': 1
              }, subNodes: []),
              TreeNode({
                'ar_id': 137,
                'ar_name': 'إله الناس',
                'ug_name': 'ئاللاھنىڭ ئىنسانلارىڭ ئىلاھى ئىكەنلىكى',
                'en_name': 'God Of The People',
                'c': 0,
                'sa': 1
              }, subNodes: []),
              TreeNode({
                'ar_id': 138,
                'ar_name': 'اهل التقوى',
                'ug_name': 'ئاللاھنىڭ (بەندىلىرى)قورقۇشقا لايىق زات ئىكەنلىكى',
                'en_name': 'Ahl Of Piety',
                'c': 0,
                'sa': 1
              }, subNodes: []),
              TreeNode({
                'ar_id': 139,
                'ar_name': 'أهل المغفرة',
                'ug_name':
                    'ئاللاھنىڭ (بەندىلەرنى)مەغپىرەت قىلىشقا لايىق زات ئىكەنلىكى',
                'en_name': 'Ahl Of Forgiveness',
                'c': 0,
                'sa': 1
              }, subNodes: []),
              TreeNode({
                'ar_id': 140,
                'ar_name': 'بديع السماوات والأرض',
                'ug_name':
                    'ئاللاھنىڭ ئاسمان زېمىننى يوقتىن بارقىلغۇچى زات ئىكەنلىكى',
                'en_name': 'Creator Of The Heavens And The Earth',
                'c': 0,
                'sa': 2
              }, subNodes: []),
              TreeNode({
                'ar_id': 141,
                'ar_name': 'خير حافظا',
                'ug_name': 'ئاللاھنىڭ ياخشى ساقلىغۇچى ئىكەنلىكى',
                'en_name': 'The Best Of The Keepers',
                'c': 0,
                'sa': 1
              }, subNodes: []),
              TreeNode({
                'ar_id': 142,
                'ar_name': 'خيرالحاكمين',
                'ug_name': 'ئاللاھنىڭ ھەققانىي ھۆكۈم قىلغۇچى ئىكەنلىكى',
                'en_name': 'The Best Of The Rulers',
                'c': 0,
                'sa': 2
              }, subNodes: []),
              TreeNode({
                'ar_id': 143,
                'ar_name': 'خير الراحمين',
                'ug_name': 'ئاللاھنىڭ   ئەڭ ياخشى رەھىم قلغۇچى ئىكەنلىكى',
                'en_name': 'The Best Of The Merciful',
                'c': 0,
                'sa': 2
              }, subNodes: []),
              TreeNode({
                'ar_id': 144,
                'ar_name': 'خير الرازقين',
                'ug_name': 'ئاللاھنىڭ   ئەڭ ياخشى رىزىق بەرگۈچى ئىكەنلىكى',
                'en_name': 'The Best Of The Raziqeen',
                'c': 0,
                'sa': 5
              }, subNodes: []),
              TreeNode({
                'ar_id': 145,
                'ar_name': 'خير الغافرين',
                'ug_name': 'ئاللاھنىڭ   ئەڭ ياخشى  مەغپىرەت قىلغۇچى ئىكەنلىكى',
                'en_name': 'The Best Of The Forgivers',
                'c': 0,
                'sa': 1
              }, subNodes: []),
              TreeNode({
                'ar_id': 146,
                'ar_name': 'خير الفاتحين',
                'ug_name':
                    'ئاللاھنىڭ ھۆكۈم قىلغۇچىلارنىڭ(ئايرىغۇچىلارنىڭ) ئەڭ ياخشىسى  ئىكەنلىكى',
                'en_name': 'The Best Conquerors',
                'c': 0,
                'sa': 1
              }, subNodes: []),
              TreeNode({
                'ar_id': 147,
                'ar_name': 'خير الفاصلين',
                'ug_name':
                    'ئاللاھنىڭ ھۆكۈم قىلغۇچىلارنىڭ ئەڭ ياخشىسى  ئىكەنلىكى',
                'en_name': 'The Best Of Faslin',
                'c': 0,
                'sa': 1
              }, subNodes: []),
              TreeNode({
                'ar_id': 148,
                'ar_name': 'خير الماكرين',
                'ug_name':
                    'ئاللاھنىڭ مىكىر قىلغۇچىلارنىڭ جازاسىنى ئوبدان بەرگۈچى  ئىكەنلىكى',
                'en_name': 'The Best Of The Makireen',
                'c': 0,
                'sa': 2
              }, subNodes: []),
              TreeNode({
                'ar_id': 149,
                'ar_name': 'خير المنزلين',
                'ug_name': 'ئاللاھنىڭ ئەڭ ياخشى ئورۇنلاشتۇرۇغۇچى ئىكەنلىكى',
                'en_name': 'The Best Munzileen',
                'c': 0,
                'sa': 1
              }, subNodes: []),
              TreeNode({
                'ar_id': 150,
                'ar_name': 'خير الناصرين',
                'ug_name': 'ئاللاھنىڭ ئەڭ ياخشى ياردەم قىلغۇچى ئىكەنلىكى',
                'en_name': 'Khair Al-Nasreen',
                'c': 0,
                'sa': 1
              }, subNodes: []),
              TreeNode({
                'ar_id': 151,
                'ar_name': 'خير الوارثين',
                'ug_name': 'ئاللاھنىڭ ئەڭ ياخشى ۋارىسى ئىكەنلىكى',
                'en_name': 'The Best Waritheen',
                'c': 0,
                'sa': 1
              }, subNodes: []),
              TreeNode({
                'ar_id': 152,
                'ar_name': 'ذو انتقام',
                'ug_name': 'ئىنتىقام ئالغۇچى ئاللاھ',
                'en_name': 'Vengeful',
                'c': 0,
                'sa': 3
              }, subNodes: []),
              TreeNode({
                'ar_id': 153,
                'ar_name': 'ذو رحمة',
                'ug_name': 'رەھمەت ئىگىسى',
                'en_name': 'Mercy',
                'c': 0,
                'sa': 3
              }, subNodes: []),
              TreeNode({
                'ar_id': 154,
                'ar_name': 'ذو رحمة واسعه',
                'ug_name': 'كەڭ رەھمەت ئىگىسى بولغان ئاللاھ',
                'en_name': 'With Great Mercy',
                'c': 0,
                'sa': 1
              }, subNodes: []),
              TreeNode({
                'ar_id': 155,
                'ar_name': 'ذو العرش',
                'ug_name': 'ئەرشىنىڭ ئىگىسى بولغان ئاللاھ',
                'en_name': 'Owner Of The Throne',
                'c': 0,
                'sa': 2
              }, subNodes: []),
              TreeNode({
                'ar_id': 156,
                'ar_name': 'ذوعقاب أليم',
                'ug_name': 'قاتتىق ئازاب ئىگىسى بولغان ئاللاھ',
                'en_name': 'Punisher',
                'c': 0,
                'sa': 1
              }, subNodes: []),
              TreeNode({
                'ar_id': 157,
                'ar_name': 'ذو فضل ذو الفضل العظيم',
                'ug_name': 'چوڭ پەزل ئىگىسى بولغان ئاللاھ',
                'en_name': 'Zol Fadl Zol Fadl Al-Azeem',
                'c': 0,
                'sa': 13
              }, subNodes: []),
              TreeNode({
                'ar_id': 158,
                'ar_name': 'ذو القوة',
                'ug_name': 'قۇدرەتلىك ئاللاھ',
                'en_name': 'Powerful',
                'c': 0,
                'sa': 1
              }, subNodes: []),
              TreeNode({
                'ar_id': 159,
                'ar_name': 'ذو الجلال',
                'ug_name': 'ئەزىمەتلىك ئاللاھ',
                'en_name': 'Majesty',
                'c': 0,
                'sa': 1
              }, subNodes: []),
              TreeNode({
                'ar_id': 160,
                'ar_name': 'ذو مرة',
                'ug_name': 'زۇ مىررە(كۆرۈنۈش ئىگىسى) بولغان ئاللاھ',
                'en_name': 'Zo Mirra',
                'c': 0,
                'sa': 1
              }, subNodes: []),
              TreeNode({
                'ar_id': 161,
                'ar_name': 'ذو مغفرة',
                'ug_name': 'مەغپىرەت ئىگىسى بولغان ئاللاھ',
                'en_name': 'Zo Maghfira',
                'c': 0,
                'sa': 2
              }, subNodes: []),
              TreeNode({
                'ar_id': 162,
                'ar_name': 'ذي انتقام',
                'ug_name': 'جازالىغۇچى(دۈشمەنلىرىدىن ئىنتىقام ئالغۇچى) ئاللاھ',
                'en_name': 'Revengeful',
                'c': 0,
                'sa': 1
              }, subNodes: []),
              TreeNode({
                'ar_id': 163,
                'ar_name': 'ذي الجلال',
                'ug_name': 'ئەزىمەتلىك ئاللاھ',
                'en_name': 'The Magnificent',
                'c': 0,
                'sa': 1
              }, subNodes: []),
              TreeNode({
                'ar_id': 164,
                'ar_name': 'ذي الطول',
                'ug_name': 'ئىنئام ئىگىسى بولغان ئاللاھ',
                'en_name': 'Zo Tawl',
                'c': 0,
                'sa': 1
              }, subNodes: []),
              TreeNode({
                'ar_id': 165,
                'ar_name': 'ذي العرش',
                'ug_name': 'ئەرشىنىڭ ئىگىسى بولغان ئاللاھ',
                'en_name': 'Zo Al-Arch',
                'c': 0,
                'sa': 1
              }, subNodes: []),
              TreeNode({
                'ar_id': 166,
                'ar_name': 'ذي المعارج',
                'ug_name': 'ئاسمان شوتىللىرىنىڭ ئىگىسى بولغان ئاللاھ',
                'en_name': 'Zo Miraj',
                'c': 0,
                'sa': 1
              }, subNodes: []),
              TreeNode({
                'ar_id': 167,
                'ar_name': 'رب آبائكم الاولين',
                'ug_name': 'سىلەرنىڭ ئاتا -بوۋاڭلارنىڭ رەببى بولغان ئاللاھ',
                'en_name': 'The Lord Of Your Early Fathers',
                'c': 0,
                'sa': 3
              }, subNodes: []),
              TreeNode({
                'ar_id': 168,
                'ar_name': 'رب الارض',
                'ug_name': 'زېمىننىڭ رەببى بولغان ئاللاھ',
                'en_name': 'Lord Of The Earth',
                'c': 0,
                'sa': 1
              }, subNodes: []),
              TreeNode({
                'ar_id': 169,
                'ar_name': 'رب السماء',
                'ug_name': 'ئاسمانلارنڭ رەببى بولغان ئاللاھ',
                'en_name': 'Lord Of Heaven',
                'c': 0,
                'sa': 14
              }, subNodes: []),
              TreeNode({
                'ar_id': 170,
                'ar_name': 'رب الشعري',
                'ug_name': 'شىئرا يۇلتۇزىنىڭ رەببى بولغان ئاللاھ',
                'en_name': 'Lord Of Chi"Raa',
                'c': 0,
                'sa': 1
              }, subNodes: []),
              TreeNode({
                'ar_id': 171,
                'ar_name': 'رب العالمين',
                'ug_name': 'ئالەملەرنىڭ رەببى بولغان ئاللاھ',
                'en_name': 'Lord Of The Worlds',
                'c': 0,
                'sa': 42
              }, subNodes: []),
              TreeNode({
                'ar_id': 172,
                'ar_name': 'رب العرش',
                'ug_name': 'ئەرشىنىڭ رەببى بولغان ئاللاھ',
                'en_name': 'Lord Of The Throne',
                'c': 0,
                'sa': 6
              }, subNodes: []),
              TreeNode({
                'ar_id': 173,
                'ar_name': 'رب العزة',
                'ug_name': 'قۇدرەت ئىگىسى بولغان ئاللاھ',
                'en_name': 'Lord Of Glory',
                'c': 0,
                'sa': 1
              }, subNodes: []),
              TreeNode({
                'ar_id': 174,
                'ar_name': 'رب الفلق',
                'ug_name': 'سۈبھىنىڭ رەببى بولغان ئاللاھ',
                'en_name': 'Lord Of The Separation',
                'c': 0,
                'sa': 1
              }, subNodes: []),
              TreeNode({
                'ar_id': 175,
                'ar_name': 'رب كل شيء',
                'ug_name': 'ھەممە نەرسىنىڭ رەببى بولغان ئاللاھ',
                'en_name': 'Lord Of All Things',
                'c': 0,
                'sa': 1
              }, subNodes: []),
              TreeNode({
                'ar_id': 176,
                'ar_name': 'رب المشارق',
                'ug_name': 'مەشرىقلەرنىڭ رەببى بولغان ئاللاھ',
                'en_name': 'Lord Of The Shines',
                'c': 0,
                'sa': 2
              }, subNodes: []),
              TreeNode({
                'ar_id': 177,
                'ar_name': 'رب المغرب',
                'ug_name': 'مەغرىبنىڭ رەببى بولغان ئاللاھ',
                'en_name': 'The Lord Of Maghrib',
                'c': 0,
                'sa': 2
              }, subNodes: []),
              TreeNode({
                'ar_id': 178,
                'ar_name': 'رب المشرقين رب المغربين',
                'ug_name':
                    'ئىككى مەشرىق ۋە ئىككى مەغرىبنىڭ رەببى بولغان ئاللاھ',
                'en_name': 'Lord Of The Mushriqeen, Lord Of The Mughribeen',
                'c': 0,
                'sa': 1
              }, subNodes: []),
              TreeNode({
                'ar_id': 179,
                'ar_name': 'رب موسى وهارون',
                'ug_name': 'مۇسا ۋە ھارۇن ئەلەيھىسسالامنىڭ رەببى بولغان ئاللاھ',
                'en_name': 'The Lord Of Moses And Aaron',
                'c': 0,
                'sa': 2
              }, subNodes: []),
              TreeNode({
                'ar_id': 180,
                'ar_name': 'رب هذا البيت',
                'ug_name': 'بۇ ئۆينىڭ(بەيتۇللاھ)نڭ رەببى بولغان ئاللاھ',
                'en_name': 'Lord Of This House',
                'c': 0,
                'sa': 1
              }, subNodes: []),
              TreeNode({
                'ar_id': 181,
                'ar_name': 'رب هذه البلدة',
                'ug_name': 'بۇ شەھەرنىڭ(مەككە مۇكەررەمە) رەببى بولغان  ئاللاھ',
                'en_name': 'Lord Of This Town',
                'c': 0,
                'sa': 1
              }, subNodes: []),
              TreeNode({
                'ar_id': 182,
                'ar_name': 'رفيع الدرجات',
                'ug_name': 'مەرتىۋىسى يۇقىرى ئاللاھ',
                'en_name': 'High-Graded',
                'c': 0,
                'sa': 1
              }, subNodes: []),
              TreeNode({
                'ar_id': 183,
                'ar_name': 'سريع الحساب',
                'ug_name': 'تېز ھېساب ئالغۇچى ئاللاھ',
                'en_name': 'Fast Calculation',
                'c': 0,
                'sa': 8
              }, subNodes: []),
              TreeNode({
                'ar_id': 184,
                'ar_name': 'سريع العقاب',
                'ug_name': 'تېز جازالىغۇچى ئاللاھ',
                'en_name': 'Quick Punishment',
                'c': 0,
                'sa': 2
              }, subNodes: []),
              TreeNode({
                'ar_id': 185,
                'ar_name': 'سميع الدعاء',
                'ug_name': 'دۇئالارنى ئاڭلاپ تۇرغۇچى ئاللاھ',
                'en_name': 'Hearing The Supplication',
                'c': 0,
                'sa': 2
              }, subNodes: []),
              TreeNode({
                'ar_id': 186,
                'ar_name': 'شديد العقاب',
                'ug_name': 'ئازابى(جازاسى) قاتتىق ئاللاھ',
                'en_name': 'Severe Punishment',
                'c': 0,
                'sa': 14
              }, subNodes: []),
              TreeNode({
                'ar_id': 187,
                'ar_name': 'شديد القوى',
                'ug_name': 'ناھايىتى كۈچلۈك ئاللاھ',
                'en_name': 'Very Strong',
                'c': 0,
                'sa': 1
              }, subNodes: []),
              TreeNode({
                'ar_id': 188,
                'ar_name': 'شديد المحال',
                'ug_name': 'تەدبىرى كۈچلۈك ئاللاھ',
                'en_name': 'Shadeed Al-Mihal',
                'c': 0,
                'sa': 1
              }, subNodes: []),
              TreeNode({
                'ar_id': 189,
                'ar_name': 'عالم الغيب',
                'ug_name': 'غەيىبنى بىلگۈچى ئاللاھ',
                'en_name': 'Knowing The Unseen World',
                'c': 0,
                'sa': 2
              }, subNodes: []),
              TreeNode({
                'ar_id': 190,
                'ar_name': 'عالم غيب السماوت و الارض',
                'ug_name':
                    'ئاسمانلاردىكى ۋە زېمىندىكى غەيىبلەرنى بىلگۈچى ئاللاھ',
                'en_name': 'Knowing  The Unseen Of Heaven And Earth',
                'c': 0,
                'sa': 1
              }, subNodes: []),
              TreeNode({
                'ar_id': 191,
                'ar_name': 'عالم الغيب والشهادة',
                'ug_name': 'يوشۇرۇن ۋە ئاشكارە ھەممىنى بىلگۈچى ئاللاھ',
                'en_name': 'Knowing  The Unseen And The Witness',
                'c': 0,
                'sa': 10
              }, subNodes: []),
              TreeNode({
                'ar_id': 192,
                'ar_name': 'علام الغيوب',
                'ug_name': 'غەيىبلەرنى تامامەن بىلگۈچى ئاللاھ',
                'en_name': 'Allam The Ghuyoob',
                'c': 0,
                'sa': 4
              }, subNodes: []),
              TreeNode({
                'ar_id': 193,
                'ar_name': 'غافر الذنب',
                'ug_name': 'گۇناھنى مەغپىرەت قىلغۇچى ئاللاھ',
                'en_name': 'He Who Forgives The Sin',
                'c': 0,
                'sa': 1
              }, subNodes: []),
              TreeNode({
                'ar_id': 194,
                'ar_name': 'فاطر السماوات والارض',
                'ug_name': 'ئاسمان ۋە زېمىننى ئۆرنەكسىز ياراتقۇچى ئاللاھ',
                'en_name': 'Creator Of The Heavens And The Earth',
                'c': 0,
                'sa': 6
              }, subNodes: []),
              TreeNode({
                'ar_id': 195,
                'ar_name': 'فالق الإصباح',
                'ug_name': 'سۈبھىنى(قاراڭغۇدىن) يېرىپ چىقارغۇچى ئاللاھ',
                'en_name': 'Separator Of Light',
                'c': 0,
                'sa': 1
              }, subNodes: []),
              TreeNode({
                'ar_id': 196,
                'ar_name': 'فالق الحب و النوى',
                'ug_name': 'دانلار ۋە ئۇرۇقچىلارنى بىخ ئۇرغۇزغۇچى ئاللاھ',
                'en_name': 'Separator Of Grains And Cores',
                'c': 0,
                'sa': 1
              }, subNodes: []),
              TreeNode({
                'ar_id': 197,
                'ar_name': 'فعال لما يريد',
                'ug_name': 'خالىغىنىنى قىلغۇچى ئاللاھ',
                'en_name': 'Effective For What He Wants',
                'c': 0,
                'sa': 2
              }, subNodes: []),
              TreeNode({
                'ar_id': 198,
                'ar_name': 'قابل التوب',
                'ug_name': 'تەۋبىنى قوبۇل قىلغۇچى ئاللاھ',
                'en_name': 'Reputable',
                'c': 0,
                'sa': 1
              }, subNodes: []),
              TreeNode({
                'ar_id': 199,
                'ar_name': 'مالك الملك',
                'ug_name': 'پادىشاھلىقنىڭ ئىگىسى بولغان ئاللاھ',
                'en_name': 'Owner Of The King',
                'c': 0,
                'sa': 1
              }, subNodes: []),
              TreeNode({
                'ar_id': 200,
                'ar_name': 'مالك يوم الدين',
                'ug_name': 'قىيامەت كۈنىنىڭ ئىگىسى  بولغان ئاللاھ',
                'en_name': 'Owner Of The Day Of Judgment',
                'c': 0,
                'sa': 1
              }, subNodes: []),
              TreeNode({
                'ar_id': 201,
                'ar_name': 'الاحد',
                'ug_name': 'يەككە - يېگانە ئاللاھ',
                'en_name': 'Al-Ahad',
                'c': 0,
                'sa': 1
              }, subNodes: []),
              TreeNode({
                'ar_id': 202,
                'ar_name': 'الخلاق',
                'ug_name': 'ياراتقۇچى ئاللاھ',
                'en_name': 'Creative',
                'c': 0,
                'sa': 2
              }, subNodes: []),
              TreeNode({
                'ar_id': 203,
                'ar_name': 'اللطيف',
                'ug_name': 'ئەللەتىف(كۆيۈنگۈچى) ئاللاھ',
                'en_name': 'Gentle',
                'c': 0,
                'sa': 7
              }, subNodes: []),
              TreeNode({
                'ar_id': 204,
                'ar_name': 'شديد العذاب',
                'ug_name': 'ئاللاھنىڭ ئازابى  قاتتىق زات  ئىكەنلىكى',
                'en_name': 'Severe Torment',
                'c': 0,
                'sa': 1
              }, subNodes: []),
              TreeNode({
                'ar_id': 205,
                'ar_name': 'رب الناس',
                'ug_name': 'ئاللاھنىڭ ئىنسانلارنىڭ رەببى  ئىكەنلىكى',
                'en_name': 'Lord Of The People',
                'c': 0,
                'sa': 1
              }, subNodes: []),
              TreeNode({
                'ar_id': 206,
                'ar_name': 'الملك الحق',
                'ug_name': 'ئاللاھنىڭ ھەق پادىشاھ ئىكەنلىكى',
                'en_name': 'The Right King',
                'c': 0,
                'sa': 2
              }, subNodes: []),
              TreeNode({
                'ar_id': 207,
                'ar_name': 'ملك الناس',
                'ug_name': 'ئاللاھنىڭ ئىنسانلارنىڭ پادىشاھى ئىكەنلىكى',
                'en_name': 'King Of People',
                'c': 0,
                'sa': 1
              }, subNodes: []),
              TreeNode({
                'ar_id': 208,
                'ar_name': 'نور السموات والارض',
                'ug_name': 'ئاللاھ ئاسمان ۋە زېمىننىڭ نۇرى ئىكەنلىكى',
                'en_name': 'The Light Of The Heavens And The Earth',
                'c': 0,
                'sa': 1
              }, subNodes: []),
              TreeNode({
                'ar_id': 209,
                'ar_name': 'واسع المغفرة',
                'ug_name': 'مەغپىرىتى كەڭ زات',
                'en_name': 'Broad Forgiveness',
                'c': 0,
                'sa': 1
              }, subNodes: []),
              TreeNode({
                'ar_id': 210,
                'ar_name': 'يحيي الموتى',
                'ug_name': 'ئۆلۈكلەرنى تىرىلدۈرگۈچى زات',
                'en_name': 'Revives The Dead',
                'c': 0,
                'sa': 2
              }, subNodes: []),
            ]),
          ]),
          TreeNode({
            'ar_id': 211,
            'ar_name': 'الجاهلون بالدين',
            'ug_name': 'دىندىن ساۋاتسىزلار',
            'en_name': 'Ignorant Of Religion',
            'c': 2,
            'sa': 0
          }, subNodes: [
            TreeNode({
              'ar_id': 212,
              'ar_name': 'الاعراض عنهم',
              'ug_name': 'جاھىللار(نادانلار) بىلەن  تەڭ بولماسلىق',
              'en_name': 'Avoiding Them',
              'c': 0,
              'sa': 1
            }, subNodes: []),
            TreeNode({
              'ar_id': 213,
              'ar_name': 'قبول توبتهم',
              'ug_name': 'جاھىللار(نادانلار)نىڭ تەۋبىسنىڭ قوبۇل بولدىغانلىقى',
              'en_name': 'Accepting Their Repentance',
              'c': 0,
              'sa': 2
            }, subNodes: []),
          ]),
          TreeNode({
            'ar_id': 214,
            'ar_name': 'الشرك و المشركون',
            'ug_name': 'شىرىك ۋە مۇشرىك',
            'en_name': 'Polytheism And Polytheists',
            'c': 7,
            'sa': 0
          }, subNodes: [
            TreeNode({
              'ar_id': 215,
              'ar_name': 'أصنامهم والتهكم بهم على عبادتها',
              'ug_name':
                  'مۇشىركلارنڭ بۇتلىرى ۋە ئىبادەت قىلدىغان بۇتلىرىنىڭ مەسخىرە  قىلىنغانلىقى',
              'en_name': 'Their Idols And Scorn For Their Worship',
              'c': 0,
              'sa': 46
            }, subNodes: []),
            TreeNode({
              'ar_id': 216,
              'ar_name': 'الاعراض عن المشركين المستهزئين',
              'ug_name': 'مەسخىرە قىلغۇچى مۇشرىكلاردىن يۈز ئۆرۈش',
              'en_name': 'The Symptoms Of Scornful Polytheists',
              'c': 0,
              'sa': 8
            }, subNodes: []),
            TreeNode({
              'ar_id': 217,
              'ar_name': 'براءة الله ورسوله من المشركين',
              'ug_name':
                  'ئاللاھ ۋە ئۇنىڭ رەسۇلنىڭ مۇشرىكلاردىن ئادا - جۇدا ئىكەنلىكى',
              'en_name':
                  'The Innocence Of God And His Messenger Of The Polytheists',
              'c': 0,
              'sa': 18
            }, subNodes: []),
            TreeNode({
              'ar_id': 218,
              'ar_name': 'تنزيه الله جل جلاله عن الشريك',
              'ug_name': 'بۇيۈك ئاللاھ شىرىكى بولۇشتىن  پاك ئىكەنلىكى',
              'en_name': 'God Almighty Glorifies Himself From Any Partner',
              'c': 0,
              'sa': 102
            }, subNodes: []),
            TreeNode({
              'ar_id': 219,
              'ar_name': 'الشبه التي يحتج بها المشركون',
              'ug_name': 'ئاللاھنىڭ مۇشرىكلارنڭ شۈبىھلىرىگە رەدىيە بەرگەنلىكى',
              'en_name': 'Likeness Invoked By Polytheists',
              'c': 0,
              'sa': 16
            }, subNodes: []),
            TreeNode({
              'ar_id': 220,
              'ar_name': 'النهي عن الشرك والوعيد عليه',
              'ug_name':
                  'شىرىك كەلتۈرۇشتىن توسۇش ۋە  شىرىك  كەلتۈرۈشتىن ئاگاھلاندۇرۇش',
              'en_name': 'The Prohibition On Polytheism And The Threat Of It',
              'c': 0,
              'sa': 70
            }, subNodes: []),
            TreeNode({
              'ar_id': 221,
              'ar_name': 'عبادة غير الله تعالى',
              'ug_name':
                  'مۇشرىكلارنىڭ ئۇلۇغ ئاللاھتىن باشقا ئىلاھقا ئىبادەت قىلىش',
              'en_name': 'Worship Other Than God',
              'c': 0,
              'sa': 21
            }, subNodes: []),
          ]),
          TreeNode({
            'ar_id': 222,
            'ar_name': 'الكافرون',
            'ug_name': 'كاپىرلار',
            'en_name': 'The Disbelievers',
            'c': 27,
            'sa': 0
          }, subNodes: [
            TreeNode({
              'ar_id': 223,
              'ar_name': 'افتراؤهم على الله وتكذيبهم ومجادلتهم لآيات الله',
              'ug_name':
                  'كاپىرلارنىڭ ئاللاھقا تۆھمەت قىلغانلىقى ۋە ئاللاھنىڭ ئايەتلىرىنى ئىنكار قىلغانلقى',
              'en_name':
                  'Their Disobedience To God And Their Denial And Their Arguments To The Signs Of Allah',
              'c': 0,
              'sa': 73
            }, subNodes: []),
            TreeNode({
              'ar_id': 224,
              'ar_name': 'اعراضهم عن آيات الله',
              'ug_name':
                  'كاپىرلارنىڭ ئاللاھنىڭ ئايەتلىرىدىن يۈز ئۆرۈگەنلىكى(باش تارتقانلىقى)',
              'en_name': 'Their Avoiding Of The Verses Of God',
              'c': 0,
              'sa': 38
            }, subNodes: []),
            TreeNode({
              'ar_id': 225,
              'ar_name': 'إلقاء الرعب في قلوبهم',
              'ug_name': 'كاپىرلارنىڭ قەلبىگە ۋەھىمە سالغانلىقى',
              'en_name': 'To Put Fear In Their Hearts',
              'c': 0,
              'sa': 2
            }, subNodes: []),
            TreeNode({
              'ar_id': 226,
              'ar_name': 'امتناعهم عن الإيمان لا يجديهم نفعا',
              'ug_name':
                  'كاپىرلارنىڭ ئىماندىن يىراق بولۇشنىڭ ئۇلارغا پايدا بەرمەيدىغانلىقى',
              'en_name': 'Their Abstention From Faith Does Not Benefit Them',
              'c': 0,
              'sa': 25
            }, subNodes: []),
            TreeNode({
              'ar_id': 227,
              'ar_name': 'تحدي الكفار',
              'ug_name': 'ئاللاھنىڭ كاپىرلارغا جەڭ ئېلان قىلغانلىقى',
              'en_name': 'Challenge The Infidels',
              'c': 0,
              'sa': 8
            }, subNodes: []),
            TreeNode({
              'ar_id': 228,
              'ar_name': 'تخلي المتبوعين عن الاتباع',
              'ug_name': 'ئەگەشكۈچىلەرنىڭ ئەگىشىشتىن ۋاز كەچكەنلىكى',
              'en_name': 'The Followed Abandon The Followers',
              'c': 0,
              'sa': 37
            }, subNodes: []),
            TreeNode({
              'ar_id': 229,
              'ar_name': 'تشبيههم بالموتى والصم والبكم والعمي',
              'ug_name':
                  'كاپىرلارنىڭ ئۆلۈككە، گاس، گاچا ۋە كورلارغا ئوخشىتىلغانلىقى',
              'en_name':
                  'Liken Them To The Dead, The Deaf, The Dumb, The Blind',
              'c': 0,
              'sa': 37
            }, subNodes: []),
            TreeNode({
              'ar_id': 230,
              'ar_name': 'التشدد معهم',
              'ug_name': 'كاپىرلارغا قاتتىق مۇئامىلە قىلىش',
              'en_name': 'Hardening With Them',
              'c': 0,
              'sa': 30
            }, subNodes: []),
            TreeNode({
              'ar_id': 231,
              'ar_name': 'تعنت الكفار واستعجالهم العذاب',
              'ug_name':
                  'كاپىرلانىڭ ھەددىدىن ئاشقانلىقى ۋە ئازابنىڭ چۈشۈشىگە ئالدىرغانلىقى',
              'en_name': 'The Intransigence Of Infidels And Their Agony',
              'c': 0,
              'sa': 70
            }, subNodes: []),
            TreeNode({
              'ar_id': 232,
              'ar_name': 'التهكم بالكفار',
              'ug_name': 'كاپىرلارنىڭ مەسخىرە قىلىنىشى',
              'en_name': 'The Scorn Of The Infidel',
              'c': 0,
              'sa': 51
            }, subNodes: []),
            TreeNode({
              'ar_id': 233,
              'ar_name': 'الجاحدون من الكفار',
              'ug_name': 'نېمەتلەرنى ئىنكار قىلغۇچى كاپىرلار',
              'en_name': 'The Ungrateful Amongst Infidels',
              'c': 0,
              'sa': 74
            }, subNodes: []),
            TreeNode({
              'ar_id': 234,
              'ar_name': 'جزاء مكر الكفار',
              'ug_name': 'كاپىرلارنىڭ ھىيلىسنىڭ جازاسى',
              'en_name': 'Penalty Of The Plotting Of Infidels',
              'c': 0,
              'sa': 16
            }, subNodes: []),
            TreeNode({
              'ar_id': 235,
              'ar_name': 'شبه الكفار واحتجاجهم بالقدر',
              'ug_name': 'كاپىرلارنىڭ شۈبھلىنشى ۋە تەقدىردىن ناراز بولۇشى',
              'en_name': 'Misconceptions Concerning Destiny',
              'c': 0,
              'sa': 4
            }, subNodes: []),
            TreeNode({
              'ar_id': 236,
              'ar_name': 'صدهم عن سبيل الله',
              'ug_name': 'كاپىرلارنىڭ (كىشىلەرنى )ئاللاھنىڭ يولىدىن توسىشى',
              'en_name': 'Turn Them Away From The Way Of Allah',
              'c': 0,
              'sa': 17
            }, subNodes: []),
            TreeNode({
              'ar_id': 237,
              'ar_name': 'صفات الكفار',
              'ug_name': 'كاپىرلارنىڭ سۈپەتلىرى',
              'en_name': 'Attributes Of Infidels',
              'c': 0,
              'sa': 574
            }, subNodes: []),
            TreeNode({
              'ar_id': 238,
              'ar_name': 'عداوة الكفار',
              'ug_name': 'كاپىرلارنىڭ دۈشمەنلىك قىلىش',
              'en_name': 'Enmity Of Infidels',
              'c': 0,
              'sa': 13
            }, subNodes: []),
            TreeNode({
              'ar_id': 239,
              'ar_name': 'عمل الكفار لا ينفعهم يوم القيامة',
              'ug_name':
                  'كاپىرلارنىڭ ئەمەلىرنىڭ قىيامەتتە ئۇلارغا پايدا بەرمەيدىغانلىقى',
              'en_name':
                  'The Work Of Infidels Does Not Benefit Them On The Day Of Judgment',
              'c': 0,
              'sa': 16
            }, subNodes: []),
            TreeNode({
              'ar_id': 240,
              'ar_name': 'الكفر ظلمات',
              'ug_name': 'كاپىرلىق - قاراڭغۇلۇق (زۇلمەت) ئىكەنلىكى',
              'en_name': 'Infidelity Is Darkness',
              'c': 0,
              'sa': 7
            }, subNodes: []),
            TreeNode({
              'ar_id': 241,
              'ar_name': 'متابعة الكفر',
              'ug_name': 'كۇفرىغا ئەگىشىش ۋە ئۇنىڭ زىينى',
              'en_name': 'Following Infidelity',
              'c': 0,
              'sa': 11
            }, subNodes: []),
            TreeNode({
              'ar_id': 242,
              'ar_name': 'مثال الكفر امرأة نوح و امرأة لوط',
              'ug_name':
                  'كۇفرىنىڭ ئۈلگىللىردىن نوھ ئەلەيھىسسالامنىڭ ئايالى بىلەن لۇت ئەلەيھىسسالامنىڭ ئايالى',
              'en_name':
                  'The Example Of Disbelief Is The Woman Of Noah And The Woman Of Lot',
              'c': 0,
              'sa': 1
            }, subNodes: []),
            TreeNode({
              'ar_id': 243,
              'ar_name': 'مثال من لا يستجيب لله',
              'ug_name': 'ئاللاھنىڭ شەرئىتىنى قوبۇل قىلمىغانلارنىڭ مىسالى',
              'en_name': 'An Example Of One Who Does Not Respond To God',
              'c': 0,
              'sa': 35
            }, subNodes: []),
            TreeNode({
              'ar_id': 244,
              'ar_name': 'المقابلة بين المؤمن والكافر',
              'ug_name': 'مۆمىنلەر بىلەن كاپىرلار ئوتتۇرسىدىكى سېلىشتۇرما',
              'en_name': 'The Exchange Between The Believer And The Unbeliever',
              'c': 0,
              'sa': 27
            }, subNodes: []),
            TreeNode({
              'ar_id': 245,
              'ar_name': 'نتيجة عمل الكفار',
              'ug_name': 'كاپىرلارنىڭ ئەمىلىنىڭ نەتىجىسى',
              'en_name': 'The Result Of The Work Of Infidels',
              'c': 0,
              'sa': 16
            }, subNodes: []),
            TreeNode({
              'ar_id': 246,
              'ar_name': 'النهي عن موالات الكفار',
              'ug_name': 'كاپىرلانى دوست تۇتۇشقا قەتئى بولمايدىغانلىقى',
              'en_name': 'The Prohibition On Aligning To The Infidels',
              'c': 0,
              'sa': 29
            }, subNodes: []),
            TreeNode({
              'ar_id': 247,
              'ar_name': 'النهي عن نصرة الكفار',
              'ug_name': 'كاپىرلاغا ياردەم بېرىشكە قەتئى بولمايدىغانلىقى',
              'en_name': 'Forbidding The Support Of Infidels',
              'c': 0,
              'sa': 1
            }, subNodes: []),
            TreeNode({
              'ar_id': 248,
              'ar_name': 'وعيدهم',
              'ug_name': 'كاپىرلاغا تەھدىت سېلىش',
              'en_name': 'Their Threat',
              'c': 0,
              'sa': 15
            }, subNodes: []),
            TreeNode({
              'ar_id': 249,
              'ar_name': 'ندم الكفار',
              'ug_name': 'كاپىرلانىڭ پۇشايمان قىلىشلىرى',
              'en_name': 'Repentance Of Infidels',
              'c': 0,
              'sa': 72
            }, subNodes: []),
          ]),
          TreeNode({
            'ar_id': 250,
            'ar_name': 'المكذبون الظالمون',
            'ug_name': 'يالغانچىلار  ۋە زالىملار',
            'en_name': 'False Liars',
            'c': 3,
            'sa': 0
          }, subNodes: [
            TreeNode({
              'ar_id': 251,
              'ar_name': 'الاعراض عنهم',
              'ug_name': 'يالغانچى زالىملاردىن يۈز ئۆرۈش',
              'en_name': 'Their Symptoms',
              'c': 0,
              'sa': 5
            }, subNodes: []),
            TreeNode({
              'ar_id': 252,
              'ar_name': 'صفاتهم',
              'ug_name': 'يالغانچى زالىملارنىڭ سۈپەتلىرى',
              'en_name': 'Their Qualities',
              'c': 0,
              'sa': 145
            }, subNodes: []),
            TreeNode({
              'ar_id': 253,
              'ar_name': 'قساوة قلبهم',
              'ug_name': 'يالغانچى زالىملارنىڭ قەلىبلىرنىڭ قېتىپ كەتكەنلىكى',
              'en_name': 'Hardness Of Their Heart',
              'c': 0,
              'sa': 9
            }, subNodes: []),
          ]),
        ]),
        TreeNode({
          'ar_id': 254,
          'ar_name': 'محمد',
          'ug_name': 'مۇھەممەد ئەلەيھىسسالام',
          'en_name': 'Mohammed',
          'c': 26,
          'sa': 0
        }, subNodes: [
          TreeNode({
            'ar_id': 255,
            'ar_name': 'أدب المؤمنين معه',
            'ug_name':
                'مۆمىنلەرنىڭ مۇھەممەد ئەلەيھىسسالام بىلەن بولغان ئەدەبلىرى',
            'en_name': 'How Believers Act Toward Him',
            'c': 0,
            'sa': 8
          }, subNodes: []),
          TreeNode({
            'ar_id': 256,
            'ar_name': 'أخلاقه وصفاته',
            'ug_name': 'مۇھەممەد ئەلەيھىسسالامنىڭ ئەخلاقى ۋە سۈپەتلىرى',
            'en_name': 'Morals And Attributes',
            'c': 0,
            'sa': 104
          }, subNodes: []),
          TreeNode({
            'ar_id': 257,
            'ar_name': 'أزواجه وبناته',
            'ug_name': 'مۇھەممەد ئەلەيھىسسالامنىڭ ئاياللىرى ۋە باللىرى',
            'en_name': 'His Wives And Daughters',
            'c': 0,
            'sa': 9
          }, subNodes: []),
          TreeNode({
            'ar_id': 258,
            'ar_name': 'اسراؤه ومعراجه',
            'ug_name': 'مۇھەممەد ئەلەيھىسسالامنىڭ ئىسرا ۋە مىراجى',
            'en_name': 'Israa" And Miraaj',
            'c': 0,
            'sa': 15
          }, subNodes: []),
          TreeNode({
            'ar_id': 259,
            'ar_name': 'أقوال الكافرين',
            'ug_name':
                'كاپىرلارنىڭ مۇھەممەد ئەلەيھىسسالام ھەققىدە دىگەن سۆزلىرى',
            'en_name': 'The Words Of The Unbelievers',
            'c': 0,
            'sa': 85
          }, subNodes: []),
          TreeNode({
            'ar_id': 260,
            'ar_name': 'بعثته',
            'ug_name': 'مۇھەممەد ئەلەيھىسسالامنىڭ ۋەزىپىسى',
            'en_name': 'His Mission',
            'c': 0,
            'sa': 49
          }, subNodes: []),
          TreeNode({
            'ar_id': 261,
            'ar_name': 'التأسي به',
            'ug_name': 'مۇھەممەد ئەلەيھىسسالامنىڭ ياخشى ئۈلگە ئىكەنلىكى',
            'en_name': 'Following Him',
            'c': 0,
            'sa': 1
          }, subNodes: []),
          TreeNode({
            'ar_id': 262,
            'ar_name': 'تأييد رسالته',
            'ug_name': 'مۇھەممەد ئەلەيھىسسالامنىڭ پەيغەمبەرلىكىنى قوللاش',
            'en_name': 'Support His Message',
            'c': 0,
            'sa': 187
          }, subNodes: []),
          TreeNode({
            'ar_id': 263,
            'ar_name': 'تزكية أمته صلى الله عليه وسلم وصحابته',
            'ug_name':
                'مۇھەممەد ئەلەيھىسسالامنىڭ ئۈممىتى ۋە ساھابىللىرىنى تونۇشتۇرغانلىقى',
            'en_name':
                'The Recommendation To His Companions And Umma Peace Be Upon Him',
            'c': 0,
            'sa': 6
          }, subNodes: []),
          TreeNode({
            'ar_id': 264,
            'ar_name': 'تسليته وتثبيته',
            'ug_name':
                'مۇھەممەد ئەلەيھىسسالامنىڭ ئىچىنىڭ سىقىلىشى ۋە ئىماندا مۇستەھكەم تۇرىشى',
            'en_name': 'Cheering And Consolidation',
            'c': 0,
            'sa': 75
          }, subNodes: []),
          TreeNode({
            'ar_id': 265,
            'ar_name': 'تنزيهه صلى الله عليه وسلم عن الشعر',
            'ug_name':
                'مۇھەممەد ئەلەيھىسسالامنىڭ شېئىر توقۇشتىن پاك ئىكەنلىكى  (شائىر ئەمەسلىكى)',
            'en_name': 'Denying Poetry',
            'c': 0,
            'sa': 5
          }, subNodes: []),
          TreeNode({
            'ar_id': 266,
            'ar_name': 'جزاء من يشاقق الرسول صلى الله عليه وسلم',
            'ug_name':
                'مۇھەممەد ئەلەيھىسسالامغا قارشىلىق قىلغانلارنىڭ  ئاقىۋىتى',
            'en_name': 'The Punition To Whomever Confronts Him',
            'c': 0,
            'sa': 4
          }, subNodes: []),
          TreeNode({
            'ar_id': 267,
            'ar_name': 'خفض جناحه للمؤمنين',
            'ug_name':
                'مۇھەممەد ئەلەيھىسسالامنىڭ مۆمىنلەرگە كەمتەر ۋە مۇلايىم بولغانلىقى',
            'en_name': 'Lower His Wing To Believers',
            'c': 0,
            'sa': 2
          }, subNodes: []),
          TreeNode({
            'ar_id': 268,
            'ar_name': 'شخصيته',
            'ug_name': 'مۇھەممەد ئەلەيھىسسالامنىڭ مىجەز - خۇلقى',
            'en_name': 'His Character',
            'c': 0,
            'sa': 12
          }, subNodes: []),
          TreeNode({
            'ar_id': 269,
            'ar_name': 'شهادته هو وأمته على الناس',
            'ug_name':
                'مۇھەممەد ئەلەيھىسسالام ۋە ئۇنىڭ ئۈممىتنىڭ بارلىق ئىنسانلارغا گۇۋاھچى بولدىغانلىقى',
            'en_name': 'His And His Umma Testimony On The People',
            'c': 0,
            'sa': 9
          }, subNodes: []),
          TreeNode({
            'ar_id': 270,
            'ar_name': 'صدقه واستحالة تقوله على الله',
            'ug_name':
                'مۇھەممەد ئەلەيھىسسالامنىڭ راستچىللىقى ۋە ئاللاھ نامدىن يالغاننى توقۇشنىڭ مۇمكىن ئەمەسلىكى',
            'en_name':
                'Sincerity And Impossibility To Say Other Than God Ordered Him To',
            'c': 0,
            'sa': 4
          }, subNodes: []),
          TreeNode({
            'ar_id': 271,
            'ar_name': 'صفاته في التورات والإنجيل',
            'ug_name':
                'مۇھەممەد ئەلەيھىسسالامنىڭ تەۋرات ۋە ئىنجىلدىكى سۈپەتلىرى',
            'en_name': 'His Attributes In The Torah And The Gospel',
            'c': 0,
            'sa': 2
          }, subNodes: []),
          TreeNode({
            'ar_id': 272,
            'ar_name': 'طبيعة رسالته',
            'ug_name': 'مۇھەممەد ئەلەيھىسسالامنىڭ ئەلچىلىكى',
            'en_name': 'The Nature Of His Mission',
            'c': 0,
            'sa': 63
          }, subNodes: []),
          TreeNode({
            'ar_id': 273,
            'ar_name': 'عصمته وحمايته',
            'ug_name':
                'مۇھەممەد ئەلەيھىسسالامنىڭ گۇناھتىن پاك ئىكەنلىكى ۋە ئاللاھنىڭ ئۇنى ھىمايە قىلدىغانلىقى',
            'en_name': 'His Integrity And Protection',
            'c': 0,
            'sa': 8
          }, subNodes: []),
          TreeNode({
            'ar_id': 274,
            'ar_name': 'مآثره صلى الله عليه وسلم وخصائصه لله',
            'ug_name': 'مۇھەممەد ئەلەيھىسسالامنىڭ ئارتۇقچىلىقى ۋە خاسلىقى',
            'en_name': 'His Exploits Peace Be Upon Him',
            'c': 0,
            'sa': 78
          }, subNodes: []),
          TreeNode({
            'ar_id': 275,
            'ar_name': 'مخاطبة الله إياه',
            'ug_name': 'ئاللاھنىڭ مۇھەممەد ئەلەيھىسسالامغا سۆز قىلغانلىقى',
            'en_name': 'God Addressing Him',
            'c': 0,
            'sa': 266
          }, subNodes: []),
          TreeNode({
            'ar_id': 276,
            'ar_name': 'معاتبة الله إياه',
            'ug_name':
                'ئاللاھنىڭ مۇھەممەد ئەلەيھىسسالامغا كايىغانلىقى (ئەيىبلىگەنلىكى)',
            'en_name': 'God Reproaching Him',
            'c': 0,
            'sa': 18
          }, subNodes: []),
          TreeNode({
            'ar_id': 277,
            'ar_name': 'معرفة اهل الكتاب إياه',
            'ug_name':
                'ئەھلى كىتابلارنىڭ مۇھەممەد ئەلەيھىسسالامنى بىلدىغانلىقى (تونۇيدىغانلىقى)',
            'en_name': 'Knowledge Of The People Of The Book',
            'c': 0,
            'sa': 3
          }, subNodes: []),
          TreeNode({
            'ar_id': 278,
            'ar_name': 'هجرته ومنزلة المهاجرين',
            'ug_name':
                'مۇھەممەد ئەلەيھىسسالامنىڭ ھىجرەت قىلىش ۋە مۇھاجىرلانىڭ ئورنى',
            'en_name': 'His Emigration And The Status Of Immigrants',
            'c': 0,
            'sa': 27
          }, subNodes: []),
          TreeNode({
            'ar_id': 279,
            'ar_name': 'الوحي',
            'ug_name': 'ۋەھىي',
            'en_name': 'Revelation',
            'c': 0,
            'sa': 36
          }, subNodes: []),
          TreeNode({
            'ar_id': 280,
            'ar_name': 'وعدالله إياه',
            'ug_name': 'ئاللاھنىڭ مۇھەممەد ئەلەيھىسسالامغا ۋەدە قىلغانلىقى',
            'en_name': 'God Promises Him',
            'c': 0,
            'sa': 9
          }, subNodes: []),
        ]),
        TreeNode({
          'ar_id': 281,
          'ar_name': 'الدين',
          'ug_name': 'ئىسلام دىنى',
          'en_name': 'Religion',
          'c': 7,
          'sa': 0
        }, subNodes: [
          TreeNode({
            'ar_id': 282,
            'ar_name': 'الإخلاص في الدين',
            'ug_name': 'ئىخلاس',
            'en_name': 'Sincerity In Religion',
            'c': 0,
            'sa': 10
          }, subNodes: []),
          TreeNode({
            'ar_id': 283,
            'ar_name': 'الجاهلية',
            'ug_name': 'جاھىلىيەت',
            'en_name': 'Ignorance',
            'c': 0,
            'sa': 7
          }, subNodes: []),
          TreeNode({
            'ar_id': 284,
            'ar_name': 'حقيقة الإسلام',
            'ug_name': 'ئىسلام دىننىڭ ھەق ئىكەنلىكى',
            'en_name': 'The Truth Of Islam',
            'c': 0,
            'sa': 51
          }, subNodes: []),
          TreeNode({
            'ar_id': 285,
            'ar_name': 'دعوة العباد إلى الإسلام',
            'ug_name': 'كىشلەرنى ئىسلامغا دەۋەت قىلىش',
            'en_name': 'The Call Of Worshipers To Islam',
            'c': 0,
            'sa': 15
          }, subNodes: []),
          TreeNode({
            'ar_id': 286,
            'ar_name': 'الدين عند الله',
            'ug_name': 'ئاللاھنىڭ دەرگاھىدىكى دىن',
            'en_name': 'Religion Of God',
            'c': 0,
            'sa': 29
          }, subNodes: []),
          TreeNode({
            'ar_id': 287,
            'ar_name': 'لاإكراه في الدين',
            'ug_name': 'دىندا زورلاش يوقلىقى',
            'en_name': 'No Compulsion In Religion',
            'c': 0,
            'sa': 5
          }, subNodes: []),
          TreeNode({
            'ar_id': 288,
            'ar_name': 'المسلمون',
            'ug_name': 'مۇسۇلمانلار',
            'en_name': 'Muslims',
            'c': 0,
            'sa': 24
          }, subNodes: []),
        ]),
        TreeNode({
          'ar_id': 289,
          'ar_name': 'الصلاة',
          'ug_name': 'ناماز',
          'en_name': 'Prayer',
          'c': 5,
          'sa': 0
        }, subNodes: [
          TreeNode({
            'ar_id': 290,
            'ar_name': 'القبلة',
            'ug_name': 'قىبلە',
            'en_name': 'The Qibla',
            'c': 0,
            'sa': 7
          }, subNodes: []),
          TreeNode({
            'ar_id': 291,
            'ar_name': 'أداء الصلاة',
            'ug_name': 'نامازنى ئادا قىلىش',
            'en_name': 'Performing Prayer',
            'c': 12,
            'sa': 0
          }, subNodes: [
            TreeNode({
              'ar_id': 292,
              'ar_name': 'التهجد وقيام لليل',
              'ug_name': 'تەھەججۇد نامىزى  ۋە كېچىسى نامازغا تۇرۇش',
              'en_name': 'Tahajud And Night Prayer',
              'c': 0,
              'sa': 16
            }, subNodes: []),
            TreeNode({
              'ar_id': 293,
              'ar_name': 'الجهر بالصلاة',
              'ug_name': 'نامازدا قىرائەتنى ئۈنلۈك ئوقۇش',
              'en_name': 'Praying Out Loud',
              'c': 0,
              'sa': 1
            }, subNodes: []),
            TreeNode({
              'ar_id': 294,
              'ar_name': 'الحض عليها',
              'ug_name': 'ناماز ئوقۇشقا تەرغىب قىلىش',
              'en_name': 'Exhortation',
              'c': 0,
              'sa': 113
            }, subNodes: []),
            TreeNode({
              'ar_id': 295,
              'ar_name': 'الركوع',
              'ug_name': 'رۇكۇ قىلىش',
              'en_name': 'Bowing',
              'c': 0,
              'sa': 7
            }, subNodes: []),
            TreeNode({
              'ar_id': 296,
              'ar_name': 'سجدات التلاوة',
              'ug_name': 'تىلاۋەت سەجدىسى',
              'en_name': 'Prostrations Of Reciting',
              'c': 0,
              'sa': 17
            }, subNodes: []),
            TreeNode({
              'ar_id': 297,
              'ar_name': 'السجود',
              'ug_name': 'سەجدە قىلىش',
              'en_name': 'Prostration',
              'c': 0,
              'sa': 21
            }, subNodes: []),
            TreeNode({
              'ar_id': 298,
              'ar_name': 'صفات المصلين',
              'ug_name': 'ناماز ئوقۇغۇچىلارنىڭ سۈپەتلىرى',
              'en_name': 'The Qualities Of Worshipers',
              'c': 0,
              'sa': 6
            }, subNodes: []),
            TreeNode({
              'ar_id': 299,
              'ar_name': 'صلاة الجمعة',
              'ug_name': 'جۈمە نامىزى',
              'en_name': 'Friday Prayers',
              'c': 0,
              'sa': 1
            }, subNodes: []),
            TreeNode({
              'ar_id': 300,
              'ar_name': 'صلاة الخوف',
              'ug_name': 'قورقۇنچ نامىزى',
              'en_name': 'Fear Prayer',
              'c': 0,
              'sa': 2
            }, subNodes: []),
            TreeNode({
              'ar_id': 301,
              'ar_name': 'صلاة المسافر',
              'ug_name': 'سەپەر قىلغۇچىنىڭ نامىزى',
              'en_name': 'Travel Prayer',
              'c': 0,
              'sa': 1
            }, subNodes: []),
            TreeNode({
              'ar_id': 302,
              'ar_name': 'الصلاة مطلب الأنبياء',
              'ug_name': 'بارلىق پەيغەمبەرلەرنىڭ ناماز ئوقۇشقا  بۇيرۇلغانلىقى',
              'en_name': 'Prayer Is The Demand Of The Prophets',
              'c': 0,
              'sa': 2
            }, subNodes: []),
            TreeNode({
              'ar_id': 303,
              'ar_name': 'قصر الصلاة',
              'ug_name': 'نامازلارنى قەسىر قىلىپ ئوقۇش',
              'en_name': 'Reduced Prayer',
              'c': 0,
              'sa': 2
            }, subNodes: []),
          ]),
          TreeNode({
            'ar_id': 304,
            'ar_name': 'الدعاء',
            'ug_name': 'دۇئا',
            'en_name': 'Supplication',
            'c': 3,
            'sa': 0
          }, subNodes: [
            TreeNode({
              'ar_id': 305,
              'ar_name': 'الحث على الدعاء',
              'ug_name': 'دۇئا قلىشقا رىغبەتلەندۇرۈش',
              'en_name': 'Urging To Pray',
              'c': 0,
              'sa': 22
            }, subNodes: []),
            TreeNode({
              'ar_id': 306,
              'ar_name': 'المأثور من الدعاء',
              'ug_name': 'قۇرئاندىكى دۇئالاردىن تاللانمىلار',
              'en_name': 'The Known Prayers',
              'c': 0,
              'sa': 84
            }, subNodes: []),
            TreeNode({
              'ar_id': 307,
              'ar_name': 'كيفية الدعاء',
              'ug_name': 'دۇئا قىلىش ئۇسۇلى',
              'en_name': 'How To Pray',
              'c': 0,
              'sa': 3
            }, subNodes: []),
          ]),
          TreeNode({
            'ar_id': 308,
            'ar_name': 'الطهارة',
            'ug_name': 'تاھارەت(پاكىزلىق)',
            'en_name': 'Purity',
            'c': 4,
            'sa': 0
          }, subNodes: [
            TreeNode({
              'ar_id': 309,
              'ar_name': 'التطهير',
              'ug_name': 'پاكلىنىش',
              'en_name': 'Cleansing',
              'c': 0,
              'sa': 6
            }, subNodes: []),
            TreeNode({
              'ar_id': 310,
              'ar_name': 'التيمم',
              'ug_name': 'تەيەممۇم',
              'en_name': 'Tayamum',
              'c': 0,
              'sa': 2
            }, subNodes: []),
            TreeNode({
              'ar_id': 311,
              'ar_name': 'الغسل',
              'ug_name': 'غۇسلى قىلىش(يۇيۇنىش)',
              'en_name': 'Washing',
              'c': 0,
              'sa': 3
            }, subNodes: []),
            TreeNode({
              'ar_id': 312,
              'ar_name': 'الوضوء',
              'ug_name': 'تاھارەت ئېلىش',
              'en_name': 'Ablution',
              'c': 0,
              'sa': 3
            }, subNodes: []),
          ]),
          TreeNode({
            'ar_id': 313,
            'ar_name': 'المساجد',
            'ug_name': 'مەسچىتلەر',
            'en_name': 'Mosques',
            'c': 2,
            'sa': 0
          }, subNodes: [
            TreeNode({
              'ar_id': 314,
              'ar_name': 'المسجد الحرام',
              'ug_name': 'ھەرەم مەسجىدى',
              'en_name': 'The Sacred Mosque',
              'c': 0,
              'sa': 15
            }, subNodes: []),
            TreeNode({
              'ar_id': 315,
              'ar_name': 'مكانة المساجد وحرمتها',
              'ug_name': 'مەسجىدلەرنىڭ ئورنى ۋە مۇقەددەسلىكى',
              'en_name': 'The Status And Sanctity Of Mosques',
              'c': 0,
              'sa': 13
            }, subNodes: []),
          ]),
        ]),
        TreeNode({
          'ar_id': 316,
          'ar_name': 'الصيام',
          'ug_name': 'رامىزان',
          'en_name': 'Fasting',
          'c': 2,
          'sa': 0
        }, subNodes: [
          TreeNode({
            'ar_id': 317,
            'ar_name': 'الطعام والأغذية',
            'ug_name': 'يىمەك - ئىچمەك',
            'en_name': 'Food And Nutrition',
            'c': 0,
            'sa': 31
          }, subNodes: []),
          TreeNode({
            'ar_id': 318,
            'ar_name': 'وجوب الصيام',
            'ug_name': 'روزا تۇتۇش',
            'en_name': 'The Obligation Of Fasting',
            'c': 0,
            'sa': 10
          }, subNodes: []),
        ]),
        TreeNode({
          'ar_id': 319,
          'ar_name': 'الحج والعمرة',
          'ug_name': 'ھەج ۋە ئۆمرە',
          'en_name': 'Hajj And Umrah',
          'c': 7,
          'sa': 0
        }, subNodes: [
          TreeNode({
            'ar_id': 320,
            'ar_name': 'الإفاضة من عرفات',
            'ug_name': 'ئەرەفات',
            'en_name': 'Arafat',
            'c': 0,
            'sa': 1
          }, subNodes: []),
          TreeNode({
            'ar_id': 321,
            'ar_name': 'العمرة',
            'ug_name': 'ئۆمرە',
            'en_name': 'Umrah',
            'c': 0,
            'sa': 2
          }, subNodes: []),
          TreeNode({
            'ar_id': 322,
            'ar_name': 'فرضية الحج وأدابه',
            'ug_name': 'ھەجنىڭ پەرىزلىرى ۋە ئەدەب - قائىدىسى',
            'en_name': 'The Obligation Of Hajj And Its Laws',
            'c': 0,
            'sa': 42
          }, subNodes: []),
          TreeNode({
            'ar_id': 323,
            'ar_name': 'الكعبة المشرفة',
            'ug_name': 'ئۇلۇغ كەبە',
            'en_name': 'The Kaaba',
            'c': 0,
            'sa': 6
          }, subNodes: []),
          TreeNode({
            'ar_id': 324,
            'ar_name': 'مكة المكرمة',
            'ug_name': 'مەككە-مۈكەررەمە',
            'en_name': 'Mecca',
            'c': 0,
            'sa': 16
          }, subNodes: []),
          TreeNode({
            'ar_id': 325,
            'ar_name': 'المناسك',
            'ug_name': 'ھەج قائىدىللىرى',
            'en_name': 'The Rituals',
            'c': 0,
            'sa': 7
          }, subNodes: []),
          TreeNode({
            'ar_id': 326,
            'ar_name': 'النحر',
            'ug_name': 'قۇربانلىق',
            'en_name': 'The Sacrifice',
            'c': 0,
            'sa': 7
          }, subNodes: []),
        ]),
        TreeNode({
          'ar_id': 327,
          'ar_name': 'مسائل متفرقة من العبادة',
          'ug_name': 'ئىبادەتتىكى باشقا مەسىلىلەر',
          'en_name': 'Miscellaneous Matters Of Worship',
          'c': 2,
          'sa': 0
        }, subNodes: [
          TreeNode({
            'ar_id': 328,
            'ar_name': 'العبادة لله تعالى',
            'ug_name': 'ئىبادەتنى ئۇلۇغ ئاللاھقا قىلىش',
            'en_name': 'Worship To Allah',
            'c': 0,
            'sa': 47
          }, subNodes: []),
          TreeNode({
            'ar_id': 329,
            'ar_name': 'النذور',
            'ug_name': 'قەسەم ۋەدىلەر',
            'en_name': 'Vows',
            'c': 0,
            'sa': 5
          }, subNodes: []),
        ]),
      ]),
      TreeNode({
        'ar_id': 330,
        'ar_name': 'الايمان',
        'ug_name': 'ئىمان',
        'en_name': 'Faith',
        'c': 8,
        'sa': 0
      }, subNodes: [
        TreeNode({
          'ar_id': 331,
          'ar_name': 'الانبياء والرسل',
          'ug_name': 'پەيغەمبەرلەر ۋە ئەلچىلەرگە ئىمان كەلتۈرۈش',
          'en_name': 'Prophets And Apostles',
          'c': 15,
          'sa': 0
        }, subNodes: [
          TreeNode({
            'ar_id': 332,
            'ar_name': 'أخذالميثاق منهم',
            'ug_name': 'ئاللاھنىڭ پەيغەمبەرلەردىن چىن ئەھدە ئالغانلىقى',
            'en_name': 'Take The Vow From Them',
            'c': 0,
            'sa': 2
          }, subNodes: []),
          TreeNode({
            'ar_id': 333,
            'ar_name': 'أمرهم بالتذكير',
            'ug_name': 'پەيغەمبەرلەرنڭ ۋەز - نەسىھەت قىلىشقا بۇيرۇلغانلىقى',
            'en_name': 'Ordered Them To Remind',
            'c': 0,
            'sa': 7
          }, subNodes: []),
          TreeNode({
            'ar_id': 334,
            'ar_name': 'الإيمان بهم',
            'ug_name': 'پەيغەمبەرلەرگە ئىمان كەلتۈرۈش',
            'en_name': 'Faith In Them',
            'c': 0,
            'sa': 12
          }, subNodes: []),
          TreeNode({
            'ar_id': 335,
            'ar_name': 'إرسالهم بلسان قومهم',
            'ug_name': 'پەيغەمبەرلەرنىڭ ئۆز قەۋمىنىڭ تىلى بىلەن ئەۋەتىلگەنلىكى',
            'en_name': 'Send Them With The Tongue Of Their People',
            'c': 0,
            'sa': 1
          }, subNodes: []),
          TreeNode({
            'ar_id': 336,
            'ar_name': 'تفضيل بعضهم على بعض',
            'ug_name':
                'پەيغەمبەرلەرنىڭ بەزىسىنىڭ بەزىسىدىن ئۈستۈن تۇردىغانلىقى',
            'en_name': 'Preference For Each Other',
            'c': 0,
            'sa': 2
          }, subNodes: []),
          TreeNode({
            'ar_id': 337,
            'ar_name': 'حكمتهم في الدعوة',
            'ug_name':
                'پەيغەمبەرلەرنڭ دەۋەت قىلغاندا ھېكمەت (ئەقىل - پاراسەت) بىلەن قىلىشى',
            'en_name': 'Their Wisdom In The Call',
            'c': 0,
            'sa': 16
          }, subNodes: []),
          TreeNode({
            'ar_id': 338,
            'ar_name': 'حكمهم بين الناس',
            'ug_name': 'پەيغەمبەرلەرنڭ كىشلەر ئارىسدا ھۆكۈم قىلدىغانلىقى',
            'en_name': 'Rule Between People',
            'c': 0,
            'sa': 7
          }, subNodes: []),
          TreeNode({
            'ar_id': 339,
            'ar_name': 'شهادتهم على أممهم',
            'ug_name': 'پەيغەمبەرلەرنڭ ئۆز ئۈممىتىگە گۇۋاھچى بولدىغانلىقى',
            'en_name': 'Their Testimony To Their Nations',
            'c': 0,
            'sa': 7
          }, subNodes: []),
          TreeNode({
            'ar_id': 340,
            'ar_name': 'لا أجر لهم على التبليغ',
            'ug_name': 'پەيغەمبەرلەرنىڭ تەبلىغ قىلغانلىقا ھەق ئالمايدىغانلىقى',
            'en_name': 'There Is No Reward For Them To Report',
            'c': 0,
            'sa': 13
          }, subNodes: []),
          TreeNode({
            'ar_id': 341,
            'ar_name': 'لكل أمة نذير',
            'ug_name': 'ھەربىر ئۈممەتنىڭ ئاگاھلاندۇرغۇچىسى بولدىغانلىقى',
            'en_name': 'Every Nation Has A Warner',
            'c': 0,
            'sa': 1
          }, subNodes: []),
          TreeNode({
            'ar_id': 342,
            'ar_name': 'لكل نبي عدو',
            'ug_name': 'ھەربىر پەيغەمبەرنىڭ دۈشمەنلىرى  بولدىغانلىقى',
            'en_name': 'Every Prophet Has An Enemy',
            'c': 0,
            'sa': 2
          }, subNodes: []),
          TreeNode({
            'ar_id': 343,
            'ar_name': 'المصطفون منهم',
            'ug_name': 'پەيغەمبەرلەرنىڭ ئىنسانلارندىن تاللانغانلىقى',
            'en_name': 'The Ones Who Line Up With Them',
            'c': 0,
            'sa': 13
          }, subNodes: []),
          TreeNode({
            'ar_id': 344,
            'ar_name': 'مهمتهم في البلاغ',
            'ug_name': 'پەيغەمبەرلەرنىڭ ۋەزىپىسنىڭ تەبلىغ قىلىش ئىكەنلىكى',
            'en_name': 'Their Task In The Communication',
            'c': 0,
            'sa': 26
          }, subNodes: []),
          TreeNode({
            'ar_id': 345,
            'ar_name': 'نفي الغلول عنهم',
            'ug_name':
                'ئۇلاردىن ئازابنىڭ مەنئى قىلىنغانلىقى، كاپىرلاردىن ئازابنى ھېچكىم توسۇپ قالالمايدىغانلىقى',
            'en_name': 'Denying The Ghulul',
            'c': 0,
            'sa': 1
          }, subNodes: []),
          TreeNode({
            'ar_id': 346,
            'ar_name': 'هم بشر يوحى إليهم',
            'ug_name':
                'پەيغەمبەرلەرنىڭ ئىنسان ئىكەنلىكى ۋە ئۇلارغا ۋەھى قىلىنغانلىقى',
            'en_name': 'They Are Inspired Human Beings',
            'c': 0,
            'sa': 2
          }, subNodes: []),
        ]),
        TreeNode({
          'ar_id': 347,
          'ar_name': 'الايمان بالله',
          'ug_name': 'ئاللاھقا ئىمان كەلتۈرۈش',
          'en_name': 'Faith In God',
          'c': 18,
          'sa': 0
        }, subNodes: [
          TreeNode({
            'ar_id': 348,
            'ar_name': 'الإبتلاء والفتن اختبار لإيمان المؤمن',
            'ug_name':
                'مۆمنلەرنىڭ ئىماننىڭ مۇسىبەت ، فىتنىلەر بىلەن سىنىلدىغانلىقى',
            'en_name':
                'Evasion And Temptation Test For The Faith Of The Believer',
            'c': 0,
            'sa': 13
          }, subNodes: []),
          TreeNode({
            'ar_id': 349,
            'ar_name': 'الإستغفار',
            'ug_name': 'ئىستىغپار ئېيتىش ۋە ئاللاھنىڭ مەغپىرەت قىلدىغانلىقى',
            'en_name': 'Ask Forgiveness',
            'c': 0,
            'sa': 22
          }, subNodes: []),
          TreeNode({
            'ar_id': 350,
            'ar_name': 'الإيمان والعمل',
            'ug_name': 'ئىمان ۋە ئەمەل',
            'en_name': 'Faith And Action',
            'c': 0,
            'sa': 62
          }, subNodes: []),
          TreeNode({
            'ar_id': 351,
            'ar_name': 'تشبيه الإيمان بالنور',
            'ug_name': 'ئىماننڭ نۇرغا ئوخشايدىغانلىقى',
            'en_name': 'Comparing Faith To Light',
            'c': 0,
            'sa': 12
          }, subNodes: []),
          TreeNode({
            'ar_id': 352,
            'ar_name': 'تفضيل الإيمان على سقاية الحاج وعمارة المسجد الحرام',
            'ug_name':
                'ئىمان بىلەن ھاجىلارنى سۇغۇرۇش ۋە ھەرەم مەسجىدى ئاۋات قىلىنشىڭ سېلىشتۇرمىسى',
            'en_name':
                'Faith Is Preferred To The Shedding Of The Pilgrim And The Building Of The Grand Mosque',
            'c': 0,
            'sa': 1
          }, subNodes: []),
          TreeNode({
            'ar_id': 353,
            'ar_name': 'التوبة',
            'ug_name':
                'ئاللاھقا تەۋبە قىلىش ۋە ئاللاھنىڭ تەۋبىنى بەكمۇ قوبۇل قىلغۇچى زات ئىكەنلىكى',
            'en_name': 'Repentance',
            'c': 0,
            'sa': 28
          }, subNodes: []),
          TreeNode({
            'ar_id': 354,
            'ar_name': 'الجزاء',
            'ug_name': 'ئاللاھنىڭ جازا - مۇكاپاتى',
            'en_name': 'Penalty',
            'c': 0,
            'sa': 20
          }, subNodes: []),
          TreeNode({
            'ar_id': 355,
            'ar_name': 'حقيقة الإيمان',
            'ug_name': 'ئىماننىڭ ھەقىقىتى',
            'en_name': 'The Truth Of Faith',
            'c': 0,
            'sa': 102
          }, subNodes: []),
          TreeNode({
            'ar_id': 356,
            'ar_name': 'الدعوة إلى الإيمان',
            'ug_name': 'ئىمانغا دەۋەت قىلىش',
            'en_name': 'The Call To Faith',
            'c': 0,
            'sa': 25
          }, subNodes: []),
          TreeNode({
            'ar_id': 357,
            'ar_name': 'الريب والشك',
            'ug_name': 'گۇمان ۋە شەك قىلىش',
            'en_name': 'Reap And Doubt',
            'c': 0,
            'sa': 8
          }, subNodes: []),
          TreeNode({
            'ar_id': 358,
            'ar_name': 'الشفاعة',
            'ug_name': 'شاپائەت قىلىش',
            'en_name': 'Intercession',
            'c': 0,
            'sa': 12
          }, subNodes: []),
          TreeNode({
            'ar_id': 359,
            'ar_name': 'الفتنة',
            'ug_name': 'فىتنە',
            'en_name': 'Fitnah',
            'c': 0,
            'sa': 8
          }, subNodes: []),
          TreeNode({
            'ar_id': 360,
            'ar_name': 'الفرق بين الإيمان و الإسلام',
            'ug_name': 'ئىمان ئېيتىش بىلەن بويسۇنىشنىڭ پەرقى',
            'en_name': 'The Difference Between Faith And Islam',
            'c': 0,
            'sa': 1
          }, subNodes: []),
          TreeNode({
            'ar_id': 361,
            'ar_name': 'مثال الإيمان',
            'ug_name': 'ئىماننىڭ ئۈلگىسى(مىسالى)',
            'en_name': 'Example Of Faith',
            'c': 0,
            'sa': 2
          }, subNodes: []),
          TreeNode({
            'ar_id': 362,
            'ar_name': 'المقابلة بين المؤمن والكافر',
            'ug_name': 'مۆمىن بىلەن كاپىر ئوتتۇرسىدىكى سېلىشتۇرما',
            'en_name': 'The Interview Between The Believer And The Unbeliever',
            'c': 0,
            'sa': 27
          }, subNodes: []),
          TreeNode({
            'ar_id': 363,
            'ar_name': 'النفاق',
            'ug_name': 'نىفاق ۋە مۇناپىق',
            'en_name': 'Hypocrisy',
            'c': 0,
            'sa': 150
          }, subNodes: []),
          TreeNode({
            'ar_id': 364,
            'ar_name': 'الهداية إلى الإيمان',
            'ug_name': 'ئىمانغا يېتەكلەش',
            'en_name': 'Guidance To Faith',
            'c': 0,
            'sa': 66
          }, subNodes: []),
          TreeNode({
            'ar_id': 365,
            'ar_name': 'اليقين',
            'ug_name': 'شەكىسىز ئىشنىش',
            'en_name': 'Certainty',
            'c': 0,
            'sa': 17
          }, subNodes: []),
        ]),
        TreeNode({
          'ar_id': 366,
          'ar_name': 'الغيب',
          'ug_name': 'غەيىبكە ئىمان كەلتۈرۈش',
          'en_name': 'Unseen',
          'c': 8,
          'sa': 0
        }, subNodes: [
          TreeNode({
            'ar_id': 367,
            'ar_name': 'الأعراف',
            'ug_name': 'ئەئراف',
            'en_name': 'Al-Aaraf',
            'c': 0,
            'sa': 5
          }, subNodes: []),
          TreeNode({
            'ar_id': 368,
            'ar_name': 'الإيمان بالغيب',
            'ug_name': 'غەيىبكە ئىمان كەلتۈرۈش',
            'en_name': 'Faith In The Unseen',
            'c': 0,
            'sa': 50
          }, subNodes: []),
          TreeNode({
            'ar_id': 369,
            'ar_name': 'السحر',
            'ug_name': 'سېھىر ۋە سېھرگەرلىك',
            'en_name': 'Magic',
            'c': 0,
            'sa': 9
          }, subNodes: []),
          TreeNode({
            'ar_id': 370,
            'ar_name': 'الجنة',
            'ug_name': 'جەننەت',
            'en_name': 'Paradise',
            'c': 3,
            'sa': 0
          }, subNodes: [
            TreeNode({
              'ar_id': 371,
              'ar_name': 'أصحابها',
              'ug_name': 'جەننەت ئىگىلىرى(جەننەتكە كىردىغان كىشلەر)',
              'en_name': 'The Owners',
              'c': 0,
              'sa': 300
            }, subNodes: []),
            TreeNode({
              'ar_id': 372,
              'ar_name': 'صفاتها',
              'ug_name': 'جەننەتنىڭ سۈپەتلىرى',
              'en_name': 'Its Qualities',
              'c': 0,
              'sa': 165
            }, subNodes: []),
            TreeNode({
              'ar_id': 373,
              'ar_name': 'أسمائها',
              'ug_name': 'جەننەتنىڭ ئىسىملىرى',
              'en_name': 'Their Names',
              'c': 21,
              'sa': 0
            }, subNodes: [
              TreeNode({
                'ar_id': 374,
                'ar_name': 'الآخرة',
                'ug_name': 'ئاخىرەت',
                'en_name': 'The Hereafter',
                'c': 0,
                'sa': 2
              }, subNodes: []),
              TreeNode({
                'ar_id': 375,
                'ar_name': 'الفردوس',
                'ug_name': 'فىردەۋىس',
                'en_name': 'Paradise',
                'c': 0,
                'sa': 1
              }, subNodes: []),
              TreeNode({
                'ar_id': 376,
                'ar_name': 'المأوى',
                'ug_name': 'ئەلمەئۋا (قارارگاھ)',
                'en_name': 'Shelter',
                'c': 0,
                'sa': 1
              }, subNodes: []),
              TreeNode({
                'ar_id': 377,
                'ar_name': 'النعيم',
                'ug_name': 'نازۇ -نېمەتلىك جەننەت',
                'en_name': 'Bliss',
                'c': 0,
                'sa': 7
              }, subNodes: []),
              TreeNode({
                'ar_id': 378,
                'ar_name': 'الخلد',
                'ug_name': 'مەڭگۇ قالدىغان جەننەت',
                'en_name': 'Eternal Life Place',
                'c': 0,
                'sa': 1
              }, subNodes: []),
              TreeNode({
                'ar_id': 379,
                'ar_name': 'عالية',
                'ug_name': 'ئالىي جەننەت',
                'en_name': 'High',
                'c': 0,
                'sa': 2
              }, subNodes: []),
              TreeNode({
                'ar_id': 380,
                'ar_name': 'المأوى',
                'ug_name': 'جەننەتۇلمەئۋا',
                'en_name': 'Shelter',
                'c': 0,
                'sa': 1
              }, subNodes: []),
              TreeNode({
                'ar_id': 381,
                'ar_name': 'نعيم',
                'ug_name': 'نازۇ - نېمەتلىك جەننەت',
                'en_name': 'Naim',
                'c': 0,
                'sa': 2
              }, subNodes: []),
              TreeNode({
                'ar_id': 382,
                'ar_name': 'الحسنى',
                'ug_name': 'ئەڭ گۈزەل(جەننەت)',
                'en_name': 'The Most Beautiful',
                'c': 0,
                'sa': 12
              }, subNodes: []),
              TreeNode({
                'ar_id': 383,
                'ar_name': 'الدار الآخرة',
                'ug_name': 'ئاخىرەت يۇرتى',
                'en_name': 'The Last House',
                'c': 0,
                'sa': 1
              }, subNodes: []),
              TreeNode({
                'ar_id': 384,
                'ar_name': 'دار السلام',
                'ug_name': 'دارۇسسلام(جەننەت)',
                'en_name': 'Dar Es Salaam',
                'c': 0,
                'sa': 2
              }, subNodes: []),
              TreeNode({
                'ar_id': 385,
                'ar_name': 'دار القرار',
                'ug_name': 'مەڭگۈلۈك قارارگاھ(جەننەت)',
                'en_name': 'House Of The Stability',
                'c': 0,
                'sa': 1
              }, subNodes: []),
              TreeNode({
                'ar_id': 386,
                'ar_name': 'دار المتيقن',
                'ug_name': 'تەقۋادارلار يۇرتى',
                'en_name': 'House Of The Believer',
                'c': 0,
                'sa': 1
              }, subNodes: []),
              TreeNode({
                'ar_id': 387,
                'ar_name': 'دار المقامة',
                'ug_name': 'مۇقىم تۇرالغۇ(جەننەت)',
                'en_name': 'House Of The Stay',
                'c': 0,
                'sa': 1
              }, subNodes: []),
              TreeNode({
                'ar_id': 388,
                'ar_name': 'روضات الجنات',
                'ug_name': 'جەننەتلەرنىڭ باغچىللىرى',
                'en_name': 'Gardens Of The Paradise',
                'c': 0,
                'sa': 1
              }, subNodes: []),
              TreeNode({
                'ar_id': 389,
                'ar_name': 'روضة',
                'ug_name': 'باغچە(جەننەتنىڭ)',
                'en_name': 'Garden',
                'c': 0,
                'sa': 1
              }, subNodes: []),
              TreeNode({
                'ar_id': 390,
                'ar_name': 'طوبى',
                'ug_name': 'تۇبا(خۇشاللىققا تولغان جەننەت)',
                'en_name': 'Tooba',
                'c': 0,
                'sa': 1
              }, subNodes: []),
              TreeNode({
                'ar_id': 391,
                'ar_name': 'عليون',
                'ug_name': 'ئىللىيۇن',
                'en_name': 'Illiyoon',
                'c': 0,
                'sa': 1
              }, subNodes: []),
              TreeNode({
                'ar_id': 392,
                'ar_name': 'الفردوس',
                'ug_name': 'فىردەۋىس',
                'en_name': 'Paradise',
                'c': 0,
                'sa': 1
              }, subNodes: []),
              TreeNode({
                'ar_id': 393,
                'ar_name': 'فضل',
                'ug_name': 'ئىھسان(ناھايىتى ياخشى)',
                'en_name': 'Fadl',
                'c': 0,
                'sa': 1
              }, subNodes: []),
              TreeNode({
                'ar_id': 394,
                'ar_name': 'يمين',
                'ug_name': 'سائادەتمەن',
                'en_name': 'Right',
                'c': 0,
                'sa': 4
              }, subNodes: []),
            ]),
          ]),
          TreeNode({
            'ar_id': 395,
            'ar_name': 'الخلود',
            'ug_name': 'مەڭگۈلۈك ئازاب ۋە نېمەت',
            'en_name': 'Eternity',
            'c': 2,
            'sa': 0
          }, subNodes: [
            TreeNode({
              'ar_id': 396,
              'ar_name': 'الخلود في العذاب',
              'ug_name': 'مەڭگۈلۇك ئازاب',
              'en_name': 'Eternity In Torment',
              'c': 0,
              'sa': 37
            }, subNodes: []),
            TreeNode({
              'ar_id': 397,
              'ar_name': 'الخلود في النعيم',
              'ug_name': 'مەڭگۈلۈك نېمەت',
              'en_name': 'Eternity In Bliss',
              'c': 0,
              'sa': 34
            }, subNodes: []),
          ]),
          TreeNode({
            'ar_id': 398,
            'ar_name': 'الشيطان',
            'ug_name': 'شەيتان',
            'en_name': 'The Devil',
            'c': 4,
            'sa': 0
          }, subNodes: [
            TreeNode({
              'ar_id': 399,
              'ar_name': 'أتباعه',
              'ug_name': 'شەيتانغا ئەگىشىشنىڭ ئاقىۋىتى',
              'en_name': 'His Followers',
              'c': 0,
              'sa': 11
            }, subNodes: []),
            TreeNode({
              'ar_id': 400,
              'ar_name': 'سلوكه الشيطاني',
              'ug_name': 'شەيتاننىڭ قىلمىشلىرى',
              'en_name': 'His Demonic Behavior',
              'c': 0,
              'sa': 43
            }, subNodes: []),
            TreeNode({
              'ar_id': 401,
              'ar_name': 'عداوته لآدم وبنيه',
              'ug_name':
                  'شەيتاننىڭ ئادەم ئەلەيھىسسالام ۋە ئۇنىڭ ئەۋلاتلىرىغا بولغان ئاداۋىتى',
              'en_name': 'His Hostility To Adam And His Sons',
              'c': 0,
              'sa': 11
            }, subNodes: []),
            TreeNode({
              'ar_id': 402,
              'ar_name': 'وسوسته',
              'ug_name': 'شەيتاننىڭ ۋەسۋەسە قىلىشى',
              'en_name': 'His Subtle Message',
              'c': 0,
              'sa': 104
            }, subNodes: []),
          ]),
          TreeNode({
            'ar_id': 403,
            'ar_name': 'الغيب النفسي',
            'ug_name': 'پسىخىكىلىق غەيب(نەپسى)غەيب',
            'en_name': 'The Unseen Psychology',
            'c': 7,
            'sa': 0
          }, subNodes: [
            TreeNode({
              'ar_id': 404,
              'ar_name': 'الروح',
              'ug_name': 'روھ',
              'en_name': 'Spirit',
              'c': 0,
              'sa': 5
            }, subNodes: []),
            TreeNode({
              'ar_id': 405,
              'ar_name': 'الضمير',
              'ug_name': 'قەلب(ۋىجدان)',
              'en_name': 'Conscience',
              'c': 0,
              'sa': 5
            }, subNodes: []),
            TreeNode({
              'ar_id': 406,
              'ar_name': 'الفؤاد',
              'ug_name': 'يۈرەك(دىل)',
              'en_name': 'The Heart',
              'c': 0,
              'sa': 14
            }, subNodes: []),
            TreeNode({
              'ar_id': 407,
              'ar_name': 'الفطرة أو الغريزة',
              'ug_name': 'فىترەت',
              'en_name': 'Instinct',
              'c': 0,
              'sa': 2
            }, subNodes: []),
            TreeNode({
              'ar_id': 408,
              'ar_name': 'النفس',
              'ug_name': 'نەپىس(ئىنساننىڭ ئىچكى قىسمىدىكى شەيئىلەر)',
              'en_name': 'Self',
              'c': 0,
              'sa': 25
            }, subNodes: []),
            TreeNode({
              'ar_id': 409,
              'ar_name': 'الهوى',
              'ug_name': 'نەپىس خاھىش',
              'en_name': 'Fancy',
              'c': 0,
              'sa': 4
            }, subNodes: []),
            TreeNode({
              'ar_id': 410,
              'ar_name': 'القضاء و القدر',
              'ug_name': 'قازا ۋە قەدەر',
              'en_name': 'Judgment And Destiny',
              'c': 0,
              'sa': 38
            }, subNodes: []),
          ]),
          TreeNode({
            'ar_id': 411,
            'ar_name': 'النار',
            'ug_name': 'دوزاخ',
            'en_name': 'Fire',
            'c': 3,
            'sa': 0
          }, subNodes: [
            TreeNode({
              'ar_id': 412,
              'ar_name': 'أصحابها',
              'ug_name': 'دوزاخنىڭ ئىگىللىرى(دوزاخقا كىردىغان كىشلەر)',
              'en_name': 'The Owners',
              'c': 0,
              'sa': 252
            }, subNodes: []),
            TreeNode({
              'ar_id': 413,
              'ar_name': 'صفاتها',
              'ug_name': 'دوزاخنىڭ سۈپەتلىرى',
              'en_name': 'Her Qualities',
              'c': 0,
              'sa': 145
            }, subNodes: []),
            TreeNode({
              'ar_id': 414,
              'ar_name': 'أسماؤها',
              'ug_name': 'دوزاخنىڭ ئىسىملىرى',
              'en_name': 'Her Names',
              'c': 22,
              'sa': 0
            }, subNodes: [
              TreeNode({
                'ar_id': 415,
                'ar_name': 'الآخرة',
                'ug_name': 'ئاخىرەت',
                'en_name': 'The Hereafter',
                'c': 0,
                'sa': 1
              }, subNodes: []),
              TreeNode({
                'ar_id': 416,
                'ar_name': 'بئس القرار',
                'ug_name': 'ناچار قارارگاھ',
                'en_name': 'Bad Decision',
                'c': 0,
                'sa': 2
              }, subNodes: []),
              TreeNode({
                'ar_id': 417,
                'ar_name': 'بئس المصير',
                'ug_name': 'يامان جاي',
                'en_name': 'Bad Fate',
                'c': 0,
                'sa': 11
              }, subNodes: []),
              TreeNode({
                'ar_id': 418,
                'ar_name': 'بئس المهاد',
                'ug_name': 'يامان تۆشەك',
                'en_name': 'Bad Mulch',
                'c': 0,
                'sa': 5
              }, subNodes: []),
              TreeNode({
                'ar_id': 419,
                'ar_name': 'بئس الورد المورود',
                'ug_name': 'باشلاپ بارغان دېڭىز نېمىدېگەن يامان',
                'en_name': 'The Wretchedness Of The Roses Of The Lord',
                'c': 0,
                'sa': 1
              }, subNodes: []),
              TreeNode({
                'ar_id': 420,
                'ar_name': 'الجحيم',
                'ug_name': 'دوزاخ',
                'en_name': 'Hell',
                'c': 0,
                'sa': 26
              }, subNodes: []),
              TreeNode({
                'ar_id': 421,
                'ar_name': 'جهنم',
                'ug_name': 'جەھەننەم',
                'en_name': 'Jahannam',
                'c': 0,
                'sa': 1
              }, subNodes: []),
              TreeNode({
                'ar_id': 422,
                'ar_name': 'الحافرة',
                'ug_name': 'ئەلھافىرە',
                'en_name': 'Al-Hafira',
                'c': 0,
                'sa': 1
              }, subNodes: []),
              TreeNode({
                'ar_id': 423,
                'ar_name': 'الحطمة',
                'ug_name': 'ھۆتەمە',
                'en_name': 'Al-Hutama',
                'c': 0,
                'sa': 2
              }, subNodes: []),
              TreeNode({
                'ar_id': 424,
                'ar_name': 'دار البوار',
                'ug_name': 'ھالاكەت مەۋقەسى',
                'en_name': 'Dar Al-Bawar',
                'c': 0,
                'sa': 1
              }, subNodes: []),
              TreeNode({
                'ar_id': 425,
                'ar_name': 'دار الخلد',
                'ug_name': 'مەڭگۈ تۇردىغان يۇرت',
                'en_name': 'House Of The Stay',
                'c': 0,
                'sa': 1
              }, subNodes: []),
              TreeNode({
                'ar_id': 426,
                'ar_name': 'دار الفاسقين',
                'ug_name': 'پاسىقلار يۇرتى',
                'en_name': 'House Of The Outlaws',
                'c': 0,
                'sa': 1
              }, subNodes: []),
              TreeNode({
                'ar_id': 427,
                'ar_name': 'الزقوم',
                'ug_name': 'زەققۇم (دوزاختىكى دەرەخ)',
                'en_name': 'Zaqqum',
                'c': 0,
                'sa': 3
              }, subNodes: []),
              TreeNode({
                'ar_id': 428,
                'ar_name': 'الساهرة',
                'ug_name': 'ئەسساھىرە(ھەممە يەر يۈزىگە چىقىپ قالدىغان)',
                'en_name': 'As-Sahira',
                'c': 0,
                'sa': 1
              }, subNodes: []),
              TreeNode({
                'ar_id': 429,
                'ar_name': 'السعير',
                'ug_name': 'يالقۇنلاپ تۇرغان ئوت',
                'en_name': 'As-Sair',
                'c': 0,
                'sa': 16
              }, subNodes: []),
              TreeNode({
                'ar_id': 430,
                'ar_name': 'سقر',
                'ug_name': 'سەقەر(دوزاخ)',
                'en_name': 'Saqar',
                'c': 0,
                'sa': 4
              }, subNodes: []),
              TreeNode({
                'ar_id': 431,
                'ar_name': 'السموم',
                'ug_name': 'زەھەرلىك',
                'en_name': 'As-Samoom',
                'c': 0,
                'sa': 1
              }, subNodes: []),
              TreeNode({
                'ar_id': 432,
                'ar_name': 'سوء الدار',
                'ug_name': 'يامان جاي',
                'en_name': 'Bad House',
                'c': 0,
                'sa': 2
              }, subNodes: []),
              TreeNode({
                'ar_id': 433,
                'ar_name': 'السوآى',
                'ug_name': 'ئەڭ يامان(ئەسكى)',
                'en_name': 'As-Soo"A',
                'c': 0,
                'sa': 1
              }, subNodes: []),
              TreeNode({
                'ar_id': 434,
                'ar_name': 'لظى',
                'ug_name': 'يالقۇن(ئوتنىڭ)',
                'en_name': 'Laza',
                'c': 0,
                'sa': 1
              }, subNodes: []),
              TreeNode({
                'ar_id': 435,
                'ar_name': 'النار',
                'ug_name': 'ئوت',
                'en_name': 'Fire',
                'c': 0,
                'sa': 1
              }, subNodes: []),
              TreeNode({
                'ar_id': 436,
                'ar_name': 'الهاوية',
                'ug_name': 'ھاۋىيە',
                'en_name': 'The Abyss',
                'c': 0,
                'sa': 1
              }, subNodes: []),
            ]),
          ]),
        ]),
        TreeNode({
          'ar_id': 437,
          'ar_name': 'الكتب السماوية الاخرى',
          'ug_name': 'ساماۋى كىتاپلارغا ئىمان كەلتۈرۈش',
          'en_name': 'Other Heavenly Books',
          'c': 6,
          'sa': 0
        }, subNodes: [
          TreeNode({
            'ar_id': 438,
            'ar_name': 'الانجيل',
            'ug_name': 'ئىنجىل',
            'en_name': 'The Gospel',
            'c': 0,
            'sa': 12
          }, subNodes: []),
          TreeNode({
            'ar_id': 439,
            'ar_name': 'التوراة',
            'ug_name': 'تەۋرات',
            'en_name': 'The Torah',
            'c': 0,
            'sa': 16
          }, subNodes: []),
          TreeNode({
            'ar_id': 440,
            'ar_name': 'الزبور',
            'ug_name': 'زەبۇر',
            'en_name': 'Zaboor',
            'c': 0,
            'sa': 10
          }, subNodes: []),
          TreeNode({
            'ar_id': 441,
            'ar_name': 'صحف ابراهيم',
            'ug_name': 'ئىبراھىم ئەلەيھىسسالامغا چۈشكەن كىتاپ',
            'en_name': 'The Papers Of Abraham',
            'c': 0,
            'sa': 1
          }, subNodes: []),
          TreeNode({
            'ar_id': 442,
            'ar_name': 'صحف موسى',
            'ug_name': 'مۇسا ئەلەيھىسسالامغا چۈشكەن كىتاپ',
            'en_name': 'The Papers Of Moses',
            'c': 0,
            'sa': 2
          }, subNodes: []),
          TreeNode({
            'ar_id': 443,
            'ar_name': 'الكتب المقدسة',
            'ug_name': 'مۇقەددەس كىتابلار',
            'en_name': 'The Scriptures',
            'c': 0,
            'sa': 47
          }, subNodes: []),
        ]),
        TreeNode({
          'ar_id': 444,
          'ar_name': 'الله جل جلاله',
          'ug_name': 'ئاللاھ ۋە ئۇنىڭ بۈيۈكلۈكى',
          'en_name': 'All His Majesty',
          'c': 10,
          'sa': 0
        }, subNodes: [
          TreeNode({
            'ar_id': 445,
            'ar_name': 'التسليم لأوامره جل وعلا',
            'ug_name': 'بۈيۈك ئاللاھنىڭ بۇيرۇقلىرىغا بويسۇنۇش',
            'en_name': 'Submission To His Orders',
            'c': 0,
            'sa': 19
          }, subNodes: []),
          TreeNode({
            'ar_id': 446,
            'ar_name': 'التفويض اليه جل وعلا',
            'ug_name': 'ئۆزنى بۈيۈك ئاللاھقا تاپشۇرۇش',
            'en_name': 'Delegation To Him',
            'c': 0,
            'sa': 11
          }, subNodes: []),
          TreeNode({
            'ar_id': 447,
            'ar_name': 'التوكل عليه',
            'ug_name': 'ئاللاھقا تەۋەككۇل قىلىش',
            'en_name': 'Trust Him',
            'c': 0,
            'sa': 46
          }, subNodes: []),
          TreeNode({
            'ar_id': 448,
            'ar_name': 'حبه جل وعلا',
            'ug_name': 'بۈيۈك ئاللاھنى ياخشى كۆرۈش',
            'en_name': 'His Love',
            'c': 0,
            'sa': 4
          }, subNodes: []),
          TreeNode({
            'ar_id': 449,
            'ar_name': 'الخشوع بين يديه جل وعلا',
            'ug_name': 'بۈيۈك ئاللاھنىڭ ئالدىدا ئەيمىنىپ تۇرۇش',
            'en_name': 'The Reverence Between His Hands',
            'c': 0,
            'sa': 20
          }, subNodes: []),
          TreeNode({
            'ar_id': 450,
            'ar_name': 'خشيته جل وعلا',
            'ug_name': 'بۈيۈك ئاللاھتىنلا قورقۇش',
            'en_name': 'The Fear Of The Almighty',
            'c': 0,
            'sa': 47
          }, subNodes: []),
          TreeNode({
            'ar_id': 451,
            'ar_name': 'ذكر الله جل وعلا',
            'ug_name': 'بۈيۈك ئاللاھنى ئەسلەش',
            'en_name': 'The Mention Of God Almighty',
            'c': 0,
            'sa': 33
          }, subNodes: []),
          TreeNode({
            'ar_id': 452,
            'ar_name': 'الرجاء بالله جل وعلا',
            'ug_name': 'بۈيۈك ئاللاھقىلا دۇئا قىلىش',
            'en_name': 'Praying God Almighty',
            'c': 0,
            'sa': 13
          }, subNodes: []),
          TreeNode({
            'ar_id': 453,
            'ar_name': 'فضله جل وعلا',
            'ug_name': 'بۈيۈك ئاللاھنىڭ كاتتا پەزىل ئىگىسى ئىكەنلىكى',
            'en_name': 'Virtue And Glory',
            'c': 0,
            'sa': 53
          }, subNodes: []),
          TreeNode({
            'ar_id': 454,
            'ar_name': 'شكره جل جلاله',
            'ug_name': 'بۈيۈك ئاللاھقا تەشەككۈر بىلدۈرۈش',
            'en_name': 'Thanks To His Majesty',
            'c': 0,
            'sa': 17
          }, subNodes: []),
        ]),
        TreeNode({
          'ar_id': 455,
          'ar_name': 'المؤمنون',
          'ug_name': 'مۆئمىنلەر',
          'en_name': 'The Believers',
          'c': 12,
          'sa': 0
        }, subNodes: [
          TreeNode({
            'ar_id': 456,
            'ar_name': 'ابتلاؤهم',
            'ug_name': 'مۆمىنلەرنڭ سىنىلدىغانلىقى',
            'en_name': 'Their Test',
            'c': 0,
            'sa': 13
          }, subNodes: []),
          TreeNode({
            'ar_id': 457,
            'ar_name': 'استجابتهم لله ورسوله',
            'ug_name':
                'مۆمىنلەرنىڭ ئاللاھ ۋە ئۇنىڭ رەسۇلىنىڭ دەۋتىنى قوبۇل قىلىش',
            'en_name': 'Their Response To God And His Messenger',
            'c': 0,
            'sa': 8
          }, subNodes: []),
          TreeNode({
            'ar_id': 458,
            'ar_name': 'حياتهم في الدنيا والآخرة',
            'ug_name': 'مۆمىنلەرنىڭ دۇنيا ۋە ئاخىرەتتىكى ھاياتى',
            'en_name': 'Their Lives In This World And The Hereafter',
            'c': 0,
            'sa': 42
          }, subNodes: []),
          TreeNode({
            'ar_id': 459,
            'ar_name': 'حبه اياهم ومحبتهم اياه',
            'ug_name': 'مۆمىنلەرنىڭ بىر - بىرنى دوست تۇتىدىغانلىقى',
            'en_name': 'Their Love To Him And His Love To Them',
            'c': 0,
            'sa': 7
          }, subNodes: []),
          TreeNode({
            'ar_id': 460,
            'ar_name': 'سعادتهم في الدنيا والآخرة',
            'ug_name': 'مۆمىنلەرنىڭ دۇنيا ۋە ئاخىرەتتىكى بەخىت - سائادىتى',
            'en_name': 'Their Happiness In This World And The Hereafter',
            'c': 0,
            'sa': 17
          }, subNodes: []),
          TreeNode({
            'ar_id': 461,
            'ar_name': 'صفات المؤمنون',
            'ug_name': 'مۆمىنلەرنىڭ سۈپەتلىرى',
            'en_name': 'The Qualities Of The Believers',
            'c': 0,
            'sa': 35
          }, subNodes: []),
          TreeNode({
            'ar_id': 462,
            'ar_name': 'لاخوف عليهم',
            'ug_name': 'مۆمىنلەرگە قورقۇنىچ بولمايدىغانلىقى',
            'en_name': 'No Fear For Them',
            'c': 0,
            'sa': 11
          }, subNodes: []),
          TreeNode({
            'ar_id': 463,
            'ar_name': 'ما أعده الله لهم',
            'ug_name': 'ئاللاھنىڭ مۆمىنلەرگە تەييارلىغان نېمەتلىرى',
            'en_name': 'What God Prepared For Them',
            'c': 0,
            'sa': 295
          }, subNodes: []),
          TreeNode({
            'ar_id': 464,
            'ar_name': 'المؤمن والكافر',
            'ug_name': 'مۆمىن ۋە كاپىر',
            'en_name': 'The Believer And Infidel',
            'c': 0,
            'sa': 28
          }, subNodes: []),
          TreeNode({
            'ar_id': 465,
            'ar_name': 'وعده اياهم',
            'ug_name': 'ئاللاھنىڭ مۆمىنلەرگە بەرگەن ۋەدسى',
            'en_name': 'His Promise To Them',
            'c': 0,
            'sa': 301
          }, subNodes: []),
          TreeNode({
            'ar_id': 466,
            'ar_name': 'وعده اياهم بوراثة الارض',
            'ug_name':
                'ئاللاھنىڭ مۆمىنلەرگە زىمىننىڭ خەلىپىسى قىلىشقا ۋەدە قىلغانلىقى',
            'en_name': 'He Promised Them To Inherit The Land',
            'c': 0,
            'sa': 10
          }, subNodes: []),
          TreeNode({
            'ar_id': 467,
            'ar_name': 'ولاية الله للمؤمنين',
            'ug_name': 'ئاللاھ مۆمىنلەرنىڭ ئىگىسى ئىكەنلىكى',
            'en_name': 'The Mandate Of God For Believers',
            'c': 0,
            'sa': 13
          }, subNodes: []),
        ]),
        TreeNode({
          'ar_id': 468,
          'ar_name': 'الملائكة',
          'ug_name': 'پەرىشتىلەرگە ئىمان كەلتۈرۈش',
          'en_name': 'The Angels',
          'c': 7,
          'sa': 0
        }, subNodes: [
          TreeNode({
            'ar_id': 469,
            'ar_name': 'الايمان بهم',
            'ug_name': 'پەرىشتىلەرگە ئىمان كەلتۈرۈش',
            'en_name': 'Faith In Them',
            'c': 0,
            'sa': 149
          }, subNodes: []),
          TreeNode({
            'ar_id': 470,
            'ar_name': 'تنزلهم بأمر ربهم',
            'ug_name': 'پەرىشتىلەرنىڭ ئاللاھنىڭ ئەمىرى بىلەن چۈشۈشى',
            'en_name': 'Coming Down By The Order Of Their Lord',
            'c': 0,
            'sa': 7
          }, subNodes: []),
          TreeNode({
            'ar_id': 471,
            'ar_name': 'صفاتهم',
            'ug_name': 'پەرىشتىلەرنىڭ سۈپەتلىرى',
            'en_name': 'Their Qualities',
            'c': 0,
            'sa': 5
          }, subNodes: []),
          TreeNode({
            'ar_id': 472,
            'ar_name': 'عبادتهم لله',
            'ug_name': 'پەرىشتىلەرنىڭ ئاللاھقا ئىبادەت قىلىشى',
            'en_name': 'Their Worship Of God',
            'c': 0,
            'sa': 10
          }, subNodes: []),
          TreeNode({
            'ar_id': 473,
            'ar_name': 'عروجهم',
            'ug_name': 'پەرىشتىلەرنىڭ ئۆرلىشى',
            'en_name': 'Their Descent',
            'c': 0,
            'sa': 1
          }, subNodes: []),
          TreeNode({
            'ar_id': 474,
            'ar_name': 'قيامهم بأمر ربهم',
            'ug_name': 'پەرىشتىلەرنىڭ ئاللاھنىڭ ئەمرىنى بەجا كەلتۈرۈشى',
            'en_name': 'They Act By The Order Of Their Lord',
            'c': 10,
            'sa': 0
          }, subNodes: [
            TreeNode({
              'ar_id': 475,
              'ar_name': 'إغاثتهم المؤمنين',
              'ug_name': 'پەرىشتىلەرنىڭ مۆمىنلەرگە ياردەم بىرىشى',
              'en_name': 'The Relief Of Believers',
              'c': 0,
              'sa': 4
            }, subNodes: []),
            TreeNode({
              'ar_id': 476,
              'ar_name': 'توفي النفوس',
              'ug_name': 'پەرىشتىلەرنىڭ قەبزە روھ قىلىشى (جاننى ئېلىشى)',
              'en_name': 'The Souls Death',
              'c': 0,
              'sa': 10
            }, subNodes: []),
            TreeNode({
              'ar_id': 477,
              'ar_name': 'حفظهم',
              'ug_name':
                  'پەرىشتىلەرنىڭ ساقلىغۇچى(داۋاملىق مۇھاپىزەت قىلغۇچى) ئىكەنلىكى',
              'en_name': 'Savers',
              'c': 0,
              'sa': 4
            }, subNodes: []),
            TreeNode({
              'ar_id': 478,
              'ar_name': 'حملهم العرش',
              'ug_name': 'پەرىشتىلەرنىڭ ئاللاھنىڭ ئەرشنى كۈتۈرۈپ تۇردىغانلىقى',
              'en_name': 'Carriers Of The Throne',
              'c': 0,
              'sa': 2
            }, subNodes: []),
            TreeNode({
              'ar_id': 479,
              'ar_name': 'دعاؤهم',
              'ug_name': 'پەرىشتىلەرنىڭ دۇئالىرى',
              'en_name': 'Their Prayers',
              'c': 0,
              'sa': 2
            }, subNodes: []),
            TreeNode({
              'ar_id': 480,
              'ar_name': 'شفاعتهم',
              'ug_name': 'پەرىشتىلەرنىڭ شاپائىتى',
              'en_name': 'Intercession',
              'c': 0,
              'sa': 1
            }, subNodes: []),
            TreeNode({
              'ar_id': 481,
              'ar_name': 'كتابة اعمال بني آدم',
              'ug_name': 'پەرىشتىلەرنىڭ كىشلەرنىڭ ئەمەللىرىنى يازدىغانلىقى',
              'en_name': 'Writing The Works Of The Sons Of Adam',
              'c': 0,
              'sa': 7
            }, subNodes: []),
            TreeNode({
              'ar_id': 482,
              'ar_name': 'ملائكة الرحمة',
              'ug_name': 'رەھمەت پەرىشتىللىرى',
              'en_name': 'Angels Of Mercy',
              'c': 0,
              'sa': 2
            }, subNodes: []),
            TreeNode({
              'ar_id': 483,
              'ar_name': 'ملائكة العذاب',
              'ug_name': 'ئازابلاشقا مەسئۇل پەرىشتىلەر',
              'en_name': 'Angels Of Torment',
              'c': 0,
              'sa': 7
            }, subNodes: []),
            TreeNode({
              'ar_id': 484,
              'ar_name': 'نفخهم في الصور',
              'ug_name': 'پەرىشتىلەنىڭ سۈر چېلىشى',
              'en_name': 'Blowing In The Pictures',
              'c': 0,
              'sa': 17
            }, subNodes: []),
          ]),
          TreeNode({
            'ar_id': 485,
            'ar_name': 'من ورد اسمه منهم',
            'ug_name': 'پەرىشتىلەرنىڭ ئىسملىرى',
            'en_name': 'Their Names',
            'c': 6,
            'sa': 0
          }, subNodes: [
            TreeNode({
              'ar_id': 486,
              'ar_name': 'جبريل',
              'ug_name': 'جبرىئىل',
              'en_name': 'Jibril',
              'c': 0,
              'sa': 5
            }, subNodes: []),
            TreeNode({
              'ar_id': 487,
              'ar_name': 'ماروت',
              'ug_name': 'مارۇت',
              'en_name': 'Marut',
              'c': 0,
              'sa': 1
            }, subNodes: []),
            TreeNode({
              'ar_id': 488,
              'ar_name': 'هاروت',
              'ug_name': 'ھارۇت',
              'en_name': 'Harout',
              'c': 0,
              'sa': 1
            }, subNodes: []),
            TreeNode({
              'ar_id': 489,
              'ar_name': 'مالك',
              'ug_name': 'مالىك',
              'en_name': 'Malik',
              'c': 0,
              'sa': 1
            }, subNodes: []),
            TreeNode({
              'ar_id': 490,
              'ar_name': 'ملك الموت',
              'ug_name': 'جان ئېلىشقا مەسئۇل پەرىشتە',
              'en_name': 'Angel Of Death',
              'c': 0,
              'sa': 1
            }, subNodes: []),
            TreeNode({
              'ar_id': 491,
              'ar_name': 'ميكال',
              'ug_name': 'مىكائىل',
              'en_name': 'Michal',
              'c': 0,
              'sa': 1
            }, subNodes: []),
          ]),
        ]),
        TreeNode({
          'ar_id': 492,
          'ar_name': 'اليوم الآخر',
          'ug_name': 'قىيامەت كۈنىگە ئىمان كەلتۈرۈش',
          'en_name': 'The Last Day',
          'c': 18,
          'sa': 0
        }, subNodes: [
          TreeNode({
            'ar_id': 493,
            'ar_name': 'الايمان باليوم الآخر',
            'ug_name': 'قىيامەتكە(ئاخىرەت) كۈنىگە ئىمان كەلتۈرۈش',
            'en_name': 'Faith In The Last Day',
            'c': 0,
            'sa': 7
          }, subNodes: []),
          TreeNode({
            'ar_id': 494,
            'ar_name': 'إثباته',
            'ug_name': 'قىيامەتنىڭ دەلىل پاكىتلىرى',
            'en_name': 'Proof',
            'c': 0,
            'sa': 51
          }, subNodes: []),
          TreeNode({
            'ar_id': 495,
            'ar_name': 'الإرهاصات التي تسبقه',
            'ug_name': 'قىيامەتنىڭ ئالامەتلىرى',
            'en_name': 'The Signs That Precede',
            'c': 0,
            'sa': 72
          }, subNodes: []),
          TreeNode({
            'ar_id': 496,
            'ar_name': 'الأنساب يومئذ',
            'ug_name': 'قىيامەت كۈندىكى تۇققاندارچىلىقنىڭ  قانداق بولدىغانلىقى',
            'en_name': 'Genealogy That Day',
            'c': 0,
            'sa': 3
          }, subNodes: []),
          TreeNode({
            'ar_id': 497,
            'ar_name': 'أهواله',
            'ug_name': 'قىيامەتنىڭ ۋەھىمىلىك ئىكەنلىكى',
            'en_name': 'Horrors',
            'c': 0,
            'sa': 67
          }, subNodes: []),
          TreeNode({
            'ar_id': 498,
            'ar_name': 'البعث',
            'ug_name': 'قىيامەتتىكى قايتا تىرىلىش',
            'en_name': 'Resurrection',
            'c': 0,
            'sa': 84
          }, subNodes: []),
          TreeNode({
            'ar_id': 499,
            'ar_name': 'تفضيل الآخرة على الدنيا',
            'ug_name': 'ئاخىرەتنىڭ دۇنيادىن ياخشى ئىكەنلىكى',
            'en_name': 'Preference For The Hereafter On The World',
            'c': 0,
            'sa': 40
          }, subNodes: []),
          TreeNode({
            'ar_id': 500,
            'ar_name': 'ثواب الدنيا والآخرة',
            'ug_name': 'دۇنيا ۋە ئاخىرەتنىڭ ساۋابى',
            'en_name': 'The Reward Of The World And The Hereafter',
            'c': 0,
            'sa': 8
          }, subNodes: []),
          TreeNode({
            'ar_id': 501,
            'ar_name': 'الجزاء بالعمل',
            'ug_name': 'ئەمەللەرنىڭ مۇكاپات -جازاسى',
            'en_name': 'Reward Depends On Actions',
            'c': 0,
            'sa': 71
          }, subNodes: []),
          TreeNode({
            'ar_id': 502,
            'ar_name': 'جزاء العمل الحسن',
            'ug_name': 'ياخشى ئەمەللەرنىڭ مۇكاپاتى',
            'en_name': 'The Reward Of Good Work',
            'c': 0,
            'sa': 34
          }, subNodes: []),
          TreeNode({
            'ar_id': 503,
            'ar_name': 'جزاء العمل السيئ',
            'ug_name': 'يامان ئەمەللەرنىڭ جازاسى',
            'en_name': 'The Penalty Of Bad Work',
            'c': 0,
            'sa': 23
          }, subNodes: []),
          TreeNode({
            'ar_id': 504,
            'ar_name': 'الحشر',
            'ug_name': 'قىيامەتتىكى يىغىلىش',
            'en_name': 'The Gathering',
            'c': 0,
            'sa': 113
          }, subNodes: []),
          TreeNode({
            'ar_id': 505,
            'ar_name': 'شهادة الاعضاء',
            'ug_name': 'قىيامەتتە بەدەندىكى ئەزالارنىڭ گۇۋاھلىق بىرىشى',
            'en_name': 'Testimony Of Members',
            'c': 0,
            'sa': 6
          }, subNodes: []),
          TreeNode({
            'ar_id': 506,
            'ar_name': 'العرض على الميزان واستلام الكتاب',
            'ug_name':
                'ئەمەللەرنىڭ ئۆلچىنىشى ۋە نامە- ئەمەل دەپتىرنىڭ تاپشۇرلىشى',
            'en_name': 'Presentation On The Balance And Receipt Of The Book',
            'c': 0,
            'sa': 36
          }, subNodes: []),
          TreeNode({
            'ar_id': 507,
            'ar_name': 'فئات الخلق يومئذ',
            'ug_name': 'قىيامەت كۈندە مەخلۇقاتلارنىڭ تۈرلىرى',
            'en_name': 'The Categories Of Creations On That Day',
            'c': 0,
            'sa': 28
          }, subNodes: []),
          TreeNode({
            'ar_id': 508,
            'ar_name': 'فتنة الاموال والاولاد',
            'ug_name': 'مال - مۈلۈك ۋە بالىلارنڭ سىناق ئىكەنلىكى',
            'en_name': 'Fitna In Money And Children',
            'c': 0,
            'sa': 7
          }, subNodes: []),
          TreeNode({
            'ar_id': 509,
            'ar_name': 'أسماؤه',
            'ug_name': 'قىيامەتنىڭ ئىسىملىرى',
            'en_name': 'His Names',
            'c': 18,
            'sa': 0
          }, subNodes: [
            TreeNode({
              'ar_id': 510,
              'ar_name': 'الآخرة',
              'ug_name': 'ئاخىرەت',
              'en_name': 'Hereafter',
              'c': 0,
              'sa': 1
            }, subNodes: []),
            TreeNode({
              'ar_id': 511,
              'ar_name': 'الحاقة',
              'ug_name': 'ئەلھاققە(بولۇشى ئېنىق)',
              'en_name': 'Al-Haqqa',
              'c': 0,
              'sa': 1
            }, subNodes: []),
            TreeNode({
              'ar_id': 512,
              'ar_name': 'الساعة',
              'ug_name': 'ئەسساغە(تۇيۇقسىز  ۋاقىت)',
              'en_name': 'As-Saa',
              'c': 0,
              'sa': 1
            }, subNodes: []),
            TreeNode({
              'ar_id': 513,
              'ar_name': 'الصاخة',
              'ug_name': 'ئەسساخە(قاتتىق ئاۋازلىق)',
              'en_name': 'As-Sakha',
              'c': 0,
              'sa': 1
            }, subNodes: []),
            TreeNode({
              'ar_id': 514,
              'ar_name': 'الطامة الكبرى',
              'ug_name': 'چوڭ پالاكەت',
              'en_name': 'The Great Tamma',
              'c': 0,
              'sa': 1
            }, subNodes: []),
            TreeNode({
              'ar_id': 515,
              'ar_name': 'الغاشية',
              'ug_name': 'قاتتىق دەھشىتى بىلەن كىشىلەرنى ئورىۋالىدىغان قىيامەت',
              'en_name': 'Ghashia',
              'c': 0,
              'sa': 1
            }, subNodes: []),
            TreeNode({
              'ar_id': 516,
              'ar_name': 'القارعة',
              'ug_name': 'ئەلقارىئە(ﺩﯨﻠﻠﯩﺮﯨﻐﺎ ﻗﻮﺭﻗﯘﻧﭻ ﺳﺎﻟﻐﯘﭼﻰ)',
              'en_name': 'Al-Qaria',
              'c': 0,
              'sa': 4
            }, subNodes: []),
            TreeNode({
              'ar_id': 517,
              'ar_name': 'الميعاد',
              'ug_name': 'ئەلىمئاد(ۋەدە قىلىنغان كۈن)',
              'en_name': 'Al-Miaad',
              'c': 0,
              'sa': 1
            }, subNodes: []),
            TreeNode({
              'ar_id': 518,
              'ar_name': 'الواقعة',
              'ug_name': 'ئەلۋاقىغە(ئەمەلگە ئاشقۇچى)',
              'en_name': 'Al-Waqia',
              'c': 0,
              'sa': 1
            }, subNodes: []),
            TreeNode({
              'ar_id': 519,
              'ar_name': 'يوم البعث',
              'ug_name': 'قايتا تىرىلدۈرۈلۈش كۈنى',
              'en_name': 'Day Of Resurrection',
              'c': 0,
              'sa': 1
            }, subNodes: []),
            TreeNode({
              'ar_id': 520,
              'ar_name': 'يوم التغابن',
              'ug_name': 'زىيان تارتىدىغان كۈن',
              'en_name': 'Day Of Conflict',
              'c': 0,
              'sa': 1
            }, subNodes: []),
            TreeNode({
              'ar_id': 521,
              'ar_name': 'يوم التلاق',
              'ug_name': 'ھەممە خالايىق ئۇچرىشىدىغان كۈن',
              'en_name': 'Day Of Convergence',
              'c': 0,
              'sa': 1
            }, subNodes: []),
            TreeNode({
              'ar_id': 522,
              'ar_name': 'يوم الجمع',
              'ug_name': 'جەم قىلىش كۈنى',
              'en_name': 'Day Of Collection',
              'c': 0,
              'sa': 1
            }, subNodes: []),
            TreeNode({
              'ar_id': 523,
              'ar_name': 'يوم الحسرة',
              'ug_name': 'ھەسرەت كۈنى',
              'en_name': 'Day Of Sorrow',
              'c': 0,
              'sa': 1
            }, subNodes: []),
            TreeNode({
              'ar_id': 524,
              'ar_name': 'يوم الدين',
              'ug_name': 'جازا -مۇكاپات كۈنى',
              'en_name': 'Day Of Judgment',
              'c': 0,
              'sa': 1
            }, subNodes: []),
            TreeNode({
              'ar_id': 525,
              'ar_name': 'يوم الفصل',
              'ug_name': '(ھەق بىلەن باتىل) ئايرىلدىغان كۈن',
              'en_name': 'Day Of  Separation',
              'c': 0,
              'sa': 1
            }, subNodes: []),
            TreeNode({
              'ar_id': 526,
              'ar_name': 'يوم القيامة',
              'ug_name': 'قىيامەت كۈنى',
              'en_name': 'Day Of Qiyama',
              'c': 0,
              'sa': 1
            }, subNodes: []),
            TreeNode({
              'ar_id': 527,
              'ar_name': 'يوم الوعيد',
              'ug_name': 'ۋەدە قىلىنغان كۈن',
              'en_name': 'Day Of Threat',
              'c': 0,
              'sa': 1
            }, subNodes: []),
          ]),
          TreeNode({
            'ar_id': 528,
            'ar_name': 'الموت',
            'ug_name': 'ئۆلۈم',
            'en_name': 'Death',
            'c': 4,
            'sa': 0
          }, subNodes: [
            TreeNode({
              'ar_id': 529,
              'ar_name': 'الابتلاء',
              'ug_name': 'سىناش ئۈچۈن تىرىكلىك  ۋە ئۆلۈمنى ياراتقانلىقى',
              'en_name': 'Test',
              'c': 0,
              'sa': 1
            }, subNodes: []),
            TreeNode({
              'ar_id': 530,
              'ar_name': 'ساعة الاحتضار',
              'ug_name': 'جان ھەلقۇمغا يەتكەن ۋاقىت',
              'en_name': 'Hour Of Agony',
              'c': 0,
              'sa': 11
            }, subNodes: []),
            TreeNode({
              'ar_id': 531,
              'ar_name': 'قضاء محتوم',
              'ug_name': 'ئۆلۈمنىڭ مۇقەررەرلىكى',
              'en_name': 'An Inevitable Sentence',
              'c': 0,
              'sa': 16
            }, subNodes: []),
            TreeNode({
              'ar_id': 532,
              'ar_name': 'لكل امة اجل محتوم',
              'ug_name': 'ھەر بىر ئۈممەتنڭ مۇئەييەن ۋاقتى بولدىغانلىقى',
              'en_name': 'Every Nation Has An Inevitable Time',
              'c': 0,
              'sa': 9
            }, subNodes: []),
          ]),
        ]),
      ]),
      TreeNode({
        'ar_id': 533,
        'ar_name': 'الدعوة الى الله',
        'ug_name': 'ئاللاھقا دەۋەت قىلىش ئۇسۇللىرى',
        'en_name': 'Invitation To God',
        'c': 3,
        'sa': 0
      }, subNodes: [
        TreeNode({
          'ar_id': 534,
          'ar_name': 'حدودها',
          'ug_name': 'دەۋەت قىلىشنىڭ چەك -چېگرالىرى',
          'en_name': 'His Limits',
          'c': 6,
          'sa': 0
        }, subNodes: [
          TreeNode({
            'ar_id': 535,
            'ar_name': 'الإضطهاد بسبب العقيدة ظلم لايجوز',
            'ug_name':
                'ئەقىدە سەۋەبلىك زىيانكەشلىك قىلىش زۇلۇم ئىكەنلىكى ۋە مۇنداق قىلشنىڭ توغرا ئەمەسلىكى',
            'en_name': 'Persecution Because Of Faith Is Unjust',
            'c': 0,
            'sa': 36
          }, subNodes: []),
          TreeNode({
            'ar_id': 536,
            'ar_name': 'التساهل مع المسالمين',
            'ug_name': 'تىنچلىقپەرۋەرلەرگە كەڭچىلىك بىلەن مۇئامىلە قىلىش',
            'en_name': 'Leniency With The Peaceful',
            'c': 0,
            'sa': 44
          }, subNodes: []),
          TreeNode({
            'ar_id': 537,
            'ar_name': 'التشدد مع الكفار المقاتلين',
            'ug_name': 'ئۇرۇش قىلغۇچى كاپىرلارغا قاتتىق مۇئامىلە قىلىش',
            'en_name': 'Hardening With Infidels Fighters',
            'c': 0,
            'sa': 28
          }, subNodes: []),
          TreeNode({
            'ar_id': 538,
            'ar_name': 'لا إكراه في الدين',
            'ug_name': 'دىندا زورلاش يوق ئىكەنلىكى',
            'en_name': 'There Is No Compulsion In Religion',
            'c': 0,
            'sa': 4
          }, subNodes: []),
          TreeNode({
            'ar_id': 539,
            'ar_name': 'لا تعصب فالتعصب من شيمة الكفار',
            'ug_name':
                'دىندا مەجبۇرلىماسلىق ،مەجبۇرلاشنىڭ كاپىرلارنىڭ ئادىتى ئىكەنلىكى',
            'en_name': 'No Fanaticism, Fanaticism Is A Trait Of Infidels',
            'c': 0,
            'sa': 1
          }, subNodes: []),
          TreeNode({
            'ar_id': 540,
            'ar_name': 'لا غلو في الدين',
            'ug_name': 'دىندا چەكتىن ئاشۇرۋەتمەسلىك',
            'en_name': 'Do Not Exaggerate In Religion',
            'c': 0,
            'sa': 2
          }, subNodes: []),
        ]),
        TreeNode({
          'ar_id': 541,
          'ar_name': 'الحكمة في الدعوة',
          'ug_name': 'ھېكمەتلىك ئۇسۇلدا دەۋەت قىلىش',
          'en_name': 'The Wisdom Of The Call',
          'c': 5,
          'sa': 0
        }, subNodes: [
          TreeNode({
            'ar_id': 542,
            'ar_name': 'الامتناع عن اثارة الخصم',
            'ug_name':
                '(دەۋەتتە) قارىشى تەرەپنىڭ ئاچچىقىنى كەلتۈرۈشتىن ساقلىنىش',
            'en_name': 'Refrain From Stirring Up The Opponent',
            'c': 0,
            'sa': 1
          }, subNodes: []),
          TreeNode({
            'ar_id': 543,
            'ar_name': 'الدعوة بلسان القوم وبما يفهمونه',
            'ug_name': 'دەۋەتنى ھەر قەۋىمنىڭ ئۆزنىڭ چۈشىنىدىغان تىلىدا قىلىش',
            'en_name': 'Call The People With What They Understand',
            'c': 0,
            'sa': 2
          }, subNodes: []),
          TreeNode({
            'ar_id': 544,
            'ar_name': 'دفع السيئة بالحسنة',
            'ug_name': 'يامانلىققا ياخشىلىق بىلەن تاقابىل تۇرۇش',
            'en_name': 'Push The Bad Aith The Good',
            'c': 0,
            'sa': 7
          }, subNodes: []),
          TreeNode({
            'ar_id': 545,
            'ar_name': 'ضرب المثل',
            'ug_name': 'مىسال كەلتۈرۈش',
            'en_name': 'Giving Examples',
            'c': 0,
            'sa': 4
          }, subNodes: []),
          TreeNode({
            'ar_id': 546,
            'ar_name': 'المجادلة بالتي هي احسن',
            'ug_name': 'باشقىلار بىلەن ئەڭ چىرايلىق شەكلىدە مۇنازەر قىلىش',
            'en_name': 'The Argument With Good Manners',
            'c': 0,
            'sa': 7
          }, subNodes: []),
        ]),
        TreeNode({
          'ar_id': 547,
          'ar_name': 'وجوبها',
          'ug_name': 'دەۋەت قىلىشنىڭ مەجبۇرييەت ئىكەنلىكى',
          'en_name': 'Obligation',
          'c': 3,
          'sa': 0
        }, subNodes: [
          TreeNode({
            'ar_id': 548,
            'ar_name': 'الترهيب عن التقصير في الدعوة الى الله',
            'ug_name': 'ئاللاھقا دەۋەت قىلىشتا ھەقنى بۇرمىلاشتىن ساقلىنىش',
            'en_name': 'The Threat Of Failure To Call To God',
            'c': 0,
            'sa': 4
          }, subNodes: []),
          TreeNode({
            'ar_id': 549,
            'ar_name': 'مهمة الرسل',
            'ug_name': 'پەيغەمبەرلەرنىڭ ۋەزىپىسى',
            'en_name': 'Mission Of The Apostles',
            'c': 0,
            'sa': 30
          }, subNodes: []),
          TreeNode({
            'ar_id': 550,
            'ar_name': 'وجوبها على كل مسلم',
            'ug_name': 'دەۋەت قىلىش ھەربىر مۇسۇلماننىڭ مەجبۇرىيتى ئىكەنلىكى',
            'en_name': 'Obligation On Every Muslim',
            'c': 0,
            'sa': 24
          }, subNodes: []),
        ]),
      ]),
      TreeNode({
        'ar_id': 551,
        'ar_name': 'القرآن الكريم',
        'ug_name': 'قۇرئان كەرىم',
        'en_name': 'The Holy Quran',
        'c': 13,
        'sa': 0
      }, subNodes: [
        TreeNode({
          'ar_id': 552,
          'ar_name': 'اقسام القرآن الكريم',
          'ug_name': 'قۇرئان كەرىمدىكى قەسەملەر',
          'en_name': 'Sections Of The Koran',
          'c': 0,
          'sa': 94
        }, subNodes: []),
        TreeNode({
          'ar_id': 553,
          'ar_name': 'الأمثال فيه',
          'ug_name': 'قۇرئاندىكى مىساللار',
          'en_name': 'Examples In It',
          'c': 0,
          'sa': 4
        }, subNodes: []),
        TreeNode({
          'ar_id': 554,
          'ar_name': 'إنزاله في ليلة القدر',
          'ug_name': 'قۇرئاننىڭ قەدىر كېچىسىدە نازىل بولغانلىقى',
          'en_name': 'His Descent In The Night Of Power',
          'c': 0,
          'sa': 9
        }, subNodes: []),
        TreeNode({
          'ar_id': 555,
          'ar_name': 'تأويل المتأولين وتحريفاتهم',
          'ug_name':
              'قۇرئاننى شەرھىلىگۈچىلەرنىڭ شەرھىسى ۋە ئۇلارنىڭ قۇرئاننى بۇرمىلىش (ئۆزگەرتىشى)',
          'en_name': 'The Interpretation Of Interpreters And Their Deviations',
          'c': 0,
          'sa': 10
        }, subNodes: []),
        TreeNode({
          'ar_id': 556,
          'ar_name': 'تغييرهم حكم القرآن',
          'ug_name': 'قۇرئاننىڭ ھۆكۈملىرىنى ئۆزگەرتىشنىڭ ئاقىۋىتى',
          'en_name': 'Change The Rule Of The Koran',
          'c': 0,
          'sa': 11
        }, subNodes: []),
        TreeNode({
          'ar_id': 557,
          'ar_name': 'تلاوته',
          'ug_name': 'قۇرئاننى تىلاۋەت قىلىش',
          'en_name': 'Reciting',
          'c': 0,
          'sa': 26
        }, subNodes: []),
        TreeNode({
          'ar_id': 558,
          'ar_name': 'تنزيهه عن الشعر',
          'ug_name': 'قۇرئاننىڭ شىئىر بولۇشتىن پاك ئىكەنلىكى',
          'en_name': 'Denying The Hypothesis Of It Being Poetry',
          'c': 0,
          'sa': 5
        }, subNodes: []),
        TreeNode({
          'ar_id': 559,
          'ar_name': 'حقيقته وتصيدقه للكتب الأوائل',
          'ug_name':
              'قۇرئاننىڭ ھەق كىتاب ئىكەنلىكى ۋە ئىلگىركى ساماۋىي كىتابلارنى تەستىقلاپ كەلگەنلىكى',
          'en_name': 'His Truth And Validation The First Books',
          'c': 0,
          'sa': 329
        }, subNodes: []),
        TreeNode({
          'ar_id': 560,
          'ar_name': 'محاججة المنكرين والجاحدين',
          'ug_name':
              'قۇرئاننىڭ مۇشرىكلار ۋە دىنسىزلارنى بەس- مۇنازىرە قىلىشقا چاقىرغانلىقى',
          'en_name': 'Arguing Deniers And Atheists',
          'c': 0,
          'sa': 83
        }, subNodes: []),
        TreeNode({
          'ar_id': 561,
          'ar_name': 'النسخ',
          'ug_name': 'ئايەتلەرنى مەنسۇخ قىلىش',
          'en_name': 'Copying',
          'c': 0,
          'sa': 2
        }, subNodes: []),
        TreeNode({
          'ar_id': 562,
          'ar_name': 'هجره',
          'ug_name': 'قۇرئاننى تاشلاندۇق قىلىپ قويغانلىقى',
          'en_name': 'Abandon',
          'c': 0,
          'sa': 3
        }, subNodes: []),
        TreeNode({
          'ar_id': 563,
          'ar_name': 'وجوب الحكم به',
          'ug_name': 'قۇرئان بىلەن ھۆكۈم قىلىشنىڭ پەرىزلىكى',
          'en_name': 'It Is Obligatory To Judge By It',
          'c': 0,
          'sa': 4
        }, subNodes: []),
        TreeNode({
          'ar_id': 564,
          'ar_name': 'وصفه ووجوب الإيمان به',
          'ug_name':
              'قۇرئاننىڭ بايانلىرى ۋە ئۇنىڭغا ئىمان كەلتۈرۈشنىڭ پەرىزلىكى',
          'en_name': 'Its Description And The Need To Believe In It',
          'c': 0,
          'sa': 126
        }, subNodes: []),
      ]),
      TreeNode({
        'ar_id': 565,
        'ar_name': 'الجهاد',
        'ug_name': 'جىھاد',
        'en_name': 'Jihad',
        'c': 11,
        'sa': 0
      }, subNodes: [
        TreeNode({
          'ar_id': 566,
          'ar_name': 'الثأر',
          'ug_name': 'ئىنتىقام ئېلىش',
          'en_name': 'Revenge',
          'c': 0,
          'sa': 1
        }, subNodes: []),
        TreeNode({
          'ar_id': 567,
          'ar_name': 'الرباط',
          'ug_name': '(چېگرالارنى ساقلاپ)جىھادقا تەييار تۇرۇش',
          'en_name': 'Ribat',
          'c': 0,
          'sa': 1
        }, subNodes: []),
        TreeNode({
          'ar_id': 568,
          'ar_name': 'أدوات الجهاد',
          'ug_name': 'جىھاد ئەسلىھەلىرى',
          'en_name': 'Tools Of Jihad',
          'c': 2,
          'sa': 0
        }, subNodes: [
          TreeNode({
            'ar_id': 569,
            'ar_name': 'الحديد',
            'ug_name': 'تۆمۈر(تۆمۈردىن ياسالغان قۇراللارنى تەييارلاش)',
            'en_name': 'Iron',
            'c': 0,
            'sa': 1
          }, subNodes: []),
          TreeNode({
            'ar_id': 570,
            'ar_name': 'الخيل',
            'ug_name': 'جەڭ ئېتى تەييارلاش',
            'en_name': 'Horse',
            'c': 0,
            'sa': 5
          }, subNodes: []),
        ]),
        TreeNode({
          'ar_id': 571,
          'ar_name': 'الأسرار الحربية',
          'ug_name': 'ئۇرۇش مەخپىيەتلىكلىرى',
          'en_name': 'War Secrets',
          'c': 2,
          'sa': 0
        }, subNodes: [
          TreeNode({
            'ar_id': 572,
            'ar_name': 'تناقل الاخبار',
            'ug_name': 'تارقالغان خەۋەرلەر',
            'en_name': 'The Transmission Of News',
            'c': 0,
            'sa': 5
          }, subNodes: []),
          TreeNode({
            'ar_id': 573,
            'ar_name': 'وجوب كتمانها',
            'ug_name': 'ئۇرۇش مەخپىيتىنى ساقلاش مەجبۇرىيىتى',
            'en_name': 'The Obligation Of Concealment',
            'c': 0,
            'sa': 1
          }, subNodes: []),
        ]),
        TreeNode({
          'ar_id': 574,
          'ar_name': 'الأسرى والرقيق',
          'ug_name': 'ئەسىر ۋە قۇللار',
          'en_name': 'Prisoners And Slaves',
          'c': 6,
          'sa': 0
        }, subNodes: [
          TreeNode({
            'ar_id': 575,
            'ar_name': 'الإعتاق',
            'ug_name': 'ئەسىر ۋە قۇللارنى ئازاد قىلىش',
            'en_name': 'Emancipation',
            'c': 0,
            'sa': 9
          }, subNodes: []),
          TreeNode({
            'ar_id': 576,
            'ar_name': 'تنظيم معاملة الرقيق على أساس من الإنسانية',
            'ug_name': 'قۇل -چۆرىلەرگە ياخشى مۇئامىلە قىلىش',
            'en_name':
                'Regulating The Treatment Of Slave On The Basis Of Humanity',
            'c': 0,
            'sa': 2
          }, subNodes: []),
          TreeNode({
            'ar_id': 577,
            'ar_name': 'واجب الدولة في العمل على تحرير الأرقاء بالمال',
            'ug_name': 'پۇل - مال بىلەن قۇللارنى ئازاد قىلىشنىڭ ۋاجىبلىقى',
            'en_name':
                'The Duty Of The State To Work To Free The Slaves With Money',
            'c': 0,
            'sa': 1
          }, subNodes: []),
          TreeNode({
            'ar_id': 578,
            'ar_name': 'وجوب مكاتبة المملوك ومساعدته مالياً على التخلص من الرق',
            'ug_name':
                'قۇل ۋە چۆرىلىرىڭلاردىن مۇئەييەن بەدەل تۆلەش شەرتى بىلەن ئازاد قىلىنىشى ئۈچۈن سىلەر بىلەن توختام تۈزۈش تەلىپىدە بولغانلار بىلەن توختام تۈزۈش',
            'en_name':
                'The Obligation Of The Owner To Help Him Financially To Get Rid Of Slavery',
            'c': 0,
            'sa': 1
          }, subNodes: []),
          TreeNode({
            'ar_id': 579,
            'ar_name': 'فداؤهم قبل استرقاقهم',
            'ug_name':
                'ئەسىرلەرنى  قۇل قىلىشتىن بۇرۇن فىدىيە ئېلىپ قويۇپ بىرىش',
            'en_name': 'Exchanging Them With Money Before Their Slavery',
            'c': 0,
            'sa': 3
          }, subNodes: []),
          TreeNode({
            'ar_id': 580,
            'ar_name': 'متى يؤخذ الاسرى',
            'ug_name': 'ئەسىرلەرنى تۆلەم تۆلەپ ئېلىپ كەتكەنلىكى',
            'en_name': 'When Prisoners Are Taken',
            'c': 0,
            'sa': 2
          }, subNodes: []),
        ]),
        TreeNode({
          'ar_id': 581,
          'ar_name': 'تعليمات حربية',
          'ug_name': 'ھەربىي ئىشلار نىزامى',
          'en_name': 'War Regulations',
          'c': 9,
          'sa': 0
        }, subNodes: [
          TreeNode({
            'ar_id': 582,
            'ar_name': 'الأعمى و الأعرج والمريض',
            'ug_name': 'ئۇرۇشقا قاتنىشالمايدىغان  ئەما ،توكۇر ۋە كېسەل كىشلەر',
            'en_name': 'Blind And Lame And Sick',
            'c': 0,
            'sa': 3
          }, subNodes: []),
          TreeNode({
            'ar_id': 583,
            'ar_name': 'البيعة',
            'ug_name': 'بەيئەت',
            'en_name': 'Allegiance',
            'c': 0,
            'sa': 4
          }, subNodes: []),
          TreeNode({
            'ar_id': 584,
            'ar_name': 'الصلاة وقت الحرب',
            'ug_name': 'ئۇرۇش ۋاقتىدىكى ناماز ئوقۇش ئۇسۇلى',
            'en_name': 'Prayer In Time Of War',
            'c': 0,
            'sa': 3
          }, subNodes: []),
          TreeNode({
            'ar_id': 585,
            'ar_name': 'القتال في الاشهر الحرم',
            'ug_name': '(ئۇرۇش)ئارام قىلىنغان ئايلاردا ئۇرۇش قىلىش',
            'en_name': 'Fighting In The Holy Months',
            'c': 0,
            'sa': 5
          }, subNodes: []),
          TreeNode({
            'ar_id': 586,
            'ar_name': 'قتال من ألقى السلاح',
            'ug_name': 'ئۇرۇشتا تەسلىم بولغانلار(قۇرالنى تاشلىغانلار)',
            'en_name': 'Fighting Of The Surrendering',
            'c': 0,
            'sa': 1
          }, subNodes: []),
          TreeNode({
            'ar_id': 587,
            'ar_name': 'ما هو أشد من القتل',
            'ug_name': 'ئۇرۇشتىمۇ ئەشەددى نەرسە(پىتنە)',
            'en_name': 'What Is More Severe Than Murder',
            'c': 0,
            'sa': 5
          }, subNodes: []),
          TreeNode({
            'ar_id': 588,
            'ar_name': 'نظام الجهاد وقانونه',
            'ug_name': 'جىھاد قىلىش نىزامى ۋە قانۇنى',
            'en_name': 'The System Of Jihad And Its Law',
            'c': 0,
            'sa': 17
          }, subNodes: []),
          TreeNode({
            'ar_id': 589,
            'ar_name': 'الوساطة والإصلاح في الحرب',
            'ug_name': 'ئۇرۇشتا مۇرەسسە قىلىش ۋە تۈزەش',
            'en_name': 'Mediation And Reform In War',
            'c': 0,
            'sa': 2
          }, subNodes: []),
          TreeNode({
            'ar_id': 590,
            'ar_name': 'القتال في الحرم',
            'ug_name': 'ھەرەمدە ئۇرۇش قىلىش',
            'en_name': 'Fighting In The Haram',
            'c': 0,
            'sa': 2
          }, subNodes: []),
        ]),
        TreeNode({
          'ar_id': 591,
          'ar_name': 'الجهاد في الاسلام',
          'ug_name': 'ئىسلامدا جىھاد',
          'en_name': 'Jihad In Islam',
          'c': 11,
          'sa': 0
        }, subNodes: [
          TreeNode({
            'ar_id': 592,
            'ar_name': 'أشرار الجند',
            'ug_name': 'ئەسكەرلەرنىڭ رەزىللىرى',
            'en_name': 'Evil Soldiers',
            'c': 0,
            'sa': 55
          }, subNodes: []),
          TreeNode({
            'ar_id': 593,
            'ar_name': 'إعداد الجيش',
            'ug_name': 'ئەسكىرى(ئارمىيە) تەييارلىق',
            'en_name': 'Preparing The Army',
            'c': 0,
            'sa': 1
          }, subNodes: []),
          TreeNode({
            'ar_id': 594,
            'ar_name': 'تفضيل المجاهدين',
            'ug_name': 'مۇجاھىدلارنىڭ ئارتۇقچىلىقى(پەزىلىتى)',
            'en_name': 'Preference For The Mujahideen',
            'c': 0,
            'sa': 6
          }, subNodes: []),
          TreeNode({
            'ar_id': 595,
            'ar_name': 'الجنوح إلى السلم',
            'ug_name': 'تىنىچلىققا مايىل بولۇش',
            'en_name': 'Leaning To Peace',
            'c': 0,
            'sa': 1
          }, subNodes: []),
          TreeNode({
            'ar_id': 596,
            'ar_name': 'الحرب في الإسلام',
            'ug_name': 'ئىسلام دىنىدا  ئۇرۇش قىلىش',
            'en_name': 'War In Islam',
            'c': 0,
            'sa': 3
          }, subNodes: []),
          TreeNode({
            'ar_id': 597,
            'ar_name': 'الدعوة إلى الجهاد',
            'ug_name': 'جىھادقا چاقىرىش(دەۋەت قىلىش)',
            'en_name': 'The Call To Jihad',
            'c': 0,
            'sa': 137
          }, subNodes: []),
          TreeNode({
            'ar_id': 598,
            'ar_name': 'ذم المتخاذلين عن الجهاد',
            'ug_name':
                'جىھادقا چىقمىغانلار(ئېزلەڭگۈلۈك قىلغانلارنىڭ) تەنقىد قىلىنغانلىقى',
            'en_name': 'Criticizing Those Who Avoid Jihad',
            'c': 0,
            'sa': 56
          }, subNodes: []),
          TreeNode({
            'ar_id': 599,
            'ar_name': 'الفرار من المعركة',
            'ug_name': 'ئۇرۇشتىن (جەڭ قىلۋاتقاندا) قېچىش',
            'en_name': 'Escape The Battle',
            'c': 0,
            'sa': 3
          }, subNodes: []),
          TreeNode({
            'ar_id': 600,
            'ar_name': 'مدح الجهاد',
            'ug_name': 'جىھاد قىلغۇچىلارنى مەدھىيلەش',
            'en_name': 'Praise Jihad',
            'c': 0,
            'sa': 135
          }, subNodes: []),
          TreeNode({
            'ar_id': 601,
            'ar_name': 'المعاملة بالمثل',
            'ug_name':
                'ئوخشاش مۇئامىلە قىلىش(قانچىلىك چېقىلسا ،شۇنچىلىك چېقىلىش)',
            'en_name': 'Reciprocity',
            'c': 0,
            'sa': 1
          }, subNodes: []),
          TreeNode({
            'ar_id': 602,
            'ar_name': 'النهي عن الإعتداء',
            'ug_name': 'تاجاۋۇز قىلماسلىق',
            'en_name': 'The Prohibition On Assault',
            'c': 0,
            'sa': 3
          }, subNodes: []),
        ]),
        TreeNode({
          'ar_id': 603,
          'ar_name': 'الشهداء',
          'ug_name': 'شەھىدلەر',
          'en_name': 'Martyrs',
          'c': 2,
          'sa': 0
        }, subNodes: [
          TreeNode({
            'ar_id': 604,
            'ar_name': 'حياتهم عند الله',
            'ug_name': 'شەھىدلەرنىڭ ئاللاھنىڭ دەرگاھىدىكى ھاياتى',
            'en_name': 'Their Lives With God',
            'c': 0,
            'sa': 4
          }, subNodes: []),
          TreeNode({
            'ar_id': 605,
            'ar_name': 'منزلتهم وما أعد الله لهم',
            'ug_name':
                'شەھىدلەرنىڭ جەننەتتىكى ئورنى ۋە ئاللاھنىڭ ئۇلارغا تەييارلىغان نېمەتلىرى',
            'en_name': 'Their Status And What God Prepared For Them',
            'c': 0,
            'sa': 12
          }, subNodes: []),
        ]),
        TreeNode({
          'ar_id': 606,
          'ar_name': 'الغزوات',
          'ug_name': 'غازاتلار',
          'en_name': 'Invasions',
          'c': 9,
          'sa': 0
        }, subNodes: [
          TreeNode({
            'ar_id': 607,
            'ar_name': 'غزوة أحد',
            'ug_name': 'ئوھۇد غازىتى',
            'en_name': 'Battle Of Ohod',
            'c': 0,
            'sa': 28
          }, subNodes: []),
          TreeNode({
            'ar_id': 608,
            'ar_name': 'غزوة بدر',
            'ug_name': 'بەدر غازىتى',
            'en_name': 'Battle Of Badr',
            'c': 0,
            'sa': 23
          }, subNodes: []),
          TreeNode({
            'ar_id': 609,
            'ar_name': 'غزوة بني النضير',
            'ug_name': 'بەنى نەزىر يەھۇدىللىرى بىلەن بولغان غازات',
            'en_name': 'Battle Of Bani Nadeer',
            'c': 0,
            'sa': 5
          }, subNodes: []),
          TreeNode({
            'ar_id': 610,
            'ar_name': 'غزوة تبوك',
            'ug_name': 'تەبۇك غازىتى',
            'en_name': 'Battle Of Tabuk',
            'c': 0,
            'sa': 58
          }, subNodes: []),
          TreeNode({
            'ar_id': 611,
            'ar_name': 'غزوة الحديبية وبيعة الرضوان',
            'ug_name': 'ھۇدەيبىيە غازىتى(كېلىشىمى) ۋە رىزۋان بەيئىتى',
            'en_name': 'Battle Of Hudaybiyah And Allegiance Of Al-Radwan',
            'c': 0,
            'sa': 27
          }, subNodes: []),
          TreeNode({
            'ar_id': 612,
            'ar_name': 'غزوة حمراء الأسد',
            'ug_name': 'ھەمرائىلئەسەد غازىتى',
            'en_name': 'Battle Of Hamraa" Al-Asad',
            'c': 0,
            'sa': 4
          }, subNodes: []),
          TreeNode({
            'ar_id': 613,
            'ar_name': 'غزوة حنين',
            'ug_name': 'ھۇنەيىن غازىتى',
            'en_name': 'Battle Of Honayn',
            'c': 0,
            'sa': 3
          }, subNodes: []),
          TreeNode({
            'ar_id': 614,
            'ar_name': 'غزوة الخندق',
            'ug_name': 'خەندەك غازىتى',
            'en_name': 'Battle Khandaq',
            'c': 0,
            'sa': 19
          }, subNodes: []),
          TreeNode({
            'ar_id': 615,
            'ar_name': 'فتح مكة',
            'ug_name': 'مەككىنىڭ پەتىھ قىلنىشى',
            'en_name': 'Conquest Of Mecca',
            'c': 0,
            'sa': 3
          }, subNodes: []),
        ]),
        TreeNode({
          'ar_id': 616,
          'ar_name': 'نتائج الحرب',
          'ug_name': 'ئۇرۇشنىڭ نەتىجىللىرى',
          'en_name': 'The Results Of The War',
          'c': 5,
          'sa': 0
        }, subNodes: [
          TreeNode({
            'ar_id': 617,
            'ar_name': 'الغنائم و الانفال',
            'ug_name': 'غەنىمەتلەر ۋە ئۇنى تەقسىم قىلىش',
            'en_name': 'Bounty And Anfal',
            'c': 0,
            'sa': 12
          }, subNodes: []),
          TreeNode({
            'ar_id': 618,
            'ar_name': 'النصر حليف المظلوم',
            'ug_name': 'ئاللاھنىڭ زۇلۇمغا ئۇچرىغانلارغا  ياردەم بىرىش',
            'en_name': 'Victory Is Ally Of The Oppressed',
            'c': 0,
            'sa': 2
          }, subNodes: []),
          TreeNode({
            'ar_id': 619,
            'ar_name': 'النصر من عند الله',
            'ug_name': 'غەلبە نۇسرەتنىڭ ئاللاھ تەرپىدىن بولدىغانلىقى',
            'en_name': 'Victory Is From God',
            'c': 0,
            'sa': 30
          }, subNodes: []),
          TreeNode({
            'ar_id': 620,
            'ar_name': 'الهزيمة',
            'ug_name': 'مەغلۇبىيەت',
            'en_name': 'Defeat',
            'c': 0,
            'sa': 17
          }, subNodes: []),
          TreeNode({
            'ar_id': 621,
            'ar_name': 'من أسباب النصر',
            'ug_name': 'غەلبىنىڭ سەۋەبلىرى',
            'en_name': 'Causes For Victory',
            'c': 2,
            'sa': 0
          }, subNodes: [
            TreeNode({
              'ar_id': 622,
              'ar_name': 'الفضل الالهي',
              'ug_name': 'ئىلاھىي پەزل (ئىھسان)',
              'en_name': 'Divine Blessing',
              'c': 0,
              'sa': 11
            }, subNodes: []),
            TreeNode({
              'ar_id': 623,
              'ar_name': 'المدد الالهي',
              'ug_name': 'ئىلاھىي ياردەم',
              'en_name': 'The Divine Help',
              'c': 0,
              'sa': 12
            }, subNodes: []),
          ]),
        ]),
        TreeNode({
          'ar_id': 624,
          'ar_name': 'الهجرة',
          'ug_name': 'ھىجىرەت',
          'en_name': 'Immigration',
          'c': 4,
          'sa': 0
        }, subNodes: [
          TreeNode({
            'ar_id': 625,
            'ar_name': 'ثواب المهاجرين',
            'ug_name': 'مۇھاجىرلارنىڭ مۇكاپاتى',
            'en_name': 'The Reward Of Immigrants',
            'c': 0,
            'sa': 20
          }, subNodes: []),
          TreeNode({
            'ar_id': 626,
            'ar_name': 'هجرة الأنصار',
            'ug_name': 'ئەنسارلار',
            'en_name': 'The Migration Of Ansar',
            'c': 0,
            'sa': 2
          }, subNodes: []),
          TreeNode({
            'ar_id': 627,
            'ar_name': 'هجرة النبي صلى الله عليه وسلم',
            'ug_name': 'پەيغەمبەر ئەلەيھىسسالامنىڭ ھىجرىتى',
            'en_name': 'The Migration Of The Prophet Peace Be Upon Him',
            'c': 0,
            'sa': 1
          }, subNodes: []),
          TreeNode({
            'ar_id': 628,
            'ar_name': 'وجوبها',
            'ug_name': 'ھىجرەت قىلىشنىڭ ۋاجىبلىقى',
            'en_name': 'Obligation',
            'c': 0,
            'sa': 8
          }, subNodes: []),
        ]),
      ]),
      TreeNode({
        'ar_id': 629,
        'ar_name': 'العمل',
        'ug_name': 'ئەمەل',
        'en_name': 'Work',
        'c': 6,
        'sa': 0
      }, subNodes: [
        TreeNode({
          'ar_id': 630,
          'ar_name': 'التكليف بالعمل على قدر الإستطاعة',
          'ug_name': 'ئەمەللەرنى قۇدرىتىنىڭ يېتىشچە قىلشقا تەكلىپ قىلىنغانلىقى',
          'en_name': 'Mandate To Work As Much As Possible',
          'c': 0,
          'sa': 6
        }, subNodes: []),
        TreeNode({
          'ar_id': 631,
          'ar_name': 'الدعوة إلى العمل',
          'ug_name': 'ئەمەل - ئىبادەت قىلىشقا چاقىرىش(دەۋەت قىلىش)',
          'en_name': 'Call To Action',
          'c': 0,
          'sa': 13
        }, subNodes: []),
        TreeNode({
          'ar_id': 632,
          'ar_name': 'الجزاء',
          'ug_name': 'مۇكاپات - جازا',
          'en_name': 'Reward',
          'c': 2,
          'sa': 0
        }, subNodes: [
          TreeNode({
            'ar_id': 633,
            'ar_name': 'الجزاء بالعمل',
            'ug_name': 'ئەمەللەرنىڭ مۇكاپات - جازاسى',
            'en_name': 'Reward Depends On Work',
            'c': 0,
            'sa': 23
          }, subNodes: []),
          TreeNode({
            'ar_id': 634,
            'ar_name': 'جزاء السيئة بمثلها',
            'ug_name': 'يامانلىقنىڭ جازاسى ئۇنىڭ ئوخشىشى ئىكەنلىكى',
            'en_name': 'The Punishment Of The Bad Has To Be Similar',
            'c': 0,
            'sa': 8
          }, subNodes: []),
        ]),
        TreeNode({
          'ar_id': 635,
          'ar_name': 'العمل الصالح',
          'ug_name': 'سالىھ (ياخشى)ئەمەللەر',
          'en_name': 'Good Work',
          'c': 16,
          'sa': 0
        }, subNodes: [
          TreeNode({
            'ar_id': 636,
            'ar_name': 'الإحسان',
            'ug_name': 'ياخشىلىق قىلىش',
            'en_name': 'Charity',
            'c': 0,
            'sa': 38
          }, subNodes: []),
          TreeNode({
            'ar_id': 637,
            'ar_name': 'الإستقامة في العمل',
            'ug_name': 'ئەمەللەردە توغرا بولۇش',
            'en_name': 'Integrity At Work',
            'c': 0,
            'sa': 29
          }, subNodes: []),
          TreeNode({
            'ar_id': 638,
            'ar_name': 'إطاعة الله ورسوله وأولى الامر',
            'ug_name':
                'ئاللاھقا ، پەيغەمبەرگە ۋە ئىش ئۈستىدىكىلەرگە ئىتائەت قىلىش',
            'en_name': 'Obeying Allah And His Messenger And The Authorities',
            'c': 0,
            'sa': 23
          }, subNodes: []),
          TreeNode({
            'ar_id': 639,
            'ar_name': 'البشاشة',
            'ug_name': 'خۇش پىئىل بولۇش',
            'en_name': 'Vulgarity',
            'c': 0,
            'sa': 7
          }, subNodes: []),
          TreeNode({
            'ar_id': 640,
            'ar_name': 'تطابق العمل مع القول',
            'ug_name': 'سۆزى بىلەن ھەركىتى بىردەك بولۇش',
            'en_name': 'Match Work With Saying',
            'c': 0,
            'sa': 3
          }, subNodes: []),
          TreeNode({
            'ar_id': 641,
            'ar_name': 'التعاون مع الآخرين',
            'ug_name': 'باشقىلارغا ياردەم بىرىش',
            'en_name': 'Cooperation With Others',
            'c': 0,
            'sa': 3
          }, subNodes: []),
          TreeNode({
            'ar_id': 642,
            'ar_name': 'التقوى',
            'ug_name': 'تەقۋادارلىق',
            'en_name': 'Piety',
            'c': 0,
            'sa': 35
          }, subNodes: []),
          TreeNode({
            'ar_id': 643,
            'ar_name': 'التواضع',
            'ug_name': 'كەمتەرلىك',
            'en_name': 'Modesty',
            'c': 0,
            'sa': 7
          }, subNodes: []),
          TreeNode({
            'ar_id': 644,
            'ar_name': 'التوسط في العمل',
            'ug_name': 'ئەمەللەردە ئوتتۇرھال بولۇش',
            'en_name': 'Mediation In Action',
            'c': 0,
            'sa': 5
          }, subNodes: []),
          TreeNode({
            'ar_id': 645,
            'ar_name': 'التوكل',
            'ug_name': 'تەۋەككۇل قىلىش',
            'en_name': 'Trusting',
            'c': 0,
            'sa': 29
          }, subNodes: []),
          TreeNode({
            'ar_id': 646,
            'ar_name': 'حسن السلوك',
            'ug_name': 'مىجەز - خۇلقى ياخشى بولۇش',
            'en_name': 'Good Conduct',
            'c': 0,
            'sa': 23
          }, subNodes: []),
          TreeNode({
            'ar_id': 647,
            'ar_name': 'الدعوة إلى العمل الصالح',
            'ug_name': 'ياخشى ئەمەللەرنى قىلىشقا چاقىرىش(دەۋەت قىلىش)',
            'en_name': 'The Call To Good Work',
            'c': 0,
            'sa': 84
          }, subNodes: []),
          TreeNode({
            'ar_id': 648,
            'ar_name': 'العمل المفضي إلى البر',
            'ug_name': 'ياخشىلىققا باشلايدىغان ئەمەللەر',
            'en_name': 'Work Leading To Righteousness',
            'c': 0,
            'sa': 21
          }, subNodes: []),
          TreeNode({
            'ar_id': 649,
            'ar_name': 'العمل المفضي إلى النجاح',
            'ug_name': 'غەلبىگە(نىجاتلىققا) باشلايدىغان ئەمەللەر',
            'en_name': 'Action Leading To Success',
            'c': 0,
            'sa': 135
          }, subNodes: []),
          TreeNode({
            'ar_id': 650,
            'ar_name': 'قول التي هي أحسن',
            'ug_name': 'ياخشى سۆزلەرنى قىلىش',
            'en_name': 'Say What Is Best',
            'c': 0,
            'sa': 4
          }, subNodes: []),
          TreeNode({
            'ar_id': 651,
            'ar_name': 'المسارعة في الخيرات',
            'ug_name': 'ياخشى ئىش قىلىشقا ئالدىراش',
            'en_name': 'Speeding In Good Deeds',
            'c': 0,
            'sa': 16
          }, subNodes: []),
        ]),
        TreeNode({
          'ar_id': 652,
          'ar_name': 'العمل الطالح',
          'ug_name': 'يامان (ناچار) ئەمەللەر',
          'en_name': 'Bad Work',
          'c': 19,
          'sa': 0
        }, subNodes: [
          TreeNode({
            'ar_id': 653,
            'ar_name': 'إحباط العمل',
            'ug_name': 'قىلغان ئەمەلنىڭ  بىكار بولۇپ كىتىشى',
            'en_name': 'Abortion',
            'c': 0,
            'sa': 26
          }, subNodes: []),
          TreeNode({
            'ar_id': 654,
            'ar_name': 'اقتراف الذنب',
            'ug_name': 'جىنايەت(گۇناھ) ئۆتكۈزۈش',
            'en_name': 'Committing Sin',
            'c': 0,
            'sa': 38
          }, subNodes: []),
          TreeNode({
            'ar_id': 655,
            'ar_name': 'البغي',
            'ug_name': 'بۇزغۇنچىلىق قىلىش',
            'en_name': 'The Prostitute',
            'c': 0,
            'sa': 5
          }, subNodes: []),
          TreeNode({
            'ar_id': 656,
            'ar_name': 'التقليد في العمل',
            'ug_name': 'ئەمەللەردە تەقلىد قىلىش(ئۆرپ - ئادەتلەرگە)',
            'en_name': 'Tradition In Action',
            'c': 0,
            'sa': 16
          }, subNodes: []),
          TreeNode({
            'ar_id': 657,
            'ar_name': 'تيسير العمل',
            'ug_name': 'ئەمەللەرنى قىيىنلاشتۇرماي قولايلاشتۇرۇش',
            'en_name': 'Facilitating Work',
            'c': 0,
            'sa': 5
          }, subNodes: []),
          TreeNode({
            'ar_id': 658,
            'ar_name': 'الظلم',
            'ug_name': 'زۇلۇم',
            'en_name': 'Injustice',
            'c': 0,
            'sa': 5
          }, subNodes: []),
          TreeNode({
            'ar_id': 659,
            'ar_name': 'عبادة الأنصاب والأزلام',
            'ug_name': 'بۇتلارغا چوقۇنۇش ۋە پال ئوقلىرى بىلەن پال سېلىش',
            'en_name': 'Worship Of Monuments And Azlam',
            'c': 0,
            'sa': 3
          }, subNodes: []),
          TreeNode({
            'ar_id': 660,
            'ar_name': 'الفلاح والسعادة',
            'ug_name':
                'بەخىت سائادەتكە ئېرىشىش ئۈچۈن يامان ئەمەللەرنى تەرىك ئىتىش',
            'en_name': 'Success And Happiness',
            'c': 0,
            'sa': 38
          }, subNodes: []),
          TreeNode({
            'ar_id': 661,
            'ar_name': 'مشاقة الله',
            'ug_name': 'ئاللاھقا قارشى چىقىش',
            'en_name': 'God Adversary',
            'c': 0,
            'sa': 16
          }, subNodes: []),
          TreeNode({
            'ar_id': 662,
            'ar_name': 'النجاح في العمل',
            'ug_name': 'ئەمەللەردىكى نەتىجە',
            'en_name': 'Success At Work',
            'c': 0,
            'sa': 5
          }, subNodes: []),
          TreeNode({
            'ar_id': 663,
            'ar_name': 'وعيد المفسدين',
            'ug_name': 'بۇزغۇنچىلارغا تەھدىت قىلىنغانلىقى',
            'en_name': 'Threating The Spoilers',
            'c': 0,
            'sa': 28
          }, subNodes: []),
          TreeNode({
            'ar_id': 664,
            'ar_name': 'اليأس والقنوط',
            'ug_name': 'ئۈمىدسىزلىك',
            'en_name': 'Despair',
            'c': 0,
            'sa': 11
          }, subNodes: []),
          TreeNode({
            'ar_id': 665,
            'ar_name': 'العمل الآثم',
            'ug_name': 'گۇناھ(ناچار) ئەمەللەر',
            'en_name': 'Sinful Labor',
            'c': 0,
            'sa': 18
          }, subNodes: []),
          TreeNode({
            'ar_id': 666,
            'ar_name': 'الأعمال المحرمة',
            'ug_name': 'ھارام قىلىنغان ئەمەللەر',
            'en_name': 'Forbidden Acts',
            'c': 2,
            'sa': 0
          }, subNodes: [
            TreeNode({
              'ar_id': 667,
              'ar_name': 'أكل الميتة والدم ولحم الخنزير',
              'ug_name':
                  'ئۆلۈپ قالغان ھايۋاننى ، قاننى ۋە چوشقا گۆشنى يىيىشنىڭ ھارام ئىكەنلىكى',
              'en_name': 'Eat Dead, Blood And Pork',
              'c': 0,
              'sa': 5
            }, subNodes: []),
            TreeNode({
              'ar_id': 668,
              'ar_name': 'شرب الخمر والسكر',
              'ug_name': 'ھاراق ۋە مەس قىلغۇچى نەرسىلەرنى ئىچىشنىڭ ھاراملىقى',
              'en_name': 'Drinking Wine And Drunk State',
              'c': 0,
              'sa': 4
            }, subNodes: []),
          ]),
          TreeNode({
            'ar_id': 669,
            'ar_name': 'الخطأ في العمل',
            'ug_name': 'ئەمەلدىكى خاتالىق',
            'en_name': 'Wrong At Work',
            'c': 1,
            'sa': 0
          }, subNodes: [
            TreeNode({
              'ar_id': 670,
              'ar_name': 'ذنوب البشر سبب في الفساد في الارض',
              'ug_name':
                  'ئىنسانلارنىڭ گۇناھ سەۋەبلىك زىمىندا ئاپەتلەرنىڭ يۈز بېرىشى',
              'en_name': 'The Sins Of Mankind Caused Corruption In The Earth',
              'c': 0,
              'sa': 1
            }, subNodes: []),
          ]),
          TreeNode({
            'ar_id': 671,
            'ar_name': 'الفاحشة والزنى',
            'ug_name': 'شەھۋانىيلىق ۋە زىنا',
            'en_name': 'Fornication And Adultery',
            'c': 6,
            'sa': 0
          }, subNodes: [
            TreeNode({
              'ar_id': 672,
              'ar_name': 'إتيان النساء في غير موضعه',
              'ug_name':
                  'ئاياللارغا بەلگىلەنگەن ئورۇندىن باشقا ئورۇنلارغا يېقىنلاشماسلىق',
              'en_name': 'Intercourse With Women In The Wrong Place',
              'c': 0,
              'sa': 1
            }, subNodes: []),
            TreeNode({
              'ar_id': 673,
              'ar_name': 'الفحشاء',
              'ug_name': 'يامانلىق ۋە شەھۋانىيلىق',
              'en_name': 'Obscene',
              'c': 0,
              'sa': 19
            }, subNodes: []),
            TreeNode({
              'ar_id': 674,
              'ar_name': 'الجماع في فترة الحيض',
              'ug_name': 'ئاياللىرى ھەيىزدار مەزگىلىدە جىما قىلماسلىق',
              'en_name': 'Intercourse In The Menstrual Period',
              'c': 0,
              'sa': 2
            }, subNodes: []),
            TreeNode({
              'ar_id': 675,
              'ar_name': 'جماع قوم لوط',
              'ug_name': 'لۇت قەۋمنىڭ قەبىھ قىلمىشلىرى',
              'en_name': 'Intercourse Of The People Of Lot',
              'c': 0,
              'sa': 4
            }, subNodes: []),
            TreeNode({
              'ar_id': 676,
              'ar_name': 'الجماع المحرم',
              'ug_name': 'نىكاھ چۈشمەيدىغانلار',
              'en_name': 'Forbidden Intercourse',
              'c': 0,
              'sa': 6
            }, subNodes: []),
            TreeNode({
              'ar_id': 677,
              'ar_name': 'جماع المشركة والمشرك',
              'ug_name':
                  'مۇشرىك ئاياللارنى  ئەمرىگە ئالماسلىق  ۋە مۇشرىك ئەرلەرگە ياتلىق بولماسلىق',
              'en_name': 'Intercourse Intercourse And Polytheism',
              'c': 0,
              'sa': 1
            }, subNodes: []),
          ]),
          TreeNode({
            'ar_id': 678,
            'ar_name': 'في القول',
            'ug_name': 'گەپ - سۆزلەر',
            'en_name': 'In The Saying',
            'c': 6,
            'sa': 0
          }, subNodes: [
            TreeNode({
              'ar_id': 679,
              'ar_name': 'التحليل والتحريم',
              'ug_name': 'خالىغانچە بۇ ھالال ۋە بۇ ھارام دېمەسلىك',
              'en_name': 'Analysis And Prohibition',
              'c': 0,
              'sa': 2
            }, subNodes: []),
            TreeNode({
              'ar_id': 680,
              'ar_name': 'الحلف على معصية',
              'ug_name': 'قەسەمگە رىئايە قىلماسلىق',
              'en_name': 'Oath On Disobedience',
              'c': 0,
              'sa': 4
            }, subNodes: []),
            TreeNode({
              'ar_id': 681,
              'ar_name': 'الغيبة',
              'ug_name': 'غەيۋەت',
              'en_name': 'Bad-Mouthing',
              'c': 0,
              'sa': 3
            }, subNodes: []),
            TreeNode({
              'ar_id': 682,
              'ar_name': 'كتم الشهادة',
              'ug_name': 'گۇۋاھلىقىنى يوشۇرۇش',
              'en_name': 'Mute Testimony',
              'c': 0,
              'sa': 5
            }, subNodes: []),
            TreeNode({
              'ar_id': 683,
              'ar_name': 'اللي والنجوى بالإثم',
              'ug_name': 'بۇرمىلاش ۋە گۇناھ ئىشلارنى پىچىرلىشىش',
              'en_name': 'Distortion And Najwa Sinning',
              'c': 0,
              'sa': 2
            }, subNodes: []),
            TreeNode({
              'ar_id': 684,
              'ar_name': 'الهمز واللمز',
              'ug_name': 'سۈخەنچى ۋە ئەيىبلىگۈچى',
              'en_name': 'Hamz And Lamez',
              'c': 0,
              'sa': 4
            }, subNodes: []),
          ]),
          TreeNode({
            'ar_id': 685,
            'ar_name': 'في المال',
            'ug_name': 'پۇل - مال',
            'en_name': 'In The Money',
            'c': 6,
            'sa': 0
          }, subNodes: [
            TreeNode({
              'ar_id': 686,
              'ar_name': 'أكل الاموال بالباطل',
              'ug_name': 'باشقىلارنىڭ مال -مۈلۈكنى ناھەق يىۋېلىش',
              'en_name': 'Falsely Gain Money',
              'c': 0,
              'sa': 8
            }, subNodes: []),
            TreeNode({
              'ar_id': 687,
              'ar_name': 'التطفيف في الوزن',
              'ug_name': 'ئۆلچىگەندە كەم ئۆلچەش',
              'en_name': 'Weight-Cheating',
              'c': 0,
              'sa': 3
            }, subNodes: []),
            TreeNode({
              'ar_id': 688,
              'ar_name': 'الربا',
              'ug_name': 'جازانە',
              'en_name': 'Usury',
              'c': 0,
              'sa': 8
            }, subNodes: []),
            TreeNode({
              'ar_id': 689,
              'ar_name': 'السرقة',
              'ug_name': 'ئوغىرلىق',
              'en_name': 'Theft',
              'c': 0,
              'sa': 3
            }, subNodes: []),
            TreeNode({
              'ar_id': 690,
              'ar_name': 'كنز الذهب والفضة',
              'ug_name': 'ئالتۇن ۋە كۆمۈش توپلاش',
              'en_name': 'Treasure Of Gold And Silver',
              'c': 0,
              'sa': 6
            }, subNodes: []),
            TreeNode({
              'ar_id': 691,
              'ar_name': 'الميسر',
              'ug_name': 'قىمار',
              'en_name': 'Facilitator',
              'c': 0,
              'sa': 4
            }, subNodes: []),
          ]),
          TreeNode({
            'ar_id': 692,
            'ar_name': 'القتل والقتال',
            'ug_name': 'ئۆلتۈرۈش ۋە ئۇرۇش قىلىش',
            'en_name': 'Killing And Fighting',
            'c': 5,
            'sa': 0
          }, subNodes: [
            TreeNode({
              'ar_id': 693,
              'ar_name': 'الإنتحار',
              'ug_name': 'ئۆزنى ئۆلتۈرۋېلىش',
              'en_name': 'Suicide',
              'c': 0,
              'sa': 3
            }, subNodes: []),
            TreeNode({
              'ar_id': 694,
              'ar_name': 'القتال في المسجد الحرام والاشهر الحرم',
              'ug_name':
                  'ھەرەم مەسجىدىدە ۋە (ئۇرۇش) ھارام قىلىنغان ئايلاردا ئۇرۇش قىلىش',
              'en_name': 'Fighting In The Sacred Mosque And The Holy Month',
              'c': 0,
              'sa': 7
            }, subNodes: []),
            TreeNode({
              'ar_id': 695,
              'ar_name': 'قتل الاولاد',
              'ug_name': 'بالىلىرىنى ئۆلتۈرۈش',
              'en_name': 'Killing Children',
              'c': 0,
              'sa': 5
            }, subNodes: []),
            TreeNode({
              'ar_id': 696,
              'ar_name': 'قتل النفس التي حرم الله',
              'ug_name': 'ئاللاھ ئۆلتۈرۈشتىن چەكلىگەن ئادەمنى قەستەن  ئۆلتۈرۈش',
              'en_name': 'The Killing Of The Soul That God Has Forbidden',
              'c': 0,
              'sa': 17
            }, subNodes: []),
            TreeNode({
              'ar_id': 697,
              'ar_name': 'وأد البنات',
              'ug_name': 'قىزلارنى تىرىك كۆمدىغان ئادەت',
              'en_name': 'The Infanticide Of Girls',
              'c': 0,
              'sa': 5
            }, subNodes: []),
          ]),
        ]),
        TreeNode({
          'ar_id': 698,
          'ar_name': 'المسؤلية',
          'ug_name': 'مەسئۇلىيەت',
          'en_name': 'Responsibility',
          'c': 2,
          'sa': 0
        }, subNodes: [
          TreeNode({
            'ar_id': 699,
            'ar_name': 'انتفاء مسئولية المرء عن عمل غيره',
            'ug_name': 'بىرنىڭ قىلمىغان ئىشىدا(ئەمەلىدە) مەسئۇلىيتى يوقلۇقى',
            'en_name':
                'The Absence Of One"S Responsibility For The Work Of Another',
            'c': 0,
            'sa': 9
          }, subNodes: []),
          TreeNode({
            'ar_id': 700,
            'ar_name': 'مسئولية المرء عن عمله',
            'ug_name': 'ھەر ئادەم ئۆز ئىشىغا(ئەمەلىگە) مەسئۇل بولۇش',
            'en_name': 'One"S Responsibility For His Work',
            'c': 0,
            'sa': 47
          }, subNodes: []),
        ]),
      ]),
      TreeNode({
        'ar_id': 701,
        'ar_name': 'الانسان والعلاقات الاخلاقية',
        'ug_name': 'ئىنسان ۋە ئەخلاققا  دائىر مەزمۇنلار',
        'en_name': 'Human And Moral Relations',
        'c': 2,
        'sa': 0
      }, subNodes: [
        TreeNode({
          'ar_id': 702,
          'ar_name': 'الأخلاق الحميدة',
          'ug_name': 'مەدھىلىندىغان (ياخشى) ئەدەب- ئەخلاق',
          'en_name': 'Good Morals',
          'c': 31,
          'sa': 0
        }, subNodes: [
          TreeNode({
            'ar_id': 703,
            'ar_name': 'الاحسان',
            'ug_name': 'ياخشىلىق قىلىش',
            'en_name': 'Charity',
            'c': 0,
            'sa': 38
          }, subNodes: []),
          TreeNode({
            'ar_id': 704,
            'ar_name': 'الإستقامة',
            'ug_name': 'دۇرۇس(سەمىمىي) بولۇش',
            'en_name': 'Integrity',
            'c': 0,
            'sa': 29
          }, subNodes: []),
          TreeNode({
            'ar_id': 705,
            'ar_name': 'الإصلاح بين الناس',
            'ug_name': 'كىشلەرنىڭ ئوتتۇرسىنى  تۈزەش',
            'en_name': 'Reform Among The People',
            'c': 0,
            'sa': 3
          }, subNodes: []),
          TreeNode({
            'ar_id': 706,
            'ar_name': 'الإعتدال في الأمور',
            'ug_name': 'ئىشلارنى لايىقىدا قىلىش',
            'en_name': 'Moderation In Matters',
            'c': 0,
            'sa': 5
          }, subNodes: []),
          TreeNode({
            'ar_id': 707,
            'ar_name': 'الإعراض عن اللغو',
            'ug_name': 'بىھۇدە ئىشتىن يىراق تۇرۇش',
            'en_name': 'The Reluctance To Speak',
            'c': 0,
            'sa': 3
          }, subNodes: []),
          TreeNode({
            'ar_id': 708,
            'ar_name': 'الإقساط',
            'ug_name': 'ئادىللىق',
            'en_name': 'Installments',
            'c': 0,
            'sa': 2
          }, subNodes: []),
          TreeNode({
            'ar_id': 709,
            'ar_name': 'الإيثار',
            'ug_name': 'شەخسىيەتسىزلىك',
            'en_name': 'Altruism',
            'c': 0,
            'sa': 5
          }, subNodes: []),
          TreeNode({
            'ar_id': 710,
            'ar_name': 'البشاشة والوداعة',
            'ug_name': 'خۇش پىئىل ۋە مۇلايىملىق',
            'en_name': 'The Fragility And Softness',
            'c': 0,
            'sa': 7
          }, subNodes: []),
          TreeNode({
            'ar_id': 711,
            'ar_name': 'التواضع',
            'ug_name': 'كەمتەرلىك',
            'en_name': 'Humility',
            'c': 0,
            'sa': 6
          }, subNodes: []),
          TreeNode({
            'ar_id': 712,
            'ar_name': 'الحكمة',
            'ug_name': 'ئەقىل -پارەسەت (ھېكىمەت)',
            'en_name': 'Wisdom',
            'c': 0,
            'sa': 13
          }, subNodes: []),
          TreeNode({
            'ar_id': 713,
            'ar_name': 'دفع السيئة بالحسنة',
            'ug_name': 'يامانلىققا ياخشىلىق بىلەن تاقابىل تۇرۇش',
            'en_name': 'Pay The Bad With Good',
            'c': 0,
            'sa': 7
          }, subNodes: []),
          TreeNode({
            'ar_id': 714,
            'ar_name': 'الرحمة',
            'ug_name': 'رەھىم -شەپقەت',
            'en_name': 'Mercy',
            'c': 0,
            'sa': 3
          }, subNodes: []),
          TreeNode({
            'ar_id': 715,
            'ar_name': 'روح السلام',
            'ug_name': 'تىنىچلىق روھى',
            'en_name': 'The Spirit Of Peace',
            'c': 0,
            'sa': 11
          }, subNodes: []),
          TreeNode({
            'ar_id': 716,
            'ar_name': 'السكينة',
            'ug_name': 'تەمكىنلىك',
            'en_name': 'Nirvana',
            'c': 0,
            'sa': 5
          }, subNodes: []),
          TreeNode({
            'ar_id': 717,
            'ar_name': 'سلامة القلب',
            'ug_name': 'قەلىب ساغلاملىقى',
            'en_name': 'Heart Safety',
            'c': 0,
            'sa': 11
          }, subNodes: []),
          TreeNode({
            'ar_id': 718,
            'ar_name': 'السلوك الحسن',
            'ug_name': 'ياخشى مىجەز - خۇلق',
            'en_name': 'Good Behavior',
            'c': 0,
            'sa': 23
          }, subNodes: []),
          TreeNode({
            'ar_id': 719,
            'ar_name': 'شكر النعمة',
            'ug_name': 'نىمەتكە شۈكۈر قىلىش',
            'en_name': 'Thanksgiving',
            'c': 0,
            'sa': 16
          }, subNodes: []),
          TreeNode({
            'ar_id': 720,
            'ar_name': 'الصبر',
            'ug_name': 'سەبىر',
            'en_name': 'Patience',
            'c': 0,
            'sa': 69
          }, subNodes: []),
          TreeNode({
            'ar_id': 721,
            'ar_name': 'الصدق',
            'ug_name': 'راستچىللىق',
            'en_name': 'Honesty',
            'c': 0,
            'sa': 13
          }, subNodes: []),
          TreeNode({
            'ar_id': 722,
            'ar_name': 'العفة',
            'ug_name': 'پاكلىق',
            'en_name': 'Chastity',
            'c': 0,
            'sa': 15
          }, subNodes: []),
          TreeNode({
            'ar_id': 723,
            'ar_name': 'العفو عن الناس',
            'ug_name': 'ئەپۇ قىلىش',
            'en_name': 'Pardon People',
            'c': 0,
            'sa': 12
          }, subNodes: []),
          TreeNode({
            'ar_id': 724,
            'ar_name': 'العفو مقرونا بالصفح',
            'ug_name': 'يېقىنلىرنى ئەپۇ قىلىش كەچۈرىش',
            'en_name': 'Pardon Accompanied By Forgiveness',
            'c': 0,
            'sa': 6
          }, subNodes: []),
          TreeNode({
            'ar_id': 725,
            'ar_name': 'غض البصر وحفظ الفرج',
            'ug_name': 'كۆزنى يۇمۇش  ۋە ئەۋرەتنى ساقلاش',
            'en_name': 'Turning A Blind Eye And Avoiding Adultery',
            'c': 0,
            'sa': 7
          }, subNodes: []),
          TreeNode({
            'ar_id': 726,
            'ar_name': 'فعل الخير',
            'ug_name': 'ياخشى ھەركەتلەر',
            'en_name': 'Do Good',
            'c': 0,
            'sa': 15
          }, subNodes: []),
          TreeNode({
            'ar_id': 727,
            'ar_name': 'إكرام الضيف',
            'ug_name': 'ئاجىزلارنى ھۆرمەتلەش',
            'en_name': 'Hospitality',
            'c': 0,
            'sa': 15
          }, subNodes: []),
          TreeNode({
            'ar_id': 728,
            'ar_name': 'القصد في المشي والخفض من الصوت',
            'ug_name': 'ئوتتۇرھال مېڭىش ۋە نورمال ئاۋازدا گەپ قىلىش',
            'en_name': 'The Intent To Walk And Reduce The Sound',
            'c': 0,
            'sa': 1
          }, subNodes: []),
          TreeNode({
            'ar_id': 729,
            'ar_name': 'قول التي هي احسن',
            'ug_name': 'ياخشى سۆزلەرنى قىلىش',
            'en_name': 'Saying That It Is Better',
            'c': 0,
            'sa': 4
          }, subNodes: []),
          TreeNode({
            'ar_id': 730,
            'ar_name': 'كظم الغيظ',
            'ug_name': 'ئاچچىقىنى يۇتۇش',
            'en_name': 'Angry Anger',
            'c': 0,
            'sa': 4
          }, subNodes: []),
          TreeNode({
            'ar_id': 731,
            'ar_name': 'المسارعة في فعل الخير',
            'ug_name': 'ياخشى ئىش قىلىشقا ئالدىراش',
            'en_name': 'Speed In Doing Good',
            'c': 0,
            'sa': 16
          }, subNodes: []),
          TreeNode({
            'ar_id': 732,
            'ar_name': 'النظافة',
            'ug_name': 'پاكىزلىق',
            'en_name': 'Cleanliness',
            'c': 0,
            'sa': 6
          }, subNodes: []),
          TreeNode({
            'ar_id': 733,
            'ar_name': 'الوفاء بالعهد',
            'ug_name': 'ۋەدىسگە ۋاپا قىلىش',
            'en_name': 'Fulfilling The Covenant',
            'c': 0,
            'sa': 27
          }, subNodes: []),
        ]),
        TreeNode({
          'ar_id': 734,
          'ar_name': 'الأخلاق الذميمة',
          'ug_name': 'ئەيىبلىندىغان (رەزىل) ئەخلاقسىزلىق',
          'en_name': 'Malicious Ethics',
          'c': 61,
          'sa': 0
        }, subNodes: [
          TreeNode({
            'ar_id': 735,
            'ar_name': 'إتباع الشهوات',
            'ug_name': 'ھەۋەسلەرگە  ئەگىشىش',
            'en_name': 'Follow The Desires',
            'c': 0,
            'sa': 1
          }, subNodes: []),
          TreeNode({
            'ar_id': 736,
            'ar_name': 'الأثرة',
            'ug_name': 'چىقىم قىلىش',
            'en_name': 'Expense',
            'c': 0,
            'sa': 2
          }, subNodes: []),
          TreeNode({
            'ar_id': 737,
            'ar_name': 'الإختيال والعجب',
            'ug_name': 'تەككەببۇرلۇق ۋە ئۆزىگە مەپتۇن بولۇش',
            'en_name': 'Arrogance And Narcissism',
            'c': 0,
            'sa': 4
          }, subNodes: []),
          TreeNode({
            'ar_id': 738,
            'ar_name': 'استراق السمع',
            'ug_name': 'ئوغرىلىقچە ئاڭلاش',
            'en_name': 'Overhear',
            'c': 0,
            'sa': 2
          }, subNodes: []),
          TreeNode({
            'ar_id': 739,
            'ar_name': 'الاستكبار',
            'ug_name': 'چوڭچىللىق (تەكەببۇرلۇق) قىلىش',
            'en_name': 'Arrogance',
            'c': 0,
            'sa': 11
          }, subNodes: []),
          TreeNode({
            'ar_id': 740,
            'ar_name': 'الاسراف',
            'ug_name': 'چەكتىن(ھەددىدىن) ئېشىش',
            'en_name': 'Extravagant',
            'c': 0,
            'sa': 20
          }, subNodes: []),
          TreeNode({
            'ar_id': 741,
            'ar_name': 'الاسى على ما فات',
            'ug_name': 'ئۆتكەن ئىشلارغا قايغۇرۇش',
            'en_name': 'The Sorrow Over The Past',
            'c': 0,
            'sa': 2
          }, subNodes: []),
          TreeNode({
            'ar_id': 742,
            'ar_name': 'أطاعة المسرفين',
            'ug_name': 'ھەددىدىن ئاشقۇچىلارغا ئىتائەت قىلىش',
            'en_name': 'Obedience To The Extravagant',
            'c': 0,
            'sa': 1
          }, subNodes: []),
          TreeNode({
            'ar_id': 743,
            'ar_name': 'الإفتراء على الله والرسول',
            'ug_name': 'ئاللاھقا ۋە پەيغەمبەرگە تۆھمەت قىلىش',
            'en_name': 'The Slander On Allah And The Messenger',
            'c': 0,
            'sa': 40
          }, subNodes: []),
          TreeNode({
            'ar_id': 744,
            'ar_name': 'الإفساد',
            'ug_name': 'بۇزۇقچىلىق قىلىش',
            'en_name': 'Corruption',
            'c': 0,
            'sa': 10
          }, subNodes: []),
          TreeNode({
            'ar_id': 745,
            'ar_name': 'البخل',
            'ug_name': 'بېخىل',
            'en_name': 'Scorn',
            'c': 0,
            'sa': 42
          }, subNodes: []),
          TreeNode({
            'ar_id': 746,
            'ar_name': 'البطر',
            'ug_name': 'چوڭچىلىق',
            'en_name': 'Bitter',
            'c': 0,
            'sa': 1
          }, subNodes: []),
          TreeNode({
            'ar_id': 747,
            'ar_name': 'البغاء',
            'ug_name': 'پاھىشە',
            'en_name': 'Prostitution',
            'c': 0,
            'sa': 1
          }, subNodes: []),
          TreeNode({
            'ar_id': 748,
            'ar_name': 'البغض',
            'ug_name': 'ئۆچمەنلىك',
            'en_name': 'Hatred',
            'c': 0,
            'sa': 2
          }, subNodes: []),
          TreeNode({
            'ar_id': 749,
            'ar_name': 'البغي',
            'ug_name': 'زۇلۇم(پىتنە - پاسات)',
            'en_name': 'The Prostitute',
            'c': 0,
            'sa': 7
          }, subNodes: []),
          TreeNode({
            'ar_id': 750,
            'ar_name': 'البهتان',
            'ug_name': 'بوھتان قىلىش(قارا چاپلاش)',
            'en_name': 'Fading',
            'c': 0,
            'sa': 20
          }, subNodes: []),
          TreeNode({
            'ar_id': 751,
            'ar_name': 'التبذير',
            'ug_name': 'ئىسراپچىلىق',
            'en_name': 'Wastefulness',
            'c': 0,
            'sa': 5
          }, subNodes: []),
          TreeNode({
            'ar_id': 752,
            'ar_name': 'التجسس',
            'ug_name': 'ئەيىب ئىزدەش',
            'en_name': 'Espionage',
            'c': 0,
            'sa': 2
          }, subNodes: []),
          TreeNode({
            'ar_id': 753,
            'ar_name': 'التشييع للاخبار الكاذبة',
            'ug_name': 'يالغان خەۋەر تارقىتىش',
            'en_name': 'Conviction Of False News',
            'c': 0,
            'sa': 3
          }, subNodes: []),
          TreeNode({
            'ar_id': 754,
            'ar_name': 'التكبر',
            'ug_name': 'تەكەببۇرلۇق',
            'en_name': 'Arrogance',
            'c': 0,
            'sa': 34
          }, subNodes: []),
          TreeNode({
            'ar_id': 755,
            'ar_name': 'التنابز بالالقاب',
            'ug_name': 'يامان لەقەم بىلەن چاقىرىش',
            'en_name': 'Calling Names',
            'c': 0,
            'sa': 1
          }, subNodes: []),
          TreeNode({
            'ar_id': 756,
            'ar_name': 'الجهر بالسوء',
            'ug_name': 'يامان سۆز',
            'en_name': 'To Speak Evil',
            'c': 0,
            'sa': 2
          }, subNodes: []),
          TreeNode({
            'ar_id': 757,
            'ar_name': 'الجبن',
            'ug_name': 'توخۇ يۈرەك(قورقۇنچاقلىق)',
            'en_name': 'Coward',
            'c': 0,
            'sa': 10
          }, subNodes: []),
          TreeNode({
            'ar_id': 758,
            'ar_name': 'الجهر بالقول السيئ',
            'ug_name': 'يامان سۆز قىلىش',
            'en_name': 'Uttering The Bad Word',
            'c': 0,
            'sa': 1
          }, subNodes: []),
          TreeNode({
            'ar_id': 759,
            'ar_name': 'الحسد',
            'ug_name': 'ھەسەتخورلۇق',
            'en_name': 'Envy',
            'c': 0,
            'sa': 8
          }, subNodes: []),
          TreeNode({
            'ar_id': 760,
            'ar_name': 'الخبث',
            'ug_name': 'رەزىللىك(بۇزۇقلۇق)',
            'en_name': 'Slag',
            'c': 0,
            'sa': 15
          }, subNodes: []),
          TreeNode({
            'ar_id': 761,
            'ar_name': 'الرأي الفطير',
            'ug_name': 'ئەخمەق پىكىر',
            'en_name': 'Folly Opinion',
            'c': 0,
            'sa': 1
          }, subNodes: []),
          TreeNode({
            'ar_id': 762,
            'ar_name': 'الرياء',
            'ug_name': 'رىيا',
            'en_name': 'Showing Off',
            'c': 0,
            'sa': 5
          }, subNodes: []),
          TreeNode({
            'ar_id': 763,
            'ar_name': 'السخرية',
            'ug_name': 'مەسخىرە',
            'en_name': 'Irony',
            'c': 0,
            'sa': 37
          }, subNodes: []),
          TreeNode({
            'ar_id': 764,
            'ar_name': 'سوء الظن',
            'ug_name': 'يامان گۇمان (خاتا قاراشلار)',
            'en_name': 'Misconceptions',
            'c': 0,
            'sa': 8
          }, subNodes: []),
          TreeNode({
            'ar_id': 765,
            'ar_name': 'الطمع',
            'ug_name': 'تەمەخورلۇق(ئاچ كۆزلۈك)',
            'en_name': 'Greed',
            'c': 0,
            'sa': 4
          }, subNodes: []),
          TreeNode({
            'ar_id': 766,
            'ar_name': 'العهارة',
            'ug_name': 'بۇزۇقچىلىق قىلىش(زىنا قىلىش)',
            'en_name': 'Prostitution',
            'c': 0,
            'sa': 1
          }, subNodes: []),
          TreeNode({
            'ar_id': 767,
            'ar_name': 'الغرور',
            'ug_name': 'شۆھرەتپەرەسلىك',
            'en_name': 'Vanity',
            'c': 0,
            'sa': 13
          }, subNodes: []),
          TreeNode({
            'ar_id': 768,
            'ar_name': 'الغش',
            'ug_name': 'ئالدامچىلىق',
            'en_name': 'Cheating',
            'c': 0,
            'sa': 3
          }, subNodes: []),
          TreeNode({
            'ar_id': 769,
            'ar_name': 'الغضب',
            'ug_name': 'ئاچچىقلىنىش',
            'en_name': 'Anger',
            'c': 0,
            'sa': 10
          }, subNodes: []),
          TreeNode({
            'ar_id': 770,
            'ar_name': 'الغفلة',
            'ug_name': 'غەپلەت(غاپىل)',
            'en_name': 'Inaction',
            'c': 0,
            'sa': 16
          }, subNodes: []),
          TreeNode({
            'ar_id': 771,
            'ar_name': 'الغل',
            'ug_name': 'دۈشمەنلىك',
            'en_name': 'Gull',
            'c': 0,
            'sa': 4
          }, subNodes: []),
          TreeNode({
            'ar_id': 772,
            'ar_name': 'الغيبة',
            'ug_name': 'غەيۋەت',
            'en_name': 'Bad-Mouthing',
            'c': 0,
            'sa': 2
          }, subNodes: []),
          TreeNode({
            'ar_id': 773,
            'ar_name': 'الغيرة',
            'ug_name': 'ھەسەتخورلۇق',
            'en_name': 'Jealousy',
            'c': 0,
            'sa': 1
          }, subNodes: []),
          TreeNode({
            'ar_id': 774,
            'ar_name': 'الفجور',
            'ug_name': 'ئەخلاقسىزلىق',
            'en_name': 'Debauchery',
            'c': 0,
            'sa': 7
          }, subNodes: []),
          TreeNode({
            'ar_id': 775,
            'ar_name': 'الفساد',
            'ug_name': 'بۇزۇقچىلىق',
            'en_name': 'Corruption',
            'c': 0,
            'sa': 32
          }, subNodes: []),
          TreeNode({
            'ar_id': 776,
            'ar_name': 'الفسق',
            'ug_name': 'پاسىقلىق(ئاللاھنىڭ ئىتائىتىدىن چىقىپ كىتىش)',
            'en_name': 'Despair',
            'c': 0,
            'sa': 32
          }, subNodes: []),
          TreeNode({
            'ar_id': 777,
            'ar_name': 'الفضول',
            'ug_name': 'مۇناسىۋەتسىز ئىشلارغا ئارلىشىش',
            'en_name': 'Curiosity',
            'c': 0,
            'sa': 2
          }, subNodes: []),
          TreeNode({
            'ar_id': 778,
            'ar_name': 'الفضيحة',
            'ug_name': 'رەسۋالىق(يامانلىق)',
            'en_name': 'Scandal',
            'c': 0,
            'sa': 1
          }, subNodes: []),
          TreeNode({
            'ar_id': 779,
            'ar_name': 'الفعل المخالف للقول',
            'ug_name': 'سۆز ۋە ھەركىتى بىردەك بولماسلىق',
            'en_name': 'Act Contrary To Saying',
            'c': 0,
            'sa': 2
          }, subNodes: []),
          TreeNode({
            'ar_id': 780,
            'ar_name': 'الفواحش',
            'ug_name': 'قەبىھ سۆز - ھەركەتلەر',
            'en_name': 'Infamous',
            'c': 0,
            'sa': 3
          }, subNodes: []),
          TreeNode({
            'ar_id': 781,
            'ar_name': 'القساوة',
            'ug_name': 'رەھىمسىزلىك(قەلىبنىڭ قېتىپ كەتكەنلىكى)',
            'en_name': 'Hardness',
            'c': 0,
            'sa': 6
          }, subNodes: []),
          TreeNode({
            'ar_id': 782,
            'ar_name': 'الكذب',
            'ug_name': 'يالغانچىلىق',
            'en_name': 'Lying',
            'c': 0,
            'sa': 8
          }, subNodes: []),
          TreeNode({
            'ar_id': 783,
            'ar_name': 'الكفران',
            'ug_name': 'كاپىرىلىق (ناشۈكۈرلۈك)',
            'en_name': 'Ingratitude',
            'c': 0,
            'sa': 18
          }, subNodes: []),
          TreeNode({
            'ar_id': 784,
            'ar_name': 'لغو القول',
            'ug_name': 'بىھۇدە سۆز',
            'en_name': 'Inefficient Speak',
            'c': 0,
            'sa': 7
          }, subNodes: []),
          TreeNode({
            'ar_id': 785,
            'ar_name': 'اللمز',
            'ug_name': 'ئەيىبلىگۈچى',
            'en_name': 'Lamz',
            'c': 0,
            'sa': 4
          }, subNodes: []),
          TreeNode({
            'ar_id': 786,
            'ar_name': 'اللهو واللعب',
            'ug_name': 'ئويۇن - تاماشا',
            'en_name': 'Fun And Play',
            'c': 0,
            'sa': 11
          }, subNodes: []),
          TreeNode({
            'ar_id': 787,
            'ar_name': 'المخاصمة والمنازعة',
            'ug_name': 'جېدەل - ماجرا ۋە تالاش تارتىش',
            'en_name': 'Conflicting And Adversity',
            'c': 0,
            'sa': 6
          }, subNodes: []),
          TreeNode({
            'ar_id': 788,
            'ar_name': 'المسافحة',
            'ug_name': 'نىكاھسىز بىللە بولۇش',
            'en_name': 'Handshake',
            'c': 0,
            'sa': 3
          }, subNodes: []),
          TreeNode({
            'ar_id': 789,
            'ar_name': 'مساوئ الاخلاق',
            'ug_name': 'ناچار ئەخلاقلار',
            'en_name': 'The Bad Morals',
            'c': 0,
            'sa': 5
          }, subNodes: []),
          TreeNode({
            'ar_id': 790,
            'ar_name': 'المكر',
            'ug_name': 'ئالدامچىلىق(ھىيلە قىلىش)',
            'en_name': 'Deception',
            'c': 0,
            'sa': 20
          }, subNodes: []),
          TreeNode({
            'ar_id': 791,
            'ar_name': 'منع الخيرات',
            'ug_name': 'ياخشىلىق قىلىشتىن توسۇش',
            'en_name': 'Prevention Of Goods',
            'c': 0,
            'sa': 16
          }, subNodes: []),
          TreeNode({
            'ar_id': 792,
            'ar_name': 'المن والاذى في الصدقات',
            'ug_name': 'خەير -ساخاۋەت قىلغاندا  مىننەت قىلىش ۋە ئازار بىرىش',
            'en_name': 'Harm In Charity',
            'c': 0,
            'sa': 4
          }, subNodes: []),
          TreeNode({
            'ar_id': 793,
            'ar_name': 'نقض العهد',
            'ug_name': 'ھەدىنى بۇزۇش',
            'en_name': 'Revoke Covenant',
            'c': 0,
            'sa': 9
          }, subNodes: []),
          TreeNode({
            'ar_id': 794,
            'ar_name': 'النميمة',
            'ug_name': 'سۈخەنچىلىك قىلىش',
            'en_name': 'Gossip',
            'c': 0,
            'sa': 3
          }, subNodes: []),
          TreeNode({
            'ar_id': 795,
            'ar_name': 'الهمز',
            'ug_name': 'گەپ توشۇغۇچى(سۈخەنچى)',
            'en_name': 'Hamz',
            'c': 0,
            'sa': 3
          }, subNodes: []),
        ]),
      ]),
      TreeNode({
        'ar_id': 796,
        'ar_name': 'الانسان والعلاقات الاجتماعية',
        'ug_name': 'ئىنسان ۋە ئىجتىمائىي ئالاقىگە  دائىر مەزمۇنلار',
        'en_name': 'Human And Social Relations',
        'c': 12,
        'sa': 0
      }, subNodes: [
        TreeNode({
          'ar_id': 797,
          'ar_name': 'التسري',
          'ug_name': 'خوتۇن ئېلىش(يوشۇرۇن پاھىشنى كۆزلىمىگەن ھالدا)',
          'en_name': 'Concealing',
          'c': 0,
          'sa': 1
        }, subNodes: []),
        TreeNode({
          'ar_id': 798,
          'ar_name': 'الخصيان',
          'ug_name': 'ئاختا (ھەرەم ئاغىچىسى)',
          'en_name': 'Castration',
          'c': 0,
          'sa': 3
        }, subNodes: []),
        TreeNode({
          'ar_id': 799,
          'ar_name': 'الرجال',
          'ug_name': 'ئەرلەر',
          'en_name': 'Men',
          'c': 0,
          'sa': 27
        }, subNodes: []),
        TreeNode({
          'ar_id': 800,
          'ar_name': 'الرجل والمرأة',
          'ug_name': 'ئەر ۋە ئايال',
          'en_name': 'Men And Women',
          'c': 0,
          'sa': 132
        }, subNodes: []),
        TreeNode({
          'ar_id': 801,
          'ar_name': 'ذوي القربة',
          'ug_name': 'تۇققانلار',
          'en_name': 'Those Who Are Close To Us',
          'c': 0,
          'sa': 28
        }, subNodes: []),
        TreeNode({
          'ar_id': 802,
          'ar_name': 'الأسرة',
          'ug_name': 'ئائىلە',
          'en_name': 'Family',
          'c': 28,
          'sa': 0
        }, subNodes: [
          TreeNode({
            'ar_id': 803,
            'ar_name': 'الإستذان في وقت الخلوة',
            'ug_name':
                'ئەر - ئايال خالىي قالغان  ۋاقىتتا  بالىلار ۋە باشقىلارنىڭ ئۇلارنىڭ يېنىغا ئىجازەت سوراپ كىرىشى',
            'en_name': 'Permition The Time Of Solitude',
            'c': 0,
            'sa': 3
          }, subNodes: []),
          TreeNode({
            'ar_id': 804,
            'ar_name': 'عدم إكره الإماء على البغاء',
            'ug_name': 'قۇل ۋە چۆرىلەرنى پاھىشغا مەجبۇرلىماسلىق',
            'en_name': 'Not To Force Slave To Prostitution',
            'c': 0,
            'sa': 1
          }, subNodes: []),
          TreeNode({
            'ar_id': 805,
            'ar_name': 'الإستعفاف',
            'ug_name':
                'ئۆيلىنىشكە قۇدرىتى يەتمەيدىغانلار((پۇل مال سەۋەبىدىن) )',
            'en_name': 'Wooing',
            'c': 0,
            'sa': 1
          }, subNodes: []),
          TreeNode({
            'ar_id': 806,
            'ar_name': 'نكاح الأيامى والعبيد والإماء',
            'ug_name': 'بويتاق ئەر ، قۇل ۋە چۆرىلەرنىڭ بېشىنى ئوڭشاپ قويۇش',
            'en_name': 'The Marriage Of The Slaves',
            'c': 0,
            'sa': 1
          }, subNodes: []),
          TreeNode({
            'ar_id': 807,
            'ar_name': 'الأولاد',
            'ug_name': 'بالىلار',
            'en_name': 'Children',
            'c': 0,
            'sa': 17
          }, subNodes: []),
          TreeNode({
            'ar_id': 808,
            'ar_name': 'الإيلاء',
            'ug_name': 'يېقىنچىلىق قىلماسلىققا قەسەم ئىچىش',
            'en_name': 'Ilaa',
            'c': 0,
            'sa': 2
          }, subNodes: []),
          TreeNode({
            'ar_id': 809,
            'ar_name': 'التحكيم قبل الطلاق',
            'ug_name': 'تالاقتىن بۇرۇن مۇرەسسە قىلىش(ئەپلەشتۈرۈش)',
            'en_name': 'Arbitration Before Divorce',
            'c': 0,
            'sa': 1
          }, subNodes: []),
          TreeNode({
            'ar_id': 810,
            'ar_name': 'التعدد',
            'ug_name': 'كۆپ خوتۇنلۇق بولۇش',
            'en_name': 'Polygamy',
            'c': 0,
            'sa': 1
          }, subNodes: []),
          TreeNode({
            'ar_id': 811,
            'ar_name': 'تكوين الاسرة',
            'ug_name': 'ئائىلىنىڭ شەكىللىنىشى',
            'en_name': 'Family Composition',
            'c': 0,
            'sa': 3
          }, subNodes: []),
          TreeNode({
            'ar_id': 812,
            'ar_name': 'ميراث المرأة المتوفى زوجها',
            'ug_name': 'ئېرى ئۆلۈپ كەتكەن ئايالنىڭ مىراسى',
            'en_name': 'The Inheritance Of The Woman From Her Husband',
            'c': 0,
            'sa': 1
          }, subNodes: []),
          TreeNode({
            'ar_id': 813,
            'ar_name': 'حق الوالدين',
            'ug_name': 'ئاتا- ئانىلارنڭ ھەق - ھوقۇقى',
            'en_name': 'The Right Of Parents',
            'c': 0,
            'sa': 14
          }, subNodes: []),
          TreeNode({
            'ar_id': 814,
            'ar_name': 'الحمل والارضاع',
            'ug_name': 'ھامىلىدارلىق ۋە بالا ئېمىتىش',
            'en_name': 'Aries And Breastfeeding',
            'c': 0,
            'sa': 4
          }, subNodes: []),
          TreeNode({
            'ar_id': 815,
            'ar_name': 'خطبة النساء اثناء العدة',
            'ug_name':
                'ئىددىتى توشمىغان ئاياللارغا (ئەمرىگە ئېلىش  توغرىسدا) سۆز قىلىش',
            'en_name': 'Women"S Marriage Asking While In Mourning',
            'c': 0,
            'sa': 1
          }, subNodes: []),
          TreeNode({
            'ar_id': 816,
            'ar_name': 'الصداق',
            'ug_name': 'تويلۇق(مەھرى)',
            'en_name': 'Dowry',
            'c': 0,
            'sa': 7
          }, subNodes: []),
          TreeNode({
            'ar_id': 817,
            'ar_name': 'الظهار',
            'ug_name':
                'زىھار (ئاياللىرىنى سەن مەن ئۈچۈن ئانامنىڭ ئورنىدا دىيىش)',
            'en_name': 'Zahar',
            'c': 0,
            'sa': 5
          }, subNodes: []),
          TreeNode({
            'ar_id': 818,
            'ar_name': 'عداوة بعض الازواج والأولاد',
            'ug_name': 'بەز ئاياللارى ۋە بالىلىرنىڭ   ئاداۋىتى(دۈشمەنلىكى)',
            'en_name': 'Enmity Of Some Couples And Children',
            'c': 0,
            'sa': 1
          }, subNodes: []),
          TreeNode({
            'ar_id': 819,
            'ar_name': 'عدة المتوفي عنها زوجها',
            'ug_name': 'يولدىشى ئۆلۈپ كەتكەن ئايالنىڭ ئىددىتى',
            'en_name': 'Duration Of Husband Mourning',
            'c': 0,
            'sa': 1
          }, subNodes: []),
          TreeNode({
            'ar_id': 820,
            'ar_name': 'العزوبة',
            'ug_name': 'بويتاق',
            'en_name': 'Celibacy',
            'c': 0,
            'sa': 2
          }, subNodes: []),
          TreeNode({
            'ar_id': 821,
            'ar_name': 'عضل المرأة',
            'ug_name': 'ئاياللارغا بېسىم ئىشلىتىش',
            'en_name': 'Woman Inheritance Diminution',
            'c': 0,
            'sa': 1
          }, subNodes: []),
          TreeNode({
            'ar_id': 822,
            'ar_name': 'قتل الأولاد',
            'ug_name': 'بالىلارنى ئۆلتۈرۈش',
            'en_name': 'Killing Children',
            'c': 0,
            'sa': 5
          }, subNodes: []),
          TreeNode({
            'ar_id': 823,
            'ar_name': 'القوامة',
            'ug_name': 'ئەرلەر ئاياللارغا ھامىي ئىكەنلىكى',
            'en_name': 'Guardianship',
            'c': 0,
            'sa': 1
          }, subNodes: []),
          TreeNode({
            'ar_id': 824,
            'ar_name': 'اللعان',
            'ug_name': 'لەنەت قىلىش',
            'en_name': 'Damnation',
            'c': 0,
            'sa': 5
          }, subNodes: []),
          TreeNode({
            'ar_id': 825,
            'ar_name': 'من يحل نكاحه ومن يحرم',
            'ug_name': 'نىكاھ چۈشدىغان ۋە چۈشمەيدىغان كىشلەر',
            'en_name': 'Allowed And Prohibited Mariage',
            'c': 0,
            'sa': 6
          }, subNodes: []),
          TreeNode({
            'ar_id': 826,
            'ar_name': 'النشوز',
            'ug_name': 'كۆڭۈلسىزلىك',
            'en_name': 'Noshooz',
            'c': 0,
            'sa': 4
          }, subNodes: []),
          TreeNode({
            'ar_id': 827,
            'ar_name': 'النكاح',
            'ug_name': 'نىكاھ',
            'en_name': 'Marriage',
            'c': 0,
            'sa': 28
          }, subNodes: []),
          TreeNode({
            'ar_id': 828,
            'ar_name': 'نكاح المشركة ونكاح المشرك',
            'ug_name': 'مۇشرىك ئايال ۋە مۇشىرىك ئەر بىلەن نىكاھلىنىش',
            'en_name': 'The Marriage Of Infidels',
            'c': 0,
            'sa': 1
          }, subNodes: []),
          TreeNode({
            'ar_id': 829,
            'ar_name': 'وأد البنات',
            'ug_name': 'قىز بوۋاقلارنى تىرىك كۆمۈۋېتىش',
            'en_name': 'The Infanticide Of Girls',
            'c': 0,
            'sa': 3
          }, subNodes: []),
          TreeNode({
            'ar_id': 830,
            'ar_name': 'الطلاق',
            'ug_name': 'تالاق(ئاجرىشىش)',
            'en_name': 'Divorce',
            'c': 3,
            'sa': 0
          }, subNodes: [
            TreeNode({
              'ar_id': 831,
              'ar_name': 'الأحكام التي تترتب على الطلاق',
              'ug_name': 'تالاق قىلىشنىڭ ئەھكاملىرى',
              'en_name': 'Laws Of Divorce',
              'c': 0,
              'sa': 13
            }, subNodes: []),
            TreeNode({
              'ar_id': 832,
              'ar_name': 'الشروط الواجب توافرها قبل الطلاق',
              'ug_name': 'ئاجرىشىشتىن ئىلگىرى چوقۇم قىلشقا تىگىشلىك ئىشلار',
              'en_name': 'Conditions To Be Met Before Divorce',
              'c': 0,
              'sa': 3
            }, subNodes: []),
            TreeNode({
              'ar_id': 833,
              'ar_name': 'عددة الطلقات',
              'ug_name': 'تالاق قىلىشنىڭ قېتىم سانى',
              'en_name': 'Number Of Divorce Acts',
              'c': 0,
              'sa': 1
            }, subNodes: []),
          ]),
        ]),
        TreeNode({
          'ar_id': 834,
          'ar_name': 'الإنسان',
          'ug_name': 'ئىنسان',
          'en_name': 'The Human',
          'c': 12,
          'sa': 0
        }, subNodes: [
          TreeNode({
            'ar_id': 835,
            'ar_name': 'أحواله واوصافه',
            'ug_name': 'ئىنساننىڭ ئەھۋالى ۋە سۈپەتلىرى',
            'en_name': 'Conditions And Descriptions',
            'c': 0,
            'sa': 30
          }, subNodes: []),
          TreeNode({
            'ar_id': 836,
            'ar_name': 'تسخير الحيوانات له',
            'ug_name': 'ھايۋانلارنىڭ ئىنسانغا بويسۇندۇرۇپ بېرىلگەنلىكى',
            'en_name': 'Harness Animals For Him',
            'c': 0,
            'sa': 18
          }, subNodes: []),
          TreeNode({
            'ar_id': 837,
            'ar_name': 'تكريم الله أياه',
            'ug_name': 'ئاللاھنىڭ ئىنساننى ھۆرمەتلىك قىلغانلىقى',
            'en_name': 'God Honored Him',
            'c': 0,
            'sa': 2
          }, subNodes: []),
          TreeNode({
            'ar_id': 838,
            'ar_name': 'حال اكثر الناس',
            'ug_name': 'كۆپ سانلىق كىشلەرنىڭ ھالىتى',
            'en_name': 'The Situation Of The Most People',
            'c': 0,
            'sa': 29
          }, subNodes: []),
          TreeNode({
            'ar_id': 839,
            'ar_name': 'حمله الأمانة',
            'ug_name': 'ئامانەتنى ئىنساننىڭ ئۈستىگە ئالغانلىقى',
            'en_name': 'Taking The Responsability',
            'c': 0,
            'sa': 1
          }, subNodes: []),
          TreeNode({
            'ar_id': 840,
            'ar_name': 'خلقه',
            'ug_name': 'ئىنساننىڭ يارتىلىشى',
            'en_name': 'His Creation',
            'c': 0,
            'sa': 41
          }, subNodes: []),
          TreeNode({
            'ar_id': 841,
            'ar_name': 'شرفه ودنوه',
            'ug_name': 'ئىنساننىڭ شەرەپلىك  ۋە چاكىنلىقى(پەسلىكى)',
            'en_name': 'Honor And Proximity',
            'c': 0,
            'sa': 156
          }, subNodes: []),
          TreeNode({
            'ar_id': 842,
            'ar_name': 'ضجره في حال الشدة ونسيانه الشكر في حال الرخاء',
            'ug_name':
                'ئىنساننىڭ جاپا -مۇشەققەتتە بىئارام بولۇشى  ۋە باياشاتلىقتا شۈكۈرنى ئۇنتۇشى',
            'en_name':
                'Weariness In The Case Of Distress And Forgetfulness In The Event Of Prosperity',
            'c': 0,
            'sa': 23
          }, subNodes: []),
          TreeNode({
            'ar_id': 843,
            'ar_name': 'طول عمره يضعفه ويعجزه',
            'ug_name': 'ئىنساننىڭ ياشانغانسىرى زەئىپلىشىپ ئاجىزلىشىدىغانلىقى',
            'en_name': 'Weakens And Incapacitated With The Age',
            'c': 0,
            'sa': 6
          }, subNodes: []),
          TreeNode({
            'ar_id': 844,
            'ar_name': 'ما في صدره',
            'ug_name': 'ئىنساننىڭ قەلبىدىكى نەرسىلەر',
            'en_name': 'What Is In His Chest',
            'c': 0,
            'sa': 7
          }, subNodes: []),
          TreeNode({
            'ar_id': 845,
            'ar_name': 'من يعبد الله على حرف',
            'ug_name': 'ئاللاھقا شەك -شۈبھە بىلەن ئىبادەت قىلدىغانلار',
            'en_name': 'Whoever Worships God On A Letter',
            'c': 0,
            'sa': 1
          }, subNodes: []),
          TreeNode({
            'ar_id': 846,
            'ar_name': 'نهيه عن تزكية النفس',
            'ug_name': 'ئىنسان ئۆزنى پاك دىيىشتىن چەكلەنگەنلىكى',
            'en_name': 'It Is Forbidden To Recommend Oneself',
            'c': 0,
            'sa': 3
          }, subNodes: []),
        ]),
        TreeNode({
          'ar_id': 847,
          'ar_name': 'التبني',
          'ug_name': 'بالا بېقىۋېلىش',
          'en_name': 'Adoption',
          'c': 2,
          'sa': 0
        }, subNodes: [
          TreeNode({
            'ar_id': 848,
            'ar_name': 'بطلانه',
            'ug_name': 'بېقۋالغان بالنىڭ ئۆزنىڭ بالىسى ھېسابلانمايدىغانلىقى',
            'en_name': 'Nullification',
            'c': 0,
            'sa': 3
          }, subNodes: []),
          TreeNode({
            'ar_id': 849,
            'ar_name': 'الزوج بمطلقة المتبنى',
            'ug_name':
                'بېقۋالغان بالا ئاجراشقان ئايالنى (بېقۋالغۇچىنىڭ)نىكاھىغا ئېلىشى',
            'en_name': 'Marrying Divorced Adopted Child"S Divorced Woman',
            'c': 0,
            'sa': 1
          }, subNodes: []),
        ]),
        TreeNode({
          'ar_id': 850,
          'ar_name': 'المجتمع',
          'ug_name': 'يىغىلىش(كېڭەش)',
          'en_name': 'Society',
          'c': 16,
          'sa': 0
        }, subNodes: [
          TreeNode({
            'ar_id': 851,
            'ar_name': 'أداب المجلس',
            'ug_name': 'كېڭەشنىڭ ئەدەپلىرى',
            'en_name': 'The Literature Of The Council',
            'c': 0,
            'sa': 3
          }, subNodes: []),
          TreeNode({
            'ar_id': 852,
            'ar_name': 'آداب الإستذان',
            'ug_name': 'ئىجازەت بىلەن كىرىشنىڭ ئەدەبلىرى',
            'en_name': 'Etiquette',
            'c': 0,
            'sa': 21
          }, subNodes: []),
          TreeNode({
            'ar_id': 853,
            'ar_name': 'ابن السبيل',
            'ug_name':
                'ئىبن سەبىللەر(پۇل مېلىدىن ئالاقىسى ئۈزلۈپ قالغان مۇساپىر)',
            'en_name': 'Son Of The Way',
            'c': 0,
            'sa': 8
          }, subNodes: []),
          TreeNode({
            'ar_id': 854,
            'ar_name': 'الإتحاد واتباع الصراط المستقيم',
            'ug_name': 'توغرا يولغا قوشۇلۇش(بىرلىشىش) ۋە ئەگىشىش',
            'en_name': 'Union And Follow The Straight Path',
            'c': 0,
            'sa': 6
          }, subNodes: []),
          TreeNode({
            'ar_id': 855,
            'ar_name': 'الإخاء',
            'ug_name': 'قېرىنداشلىق',
            'en_name': 'Brotherhood',
            'c': 0,
            'sa': 8
          }, subNodes: []),
          TreeNode({
            'ar_id': 856,
            'ar_name': 'الإصلاح بين الناس',
            'ug_name': 'كىشلەر ئارسىنى تۈزەش',
            'en_name': 'Reform Among The People',
            'c': 0,
            'sa': 7
          }, subNodes: []),
          TreeNode({
            'ar_id': 857,
            'ar_name': 'التحية والسلام وأدب الضيافة',
            'ug_name': 'سالاملىشىش ۋە مىھماندارچىلىق ئەدەبلىرى',
            'en_name': 'Greetings, Peace And Hospitality Literature',
            'c': 0,
            'sa': 23
          }, subNodes: []),
          TreeNode({
            'ar_id': 858,
            'ar_name': 'التعاون',
            'ug_name': 'ھەمكارلىق(ئۆز - ئارا ياردەم بىرىش)',
            'en_name': 'Cooperation',
            'c': 0,
            'sa': 3
          }, subNodes: []),
          TreeNode({
            'ar_id': 859,
            'ar_name': 'تغير ما بالقوم',
            'ug_name': 'ھەر قەۋم ئۆز ھالىنى ئۆزگەرتىش',
            'en_name': 'Changing The People',
            'c': 0,
            'sa': 3
          }, subNodes: []),
          TreeNode({
            'ar_id': 860,
            'ar_name': 'التقليد الأعمى',
            'ug_name': 'قارىغۇلارچە دوراش(تەقلىد قىلىش)',
            'en_name': 'Blind Imitation',
            'c': 0,
            'sa': 12
          }, subNodes: []),
          TreeNode({
            'ar_id': 861,
            'ar_name': 'الجليس',
            'ug_name': 'ھەمسۆھبەت بولۇش',
            'en_name': 'The Corps',
            'c': 0,
            'sa': 16
          }, subNodes: []),
          TreeNode({
            'ar_id': 862,
            'ar_name': 'الجماعة',
            'ug_name': 'جامائەتچىلىك',
            'en_name': 'The Community',
            'c': 0,
            'sa': 3
          }, subNodes: []),
          TreeNode({
            'ar_id': 863,
            'ar_name': 'العفو والصفح وكظم الغيظ',
            'ug_name': 'ئەپۇ قىلىش ، كەچۈرۈش ۋە ئاچچىقىنى يۇتۇش',
            'en_name': 'Pardon, Forgiveness And Anger',
            'c': 0,
            'sa': 15
          }, subNodes: []),
          TreeNode({
            'ar_id': 864,
            'ar_name': 'الذين يحبون ان يحمدوا بما لم يفعلو',
            'ug_name': 'قىلمىغان ئىشلارنىڭ مەدھىيەلىنىشنى ياخشى كۆردىغانلار',
            'en_name': 'Those Who Love To Be Praised For What They Did Not Do',
            'c': 0,
            'sa': 1
          }, subNodes: []),
          TreeNode({
            'ar_id': 865,
            'ar_name': 'المودة',
            'ug_name': 'دوستلۇق(مۇھەببەت)',
            'en_name': 'Affection',
            'c': 0,
            'sa': 15
          }, subNodes: []),
          TreeNode({
            'ar_id': 866,
            'ar_name': 'الوصية بالجار والصاحب والمملوك',
            'ug_name':
                'قوشنىغا، ھەمراھىغا ۋە مالايلارغا ياخشى مۇئامىلە قىلىش(كۆيۈنۈش)',
            'en_name': 'Being Kind To The Neighbor, The Friend And The Servant',
            'c': 0,
            'sa': 1
          }, subNodes: []),
        ]),
        TreeNode({
          'ar_id': 867,
          'ar_name': 'المجتمعات',
          'ug_name': 'جەمئىيەتلەر(توپلار)',
          'en_name': 'Communities',
          'c': 8,
          'sa': 0
        }, subNodes: [
          TreeNode({
            'ar_id': 868,
            'ar_name': 'اختلاف الناس',
            'ug_name': 'كىشلەرنىڭ (يەھۇدى ۋە ناسارالارنىڭ )ئىختىلاپ قىلىش',
            'en_name': 'The Difference Of People',
            'c': 0,
            'sa': 27
          }, subNodes: []),
          TreeNode({
            'ar_id': 869,
            'ar_name': 'الاعراب',
            'ug_name': 'ئەئرابىيلار',
            'en_name': 'Expressions',
            'c': 0,
            'sa': 22
          }, subNodes: []),
          TreeNode({
            'ar_id': 870,
            'ar_name': 'التفاضل بين المجتمعات',
            'ug_name': 'جەمئىيەتلەر(توپلار) ئارىسىدىكى پەرق',
            'en_name': 'Differentiation Between Communities',
            'c': 0,
            'sa': 18
          }, subNodes: []),
          TreeNode({
            'ar_id': 871,
            'ar_name': 'جعلهم خلائف',
            'ug_name':
                'ئاللاھ ئىنسانلارنى زېمىننىڭ ئىزباسارلىرى(خەلىپىسى) قىلغانلىقى',
            'en_name': 'Make Them Inheritors',
            'c': 0,
            'sa': 8
          }, subNodes: []),
          TreeNode({
            'ar_id': 872,
            'ar_name': 'خلقهم من نفس واحدة',
            'ug_name':
                'ئىنسانلارنىڭ بىر ئىنساندىن (ئادەم ئەلەيھىسسالامدىن) يارتىلغانلىقى',
            'en_name': 'Create Them From The Same One',
            'c': 0,
            'sa': 38
          }, subNodes: []),
          TreeNode({
            'ar_id': 873,
            'ar_name': 'الشعوب والقبائل والفرق',
            'ug_name': 'مىللەت ، قەبىلە ۋە گورۇھ',
            'en_name': 'Peoples, Tribes And Teams',
            'c': 0,
            'sa': 33
          }, subNodes: []),
          TreeNode({
            'ar_id': 874,
            'ar_name': 'العرب',
            'ug_name': 'ئەرەبلەر',
            'en_name': 'The Arabs',
            'c': 0,
            'sa': 13
          }, subNodes: []),
          TreeNode({
            'ar_id': 875,
            'ar_name': 'لكل أمة أجل',
            'ug_name': 'ھەر بىر ئۈممەتنىڭ مۇئەييەن ۋاقتى بولدىغانلىقى',
            'en_name': 'For Every Nation"S Is A Date',
            'c': 0,
            'sa': 8
          }, subNodes: []),
        ]),
        TreeNode({
          'ar_id': 876,
          'ar_name': 'النساء',
          'ug_name': 'ئاياللار',
          'en_name': 'Women',
          'c': 2,
          'sa': 0
        }, subNodes: [
          TreeNode({
            'ar_id': 877,
            'ar_name': 'الحجاب',
            'ug_name': 'ھىجاب',
            'en_name': 'The Veil',
            'c': 0,
            'sa': 6
          }, subNodes: []),
          TreeNode({
            'ar_id': 878,
            'ar_name': 'المرأة',
            'ug_name': 'ئاياللار',
            'en_name': 'Woman',
            'c': 0,
            'sa': 41
          }, subNodes: []),
        ]),
        TreeNode({
          'ar_id': 879,
          'ar_name': 'اليتامى',
          'ug_name': 'يېتىملەر',
          'en_name': 'Orphans',
          'c': 2,
          'sa': 0
        }, subNodes: [
          TreeNode({
            'ar_id': 880,
            'ar_name': 'اكرامهم',
            'ug_name': 'يېتىملەرنى ھۆرمەتلەش',
            'en_name': 'Honor Them',
            'c': 0,
            'sa': 31
          }, subNodes: []),
          TreeNode({
            'ar_id': 881,
            'ar_name': 'الوصاية عليهم',
            'ug_name': 'يېتىملەرگە ھامىيلىق قىلىش',
            'en_name': 'Guardianship',
            'c': 0,
            'sa': 1
          }, subNodes: []),
        ]),
      ]),
      TreeNode({
        'ar_id': 882,
        'ar_name': 'تنظيم العلاقات المالية',
        'ug_name': 'مال -مۆلۈككە ئالاقىدار  نىزاملار',
        'en_name': 'Organization Of Financial Relations',
        'c': 27,
        'sa': 0
      }, subNodes: [
        TreeNode({
          'ar_id': 883,
          'ar_name': 'الإشهاد على التبايع وقبض الرهان',
          'ug_name': 'ئېلىم -سېتىمغا گۇۋاھلىق بىرىش ۋە گۆرۈ قويۇش',
          'en_name': 'The Testimony On The Delay And The Seizure Of The Bet',
          'c': 0,
          'sa': 2
        }, subNodes: []),
        TreeNode({
          'ar_id': 884,
          'ar_name': 'اكتسابها',
          'ug_name': 'پۇل - مالغا ئىرىشىش',
          'en_name': 'Acquired',
          'c': 0,
          'sa': 13
        }, subNodes: []),
        TreeNode({
          'ar_id': 885,
          'ar_name': 'الأمانة',
          'ug_name': 'ئامانەت',
          'en_name': 'Responsability',
          'c': 0,
          'sa': 11
        }, subNodes: []),
        TreeNode({
          'ar_id': 886,
          'ar_name': 'الأموال',
          'ug_name': 'پۇل - مال',
          'en_name': 'Money',
          'c': 0,
          'sa': 35
        }, subNodes: []),
        TreeNode({
          'ar_id': 887,
          'ar_name': 'أموال السفهاء',
          'ug_name': 'پۇل -ماللارنى ئەخمەقلەرگە تۇتقۇزماسلىق',
          'en_name': 'Fools Funds',
          'c': 0,
          'sa': 1
        }, subNodes: []),
        TreeNode({
          'ar_id': 888,
          'ar_name': 'أموال الكفار',
          'ug_name': 'كاپىرلانڭ مال -مۈلۈكى',
          'en_name': 'Money Of Infidels',
          'c': 0,
          'sa': 15
        }, subNodes: []),
        TreeNode({
          'ar_id': 889,
          'ar_name': 'أموال الناس',
          'ug_name': 'كىشلەرنىڭ مال - مۈلۈكى',
          'en_name': 'People"S Money',
          'c': 0,
          'sa': 4
        }, subNodes: []),
        TreeNode({
          'ar_id': 890,
          'ar_name': 'أموال النساء',
          'ug_name': 'ئاياللارنڭ مال - مۈلۈكى',
          'en_name': 'Women"S Money',
          'c': 0,
          'sa': 5
        }, subNodes: []),
        TreeNode({
          'ar_id': 891,
          'ar_name': 'أموال اليتامى',
          'ug_name': 'يېتىملەرنىڭ مال - مۈلۈكى',
          'en_name': 'Orphan Money',
          'c': 0,
          'sa': 5
        }, subNodes: []),
        TreeNode({
          'ar_id': 892,
          'ar_name': 'انفاق الأموال',
          'ug_name': 'پۇل - مال سەرىپ قىلىش',
          'en_name': 'Spending Money',
          'c': 0,
          'sa': 66
        }, subNodes: []),
        TreeNode({
          'ar_id': 893,
          'ar_name': 'البيع',
          'ug_name': 'سودا - سېتىق',
          'en_name': 'Sale',
          'c': 0,
          'sa': 2
        }, subNodes: []),
        TreeNode({
          'ar_id': 894,
          'ar_name': 'تملك الأموال',
          'ug_name': 'مال - مۈلۈككە ئىگە بولۇش',
          'en_name': 'Own The Funds',
          'c': 0,
          'sa': 34
        }, subNodes: []),
        TreeNode({
          'ar_id': 895,
          'ar_name': 'الحجز',
          'ug_name': 'چەكلەش',
          'en_name': 'Booking',
          'c': 0,
          'sa': 1
        }, subNodes: []),
        TreeNode({
          'ar_id': 896,
          'ar_name': 'حق ذي القربى واليتامى والمساكين وابن السبيل',
          'ug_name':
              'خىش - ئەقرىبالار  ، يېتىملەر ، مىسكىنلەر ۋە ئىبن سەبىللەرنىڭ(مۇساپىرنىڭ) ھەققى',
          'en_name':
              'The Right Of Kin And Orphans And The Poor And The Waybill',
          'c': 0,
          'sa': 4
        }, subNodes: []),
        TreeNode({
          'ar_id': 897,
          'ar_name': 'الربا',
          'ug_name': 'رىبا(ئۆسۈم)',
          'en_name': 'Usury',
          'c': 0,
          'sa': 7
        }, subNodes: []),
        TreeNode({
          'ar_id': 898,
          'ar_name': 'السرقة',
          'ug_name': 'ئوغرىلىق',
          'en_name': 'Theft',
          'c': 0,
          'sa': 2
        }, subNodes: []),
        TreeNode({
          'ar_id': 899,
          'ar_name': 'الصدقة',
          'ug_name': 'سەدىقە قىلىش',
          'en_name': 'Charity',
          'c': 0,
          'sa': 16
        }, subNodes: []),
        TreeNode({
          'ar_id': 900,
          'ar_name': 'الضرائب',
          'ug_name': 'باج - سېلىق',
          'en_name': 'Taxes',
          'c': 0,
          'sa': 4
        }, subNodes: []),
        TreeNode({
          'ar_id': 901,
          'ar_name': 'العقود',
          'ug_name': 'ھۆججەت (توختام)',
          'en_name': 'Contracts',
          'c': 0,
          'sa': 1
        }, subNodes: []),
        TreeNode({
          'ar_id': 902,
          'ar_name': 'الفقراء',
          'ug_name': 'كەمبەغەل( نامرات)لار',
          'en_name': 'Poor',
          'c': 0,
          'sa': 42
        }, subNodes: []),
        TreeNode({
          'ar_id': 903,
          'ar_name': 'الكيل والميزان',
          'ug_name': 'ئۆلچەم ۋە تاراز',
          'en_name': 'The Double And The Balance',
          'c': 0,
          'sa': 18
        }, subNodes: []),
        TreeNode({
          'ar_id': 904,
          'ar_name': 'المداينة',
          'ug_name': 'قەرىز',
          'en_name': 'Lending',
          'c': 0,
          'sa': 12
        }, subNodes: []),
        TreeNode({
          'ar_id': 905,
          'ar_name': 'المشاركة',
          'ug_name': 'قاتنىشىش',
          'en_name': 'Participation',
          'c': 0,
          'sa': 5
        }, subNodes: []),
        TreeNode({
          'ar_id': 906,
          'ar_name': 'الميراث',
          'ug_name': 'مىراس',
          'en_name': 'Inheritance',
          'c': 0,
          'sa': 15
        }, subNodes: []),
        TreeNode({
          'ar_id': 907,
          'ar_name': 'الميسر',
          'ug_name': 'قىمار',
          'en_name': 'Facilitator',
          'c': 0,
          'sa': 3
        }, subNodes: []),
        TreeNode({
          'ar_id': 908,
          'ar_name': 'الغنى',
          'ug_name': 'بايلىق',
          'en_name': 'Richness',
          'c': 4,
          'sa': 0
        }, subNodes: [
          TreeNode({
            'ar_id': 909,
            'ar_name': 'الأغنياء',
            'ug_name': 'بايلار',
            'en_name': 'The Rich',
            'c': 0,
            'sa': 6
          }, subNodes: []),
          TreeNode({
            'ar_id': 910,
            'ar_name': 'طلب الغنى',
            'ug_name': 'بايلىق تەلەپ قىلىش',
            'en_name': 'Request For Riches',
            'c': 0,
            'sa': 8
          }, subNodes: []),
          TreeNode({
            'ar_id': 911,
            'ar_name': 'المترفون',
            'ug_name': 'راھەت - پاراغەتكە بېرىلگۈچىلەر',
            'en_name': 'Luxury',
            'c': 0,
            'sa': 10
          }, subNodes: []),
          TreeNode({
            'ar_id': 912,
            'ar_name': 'فتنة المال',
            'ug_name': 'مال - مۈلۈكنىڭ پىتنىسى(سىنىقى ، ئېزىقتۇرىشى)',
            'en_name': 'The Temptation Of Money',
            'c': 0,
            'sa': 35
          }, subNodes: []),
        ]),
        TreeNode({
          'ar_id': 913,
          'ar_name': 'الوصية',
          'ug_name': 'ۋەسىيەت',
          'en_name': 'The Will',
          'c': 3,
          'sa': 0
        }, subNodes: [
          TreeNode({
            'ar_id': 914,
            'ar_name': 'التحذير من الإفراط فيها',
            'ug_name':
                'ۋەسىيەت(مىراستا) ھەددىدىن نورمالسىز بولۇشتىن ئېھتىيات قىلىش',
            'en_name': 'Warning Of Excessive',
            'c': 0,
            'sa': 3
          }, subNodes: []),
          TreeNode({
            'ar_id': 915,
            'ar_name': 'التحذير من تبديلها',
            'ug_name': 'ۋەسيەتنى ئۆزگەرتىشتىن ئېھتىيات قىلىش',
            'en_name': 'Warning Of Switching',
            'c': 0,
            'sa': 1
          }, subNodes: []),
          TreeNode({
            'ar_id': 916,
            'ar_name': 'وجوبها',
            'ug_name': 'ئادىللىق بىلەن ۋەسىيەت قىلىشنىڭ پەرىزلىكى',
            'en_name': 'Obligation',
            'c': 0,
            'sa': 4
          }, subNodes: []),
        ]),
      ]),
      TreeNode({
        'ar_id': 917,
        'ar_name': 'التجارة والزراعة والصناعة',
        'ug_name': 'سودا،يېزا ئىگىلىك ۋە سانائەت',
        'en_name': 'Trade, Agriculture And Industry',
        'c': 4,
        'sa': 0
      }, subNodes: [
        TreeNode({
          'ar_id': 918,
          'ar_name': 'الزراعة',
          'ug_name': 'يېزا - ئىگىلىك',
          'en_name': 'Agriculture',
          'c': 0,
          'sa': 21
        }, subNodes: []),
        TreeNode({
          'ar_id': 919,
          'ar_name': 'الصناعة',
          'ug_name': 'سانائەت',
          'en_name': 'Industry',
          'c': 0,
          'sa': 1
        }, subNodes: []),
        TreeNode({
          'ar_id': 920,
          'ar_name': 'الصيد',
          'ug_name': 'ئوۋ ئوۋلاش',
          'en_name': 'Fishing',
          'c': 0,
          'sa': 4
        }, subNodes: []),
        TreeNode({
          'ar_id': 921,
          'ar_name': 'التجارة',
          'ug_name': 'سودا - تىجارەت',
          'en_name': 'Trade',
          'c': 4,
          'sa': 0
        }, subNodes: [
          TreeNode({
            'ar_id': 922,
            'ar_name': 'إباحتها',
            'ug_name': 'تىجارەت قىلىشقا يول قويۇلغانلىقى',
            'en_name': 'Permission',
            'c': 0,
            'sa': 4
          }, subNodes: []),
          TreeNode({
            'ar_id': 923,
            'ar_name': 'الدين',
            'ug_name': 'قەرىز',
            'en_name': 'Religion',
            'c': 0,
            'sa': 2
          }, subNodes: []),
          TreeNode({
            'ar_id': 924,
            'ar_name': 'الرهن',
            'ug_name': 'رەنە(گۆرۈ)',
            'en_name': 'Mortgage',
            'c': 0,
            'sa': 1
          }, subNodes: []),
          TreeNode({
            'ar_id': 925,
            'ar_name': 'العقود',
            'ug_name': 'ھۆججەت(توختام)',
            'en_name': 'Contracts',
            'c': 0,
            'sa': 1
          }, subNodes: []),
        ]),
      ]),
      TreeNode({
        'ar_id': 926,
        'ar_name': 'العلاقات القضائية',
        'ug_name': 'ئەدلىيەگە دائىر مەزمۇنلار',
        'en_name': 'Judicial Relations',
        'c': 3,
        'sa': 0
      }, subNodes: [
        TreeNode({
          'ar_id': 927,
          'ar_name': 'أحكام قانونية',
          'ug_name': 'قانۇن - نىزاملار',
          'en_name': 'Legal Provisions',
          'c': 5,
          'sa': 0
        }, subNodes: [
          TreeNode({
            'ar_id': 928,
            'ar_name': 'النفي',
            'ug_name': 'توسقان ۋە يولغا قويغان ھۆكۈملەر',
            'en_name': 'Negation',
            'c': 0,
            'sa': 9
          }, subNodes: []),
          TreeNode({
            'ar_id': 929,
            'ar_name': 'أحكام عامة',
            'ug_name': 'ئومۇمىي(ئاممىۋى) ئەھكاملار',
            'en_name': 'General Provisions',
            'c': 5,
            'sa': 0
          }, subNodes: [
            TreeNode({
              'ar_id': 930,
              'ar_name': 'إباحة الزينة وأكل الحلال',
              'ug_name':
                  'زىننەتلىنىش ۋە ھالال نەرسىلەرنى يېيىشكە يول  قويۇلغانلىقى',
              'en_name': 'The Permissibility Of Adornment And Eating Halal',
              'c': 0,
              'sa': 8
            }, subNodes: []),
            TreeNode({
              'ar_id': 931,
              'ar_name': 'البلوغ',
              'ug_name': 'بالاغەتكە يەتكەن بالىلار',
              'en_name': 'Puberty',
              'c': 0,
              'sa': 3
            }, subNodes: []),
            TreeNode({
              'ar_id': 932,
              'ar_name': 'الكبائر',
              'ug_name': 'چوڭ گۇناھلار',
              'en_name': 'The Sins',
              'c': 0,
              'sa': 4
            }, subNodes: []),
            TreeNode({
              'ar_id': 933,
              'ar_name': 'الوفاء بالعهد والعقد واليمين',
              'ug_name': 'ۋەدىگە، توختامغا ۋە قەسەمگە رىئايە قىلىش',
              'en_name': 'Fulfilling The Covenant, Contract And Right',
              'c': 0,
              'sa': 17
            }, subNodes: []),
            TreeNode({
              'ar_id': 934,
              'ar_name': 'الوفاء بالنذر',
              'ug_name':
                  'قەسەمنى(بىر ئىشنى قىلمەن دەپ ئاللاھقا ۋەدە  بەرگەن نەزىر) ئادا قىلىش',
              'en_name': 'Fulfill The Vow',
              'c': 0,
              'sa': 1
            }, subNodes: []),
          ]),
          TreeNode({
            'ar_id': 935,
            'ar_name': 'الجزاء',
            'ug_name': 'جازا',
            'en_name': 'Penalty',
            'c': 6,
            'sa': 0
          }, subNodes: [
            TreeNode({
              'ar_id': 936,
              'ar_name': 'جزاء السيئة',
              'ug_name': 'گۇناھ - مەسىيەتنىڭ جازاسى',
              'en_name': 'Punition Of The Sin',
              'c': 0,
              'sa': 5
            }, subNodes: []),
            TreeNode({
              'ar_id': 937,
              'ar_name': 'الصيد في الحرم',
              'ug_name': 'ھەرەمدە ئوۋ ئوۋلاش',
              'en_name': 'Hunting In The Haram',
              'c': 0,
              'sa': 1
            }, subNodes: []),
            TreeNode({
              'ar_id': 938,
              'ar_name': 'القاتل',
              'ug_name': 'قاتىل',
              'en_name': 'The Killer',
              'c': 0,
              'sa': 5
            }, subNodes: []),
            TreeNode({
              'ar_id': 939,
              'ar_name': 'الكافرين',
              'ug_name': 'كاپىرلار',
              'en_name': 'The Unbelievers',
              'c': 0,
              'sa': 1
            }, subNodes: []),
            TreeNode({
              'ar_id': 940,
              'ar_name': 'الذين يرمون ازواجهم',
              'ug_name': 'خوتۇنلىرىنى زىنا بىلەن قارلىغانلار',
              'en_name': 'Those Who Accuse Their Wifes',
              'c': 0,
              'sa': 5
            }, subNodes: []),
            TreeNode({
              'ar_id': 941,
              'ar_name': 'القصاص',
              'ug_name': 'قىساس',
              'en_name': 'The Punishment',
              'c': 0,
              'sa': 8
            }, subNodes: []),
          ]),
          TreeNode({
            'ar_id': 942,
            'ar_name': 'الحدود',
            'ug_name': 'چەك - چېگرا(بەلگىلىمىلەر)',
            'en_name': 'Border',
            'c': 5,
            'sa': 0
          }, subNodes: [
            TreeNode({
              'ar_id': 943,
              'ar_name': 'الزنا',
              'ug_name': 'زىنا قىلىش',
              'en_name': 'Adultery',
              'c': 0,
              'sa': 1
            }, subNodes: []),
            TreeNode({
              'ar_id': 944,
              'ar_name': 'زنا الإماء',
              'ug_name': 'قۇل -چۆرىلەرنىڭ زىنا قىلىشى',
              'en_name': 'The Adultery Of The Ear',
              'c': 0,
              'sa': 1
            }, subNodes: []),
            TreeNode({
              'ar_id': 945,
              'ar_name': 'السرقة',
              'ug_name': 'ئوغرىلىق',
              'en_name': 'Theft',
              'c': 0,
              'sa': 2
            }, subNodes: []),
            TreeNode({
              'ar_id': 946,
              'ar_name': 'القذف',
              'ug_name': 'پاڭ ئاياللارغا تۆھمەت چاپلاش',
              'en_name': 'Accusing People Of Mis-Dead',
              'c': 0,
              'sa': 2
            }, subNodes: []),
            TreeNode({
              'ar_id': 947,
              'ar_name': 'المحاربة',
              'ug_name':
                  'ئۇرۇش قىلغانلار(ئاللاھ ۋە رەسۇلىغا قارىشى ئۇرۇش قىلغانلار ، ياكى زېمىندا بۇزۇقچىلىق قىلغانلار)',
              'en_name': 'Fighting',
              'c': 0,
              'sa': 1
            }, subNodes: []),
          ]),
          TreeNode({
            'ar_id': 948,
            'ar_name': 'العفو',
            'ug_name': 'ئەپۇ (كەچۈرۈم قىلىش)',
            'en_name': 'Pardon',
            'c': 5,
            'sa': 0
          }, subNodes: [
            TreeNode({
              'ar_id': 949,
              'ar_name': 'الإستثناء',
              'ug_name': 'مۇستەسنا',
              'en_name': 'Exception',
              'c': 0,
              'sa': 5
            }, subNodes: []),
            TreeNode({
              'ar_id': 950,
              'ar_name': 'الإضطرار',
              'ug_name': 'مەجبۇرلۇق(ئۆز ئىختىيارىچە ئەمەس)',
              'en_name': 'Forced',
              'c': 0,
              'sa': 5
            }, subNodes: []),
            TreeNode({
              'ar_id': 951,
              'ar_name': 'الإعفاء',
              'ug_name': 'ئەپۇ(كەچۈرۈم قىلىش)',
              'en_name': 'Exemption',
              'c': 0,
              'sa': 2
            }, subNodes: []),
            TreeNode({
              'ar_id': 952,
              'ar_name': 'الترخيص',
              'ug_name': 'رۇخسەت قىلىنغان ئىشىلار',
              'en_name': 'License',
              'c': 0,
              'sa': 10
            }, subNodes: []),
            TreeNode({
              'ar_id': 953,
              'ar_name': 'التكفير',
              'ug_name': 'گۇناھلارنى يوققا چىقىرىش',
              'en_name': 'Atonement',
              'c': 0,
              'sa': 12
            }, subNodes: []),
          ]),
        ]),
        TreeNode({
          'ar_id': 954,
          'ar_name': 'تنظيمات قضائية',
          'ug_name': 'ھۆكۈم قىلىش قۇرۇلمىللىرى(ئۇسۇل - چارە)',
          'en_name': 'Judicial Organizations',
          'c': 6,
          'sa': 0
        }, subNodes: [
          TreeNode({
            'ar_id': 955,
            'ar_name': 'التثبت من الخبر',
            'ug_name': 'خەۋەرنى دەلىللەش',
            'en_name': 'Confirmation Of The News',
            'c': 0,
            'sa': 1
          }, subNodes: []),
          TreeNode({
            'ar_id': 956,
            'ar_name': 'الحكم بالعدل',
            'ug_name': 'ئادىللىق بىلەن ھۆكۈم قىلىش',
            'en_name': 'Judgment Of Justice',
            'c': 0,
            'sa': 25
          }, subNodes: []),
          TreeNode({
            'ar_id': 957,
            'ar_name': 'الظن لا يغني من الحق شيئا',
            'ug_name':
                'پەرەز ھەقىقەتنى ئىسپاتلاشتا ھىچ نەرسىگە يارمايدىغانلىقى',
            'en_name': 'The Belief Does Not Sing From The Right Thing',
            'c': 0,
            'sa': 2
          }, subNodes: []),
          TreeNode({
            'ar_id': 958,
            'ar_name': 'العدل',
            'ug_name': 'ئادالەت',
            'en_name': 'Justice',
            'c': 0,
            'sa': 19
          }, subNodes: []),
          TreeNode({
            'ar_id': 959,
            'ar_name': 'الحكم',
            'ug_name': 'ھۆكۈم',
            'en_name': 'Judgment',
            'c': 0,
            'sa': 10
          }, subNodes: []),
          TreeNode({
            'ar_id': 960,
            'ar_name': 'الشهادة',
            'ug_name': 'گۇۋاھلىق',
            'en_name': 'Certificate',
            'c': 3,
            'sa': 0
          }, subNodes: [
            TreeNode({
              'ar_id': 961,
              'ar_name': 'شهادة الزور',
              'ug_name': 'يالغان گۇۋاھلىق',
              'en_name': 'False Testimony',
              'c': 0,
              'sa': 2
            }, subNodes: []),
            TreeNode({
              'ar_id': 962,
              'ar_name': 'كتم الشهادة',
              'ug_name': 'گۇۋاھلىقنى يوشۇرۇش',
              'en_name': 'Mute Testimony',
              'c': 0,
              'sa': 2
            }, subNodes: []),
            TreeNode({
              'ar_id': 963,
              'ar_name': 'وجوب أدائها كما هي',
              'ug_name': 'گۇۋاھلىقنى توغرا ئادا قىلىشنىڭ ۋاجىبلىقى',
              'en_name': 'The Duty To Perform As It Is',
              'c': 0,
              'sa': 8
            }, subNodes: []),
          ]),
        ]),
        TreeNode({
          'ar_id': 964,
          'ar_name': 'علاقات قانونية ودستورية',
          'ug_name': 'مۇناسىۋەتلىك قانۇن ۋە دەستۇرلار',
          'en_name': 'Legal And Constitutional Relations',
          'c': 8,
          'sa': 0
        }, subNodes: [
          TreeNode({
            'ar_id': 965,
            'ar_name': 'إهلاك الأمم بسبب فسقها',
            'ug_name':
                'ئاللاھنىڭ مىللەتلەرنى پىسق - پاسات قىلغانلىقى سەۋەبدىن ھالاك قىلدىغانلىقى',
            'en_name': 'The Destruction Of The Nations Because Of Its Riddance',
            'c': 0,
            'sa': 2
          }, subNodes: []),
          TreeNode({
            'ar_id': 966,
            'ar_name': 'تكريم بني آدم',
            'ug_name': 'ئاللاھنىڭ ئادەم باللىرنى ھۆرمەتلىك قىلغانلىقى',
            'en_name': 'Honoring The Sons Of Adam',
            'c': 0,
            'sa': 1
          }, subNodes: []),
          TreeNode({
            'ar_id': 967,
            'ar_name': 'التكليف',
            'ug_name':
                'ئىنسانلارنىڭ تاقىتى يىتىدىغان ئىشلارغا تەكلىپ قىلىنغانلىقى',
            'en_name': 'Commissioning',
            'c': 0,
            'sa': 7
          }, subNodes: []),
          TreeNode({
            'ar_id': 968,
            'ar_name': 'توحيد الأمم بالدين',
            'ug_name': 'ھەممە ئۈممەتنىڭ دىنىنىڭ بىر ئىكەنلىكى',
            'en_name': 'Uniting Nations With Religion',
            'c': 0,
            'sa': 3
          }, subNodes: []),
          TreeNode({
            'ar_id': 969,
            'ar_name': 'الحق',
            'ug_name': 'ھەق(ھەقىقەت ، توغرا)',
            'en_name': 'Right',
            'c': 0,
            'sa': 33
          }, subNodes: []),
          TreeNode({
            'ar_id': 970,
            'ar_name': 'الحق يزهق الباطل',
            'ug_name': 'ھەقنىڭ باتىلنى يوقتىدىغانلىقى',
            'en_name': 'The Right To Falsehood',
            'c': 0,
            'sa': 2
          }, subNodes: []),
          TreeNode({
            'ar_id': 971,
            'ar_name': 'السيئة بمثلها',
            'ug_name': 'يامانلىقنىڭ جازاسى  يامانلىق ئىكەنلىكى',
            'en_name': 'The Bad Like It',
            'c': 0,
            'sa': 9
          }, subNodes: []),
          TreeNode({
            'ar_id': 972,
            'ar_name': 'المسؤلية الشخصية',
            'ug_name': 'شەخسى مەسئۇلىيەت',
            'en_name': 'Personal Responsibility',
            'c': 0,
            'sa': 11
          }, subNodes: []),
        ]),
      ]),
      TreeNode({
        'ar_id': 973,
        'ar_name': 'العلاقات السياسية والعامة',
        'ug_name': 'سىياسىي ۋە ئومۇمىيلىققا دائىر مەزمۇنلار',
        'en_name': 'Political And Public Relations',
        'c': 7,
        'sa': 0
      }, subNodes: [
        TreeNode({
          'ar_id': 974,
          'ar_name': 'التحركات السرية',
          'ug_name': 'مەخپى ھەركەتلەر',
          'en_name': 'Secret Movements',
          'c': 0,
          'sa': 2
        }, subNodes: []),
        TreeNode({
          'ar_id': 975,
          'ar_name': 'الحكم',
          'ug_name': 'ھۆكۈم',
          'en_name': 'Judgment',
          'c': 0,
          'sa': 25
        }, subNodes: []),
        TreeNode({
          'ar_id': 976,
          'ar_name': 'السلطة لله يؤتيها من يشاء',
          'ug_name':
              'كۈچ - قۇۋەت(سەلتەنەت)نىڭ ئاللاھقا خاس ئىكەنلىكى ئۇنى خالىغان كىشگە بىردىغانلىقى',
          'en_name': 'The Power Is Given By God To Whomever He Pleases',
          'c': 0,
          'sa': 4
        }, subNodes: []),
        TreeNode({
          'ar_id': 977,
          'ar_name': 'السلم',
          'ug_name': 'تىنچلىق ۋە سۈلھى',
          'en_name': 'Peace',
          'c': 0,
          'sa': 3
        }, subNodes: []),
        TreeNode({
          'ar_id': 978,
          'ar_name': 'الشورى',
          'ug_name': 'شۇرا(كېڭەش)',
          'en_name': 'Shura',
          'c': 0,
          'sa': 2
        }, subNodes: []),
        TreeNode({
          'ar_id': 979,
          'ar_name': 'المؤامرات',
          'ug_name': 'سۇيىقەست قىلىش',
          'en_name': 'The Plots',
          'c': 0,
          'sa': 2
        }, subNodes: []),
        TreeNode({
          'ar_id': 980,
          'ar_name': 'ولي الأمر',
          'ug_name': 'ئىش ئىگىسى(ئەمىر)',
          'en_name': 'Guardian',
          'c': 2,
          'sa': 0
        }, subNodes: [
          TreeNode({
            'ar_id': 981,
            'ar_name': 'وجوب خفض جناحه للرعية',
            'ug_name': 'ئەگەشكەنلەرگە مۇلايىم بولۇشنىڭ پەرىزلىكى',
            'en_name': 'The Need To Reduce The Wing To The People',
            'c': 0,
            'sa': 2
          }, subNodes: []),
          TreeNode({
            'ar_id': 982,
            'ar_name': 'وجوب الطاعة له',
            'ug_name':
                'ئىش ئۈستىدىكىلەرگە (ئەمىرلەرگە) ئىتائەت قىلىشنىڭ پەرىزلىكى',
            'en_name': 'Obligation To Obey Him',
            'c': 0,
            'sa': 2
          }, subNodes: []),
        ]),
      ]),
      TreeNode({
        'ar_id': 983,
        'ar_name': 'العلوم والفنون',
        'ug_name': 'ئىلىم-پەن',
        'en_name': 'Science And Arts',
        'c': 15,
        'sa': 0
      }, subNodes: [
        TreeNode({
          'ar_id': 984,
          'ar_name': 'البلاغة',
          'ug_name': 'قۇرئاندىكى بالاغەت',
          'en_name': 'Rhetoric',
          'c': 0,
          'sa': 5
        }, subNodes: []),
        TreeNode({
          'ar_id': 985,
          'ar_name': 'الحث على التفقة في الدين',
          'ug_name': 'دىندا ئالىم بولۇشقا رىغبەتلەندۈرۈش',
          'en_name': 'Urging The Knowledge Of Religion',
          'c': 0,
          'sa': 3
        }, subNodes: []),
        TreeNode({
          'ar_id': 986,
          'ar_name': 'الحث على التفكر واستخدام العقل',
          'ug_name':
              'تەپەككۇر قىلىشقا ۋە ئەقىلنى ئىشلىتىشكە ئۈندەش(قىزىقتۇرۇش)',
          'en_name': 'The Urge To Think And Use The Mind',
          'c': 0,
          'sa': 29
        }, subNodes: []),
        TreeNode({
          'ar_id': 987,
          'ar_name': 'الحث على نشر العلم وعدم كتمانه',
          'ug_name': 'ئىلىمىنى تارقىتىشقا ۋە يوشۇرماسلىققا  تەرغىب قىلىش',
          'en_name': 'Urging The Dissemination Of Science And Non-Secrecy',
          'c': 0,
          'sa': 7
        }, subNodes: []),
        TreeNode({
          'ar_id': 988,
          'ar_name': 'ذم الجهل والجاهلين',
          'ug_name': 'ساۋاتسىزلىق ۋە نادانلىقنى ئەيىبلەش',
          'en_name': 'Deceived Ignorance And Ignorants',
          'c': 0,
          'sa': 4
        }, subNodes: []),
        TreeNode({
          'ar_id': 989,
          'ar_name': 'الشعرو الشعراء',
          'ug_name': 'شېئىر ۋە شائىرلار',
          'en_name': 'Poetry And Poets',
          'c': 0,
          'sa': 10
        }, subNodes: []),
        TreeNode({
          'ar_id': 990,
          'ar_name': 'الصحة',
          'ug_name': 'ساغلاملىق',
          'en_name': 'Health',
          'c': 0,
          'sa': 1
        }, subNodes: []),
        TreeNode({
          'ar_id': 991,
          'ar_name': 'فضل العلم والعلماء',
          'ug_name': 'ئىلىم ۋە ئۆلىمالارنىڭ پەزلى',
          'en_name': 'The Virtue Of Science And Scientists',
          'c': 0,
          'sa': 10
        }, subNodes: []),
        TreeNode({
          'ar_id': 992,
          'ar_name': 'الفلك',
          'ug_name': 'ئاسترونومىيە',
          'en_name': 'Astronomy',
          'c': 0,
          'sa': 22
        }, subNodes: []),
        TreeNode({
          'ar_id': 993,
          'ar_name': 'الفنون',
          'ug_name': 'پەنلەر',
          'en_name': 'The Arts',
          'c': 0,
          'sa': 4
        }, subNodes: []),
        TreeNode({
          'ar_id': 994,
          'ar_name': 'الكواكب',
          'ug_name': 'پېلانېتلار',
          'en_name': 'Planets',
          'c': 0,
          'sa': 14
        }, subNodes: []),
        TreeNode({
          'ar_id': 995,
          'ar_name': 'المجادلة بغير علم',
          'ug_name': 'ئىلىمسىز مۇنازىرە قىلىش',
          'en_name': 'Arguing Without Knowledge',
          'c': 0,
          'sa': 3
        }, subNodes: []),
        TreeNode({
          'ar_id': 996,
          'ar_name': 'الملاحة',
          'ug_name': 'دېڭىز قاتنىشى',
          'en_name': 'Navigation',
          'c': 0,
          'sa': 4
        }, subNodes: []),
        TreeNode({
          'ar_id': 997,
          'ar_name': 'التقويم',
          'ug_name': 'كالېندار',
          'en_name': 'Calendar',
          'c': 6,
          'sa': 0
        }, subNodes: [
          TreeNode({
            'ar_id': 998,
            'ar_name': 'الأشهر الحرم',
            'ug_name': '(ئۇرۇش)ھارام قىلىنغان ئايلار',
            'en_name': 'Sacred Months',
            'c': 0,
            'sa': 6
          }, subNodes: []),
          TreeNode({
            'ar_id': 999,
            'ar_name': 'الاشهرالمعلومات',
            'ug_name': 'مەلۈم بىر قانچە ئاي',
            'en_name': 'Months Information',
            'c': 0,
            'sa': 1
          }, subNodes: []),
          TreeNode({
            'ar_id': 1000,
            'ar_name': 'الشهر الحرام',
            'ug_name': '(ئۇرۇش)ھارام قىلىنغان ئاي',
            'en_name': 'The Holy Month',
            'c': 0,
            'sa': 4
          }, subNodes: []),
          TreeNode({
            'ar_id': 1001,
            'ar_name': 'شهر رمضان',
            'ug_name': 'رامىزان ئېيى',
            'en_name': 'The Month Of Ramadan',
            'c': 0,
            'sa': 1
          }, subNodes: []),
          TreeNode({
            'ar_id': 1002,
            'ar_name': 'عدة الشهور',
            'ug_name': 'ئايلارنىڭ سانى',
            'en_name': 'Count Of Months',
            'c': 0,
            'sa': 1
          }, subNodes: []),
          TreeNode({
            'ar_id': 1003,
            'ar_name': 'اليوم عند الله',
            'ug_name': 'ئاللاھنىڭ دەرگاھىدىكى  بىر كۈن',
            'en_name': 'Day For God',
            'c': 0,
            'sa': 3
          }, subNodes: []),
        ]),
        TreeNode({
          'ar_id': 1004,
          'ar_name': 'لحقائق العلمية',
          'ug_name': 'ئىلمىي پاكىتلار(ھەقىقەتلەر)',
          'en_name': 'For Scientific Facts',
          'c': 36,
          'sa': 0
        }, subNodes: [
          TreeNode({
            'ar_id': 1005,
            'ar_name': 'الإحياء',
            'ug_name': 'تىرىلدۈرۈش(ھاياتلىق)',
            'en_name': 'Revival',
            'c': 0,
            'sa': 5
          }, subNodes: []),
          TreeNode({
            'ar_id': 1006,
            'ar_name': 'الاشارة إلى ازدواجية المادة',
            'ug_name': 'ھەر ماددىنىڭ جۈپ ئىكەنلىكىگە (دەلىل)ئىشارەتلەر',
            'en_name': 'Reference To Duplication Of Matter',
            'c': 0,
            'sa': 3
          }, subNodes: []),
          TreeNode({
            'ar_id': 1007,
            'ar_name': 'الإشارة إلى الجاذبية',
            'ug_name': 'تارتىش كۈچىگە (دەلىل)ئىشارەت',
            'en_name': 'Reference To Gravity',
            'c': 0,
            'sa': 5
          }, subNodes: []),
          TreeNode({
            'ar_id': 1008,
            'ar_name': 'الإشارة إلى الذبذبات الصوتية',
            'ug_name': 'ئاۋاز دولقۇنىغا  (دەلىل)ئىشارەتلەر',
            'en_name': 'Reference To Acoustic Vibrations',
            'c': 0,
            'sa': 11
          }, subNodes: []),
          TreeNode({
            'ar_id': 1009,
            'ar_name': 'الإشارة إلى الذرة',
            'ug_name': 'ئاتومغا(زەررىچىگە) ئىشارەتلەر',
            'en_name': 'Reference To The Atom',
            'c': 0,
            'sa': 5
          }, subNodes: []),
          TreeNode({
            'ar_id': 1010,
            'ar_name': 'الإشارة إلى طبقات الارض',
            'ug_name': 'يەر قاتلىمىغا (دەلىل)ئىشارەتلەر',
            'en_name': 'Reference To The Layers Of The Earth',
            'c': 0,
            'sa': 21
          }, subNodes: []),
          TreeNode({
            'ar_id': 1011,
            'ar_name': 'عبور الفضاء',
            'ug_name': 'ئالەم بوشلۇقىنى كېسىپ  ئۆتۈش',
            'en_name': 'Space Crossing',
            'c': 0,
            'sa': 3
          }, subNodes: []),
          TreeNode({
            'ar_id': 1012,
            'ar_name': 'عدم فناء المادة',
            'ug_name': 'ماددىنىڭ يوقالمايدىغانلىقى',
            'en_name': 'Non-Termination Of Matter',
            'c': 0,
            'sa': 4
          }, subNodes: []),
          TreeNode({
            'ar_id': 1013,
            'ar_name': 'الكيمياء',
            'ug_name': 'خىمىيە',
            'en_name': 'Chemistry',
            'c': 0,
            'sa': 3
          }, subNodes: []),
          TreeNode({
            'ar_id': 1014,
            'ar_name': 'التسجيل الكهرطيسي',
            'ug_name': 'ئېلېكتر ماگنىت خاتىرىسى',
            'en_name': 'Electromagnetic Recording',
            'c': 0,
            'sa': 9
          }, subNodes: []),
          TreeNode({
            'ar_id': 1015,
            'ar_name': 'ما يمكن أن يكون انفجارت',
            'ug_name': 'نېمىنىڭ پارتىلايدىغانلىقى',
            'en_name': 'What Can Be Explosions',
            'c': 0,
            'sa': 6
          }, subNodes: []),
          TreeNode({
            'ar_id': 1016,
            'ar_name': 'الإنسان في الكون',
            'ug_name': 'ئالەمدىكى ئىنسان',
            'en_name': 'Man In The Universe',
            'c': 0,
            'sa': 13
          }, subNodes: []),
          TreeNode({
            'ar_id': 1017,
            'ar_name': 'الإنسان وخلقه',
            'ug_name': 'ئىنسان ۋە ئۇنىڭ يارتىلىشى',
            'en_name': 'Man And Creation',
            'c': 0,
            'sa': 63
          }, subNodes: []),
          TreeNode({
            'ar_id': 1018,
            'ar_name': 'البحر',
            'ug_name': 'دېڭىز',
            'en_name': 'The Sea',
            'c': 0,
            'sa': 43
          }, subNodes: []),
          TreeNode({
            'ar_id': 1019,
            'ar_name': 'بصمات الأصابع',
            'ug_name': 'بارماق ئىزى',
            'en_name': 'Fingerprints',
            'c': 0,
            'sa': 2
          }, subNodes: []),
          TreeNode({
            'ar_id': 1020,
            'ar_name': 'الجبال',
            'ug_name': 'تاغلار',
            'en_name': 'The Mountains',
            'c': 0,
            'sa': 37
          }, subNodes: []),
          TreeNode({
            'ar_id': 1021,
            'ar_name': 'حركة الأرض',
            'ug_name': 'يەر شارىنىڭ ھەركىتى',
            'en_name': 'Earth Movement',
            'c': 0,
            'sa': 9
          }, subNodes: []),
          TreeNode({
            'ar_id': 1022,
            'ar_name': 'حقائق الكون',
            'ug_name': 'ئالەمنىڭ ھەقىقىيتى',
            'en_name': 'Facts Of The Universe',
            'c': 0,
            'sa': 21
          }, subNodes: []),
          TreeNode({
            'ar_id': 1023,
            'ar_name': 'التطور',
            'ug_name': 'ئالەم ۋە ئىنساننىڭ يارتىلىش جەريانى',
            'en_name': 'Evolution',
            'c': 0,
            'sa': 16
          }, subNodes: []),
          TreeNode({
            'ar_id': 1024,
            'ar_name': 'دعوة الإنسان إلى إكتشاف الحقائق العلمية',
            'ug_name': 'ئىنساننى ئىلمىي پاكىتلارنى بايقاشقا چاقىرىش',
            'en_name': 'Human Invitation To Discover Scientific Facts',
            'c': 0,
            'sa': 12
          }, subNodes: []),
          TreeNode({
            'ar_id': 1025,
            'ar_name': 'الريح',
            'ug_name': 'شامال',
            'en_name': 'The Wind',
            'c': 0,
            'sa': 34
          }, subNodes: []),
          TreeNode({
            'ar_id': 1026,
            'ar_name': 'الزراعة',
            'ug_name': 'يېزا - ئىگىلىك',
            'en_name': 'Agriculture',
            'c': 0,
            'sa': 21
          }, subNodes: []),
          TreeNode({
            'ar_id': 1027,
            'ar_name': 'السحاب',
            'ug_name': 'بۇلۇتلار',
            'en_name': 'The Cloud',
            'c': 0,
            'sa': 11
          }, subNodes: []),
          TreeNode({
            'ar_id': 1028,
            'ar_name': 'سرعة النور',
            'ug_name': 'يورۇقلۇقنىڭ تىزلىكى',
            'en_name': 'Speed Of Light',
            'c': 0,
            'sa': 8
          }, subNodes: []),
          TreeNode({
            'ar_id': 1029,
            'ar_name': 'الصحة',
            'ug_name': 'ساغلاملىق',
            'en_name': 'Health',
            'c': 0,
            'sa': 9
          }, subNodes: []),
          TreeNode({
            'ar_id': 1030,
            'ar_name': 'الضغط الجوي',
            'ug_name': 'ئاتموسفېرا بېسىمى',
            'en_name': 'Atmospheric Pressure',
            'c': 0,
            'sa': 3
          }, subNodes: []),
          TreeNode({
            'ar_id': 1031,
            'ar_name': 'غزو الفضاء',
            'ug_name': 'ئالەم بوشلۇقىغا يۈرۈش قىلىش',
            'en_name': 'Space Invasion',
            'c': 0,
            'sa': 9
          }, subNodes: []),
          TreeNode({
            'ar_id': 1032,
            'ar_name': 'الغلاف الجوي',
            'ug_name': 'ئاتمۇسفېرا',
            'en_name': 'The Atmosphere',
            'c': 0,
            'sa': 12
          }, subNodes: []),
          TreeNode({
            'ar_id': 1033,
            'ar_name': 'الغيث',
            'ug_name': 'يامغۇر',
            'en_name': 'Rain',
            'c': 0,
            'sa': 16
          }, subNodes: []),
          TreeNode({
            'ar_id': 1034,
            'ar_name': 'لغة الحيوان',
            'ug_name': 'ھايۋانات تىلى',
            'en_name': 'Animal Language',
            'c': 0,
            'sa': 8
          }, subNodes: []),
          TreeNode({
            'ar_id': 1035,
            'ar_name': 'الليل والنهار',
            'ug_name': 'كېچە ۋە كۈندۈز',
            'en_name': 'Night And Day',
            'c': 0,
            'sa': 6
          }, subNodes: []),
          TreeNode({
            'ar_id': 1036,
            'ar_name': 'ما يشبه الصواريخ',
            'ug_name': 'قارىماققا راكېتاغا ئوخشايدىغانلىقى',
            'en_name': 'What Is Like A Rocket',
            'c': 0,
            'sa': 1
          }, subNodes: []),
          TreeNode({
            'ar_id': 1037,
            'ar_name': 'الرؤية عن بعد',
            'ug_name': 'يىراق مۇساپىلىك كۆرۈش سېزىمى',
            'en_name': 'Remote Vision',
            'c': 0,
            'sa': 2
          }, subNodes: []),
          TreeNode({
            'ar_id': 1038,
            'ar_name': 'الماء ونشأة الحياة',
            'ug_name': 'سۇ ۋە ھاياتلىقنىڭ بارلىققا كىلىش',
            'en_name': 'Water And The Genesis Of Life',
            'c': 0,
            'sa': 7
          }, subNodes: []),
          TreeNode({
            'ar_id': 1039,
            'ar_name': 'النبات',
            'ug_name': 'ئۈسۈملۈكلەر',
            'en_name': 'Plant',
            'c': 0,
            'sa': 11
          }, subNodes: []),
          TreeNode({
            'ar_id': 1040,
            'ar_name': 'الحيوانات والحشرات',
            'ug_name': 'ھايۋانلار ۋە ھاشاراتلەر',
            'en_name': 'Animals And Insects',
            'c': 0,
            'sa': 33
          }, subNodes: []),
        ]),
      ]),
      TreeNode({
        'ar_id': 1041,
        'ar_name': 'الديانات',
        'ug_name': 'دىنلار',
        'en_name': 'Religions',
        'c': 5,
        'sa': 0
      }, subNodes: [
        TreeNode({
          'ar_id': 1042,
          'ar_name': 'الصابئون',
          'ug_name': 'يۇلتۇزپەرەسلەر(يۇلتۇزغا چوقۇندىغانلار)',
          'en_name': 'The Sabians',
          'c': 0,
          'sa': 3
        }, subNodes: []),
        TreeNode({
          'ar_id': 1043,
          'ar_name': 'المجوس',
          'ug_name': 'مەجۇسىيلەر(ئاتەشپەرەسلەر)',
          'en_name': 'The Magi',
          'c': 0,
          'sa': 1
        }, subNodes: []),
        TreeNode({
          'ar_id': 1044,
          'ar_name': 'أهل الكتاب',
          'ug_name': 'ئەھلى كىتاب',
          'en_name': 'People Of The Book',
          'c': 4,
          'sa': 0
        }, subNodes: [
          TreeNode({
            'ar_id': 1045,
            'ar_name': 'حسدهم المؤمنين',
            'ug_name': 'ئەھلى كىتابنىڭ مۆمىنلەرگە ھەسەت قىلىشى',
            'en_name': 'Envy Of Believers',
            'c': 0,
            'sa': 3
          }, subNodes: []),
          TreeNode({
            'ar_id': 1046,
            'ar_name': 'العلاقة معهم',
            'ug_name': 'ئەھلى كىتاب بىلەن بولغان مۇناسىۋەت',
            'en_name': 'Relationship With Them',
            'c': 0,
            'sa': 27
          }, subNodes: []),
          TreeNode({
            'ar_id': 1047,
            'ar_name': 'وجوب التساهل معهم غير المحاربين',
            'ug_name':
                'ئەھلى كىتابتىن مۇسۇلمانلارغا قارشى ئۇرۇش قىلمىغانلارغا كەڭچىلىك بىلەن مۇئامىلە قىلىش',
            'en_name': 'The Obligation To Be Lenient With Non-Combatants',
            'c': 0,
            'sa': 47
          }, subNodes: []),
          TreeNode({
            'ar_id': 1048,
            'ar_name': 'وجود المؤمنين بينهم',
            'ug_name': 'ئەھلى كىتاب ئىچىدە مۆمىنلەرنىڭ مەۋجۇتلىقى',
            'en_name': 'The Existence Of Believers Among Them',
            'c': 0,
            'sa': 17
          }, subNodes: []),
        ]),
        TreeNode({
          'ar_id': 1049,
          'ar_name': 'بنو اسرائيل',
          'ug_name': 'بەنى ئىسرائىل(ئىسرائىل ئەۋلادلىرى)',
          'en_name': 'The Children Of Israel',
          'c': 17,
          'sa': 0
        }, subNodes: [
          TreeNode({
            'ar_id': 1050,
            'ar_name': 'أحبارهم',
            'ug_name': 'ئىسرائىل ئەۋلاتلىرىنىڭ تارىخى(خەۋەرلىرى)',
            'en_name': 'Their History',
            'c': 0,
            'sa': 4
          }, subNodes: []),
          TreeNode({
            'ar_id': 1051,
            'ar_name': 'أخذ الميثاق عليهم',
            'ug_name': 'ئىسرائىل ئەۋلاتلىرىدىن چىن ئەھدە ئالغانلىقى',
            'en_name': 'Take The Vow Upon Them',
            'c': 0,
            'sa': 7
          }, subNodes: []),
          TreeNode({
            'ar_id': 1052,
            'ar_name': 'أصحاب السبت',
            'ug_name': 'شەنبە كۈن ئىگىللىرى',
            'en_name': 'The Owners Of The Sabbath',
            'c': 0,
            'sa': 6
          }, subNodes: []),
          TreeNode({
            'ar_id': 1053,
            'ar_name': 'إفسادهم في الارض',
            'ug_name':
                'ئىسرائىل ئەۋلادلىرىنىڭ زېمىندا بۇزغۇنچىلىق قىلدىغانلىقى',
            'en_name': 'Spoil Them In The Land',
            'c': 0,
            'sa': 5
          }, subNodes: []),
          TreeNode({
            'ar_id': 1054,
            'ar_name': 'أقوالهم وجراتهم على الله و الأنبياء',
            'ug_name':
                'ئىسرائىل ئەۋلاتلىرىنىڭ ئاللاھ ۋە پەيغەمبەر توغىرىسدا دېگەن سۆزلىرى ۋە ئۆچمەنلىكلىرى',
            'en_name':
                'Their Words And Their Grudges Against God And The Prophets',
            'c': 0,
            'sa': 7
          }, subNodes: []),
          TreeNode({
            'ar_id': 1055,
            'ar_name': 'إلقاء العداوة بينهم',
            'ug_name': 'ئىسرائىل ئەۋلاتلىرىنىڭ ئارىسغا ئاداۋەت سېلىنغانلىقى',
            'en_name': 'Throwing Hostility Between Them',
            'c': 0,
            'sa': 2
          }, subNodes: []),
          TreeNode({
            'ar_id': 1056,
            'ar_name': 'تحريفهم كلام الله',
            'ug_name':
                'ئىسرائىل ئەۋلاتلىرىنىڭ ئاللاھنىڭ كالامنى ئۆزگەرتىشى(بۇرمىلىغانلىقى)',
            'en_name': 'Distorting The Word Of God',
            'c': 0,
            'sa': 6
          }, subNodes: []),
          TreeNode({
            'ar_id': 1057,
            'ar_name': 'جزاؤهم لو آمنو',
            'ug_name':
                'ئىسرائىل ئەۋلاتلىرى ئەگەر  ئىمان ئېيتسا بىرىلدىغان جازا- مۇكاپات',
            'en_name': 'Their Reward If They Believe',
            'c': 0,
            'sa': 9
          }, subNodes: []),
          TreeNode({
            'ar_id': 1058,
            'ar_name': 'حالاتهم',
            'ug_name': 'ئىسرائىل ئەۋلادلىرىنىڭ ھالەتلىرى(ئەھۋاللىرى)',
            'en_name': 'Their Cases',
            'c': 0,
            'sa': 63
          }, subNodes: []),
          TreeNode({
            'ar_id': 1059,
            'ar_name': 'شدة حرصهم على الحياة',
            'ug_name':
                'ئىسرائىل ئەۋلاتلىرىنىڭ ھاياتقا بەك ھېرىسمەن ئىكەنلىكى(ئۆلۈمنى ئارزۇ قىلمايدىغانلىقى)',
            'en_name': 'The Intensity Of Their Keenness On Life',
            'c': 0,
            'sa': 6
          }, subNodes: []),
          TreeNode({
            'ar_id': 1060,
            'ar_name': 'عداوتهم لله والملائكة والمؤمنين',
            'ug_name':
                'ئۇلارنىڭ ئاللاھقا ، پەرىشتىلەرگە ۋە مۈمىنلەرگە دۈشمەن ئىكەنلىكى',
            'en_name': 'Their Hostility To God And Angels And Believers',
            'c': 0,
            'sa': 2
          }, subNodes: []),
          TreeNode({
            'ar_id': 1061,
            'ar_name': 'عدم رضاهم عمن لم يتبعهم',
            'ug_name':
                'كىمكى ئۇلارغا ئەگەشمەيدىكەن ئۇلاردىن ھەرگىز رازى بولمايدىغانلىقى',
            'en_name': 'Dissatisfaction With Those Who Did Not Follow Them',
            'c': 0,
            'sa': 1
          }, subNodes: []),
          TreeNode({
            'ar_id': 1062,
            'ar_name': 'غرورهم وأمانيهم',
            'ug_name': 'ئۇلارنىڭ تەكەببۇرلۇقى ۋە ئارزۇسى',
            'en_name': 'Their Arrogance And Their Aspirations',
            'c': 0,
            'sa': 7
          }, subNodes: []),
          TreeNode({
            'ar_id': 1063,
            'ar_name': 'قضاء الله عليهم',
            'ug_name': 'ئاللاھنىڭ ئۇلارغا قىلغان ھۆكۈمى',
            'en_name': 'God Will Judge Them',
            'c': 0,
            'sa': 5
          }, subNodes: []),
          TreeNode({
            'ar_id': 1064,
            'ar_name': 'ما حرم الله عليهم بسبب بغيهم',
            'ug_name':
                'زۇلۇملىرى سەۋەبدىن ئاللاھ ئۇلارغا ھارام قىلغان نەرىسلەر',
            'en_name': 'What God Has Forbidden Them Because Of Their Sinners',
            'c': 0,
            'sa': 1
          }, subNodes: []),
          TreeNode({
            'ar_id': 1065,
            'ar_name': 'معاندتهم و تكذيبهم وقتلهم الانبياء',
            'ug_name':
                'ئۇلارنىڭ جاھىللىقى ، يالغانچىلىقى ۋە پەيغەمبەرلەرنى ئۆلتۈرگەنلىكى',
            'en_name':
                'Their Resistance And Their Denial And The Killing Of The Prophets',
            'c': 0,
            'sa': 62
          }, subNodes: []),
          TreeNode({
            'ar_id': 1066,
            'ar_name': 'نعم الله عليهم',
            'ug_name': 'ئاللاھنىڭ ئۇلارغا بەرگەن نېمەتلىرى',
            'en_name': 'Yes, God Is On Them',
            'c': 0,
            'sa': 37
          }, subNodes: []),
        ]),
        TreeNode({
          'ar_id': 1067,
          'ar_name': 'النصارى',
          'ug_name': 'ناسارالار(خرىستىئانلار)',
          'en_name': 'The Christians',
          'c': 12,
          'sa': 0
        }, subNodes: [
          TreeNode({
            'ar_id': 1068,
            'ar_name': 'أجر المؤمنين منهم',
            'ug_name': 'ئۇلاردىن ئىمان ئېيتقانلارنىڭ ساۋابى',
            'en_name': 'The Reward Of The Believers Of Them',
            'c': 0,
            'sa': 3
          }, subNodes: []),
          TreeNode({
            'ar_id': 1069,
            'ar_name': 'أجرهم لو آمنو',
            'ug_name': 'ئەگەر  ئىمان ئېيتسا بىرىلدىغان  مۇكاپات',
            'en_name': 'Reward Them If They Believe',
            'c': 0,
            'sa': 5
          }, subNodes: []),
          TreeNode({
            'ar_id': 1070,
            'ar_name': 'أقوالهم وجرأتهم على الله',
            'ug_name':
                'ئۇلارنىڭ ئاللاھ ۋە پەيغەمبەر توغىرىسدا دېگەن سۆزلىرى ۋە ئۆچمەنلىكلىرى',
            'en_name': 'Their Words And Their Defiance To God',
            'c': 0,
            'sa': 7
          }, subNodes: []),
          TreeNode({
            'ar_id': 1071,
            'ar_name': 'التثليث',
            'ug_name': 'ئۇلارئاللاھ ئۈچنىڭ بىرىدۇر دىگەنلىكى',
            'en_name': 'Trinity',
            'c': 0,
            'sa': 4
          }, subNodes: []),
          TreeNode({
            'ar_id': 1072,
            'ar_name': 'الحواريون',
            'ug_name': 'ھەۋارىيلار',
            'en_name': 'The Apostles',
            'c': 0,
            'sa': 4
          }, subNodes: []),
          TreeNode({
            'ar_id': 1073,
            'ar_name': 'الرهبان',
            'ug_name': 'راھىبلار',
            'en_name': 'The Monks',
            'c': 0,
            'sa': 4
          }, subNodes: []),
          TreeNode({
            'ar_id': 1074,
            'ar_name': 'عدم رضاهم عمن لم يتبعهم',
            'ug_name':
                'كىمكى ئۇلارغا ئەگەشمەيدىكەن ئۇلاردىن ھەرگىز رازى بولمايدىغانلىقى',
            'en_name': 'Dissatisfaction With Those Who Did Not Follow Them',
            'c': 0,
            'sa': 1
          }, subNodes: []),
          TreeNode({
            'ar_id': 1075,
            'ar_name': 'غرورهم وأمانيهم وطعنهم باليهود',
            'ug_name':
                'ئۇلارنىڭ تەكەببۇرلۇقى ۋە ئارزۇسى ۋە يەھۇدىيلار بىلەن تۆھمەت قىلغانلىقى',
            'en_name':
                'Their Arrogance And Aspirations And Challenged The Jews',
            'c': 0,
            'sa': 7
          }, subNodes: []),
          TreeNode({
            'ar_id': 1076,
            'ar_name': 'القسيسون',
            'ug_name': 'پوپلار(ناسارالارنىڭ ئۆلىمالىرى)',
            'en_name': 'The Priests',
            'c': 0,
            'sa': 4
          }, subNodes: []),
          TreeNode({
            'ar_id': 1077,
            'ar_name': 'معاندتهم والإنتقام منهم',
            'ug_name': 'ئۇلارنىڭ جاھىللىقى ۋە ئۇلاردىن ئىنتقام ئېلىش',
            'en_name': 'Their Support And Revenge From Them',
            'c': 0,
            'sa': 1
          }, subNodes: []),
          TreeNode({
            'ar_id': 1078,
            'ar_name': 'مواقفهم',
            'ug_name': 'ئۇلارنىڭ مەيدانى(ئەھۋالى)',
            'en_name': 'Their Positions',
            'c': 0,
            'sa': 13
          }, subNodes: []),
          TreeNode({
            'ar_id': 1079,
            'ar_name': 'نسيانهم الميثاق واغراء العداوة بينهم',
            'ug_name':
                'ئۇلارنىڭ ئەھدىنى ئۇنتىغانلىقى ۋە قىيامەتكىچە ئۇلارنىڭ ئارسىغا ئاداۋەت(ئۆچمەنلىك) سېلىنغانلىقى',
            'en_name': 'Forget The Vow And The Temptation Of Enmity Among Them',
            'c': 0,
            'sa': 1
          }, subNodes: []),
        ]),
      ]),
      TreeNode({
        'ar_id': 1080,
        'ar_name': 'القصص والتاريخ',
        'ug_name': 'قىسسە ۋە تارىخ',
        'en_name': 'Stories And History',
        'c': 32,
        'sa': 0
      }, subNodes: [
        TreeNode({
          'ar_id': 1081,
          'ar_name': 'ابنتا شعيب',
          'ug_name': 'شۇئەيب ئەلەيھىسسالامنىڭ ئىككى قىزى',
          'en_name': 'Shuaib"S Daughters',
          'c': 0,
          'sa': 5
        }, subNodes: []),
        TreeNode({
          'ar_id': 1082,
          'ar_name': 'إبني آدم',
          'ug_name': 'ئادەم ئەلەيھىسسالامنىڭ ئوغوللىرى',
          'en_name': 'My Son Adam',
          'c': 0,
          'sa': 6
        }, subNodes: []),
        TreeNode({
          'ar_id': 1083,
          'ar_name': 'أبو لهب وامرأته',
          'ug_name': 'ئەبۇ لەھەب ۋە ئۇنىڭ ئايالى',
          'en_name': 'Abu Lahab And His Wife',
          'c': 0,
          'sa': 5
        }, subNodes: []),
        TreeNode({
          'ar_id': 1084,
          'ar_name': 'الأسباط',
          'ug_name': 'ياقۇپ ئەلەيھىسسالامنىڭ ئەۋلاتلىرى',
          'en_name': 'The Asbat',
          'c': 0,
          'sa': 5
        }, subNodes: []),
        TreeNode({
          'ar_id': 1085,
          'ar_name': 'أصحاب الأخدود',
          'ug_name': 'ئورەكلەرنىڭ ئىگىللىرى',
          'en_name': 'The Owners Of The Groove',
          'c': 0,
          'sa': 8
        }, subNodes: []),
        TreeNode({
          'ar_id': 1086,
          'ar_name': 'أصحاب الرس اصحاب الرقيم',
          'ug_name': 'رەس ئائىلىسى ۋە ئەسھابۇل رەقىم',
          'en_name': 'The Owners Of The Owners Of The Rukim',
          'c': 0,
          'sa': 3
        }, subNodes: []),
        TreeNode({
          'ar_id': 1087,
          'ar_name': 'أصحاب الفيل',
          'ug_name': 'فىل ئىگىللىرى',
          'en_name': 'Elephant Owners',
          'c': 0,
          'sa': 5
        }, subNodes: []),
        TreeNode({
          'ar_id': 1088,
          'ar_name': 'أصحاب القرية أصحاب الكهف',
          'ug_name': 'شەھەر(يېزا) ئائىلىسى ۋە ئۆڭكۈر ئىگىللىرى',
          'en_name': 'The Owners Of The Village Owners Cave',
          'c': 0,
          'sa': 19
        }, subNodes: []),
        TreeNode({
          'ar_id': 1089,
          'ar_name': 'اصحاب مدين',
          'ug_name': 'مەديەن ئائىلىسى',
          'en_name': 'The Owners Of Debt',
          'c': 0,
          'sa': 13
        }, subNodes: []),
        TreeNode({
          'ar_id': 1090,
          'ar_name': 'امرأة العزيز',
          'ug_name': 'ئەزىز(مىسىرنىڭ ۋەزىرى)نىڭ ئايالى',
          'en_name': 'Dear Woman',
          'c': 0,
          'sa': 3
        }, subNodes: []),
        TreeNode({
          'ar_id': 1091,
          'ar_name': 'ثمود',
          'ug_name': 'سەمۇد قەۋمى',
          'en_name': 'Thamood',
          'c': 0,
          'sa': 26
        }, subNodes: []),
        TreeNode({
          'ar_id': 1092,
          'ar_name': 'الحواريون',
          'ug_name': 'ھەۋارىيلار',
          'en_name': 'The Apostles',
          'c': 0,
          'sa': 4
        }, subNodes: []),
        TreeNode({
          'ar_id': 1093,
          'ar_name': 'ذو القرنين',
          'ug_name': 'زۇلقەرنەين',
          'en_name': 'Zul Qarnain',
          'c': 0,
          'sa': 16
        }, subNodes: []),
        TreeNode({
          'ar_id': 1094,
          'ar_name': 'الروم',
          'ug_name': 'رۇملۇقلار',
          'en_name': 'Roman',
          'c': 0,
          'sa': 4
        }, subNodes: []),
        TreeNode({
          'ar_id': 1095,
          'ar_name': 'السير والنظر في عاقبة الماضين',
          'ug_name':
              'يەر يۈزدە سەير قىلىپ (ئايلىنىپ) ئىلگىركى ئۈممەتلەرنىڭ ئاقىۋىتىنڭ قانداق بولغانلىقىغا نەزەر سېلىش',
          'en_name': 'Walk And Consider The Consequences Of The Past',
          'c': 0,
          'sa': 29
        }, subNodes: []),
        TreeNode({
          'ar_id': 1096,
          'ar_name': 'عاد',
          'ug_name': 'ئاد قەۋمى',
          'en_name': 'Returned',
          'c': 0,
          'sa': 64
        }, subNodes: []),
        TreeNode({
          'ar_id': 1097,
          'ar_name': 'العبر التاريخية في أنباء القرى',
          'ug_name':
              'ئىلگىركى شەھەر -يېزا(قەۋم ،خەلقى)خەۋەرلىرىدىن تارىخىي ساۋاقلار',
          'en_name': 'Historical Lessons In The News Of Villages',
          'c': 0,
          'sa': 140
        }, subNodes: []),
        TreeNode({
          'ar_id': 1098,
          'ar_name': 'قارون',
          'ug_name': 'قارۇن',
          'en_name': 'Qarun',
          'c': 0,
          'sa': 5
        }, subNodes: []),
        TreeNode({
          'ar_id': 1099,
          'ar_name': 'قوم تبع',
          'ug_name': 'تۈببە قەۋمى',
          'en_name': 'People Followed',
          'c': 0,
          'sa': 2
        }, subNodes: []),
        TreeNode({
          'ar_id': 1100,
          'ar_name': 'يأجوج ومأجوج',
          'ug_name': 'يەجۈج ۋە مەجۈج',
          'en_name': 'Gog And Magog',
          'c': 0,
          'sa': 3
        }, subNodes: []),
        TreeNode({
          'ar_id': 1101,
          'ar_name': 'يعقوب',
          'ug_name': 'ياقۇپ ئەلەيھىسسالامنىڭ ئەۋلاتلىرى',
          'en_name': 'Jacob',
          'c': 0,
          'sa': 3
        }, subNodes: []),
        TreeNode({
          'ar_id': 1102,
          'ar_name': 'المؤتكفات',
          'ug_name': 'كۆمتۈرۋېتىلگەن قىشلاقلار',
          'en_name': 'Retreats',
          'c': 0,
          'sa': 2
        }, subNodes: []),
        TreeNode({
          'ar_id': 1103,
          'ar_name': 'الذي أماته الله مئة عام',
          'ug_name': 'ئاللاھ  يۈز يىل ئۈلۈك ھالىتىدە تۇرغۇزغان قەۋم',
          'en_name': 'Which God Died A Hundred Years',
          'c': 0,
          'sa': 1
        }, subNodes: []),
        TreeNode({
          'ar_id': 1104,
          'ar_name': 'الذين خرجو حذر الموت',
          'ug_name': 'ئۆلۈمدىن قورقۇپ يۇرتلىرىدىن قېچىپ چىققان قەۋم',
          'en_name': 'Those Who Went Out Warned Of Death',
          'c': 0,
          'sa': 1
        }, subNodes: []),
        TreeNode({
          'ar_id': 1105,
          'ar_name': 'لقمان وحكمته',
          'ug_name': 'لوقمان ۋە ئۇنىڭ ھېكمەتلىرى',
          'en_name': 'Luqman And His Wisdom',
          'c': 0,
          'sa': 4
        }, subNodes: []),
        TreeNode({
          'ar_id': 1106,
          'ar_name': 'إبراهيم',
          'ug_name': 'ئىبراھىم ئەلەيھىسالام',
          'en_name': 'Ibrahim',
          'c': 2,
          'sa': 0
        }, subNodes: [
          TreeNode({
            'ar_id': 1107,
            'ar_name': 'سارة',
            'ug_name': 'سارە(ئىبراھىم ئەلەيھىسسالامنىڭ ئايالى)',
            'en_name': 'Sarah',
            'c': 0,
            'sa': 2
          }, subNodes: []),
          TreeNode({
            'ar_id': 1108,
            'ar_name': 'قوم إبراهيم',
            'ug_name': 'ئىبراھىم ئەلەيھىسسالامنىڭ قەۋمى',
            'en_name': 'The People Of Abraham',
            'c': 0,
            'sa': 4
          }, subNodes: []),
        ]),
        TreeNode({
          'ar_id': 1109,
          'ar_name': 'سبأ',
          'ug_name': 'سەبەئ قەۋمى',
          'en_name': 'Saba',
          'c': 2,
          'sa': 0
        }, subNodes: [
          TreeNode({
            'ar_id': 1110,
            'ar_name': 'بلقيس',
            'ug_name': 'بىلقىس',
            'en_name': 'Balqis',
            'c': 0,
            'sa': 1
          }, subNodes: []),
          TreeNode({
            'ar_id': 1111,
            'ar_name': 'قوم سبأ',
            'ug_name': 'سەبەئ قەۋمى',
            'en_name': 'The People Of Saba',
            'c': 0,
            'sa': 7
          }, subNodes: []),
        ]),
        TreeNode({
          'ar_id': 1112,
          'ar_name': 'عمران',
          'ug_name': 'ئىمران ئەۋلادى',
          'en_name': 'Imran',
          'c': 3,
          'sa': 0
        }, subNodes: [
          TreeNode({
            'ar_id': 1113,
            'ar_name': 'آل عمران',
            'ug_name': 'ئىمران ئائىلىسى',
            'en_name': 'Al-Imran',
            'c': 0,
            'sa': 1
          }, subNodes: []),
          TreeNode({
            'ar_id': 1114,
            'ar_name': 'امرأة عمران',
            'ug_name': 'ئىمراننىڭ ئايالى',
            'en_name': 'The Woman Of Imran',
            'c': 0,
            'sa': 2
          }, subNodes: []),
          TreeNode({
            'ar_id': 1115,
            'ar_name': 'مريم ابنة عمران',
            'ug_name': 'ئىمراننىڭ قىزى مەريەم ئەلەيھىسسالام',
            'en_name': 'Mary The Daughter Of Imran',
            'c': 0,
            'sa': 33
          }, subNodes: []),
        ]),
        TreeNode({
          'ar_id': 1116,
          'ar_name': 'فرعون',
          'ug_name': 'پىرئەۋن',
          'en_name': 'Pharaoh',
          'c': 3,
          'sa': 0
        }, subNodes: [
          TreeNode({
            'ar_id': 1117,
            'ar_name': 'امرأة فرعون آسية',
            'ug_name': 'پىرئەۋننىڭ ئايالى ئاسىيە',
            'en_name': 'The Wife Of The Pharaoh Of Asia',
            'c': 0,
            'sa': 2
          }, subNodes: []),
          TreeNode({
            'ar_id': 1118,
            'ar_name': 'فرعون',
            'ug_name': 'پىرئەۋن',
            'en_name': 'Pharaoh',
            'c': 0,
            'sa': 65
          }, subNodes: []),
          TreeNode({
            'ar_id': 1119,
            'ar_name': 'قوم فرعون',
            'ug_name': 'پىرئەۋنىڭ قەۋمى(خەلقى)',
            'en_name': 'The People Of Pharaoh',
            'c': 0,
            'sa': 16
          }, subNodes: []),
        ]),
        TreeNode({
          'ar_id': 1120,
          'ar_name': 'قوم لوط',
          'ug_name': 'لۇت قەۋمى',
          'en_name': 'Lot Folk',
          'c': 2,
          'sa': 0
        }, subNodes: [
          TreeNode({
            'ar_id': 1121,
            'ar_name': 'آل لوط - إخوان لوط',
            'ug_name':
                'لۇت ئەلەيھىسسالامنىڭ ئائىلىسى ۋە  قېرىنداشلىرى(ئىمان ئېيتقان كىشلەر)',
            'en_name': 'Al Lot - The Brothers Of Lot',
            'c': 0,
            'sa': 6
          }, subNodes: []),
          TreeNode({
            'ar_id': 1122,
            'ar_name': 'امرأة لوط',
            'ug_name': 'لۇت ئەلەيھىسسالامنىڭ خوتۇنى',
            'en_name': 'Lot Woman',
            'c': 0,
            'sa': 8
          }, subNodes: []),
        ]),
        TreeNode({
          'ar_id': 1127,
          'ar_name': 'نوح',
          'ug_name': 'نوھ ئەلەيھىسسالام',
          'en_name': 'Noah',
          'c': 4,
          'sa': 0
        }, subNodes: [
          TreeNode({
            'ar_id': 1128,
            'ar_name': 'امرأة نوح',
            'ug_name': 'نوھ ئەلەيھىسسالامنىڭ ئايالى',
            'en_name': 'Woman Of Noah',
            'c': 0,
            'sa': 1
          }, subNodes: []),
          TreeNode({
            'ar_id': 1129,
            'ar_name': 'الطوفان',
            'ug_name': 'توپان(كەلكۈن)',
            'en_name': 'The Flood',
            'c': 0,
            'sa': 3
          }, subNodes: []),
          TreeNode({
            'ar_id': 1130,
            'ar_name': 'قوم نوح',
            'ug_name': 'نوھ ئەلەيھىسسالامنىڭ قەۋمى',
            'en_name': 'The People Of Noah',
            'c': 0,
            'sa': 14
          }, subNodes: []),
          TreeNode({
            'ar_id': 1132,
            'ar_name': 'اصحاب السفينة',
            'ug_name': 'كېمە ئىگىللىرى',
            'en_name': 'Shipowners',
            'c': 0,
            'sa': 1
          }, subNodes: []),
        ]),
        TreeNode({
          'ar_id': 1131,
          'ar_name': 'موسى',
          'ug_name': 'مۇسا ئەلەيھىسسالام',
          'en_name': 'Moses',
          'c': 5,
          'sa': 0
        }, subNodes: [
          TreeNode({
            'ar_id': 1123,
            'ar_name': 'أم موسى',
            'ug_name': 'مۇسا ئەلەيھىسسالامنىڭ ئانىسى',
            'en_name': 'Mother Of Moses',
            'c': 0,
            'sa': 2
          }, subNodes: []),
          TreeNode({
            'ar_id': 1124,
            'ar_name': 'التابوت',
            'ug_name': 'ساندۇق',
            'en_name': 'The Coffin',
            'c': 0,
            'sa': 1
          }, subNodes: []),
          TreeNode({
            'ar_id': 1125,
            'ar_name': 'قوم موسى',
            'ug_name': 'مۇسا ئەلەيھىسسالامنىڭ قەۋمى',
            'en_name': 'The People Of Moses',
            'c': 0,
            'sa': 6
          }, subNodes: []),
          TreeNode({
            'ar_id': 1126,
            'ar_name': 'هارون',
            'ug_name': 'ھارۇن ئەلەيھىسسالام',
            'en_name': 'Aaron',
            'c': 0,
            'sa': 1
          }, subNodes: []),
          TreeNode({
            'ar_id': 1133,
            'ar_name': 'امرأة موسى',
            'ug_name': 'مۇسا ئەلەيھىسسالامنىڭ ئايالى',
            'en_name': 'Woman Of Moses',
            'c': 0,
            'sa': 8
          }, subNodes: []),
        ]),
      ]),
    ];
  }
}
