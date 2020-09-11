import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TheData extends ChangeNotifier{

  //1) stores the selectedDate
  String _onSelectedDate=DateFormat('d').format(DateTime.now()).toLowerCase();
  String  get onSelectedDate=> _onSelectedDate;
  set onSelectedDate(String val){
    _onSelectedDate = val;
    notifyListeners();
  }

  //2) Stores the selectedDay month
  String _onSelectedDateMonth =DateFormat('MMMM').format(DateTime.now()).toString();
  String  get onSelectedDateMonth=> _onSelectedDateMonth;
  set onSelectedDateMonth(String val){
    _onSelectedDateMonth = val;
    notifyListeners();
  }

  //3)adding event variable
  bool _addEvent =false;
  bool get addEvent => _addEvent;
  set addEvent(bool val){
    _addEvent = val;
    notifyListeners();
  }



  //1-1) adding the selected date to the var "onSelectedDate"
  addingTheSelectedDate({date}){
    onSelectedDate = DateFormat('d').format(date).toString();
    notifyListeners();
  }

  //2-2) adding the selected month to the var "onSelectedDateMonth"
  addingTheSelectedMonth({date}){
    onSelectedDateMonth = DateFormat('MMMM').format(date).toString();
  }

  //3-3) switiching the addEvent value
  addEventSwitch(){
    addEvent = !addEvent;
    notifyListeners();
  }
}