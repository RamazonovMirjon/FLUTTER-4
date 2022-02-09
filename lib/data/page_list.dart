import 'package:darslar/screens/dars4.dart';
import 'package:darslar/screens/dars5.dart';

import '../models/page_model.dart';
import '../screens/dars3.dart';


class PageData {
  static final List<PageModel> _pages = [
    PageModel('3-dars', '20.01.2022', '_image', const Dars3()),
    PageModel('4-dars', '20.01.2022', '_image', const Bottons()),
    PageModel('5-dars', '20.01.2022', '_image', const Narxlar()),
  ];

  static List<PageModel> get pages => _pages;
}
