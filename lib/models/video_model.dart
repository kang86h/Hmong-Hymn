import 'base_model.dart';

class VideoModel extends BaseModel {
  VideoModel({
    required this.name,
    required this.title,
    required this.lyric,
    required this.maxPage,
  });

  final String name;

  final String title;

  final Iterable<Iterable<String>> lyric;

  final int maxPage;

  static final VideoModel _empty = VideoModel(
    name: '',
    title: '',
    lyric: const [],
    maxPage: 0,
  );

  factory VideoModel.empty() => _empty;

  @override
  bool get isEmpty => this == _empty;

  String get lyricString => lyric
      .toList()
      .asMap()
      .entries
      .map((x) => '${x.key + 1}. ${x.value.join('\n')}')
      .join('\n\n');

  @override
  List<Object?> get props => [name, title, lyric, maxPage];

  @override
  String toString() =>
      'assets: $name title: $title lyric: $lyric maxPage: $maxPage';

  VideoModel copyWith({
    String? assets,
    String? title,
    Iterable<Iterable<String>>? lyric,
    int? maxLine,
  }) {
    return new VideoModel(
      name: assets ?? this.name,
      title: title ?? this.title,
      lyric: lyric ?? this.lyric,
      maxPage: this.maxPage,
    );
  }

  static Iterable<VideoModel> values() => [
        VideoModel.H40(),
        VideoModel.H78(),
        VideoModel.H126(),
        VideoModel.H138(),
        VideoModel.H262(),
    VideoModel.H343(),
    VideoModel.H364(),
        VideoModel.H410(),
      ];

  factory VideoModel.H40() => VideoModel(
        name: 'Hm40',
        title: '40. Vajtswv Loj Kawg',
        lyric: [
          [
            //verse 1
            'Kuv tus vaj tswv kuv hwm koj thiab ua koj tsaug',
            'vim vaj tswv koj yog tus tsim lub ntiaj teb',
            'thaum ntsia saum ntuj pom cov hnub qub huv si li',
            'pom vaj tswv ntuj lub hwj chim ci ntsa iab',
            'qhuas hauv lub siab vaj tswv tus uas cawm dim',
            'vaj tswv loj kawg  vaj tswv loj kawg',
            'qhuas hauv lub siab vaj tswv tus uas cawm dim',
            'vaj tswv loj kawg vaj tswv loj kawg',
          ],
          [
            //verse 2
            'Thaum kuv nco txog vaj tswv tus muaj txoj kev hlub',
            'nws tso nws leej tub los ua tus cawm seej',
            'tiv kev txom nyem saum tus khaub lig ntoo theej kuv',
            'kuv ua koj tsaug qhov koj muaj txoj kev hlub',
            'qhuas hauv lub Siab vaj tswv tus uas cawm dim',
            'vaj tswv loj kawg vaj tswv loj kawg',
            'qhuas hauv lub siab vaj tswv tus uas cawm dim',
            'vaj tswv loj kawg vaj tswv loj kawg',
          ],
          [
            //verse 3
            'Tswv ye xus los nrog lub suab raj nrov thoob ntuj',
            'yog los tos kuv mus nyob saum ntuj ceeb tsheej',
            'kuv yuav txhos caug pe hawm tus tswv los hauv siab',
            'thiab qhuas nws tias vaj tswv yog tus loj kawg',
            'qhuas hauv lub Siab vaj tswv tus uas cawm dim',
            'vaj tswv loj kawg vaj tswv loj kawg',
            'qhuas hauv lub siab vaj tswv tus uas cawm dim',
            'vaj tswv loj kawg vaj tswv loj kawg',
            '',
          ],
        ],
        maxPage: 7,
      );

  factory VideoModel.H78() => VideoModel(
        name: 'Hm78',
        title: '78. Ntiaj Teb Vajtswv Tsim Tseg',
        lyric: [
          [
            //verse 1
            'Ntiaj teb vaj tswv tsim tseg yog lub tsev pheeb suab xwb',
            'thaum txog sij hawm yuav ncaim mus tsis muaj leej twg dim kev tuag',
            'ntiaj teb peb nyob tsis ntev ceeb tsheej yog peb chaw nyob',
            'thiab qhov ntawd peb yuav tsis sib ncaim li peb nyob ceeb tsheej ib txhis',
          ],
          [
            //verse 2
            'Ntiaj teb no zoo nkauj tshaj vaj tswv tsim pub rau peb',
            'neeg ruam tsis nco tias nws yuav tuag thiaj li vwm mus ntau xyoo',
            'hnub no caw nej sawv daws hloov siab ntseeg tswv ye xus',
            'tus tswv nws yeem tuag saum khaub lig ntoo ntxuav peb lub txim kev txhaum',
          ],
          [
            //verse 3
            'Ntiaj teb no yeej qhuav qhawv tsis ruaj tsis khov mus li',
            'coob leej xav tias yuav ruaj khov mus es koj yuav vam dab tsi',
            'vaj tswv kev hlub thiaj tiag tsis muaj ib qho yuav pauv',
            'yog peb tso siab rau tus tswv ye xus hauv peb siab nyob kaj lug',
            '',
          ],
        ],
        maxPage: 7,
      );

