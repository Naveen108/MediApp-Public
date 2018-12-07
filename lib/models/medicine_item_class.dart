class MedicineItem {
  String medicineTitle;
  String medicineSalt;
  String prescription;
  String medicineDetail;
  String medicineImage;
  String dosage;
  String interactions;
  String instructions;
  String warnings;
  int quantity;
  double cost;
  MedicineItem(
      {this.medicineTitle,
      this.dosage,
      this.prescription,
      this.instructions,
      this.interactions,
      this.medicineDetail,
      this.medicineImage,
      this.medicineSalt,
      this.warnings,
      this.cost,
      this.quantity});
}
