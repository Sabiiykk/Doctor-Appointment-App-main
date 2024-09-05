import 'package:flutter/material.dart';

class DoctorDetailModel {
  final String image;
  final String aboutDescription;
  final String location;
  final double rating;
  final String reviews;

  DoctorDetailModel({
    required this.image,
    required this.aboutDescription,
    required this.location,
    required this.rating,
    required this.reviews,
  });

  String doctorName() {
    return aboutDescription.split('')[1];
  }

  static DoctorDetailModel? selectedDoc(String doctorName) {
    if (doctorName == "Dr. Steven Carter") {
      return DoctorDetailModel(
          aboutDescription:
              "Dr. Steven Carter is a distinguished cardiologist with extensive experience in diagnosing and treating heart-related conditions.\n"
              "His expertise includes managing complex cardiovascular diseases such as coronary artery disease, heart failure, and arrhythmias.\n"
              "Dr. Carter is renowned for his thorough diagnostic skills and personalized treatment plans, which are tailored to meet each patient's unique cardiovascular needs.\n"
              "His commitment to using the latest technologies and evidence-based practices ensures that his patients receive the highest standard of care for their heart health.\n",
          location: "Kingston, Jamaica",
          rating: 5.0,
          reviews: "Good",
          image: 'assets/doctor01.jpeg');
    }

    if (doctorName == "Dr. Richard Wilson") {
      return DoctorDetailModel(
          aboutDescription:
              "Dr. Richard Wilson is a highly respected gynecologist specializing in women's reproductive health.\n"
              " With years of experience in managing various gynecological conditions, he provides comprehensive care including routine exams, prenatal care, and treatment for complex gynecological issues.\n"
              "Dr. Wilson is known for his empathetic approach and dedication to addressing each patient's individual concerns.\n"
              "His practice emphasizes preventive care and education, ensuring women have the knowledge and support they need to maintain optimal reproductive health.",
          location: "St.Ann, Jamaica",
          rating: 5.0,
          reviews: "Good",
          image: 'assets/doctor02.png');
    }

    if (doctorName == "Dr. Robert Smith") {
      return DoctorDetailModel(
          aboutDescription:
              "Dr. Robert Smith is an accomplished dermatologist with expertise in treating a broad spectrum of skin conditions. .\n"
              "From managing chronic skin diseases to performing advanced cosmetic procedures, Dr. Smith's practice is centered on delivering exceptional care tailored to each patient's needs."
              "He combines his extensive knowledge with the latest dermatological advancements to provide effective treatments and enhance skin health.\n"
              "Dr. Smith is dedicated to educating his patients about skincare and prevention strategies to achieve the best possible outcomes.",
          location: "Kingston, Jamaica",
          rating: 5.0,
          reviews: "Good",
          image: 'assets/doctor03.jpeg');
    }

    if (doctorName == "Dr. Renee Richards") {
      return DoctorDetailModel(
          aboutDescription:
              "Dr. Renee Richards is a skilled ophthalmologist specializing in the diagnosis and treatment of eye disorders.\n"
              "Her practice covers a wide range of services, from routine eye exams to complex surgical procedures for conditions such as cataracts and glaucoma.\n"
              "Dr. Richards is known for her precision and attention to detail, ensuring that each patient receives comprehensive care aimed at preserving and improving vision. Her dedication to staying current with advances in ophthalmology helps her provide the best possible care for her patients 'eye health.",
          location: "Kingston, Jamaica",
          rating: 5.0,
          reviews: "Good",
          image: 'assets/doctor04.jpeg');
    }

    if (doctorName == "Dr. Emily Johnson") {
      return DoctorDetailModel(
          aboutDescription:
              " Dr. Emily Johnson is a dedicated pediatrician with a focus on the health and well-being of children from infancy through adolescence.\n "
              "She provides preventive care, diagnoses and treats common childhood illnesses, and offers guidance on developmental milestones and vaccinations.\n"
              "Dr. Johnson is recognized for her compassionate approach and commitment to creating a supportive environment for both children and their families.\n"
              "Her goal is to ensure that every child grows up healthy and happy, with personalized care that meets their individual needs.",
          location: "Kingston, Jamaica",
          rating: 5.0,
          reviews: "Good",
          image: 'assets/doctor05.jpeg');
    }

    if (doctorName == "Dr. Tyler Anderson") {
      return DoctorDetailModel(
          aboutDescription:
              "Dr. Tyler Anderson is a highly skilled endocrinologist specializing in the diagnosis and treatment of hormonal disorders.\n"
              "From managing conditions like diabetes and thyroid disorders to addressing complex endocrine issues, Dr. Anderson's practice is centered on delivering evidence-based care tailored to each patient's unique needs.\n"
              "His approach combines comprehensive diagnostic evaluations with personalized treatment plans to optimize endocrine health and improve overall well-being.",
          location: "Kingston, Jamaica",
          rating: 5.0,
          reviews: "Good",
          image: 'assets/doctor06.jpeg');
    }

    if (doctorName == "Dr. Sarah Miller") {
      return DoctorDetailModel(
          aboutDescription:
              "Dr. Sarah Miller is a compassionate psychiatrist with expertise in diagnosing and treating a wide range of mental health conditions.\n"
              " Her practice includes providing psychotherapy, medication management, and developing individualized treatment plans for disorders such as depression, anxiety, and bipolar disorder.\n"
              "Dr. Miller is known for her empathetic approach and commitment to understanding each patient's unique mental health needs, helping them achieve stability and improved quality of life.",
          location: "Kingston, Jamaica",
          rating: 5.0,
          reviews: "Good",
          image: 'assets/doctor07.jpeg');
    }

    if (doctorName == "Dr. Liam Johnson") {
      return DoctorDetailModel(
          aboutDescription:
              "Dr. Liam Johnson is a dedicated oncologist specializing in the treatment of cancer.\n"
              " With extensive experience in managing various types of cancer, Dr. Johnson provides comprehensive care that includes advanced diagnostic techniques, targeted therapies, and supportive care throughout the treatment process.\n"
              "His approach emphasizes a collaborative effort with patients and their families to develop personalized treatment plans and provide emotional support during their cancer journey.",
          location: "Kingston, Jamaica",
          rating: 5.0,
          reviews: "Good",
          image: 'assets/doctor08.jpeg');
    }

    if (doctorName == "Dr. Christopher Scott") {
      return DoctorDetailModel(
          aboutDescription:
              "Dr. Christopher Scott is a seasoned pediatrician focused on the overall health and development of children.\n"
              "His practice involves routine health check-ups, early diagnosis of potential health issues, and providing guidance on nutrition and development.\n"
              "Dr. Scott is committed to delivering care that supports both physical and emotional well-being, ensuring that children receive the best possible start in life through preventive and therapeutic measures.",
          location: "Kingston, Jamaica",
          rating: 5.0,
          reviews: "Good",
          image: 'assets/doctor09.jpeg');
    }

    return null;
  }
}