  factory VideoModel.H126() => VideoModel(
        name: 'Hm126',
        title: '126. Cia Li Mloog Nkauj Ntawm Cov Tub Txib',
        lyric: [
          [
            //verse 1
            'Cia mloog nkauj ntawm cov tub txib Qhuas vaj tswv tus nyob saum ntuj',
            'Tus muaj kev hlub loj kawg nkauj Nyob zoo rau tib neeg sawv daws',
            'Txhua teb chaws cia li zoo siab Hu nkauj qhuas nrog cov tub txib',
            'Hu nkauj los ntawm siab xyiv fab Khe tos yug ntawm npe le hee',
            'Cia mloog nkauj ntawm cov tub txib Qhuas tus tswv tus nyob saum ntuj',
          ],
          [
            //verse 2
            'Tswv ye xus nyob puag saum ntuj Yog vaj tswv tus muaj txoj sia',
            'Txo lub hwj chim nqes los yug Hauv tus ntxhais nkauj xwb maiv liag',
            'Vaj tswv loj kawg thiab dawb huv Nqes los yug ua cev tib neeg',
            'Cia li qhuas tus tshwm los ua Tswv ye xus e ma nu ee',
            'Cia mloog nkauj ntawm cov tub txib Qhuas tus tswv tus nyob saum ntuj',
          ],
          [
            //verse 3
            'Tswv ye xus yog phooj ywg zoo Nws lub npe hu tus yug zoo',
            'Yog qhov kaj ntawm kav ncaj ncees Ci tsom mus rau txhua teb chaws',
            'Nws los nrhiav cov neeg yuam kev Kom pab tib neeg dim kev tuag',
            'Thiab tau zam tib neeg lub txim Tau txoj sia ntev mus ib txhis',
            'Cia mloog nkauj ntawm cov tub txib Qhuas tus tswv tus nyob saum ntuj',
            '',
          ],
        ],
        maxPage: 7,
      );

  factory VideoModel.H138() => VideoModel(
        name: 'Hm138',
        title: '138. Khaub Lig Ntoo Khaub Lig Ntoo',
        lyric: [
          [
            //verse 1
            'Tswv ye xus cov ntshav tau ntws los tus tswv tiv kev txom nyem',
            'thaum kawg tus tswv nws kuj tau tuag vim ntxuav kuv txoj kev txhaum',
            'Khaub lig ntoo khaub lig ntoo kuv tau pom txoj kev kaj thiab kev nyuaj siab uas loj kawg tau ploj mus',
            'vim kuv ntsia khaub lig thiaj li pom qhov kaj nim no kuv thiaj li muaj kev kaj siab',
          ],
          [
            //verse 2
            'Tswv ye xus raug ntsia saum khaub lig txais kuv lub txim kev txhaum',
            'tus tswv qhia pom nws txoj kev hlub tsis muaj kev hlub twg piv',
            'Khaub lig ntoo khaub lig ntoo kuv tau pom txoj kev kaj thiab kev nyuaj siab uas loj kawg tau ploj mus',
            'vim kuv ntsia khaub lig thiaj li pom qhov kaj nim no kuv thiaj li muaj kev kaj siab',
          ],
          [
            //verse 3
            'Tus tswv tiv kev txom nyem ntau heev kuv no tshuav nqe tus tswv',
            'kuv thov fij lub cev thiab ntsuj plig cia ntawm tus tswv ko taw',
            'Khaub lig ntoo khaub lig ntoo kuv tau pom txoj kev kaj thiab kev nyuaj siab uas loj kawg tau ploj mus',
            'vim kuv ntsia khaub lig thiaj li pom qhov kaj nim no kuv thiaj li muaj kev kaj siab',
            '',
          ],
        ],
        maxPage: 7,
      );

