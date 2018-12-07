import 'package:mediapp/models/appointments_class.dart';
import 'package:mediapp/models/doctors_class.dart';
import 'package:mediapp/models/firstaid_item_class.dart';
import 'package:mediapp/models/medicine_item_class.dart';
import 'package:mediapp/models/order_cart_class.dart';
import 'package:mediapp/models/order_class.dart';
import 'package:mediapp/models/specilisation_class.dart';

//all orders stored here
List<OrderItem> orders = <OrderItem>[
  OrderItem(
    status: 'ARRIVING MON',
    orderName: 'Order 1',
    hardcodeDate: 'Wed,June 12 2018',
  ),
  OrderItem(
    status: 'ARRIVING TUe',
    orderName: 'Order 2',
    hardcodeDate: 'Wed,June 13 2018',
  ),
  OrderItem(
    status: 'DELIVERED MON',
    orderName: 'Order 3',
    hardcodeDate: 'Wed,June 10 2018',
  ),
];
List<OrderCart> orderCart = <OrderCart>[];
//all medicines here
List<MedicineItem> medicines = <MedicineItem>[
  MedicineItem(
    medicineTitle: 'Metformin',
    prescription: 'Prescription required',
    medicineImage:
        'https://images-na.ssl-images-amazon.com/images/I/71eE0kpL7eL._SY679_.jpg',
    medicineDetail:
        'Paracetamol, also known as acetaminophen or APAP, is a medicine used to treat pain and fever.',
    medicineSalt: '',
    dosage:
        'Regular strength: 325-650 mg PO/PR q4hr PRN; not to exceed 3250 mg/day; under supervision of healthcare professional, daily doses of up to 4 g/day may be used',
    interactions: 'Use with caution with any type of liver disease',
    instructions: '2 capsules (1300 mg) PO q8hr PRN; not to exceed 3.9 g/day',
    warnings: 'Use only when prescription is given',
  ),
  MedicineItem(
    medicineTitle: 'Naproxen',
    prescription: 'Prescription required',
    medicineImage:
        'https://images-na.ssl-images-amazon.com/images/I/71eE0kpL7eL._SY679_.jpg',
    medicineDetail:
        'Paracetamol, also known as acetaminophen or APAP, is a medicine used to treat pain and fever.',
    medicineSalt: '',
    dosage:
        'Regular strength: 325-650 mg PO/PR q4hr PRN; not to exceed 3250 mg/day; under supervision of healthcare professional, daily doses of up to 4 g/day may be used',
    interactions: 'Use with caution with any type of liver disease',
    instructions: '2 capsules (1300 mg) PO q8hr PRN; not to exceed 3.9 g/day',
    warnings: 'Use only when prescription is given',
  ),
  MedicineItem(
    medicineTitle: 'Vanax',
    prescription: 'Prescription required',
    medicineImage:
        'https://images-na.ssl-images-amazon.com/images/I/71eE0kpL7eL._SY679_.jpg',
    medicineDetail:
        'Paracetamol, also known as acetaminophen or APAP, is a medicine used to treat pain and fever.',
    medicineSalt: '',
    dosage:
        'Regular strength: 325-650 mg PO/PR q4hr PRN; not to exceed 3250 mg/day; under supervision of healthcare professional, daily doses of up to 4 g/day may be used',
    interactions: 'Use with caution with any type of liver disease',
    instructions: '2 capsules (1300 mg) PO q8hr PRN; not to exceed 3.9 g/day',
    warnings: 'Use only when prescription is given',
  ),
];
List<FirstAidItem> firstAidArticles = <FirstAidItem>[
  FirstAidItem(
      firstAidTitle: 'Burns',
      firstAidDetail:
          """Lorem ipsum dolor sit amet, consectetur adipisicing elit,sed do eiusmod tempor incididunt ut ero labore et dolore magna aliqua.Ut enim ad minim veniam, quis nostrud exercitation ullamco poriti laboris nisi ut aliquip ex ea commodo consequat.Duis aute irure dolor in reprehenderit in uienply voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat norin proident,sunt in culpa qui officia deserunt mollit anim id est laborum."""),
  FirstAidItem(
      firstAidTitle: 'Altitide sickness',
      firstAidDetail:
          """Lorem ipsum dolor sit amet, consectetur adipisicing elit,sed do eiusmod tempor incididunt ut ero labore et dolore magna aliqua.Ut enim ad minim veniam, quis nostrud exercitation ullamco poriti laboris nisi ut aliquip ex ea commodo consequat.Duis aute irure dolor in reprehenderit in uienply voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat norin proident,sunt in culpa qui officia deserunt mollit anim id est laborum."""),
  FirstAidItem(
      firstAidTitle: 'Anaphylaxins',
      firstAidDetail:
          """Lorem ipsum dolor sit amet, consectetur adipisicing elit,sed do eiusmod tempor incididunt ut ero labore et dolore magna aliqua.Ut enim ad minim veniam, quis nostrud exercitation ullamco poriti laboris nisi ut aliquip ex ea commodo consequat.Duis aute irure dolor in reprehenderit in uienply voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat norin proident,sunt in culpa qui officia deserunt mollit anim id est laborum."""),
  FirstAidItem(
      firstAidTitle: 'Bonefracture',
      firstAidDetail:
          """Lorem ipsum dolor sit amet, consectetur adipisicing elit,sed do eiusmod tempor incididunt ut ero labore et dolore magna aliqua.Ut enim ad minim veniam, quis nostrud exercitation ullamco poriti laboris nisi ut aliquip ex ea commodo consequat.Duis aute irure dolor in reprehenderit in uienply voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat norin proident,sunt in culpa qui officia deserunt mollit anim id est laborum."""),
];

