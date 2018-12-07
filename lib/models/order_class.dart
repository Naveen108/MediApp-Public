import 'package:mediapp/models/medicine_item_class.dart';

class OrderItem {
  String status;
  String orderName;
  String hardcodeDate;
  DateTime dateTime;
  List<MedicineItem> medicine;
  OrderItem({this.status, this.hardcodeDate, this.dateTime, this.orderName});
}