  factory VideoModel.H262() => VideoModel(
        name: 'Hm262',
        title: '262. Peb Txoj Sia Tsis Ruaj Tsis Khov',
        lyric: [
          [
            //verse 1
            'Peb txoj sia tsis ruaj tsis khov yam nplooj xyoob nplooj ntoos uas zeeg yam quav nyab ya raws cua tshuab cia ceev faj',
            'lub sij hawm tag mus zuj zus thiab kev tuag nws yeej tsis tos sij hawm tag kev tuag cawm cuag cia ceev faj',
            'Cia ceev faj npaj kom txhij thaum tswv ye xus nws hu nrhiav cia ceev faj',
            'yog koj tseem nyob hauv kev txhaum sij hawm ceeb tsheej yuav ploj mus kua muag ntws npaum twg los lig cia ceev faj',
          ],
          [
            //verse 2
            'Tej paj ntoos los kuj txawj zeeg txoj kev hluas los tseem txawj laus txoj sia nyob tom kawg lawm xwb cia ceev faj',
            'thaum vaj ntsuj plig nws hu caw o neeg txhaum txhob ua siab hnyav es kev vam thaum kawg yuav tag cia ceev faj',
            'Cia ceev faj npaj kom txhij thaum tswv ye xus nws hu nrhiav cia ceev faj',
            'yog koj tseem nyob hauv kev txhaum sij hawm ceeb tsheej yuav ploj mus kua muag ntws npaum twg los lig cia ceev faj',
          ],
          [
            //verse 3
            'Thaum sij haum ntawm kev rau txim thiab kev tuag tau nkag los txog peb yuav mus ntsib tswv ye xus cia ceev faj',
            'cia ceev faj xav tiag hauv siab ua ntej kev tuag los kov yeej thiab ntsuj plig poob hauv ntuj tawg cia ceev faj',
            'Cia ceev faj npaj kom txhij thaum tswv ye xus nws hu nrhiav cia ceev faj',
            'yog koj tseem nyob hauv kev txhaum sij hawm ceeb tsheej yuav ploj mus kua muag ntws npaum twg los lig cia ceev faj',
          ],
          [
            //verse 4
            'O neeg txhaum cia li mloog lus cia li xaiv tus tswv khaws cia es ceeb tsheej zoo siab kov yeej cia ceev faj',
            'tawm ntawm qhov tsaus mus qhov kaj cia tswv ye xus ntxuav kom huv hmo no cia xaiv kev ceeb tsheej cia ceev faj',
            'Cia ceev faj npaj kom txhij thaum tswv ye xus nws hu nrhiav cia ceev faj',
            'yog koj tseem nyob hauv kev txhaum sij hawm ceeb tsheej yuav ploj mus kua muag ntws npaum twg los lig cia ceev faj',
            '',
          ],
        ],
        maxPage: 7,
      );

  factory VideoModel.H343() => VideoModel(
    name: 'Hm343',
    title: '343. Txawm Quaj Tsis Pab Dim Tau',
    lyric: [
      [
        //verse 1
        'Txawm quaj tsis pab dim tau',
        'txawm kua muag yuav los ntws nto',
        'Tsis ua kom kev ntshai ploj mus',
        'kev txhaum thaum ub nws tseem nyob',
        'txawm quaj tsis pab dim tau',
        'Tswv ye xus nws tuag theej kuv',
        'yeem txom nyem saum khaub lig ntoo',
        'nws tos pab kom kuv no dim',
        'ye xus tib leeg pab tau',
      ],
      [
        //verse 2
        'Ua zoo tsis pab dim tau',
        'txawm yuav ua kom yus dawb huv',
        'xav tej yam uas nws dawb huv',
        'los tsis pab kom siab dawb huv',
        'ua zoo tsis pab dim tau',
        'Tswv ye xus nws tuag theej kuv',
        'yeem txom nyem saum khaub lig ntoo',
        'nws tos pab kom kuv no dim',
        'ye xus tib leeg pab tau',
      ],
      [
        //verse 3
        'Tos ntsoov tsis pab dim tau',
        'tag kev vam ua txhaum yuam kev',
        'dag lub siab thov pab kom sai',
        'tos xwb ntshe kuv yuav tuag mus',
        'tos ntsoov tsis pab dim tau',
        'Tswv ye xus nws tuag theej kuv',
        'yeem txom nyem saum khaub lig ntoo',
        'nws tos pab kom kuv no dim',
        'ye xus tib leeg pab tau',
      ],
      [
        //verse 4
        'Ntseeg ye xus pab dim tau',
        'kuv cia siab hauv tswv ye xus',
        'ntseeg ye xus pab zoo tshaj plaws',
        'pab kuv dim mus nrhiav ye xus',
        'ntseeg ye xus pab dim tau',
        'Tswv ye xus nws tuag theej kuv',
        'yeem txom nyem saum khaub lig ntoo',
        'nws tos pab kom kuv no dim',
        'ye xus tib leeg pab tau',
        '',
      ],
    ],
    maxPage: 7,
  );

