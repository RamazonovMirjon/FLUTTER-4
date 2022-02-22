import 'package:darslar/screens/dars13/screens/my_home_page.dart';
import 'package:darslar/screens/dars17/home_page.dart';
import 'package:darslar/screens/dars4.dart';
import 'package:darslar/screens/dars5.dart';
import 'package:darslar/screens/dars6.dart';

import '../models/page_model.dart';
import '../screens/dars18_steps/step_home_page.dart';
import '../screens/dars3.dart';
import '../screens/expansionTitle.dart';


class PageData {
  static final List<PageModel> _pages = [
    PageModel('3-dars', '20.01.2022', '_image', const Dars3()),
    PageModel('4-dars', '20.01.2022', '_image', const Bottons()),
    PageModel('5-dars', '20.01.2022', '_image', const Narxlar()),
    PageModel('6-Stac', '11.02.2022', '_image', const MyStack()),
    PageModel('13-pages', '11.02.2022', '_image', const MyHomePage()),
    PageModel('15-Form', '11.02.2022', '_image', const StepHomePage()),
    PageModel('17-checkBox', '11.02.2022', '_image', const MyCheckbox()),
    PageModel('', '22.02.2022', '_image', const Extansion()),




  ];

  static List<PageModel> get pages => _pages;
}
