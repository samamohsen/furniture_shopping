import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../core/models/category.dart';
import '../../core/models/check_box_row.dart';

class Controller {
  late Category selectedCategory;

  List<Category> categories = [
    Category(image: 'star', title: 'Popular'),
    Category(image: 'chair_icon', title: 'Chair'),
    Category(image: 'table_icon', title: 'Table'),
    Category(image: 'sofa_icon', title: 'Arm Chair'),
    Category(image: 'bed_icon', title: 'Bed'),
  ];



  //controller for ShippingAddressView

  CheckBoxRow? selectedCheckBox;

  List<CheckBoxRow> checkBoxes = [
    CheckBoxRow(checkBox: '1', title: 'Use as the shipping address'),
    CheckBoxRow(checkBox: '2', title: 'Use as the shipping address'),
    CheckBoxRow(checkBox: '3', title: 'Use as the shipping address'),
  ];

  void selectCheckBox(CheckBoxRow value) {
    if (selectedCheckBox == value) {
      selectedCheckBox = null;
      return;
    }
    selectedCheckBox = value;
  }
}
