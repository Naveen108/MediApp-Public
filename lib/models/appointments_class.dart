import 'package:mediapp/models/doctors_class.dart';

class DoctorAppointment {
  DateTime dateTime;
  String hardCodeDate;
  Doctor doctor;
  String status;
  DoctorAppointment({
    this.doctor,
    this.status,
    this.dateTime,
    this.hardCodeDate,
  });
}
