import 'package:flutter/material.dart';
import '../sort_settings_page/sort_settings_page.dart';

class SearchResultsButtonsActions{
  void moveToSortSetting(BuildContext context){
    Navigator.of(context).push(MaterialPageRoute<void>(
      builder: (BuildContext context) => const SortSettingsPage(),
    ),);
  }

  void moveToFilterSetting(BuildContext context){
    Navigator.of(context).push(MaterialPageRoute<void>(
      builder: (BuildContext context) => const SortSettingsPage(),
    ),);
  }
}