import 'package:mediapp/models/doctors_class.dart';

class Specilisation {
  String specilisationName;
  List<Doctor> doctorsInSpecilisation = <Doctor>[];
  Specilisation({this.doctorsInSpecilisation, this.specilisationName});
}