  factory VideoModel.H364() => VideoModel(
    name: 'Hm364',
    title: '364. Nyob Ze Vajtswv',
    lyric: [
      [
        //verse 1
        'Nyob ze Vaj tswv yim nyob yim ze yim zoo',
        'Txawm nyuaj siab npaum li cas siab xav nyob ze',
        'Kev txom nyem tau ploj mus vim tias nyob ze Vaj tswv',
        'Yim ze tus tswv yim zoo nyob ze Vaj tswv',
      ],
      [
        //verse 2
        'Txawm tias kuv tau nrug deb ntawm nws txoj kev',
        'Hauv lub siab nws kho siab thiab tau ntxhov siab',
        'Thaum ntawd kuv siab cheem tsum nyob ze Vaj tswv ntev ntev',
        'Yim ze tus tswv yim zoo nyob ze Vaj tswv',
      ],
      [
        //verse 3
        'Thaum txom nyem zoo li no tseem muaj kev hlub',
        'Qheb kev kom muaj txoj sia mus saum ceeb tsheej',
        'Pom cov tub txib qhes los hu kuv kom nkag mus ze',
        'Yim ze tus tswv yim zoo nyob ze Vaj tswv',
      ],
      [
        //verse 4
        'Ces kuv thiaj li pom Vaj tswv txoj kev kaj',
        'Kev txom nyem cia ploj mus thaum ze tus tswv',
        'Kuv yuav hu nkauj qhuas nws nyob ze Vaj tswv txhua zaus',
        'Yim ze tus tswv yim zoo nyob ze Vaj tswv',
        '',
      ],
    ],
    maxPage: 7,
  );

  factory VideoModel.H410() => VideoModel(
        name: 'Hm410',
        title: '410. Tiam Sis Kuv Paub Tus Tswv Uas Kuv Ntseeg',
        lyric: [
          [
            //verse 1
            'Kuv tsis paub vim li cas vaj tswv qhia kom pom kev hlub txawv',
            'ua cas tswv ye xus yeem los txhiv ntxuav kuv siab kom dawb huv',
            'Tiam sis kuv paub tus tswv uas kuv ntseeg thiab ntseeg ruaj khov tias tus tswv muaj hwj chim',
            'tsom kwm muab tso cia rau tus tswv kom mus txog lub sij hawm ntawd',
          ],
          [
            //verse 2
            'Kuv tsis paub tias tus tswv tau pub kev ntseeg rau kuv li cas',
            'ua cas thaum kuv ntseeg txoj lus ntawd thiaj tau kev zoo siab hlo',
            'Tiam sis kuv paub tus tswv uas kuv ntseeg thiab ntseeg ruaj khov tias tus tswv muaj hwj chim',
            'tsom kwm muab tso cia rau tus tswv kom mus txog lub sij hawm ntawd',
          ],
          [
            //verse 3
            'Tsis paub tias vaj ntsuj plig tshoov siab kom pom kev txhaum li cas',
            'los yog thaum nyeem tus tswv txoj lus thiaj ua rau kuv tso siab',
            'Tiam sis kuv paub tus tswv uas kuv ntseeg thiab ntseeg ruaj khov tias tus tswv muaj hwj chim',
            'tsom kwm muab tso cia rau tus tswv kom mus txog lub sij hawm ntawd',
          ],
          [
            //verse 4
            'Tsis paub tias thaum twg yuav rov los sij hawm sawv ntxov tsaus ntuj',
            'los yog mus txog thaum kuv yuav tuag los tau ntsib saum ceeb tsheej',
            'Tiam sis kuv paub tus tswv uas kuv ntseeg thiab ntseeg ruaj khov tias tus tswv muaj hwj chim',
            'tsom kwm muab tso cia rau tus tswv kom mus txog lub sij hawm ntawd',
            '',
          ],
        ],
        maxPage: 7,
      );
}
