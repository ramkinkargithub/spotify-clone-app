import 'package:spotify/models/category.dart';

class CategoryOperations {
  CategoryOperations._() {}
  static List<Category> getCategories() {
    return <Category>[
      Category(
        'Linkin Park',
        'https://i.pinimg.com/originals/a6/8c/c5/a68cc57783c2617b51743d0d883757cd.jpg',
      ),Category(
        'AC DC',
        'https://at-cdn-s01.audiotool.com/2015/03/07/documents/thunderstruck_ac_dc_cover/1/cover256x256-cf6c1bf06ad5469d9796ec57e78cf910.jpg',
      ),
      Category(
        'Nirvana',
        'https://c-fa.cdn.smule.com/rs-s95/arr/81/39/ba7c9752-88a6-43b1-8638-ed7e2d7ed5d8.jpg',
      ),
      Category(
        'Queen',
        'https://c-fa.cdn.smule.com/rs-s27/arr/4b/44/e69943a2-9c83-41ee-88be-634b4a63523c_256.jpg',
      ),
    ];
  }
}