//List of Specilisation
List<Specilisation> specilisation = <Specilisation>[
  Specilisation(
      specilisationName: 'Opthamologist',
      doctorsInSpecilisation: opthamologist),
  Specilisation(
      specilisationName: 'Psychatrist', doctorsInSpecilisation: opthamologist),
  Specilisation(
      specilisationName: 'Homeopathy', doctorsInSpecilisation: opthamologist),
  Specilisation(
      specilisationName: 'Dentist', doctorsInSpecilisation: opthamologist),
  Specilisation(
      specilisationName: 'Dermalogost', doctorsInSpecilisation: opthamologist),
  Specilisation(
      specilisationName: 'Ayurvedic', doctorsInSpecilisation: opthamologist),
  Specilisation(
      specilisationName: 'Cardiologist', doctorsInSpecilisation: opthamologist),
];

//list of doctors
List<Doctor> opthamologist = <Doctor>[
  Doctor(
      clinicAddress: 'New York,NY',
      clinicName: 'Dr. Josh Clinic',
      doctorClients: 14,
      doctorName: 'Josh C',
      doctorDetails:
          'Ut labore et dolore roipi mana aliqua. Enim adeop minim veeniam nostruklad',
      doctorExperienceYears: 12,
      doctorRating: 4.5,
      doctorSpecilisation: 'opthamologist',
      doctorImage:
          'https://media.proprofs.com/images/QM/user_images/1886575/1450426589.jpg'),
  Doctor(
      doctorClients: 14,
      clinicAddress: 'Boston',
      clinicName: 'Dr. Bosh Clinic',
      doctorName: 'Bosh A',
      doctorDetails:
          'Ut labore et dolore roipi mana aliqua. Enim adeop minim veeniam nostruklad',
      doctorExperienceYears: 12,
      doctorRating: 4.5,
      doctorSpecilisation: 'opthamologist',
      doctorImage:
          'https://media.proprofs.com/images/QM/user_images/1886575/1450426589.jpg'),
];
List<Doctor> psychatrist = <Doctor>[];
List<Doctor> homeopathy = <Doctor>[];
List<Doctor> dentist = <Doctor>[];
List<Doctor> dermalogost = <Doctor>[];
List<Doctor> ayurvedic = <Doctor>[];
List<Doctor> cardiologist = <Doctor>[];
//list of clinics

List<Doctor> clinics = <Doctor>[
  Doctor(
      clinicAddress: 'New York,NY',
      clinicName: 'Dr. Josh Clinic',
      doctorClients: 14,
      doctorName: 'Josh C',
      doctorDetails:
          'Ut labore et dolore roipi mana aliqua. Enim adeop minim veeniam nostruklad',
      doctorExperienceYears: 12,
      doctorRating: 4.5,
      doctorSpecilisation: 'opthamologist',
      doctorImage:
          'https://media.proprofs.com/images/QM/user_images/1886575/1450426589.jpg'),
  Doctor(
      doctorClients: 14,
      clinicAddress: 'Boston',
      clinicName: 'Dr. Bosh Clinic',
      doctorName: 'Bosh A',
      doctorDetails:
          'Ut labore et dolore roipi mana aliqua. Enim adeop minim veeniam nostruklad',
      doctorExperienceYears: 12,
      doctorRating: 4.5,
      doctorSpecilisation: 'opthamologist',
      doctorImage:
          'https://media.proprofs.com/images/QM/user_images/1886575/1450426589.jpg'),
];
//clinics.addAll(opthamologist);

List<DoctorAppointment> appointments = <DoctorAppointment>[
  DoctorAppointment(
    hardCodeDate: 'Wed,June 12 2018',
    doctor: Doctor(doctorName: 'Dr john Doe'),
    status: 'Upconing',
  ),
  DoctorAppointment(
    hardCodeDate: 'Wed,June 12 2018',
    doctor: Doctor(doctorName: 'Dr john Doe'),
    status: '',
  ),
  DoctorAppointment(
    hardCodeDate: 'Wed,June 12 2018',
    doctor: Doctor(doctorName: 'Dr john Doe'),
    status: '',
  ),
];
