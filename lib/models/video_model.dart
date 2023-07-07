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
      ];

  factory VideoModel.H40() => VideoModel(
        name: 'Hm40',
        title: '40. พระพักตร์พระเจ้าผุดผ่องเเวววาม',
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


}
