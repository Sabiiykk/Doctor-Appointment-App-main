
class DoctorDetailModel {
  final String image;
  final String aboutDescription;
  final String location;
  final double rating;
  final String patientsReviews;
  final int patients;
  final String experience;

  DoctorDetailModel(
      {required this.image,
      required this.aboutDescription,
      required this.location,
      required this.rating,
      required this.patientsReviews,
      required this.patients,
      required this.experience});

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
        location: "80 Lady Musgrave Road, Unit 15, Kingston",
        rating: 4.5,
        patientsReviews:
            "Trudy Mclean- Dr. Carter is truly a gem. He listened to all my concerns with genuine care and took the time to explain the treatment options in detail. I left feeling heard and reassured.\n",
        image: 'assets/doctor01.jpeg',
        patients: 130,
        experience: '25 Years',
      );
    }

    if (doctorName == "Dr. Richard Wilson") {
      return DoctorDetailModel(
        aboutDescription:
            "Dr. Richard Wilson is a highly respected gynecologist specializing in women's reproductive health.\n"
            " With years of experience in managing various gynecological conditions, he provides comprehensive care including routine exams, prenatal care, and treatment for complex gynecological issues.\n"
            "Dr. Wilson is known for his empathetic approach and dedication to addressing each patient's individual concerns.\n"
            "His practice emphasizes preventive care and education, ensuring women have the knowledge and support they need to maintain optimal reproductive health.",
        location: "8 Fairway Avenue, Kingston, St Andrew",
        rating: 5.0,
        patientsReviews:
            "Camelle Weston- Dr. Wilson was incredibly thorough in his examination and gave clear explanations for every test he recommended. I felt confident in his professional advice.\n"
            "Pinky-Lou Weston- I appreciate how thorough Dr. Wilson was. He didn’t rush through the appointment, and his detailed approach helped me understand my condition better.\n",
        image: 'assets/doctor02.png',
        patients: 100,
        experience: '14 Years',
      );
    }

    if (doctorName == "Dr. Robert Smith") {
      return DoctorDetailModel(
        aboutDescription:
            "Dr. Robert Smith is an accomplished dermatologist with expertise in treating a broad spectrum of skin conditions. .\n"
            "From managing chronic skin diseases to performing advanced cosmetic procedures, Dr. Smith's practice is centered on delivering exceptional care tailored to each patient's needs."
            "He combines his extensive knowledge with the latest dermatological advancements to provide effective treatments and enhance skin health.\n"
            "Dr. Smith is dedicated to educating his patients about skincare and prevention strategies to achieve the best possible outcomes.",
        location: "22H Old Hope Rd, Kingston 5, Jamaica",
        rating: 5.0,
        patientsReviews:
            "Abigaye Pringle- Dr. Smith quickly identified the issue and had a treatment plan ready in no time. His efficiency and skill were impressive.\n"
            "Alicia Brackett- I’m thankful for Dr. Smith fast and accurate diagnosis. His expertise is unmatched, and I was out of the office in record time with the right treatment.\n",
        image: 'assets/doctor03.jpeg',
        patients: 85,
        experience: '9 Years',
      );
    }

    if (doctorName == "Dr. Renee Richards") {
      return DoctorDetailModel(
        aboutDescription:
            "Dr. Renee Richards is a skilled ophthalmologist specializing in the diagnosis and treatment of eye disorders.\n"
            "Her practice covers a wide range of services, from routine eye exams to complex surgical procedures for conditions such as cataracts and glaucoma.\n"
            "Dr. Richards is known for her precision and attention to detail, ensuring that each patient receives comprehensive care aimed at preserving and improving vision. Her dedication to staying current with advances in ophthalmology helps her provide the best possible care for her patients 'eye health.",
        location: "Unit 2, 88 Barbican Road, Kingston, KN",
        rating: 4.3,
        patientsReviews:
            "Tarah Weston- Dr. Richards has an exceptional bedside manner. she made sure I felt comfortable throughout the consultation, answering every question with patience and care.\n"
            "Giovanni Haron- Dr. Richards is not only knowledgeable but also kind and approachable. she took the time to make sure I was at ease during the entire process.\n",
        image: 'assets/doctor04.jpeg',
        patients: 200,
        experience: '8 Years',
      );
    }

    if (doctorName == "Dr. Emily Johnson") {
      return DoctorDetailModel(
        aboutDescription:
            " Dr. Emily Johnson is a dedicated pediatrician with a focus on the health and well-being of children from infancy through adolescence.\n "
            "She provides preventive care, diagnoses and treats common childhood illnesses, and offers guidance on developmental milestones and vaccinations.\n"
            "Dr. Johnson is recognized for her compassionate approach and commitment to creating a supportive environment for both children and their families.\n"
            "Her goal is to ensure that every child grows up healthy and happy, with personalized care that meets their individual needs.",
        location: "94 1/4 Old Hope Road, Kingston, St Andrew",
        rating: 4.0,
        patientsReviews:
            "Leah Douglas- Dr. Johnson was so friendly and patient. She answered all my questions so that i can get the right answers and solutions for my daughter health, even the smallest ones, without rushing me through the appointment.\n"
            "Vivan Thompson- Dr. Johnson made me feel welcome and comfortable. Her friendly attitude and patient approach put me and my child at ease instantly.\n",
        image: 'assets/doctor05.jpeg',
        patients: 200,
        experience: '11 Years',
      );
    }

    if (doctorName == "Dr. Tyler Anderson") {
      return DoctorDetailModel(
        aboutDescription:
            "Dr. Tyler Anderson is a highly skilled endocrinologist specializing in the diagnosis and treatment of hormonal disorders.\n"
            "From managing conditions like diabetes and thyroid disorders to addressing complex endocrine issues, Dr. Anderson's practice is centered on delivering evidence-based care tailored to each patient's unique needs.\n"
            "His approach combines comprehensive diagnostic evaluations with personalized treatment plans to optimize endocrine health and improve overall well-being.",
        location: "3a Winchester Rd Kgn 10, Kingston, AW",
        rating: 3.9,
        patientsReviews:
            "Shari-Kay Seymour- Dr. Anderson is a wealth of knowledge. He explained my condition in a way I could understand and was genuinely caring throughout the appointment.\n"
            "Jamilea Douglas- Dr. Anderson is an outstanding doctor. He’s not only incredibly knowledgeable but also truly cares about her patients' well-being.\n",
        image: 'assets/doctor06.jpeg',
        patients: 200,
        experience: '12 Years',
      );
    }

    if (doctorName == "Dr. Sarah Miller") {
      return DoctorDetailModel(
        aboutDescription:
            "Dr. Sarah Miller is a compassionate psychiatrist with expertise in diagnosing and treating a wide range of mental health conditions.\n"
            " Her practice includes providing psychotherapy, medication management, and developing individualized treatment plans for disorders such as depression, anxiety, and bipolar disorder.\n"
            "Dr. Miller is known for her empathetic approach and commitment to understanding each patient's unique mental health needs, helping them achieve stability and improved quality of life.",
        location: "15 Eastwood Park Road, Kingston, St Andrew ",
        rating: 5.0,
        patientsReviews:
            "Kerry-Ann Thomas- Dr. Miller was incredibly reassuring during my procedure. She checked in frequently, making sure I was comfortable and well-informed every step of the way.\n"
            "Atalaya Wisdom- Dr. Miller attentiveness during my recovery was amazing. She was always available to address any concerns and reassured me throughout the healing process.\n",
        image: 'assets/doctor07.jpeg',
        patients: 200,
        experience: '5 Years',
      );
    }

    if (doctorName == "Dr. Liam Johnson") {
      return DoctorDetailModel(
        aboutDescription:
            "Dr. Liam Johnson is a dedicated oncologist specializing in the treatment of cancer.\n"
            " With extensive experience in managing various types of cancer, Dr. Johnson provides comprehensive care that includes advanced diagnostic techniques, targeted therapies, and supportive care throughout the treatment process.\n"
            "His approach emphasizes a collaborative effort with patients and their families to develop personalized treatment plans and provide emotional support during their cancer journey.\n",
        location: "95-97 Constant Spring Road, Kingston St Andrew",
        rating: 4.5,
        patientsReviews:
            "Daniel Gooden- Dr. Johnson is always on time, and appointments are smooth and organized. I’ve never had to wait long, and the entire staff is professional.\n"
            "Yollan Davis- Dr.  clinic runs like clockwork. The organization is impeccable, and Dr. Reed herself is punctual and delivers top-notch care.\n",
        image: 'assets/doctor08.jpeg',
        patients: 200,
        experience: '16 Years',
      );
    }

    if (doctorName == "Dr. Christopher Scott") {
      return DoctorDetailModel(
        aboutDescription:
            "Dr. Christopher Scott is a seasoned pediatrician focused on the overall health and development of children.\n"
            "His practice involves routine health check-ups, early diagnosis of potential health issues, and providing guidance on nutrition and development.\n"
            "Dr. Scott is committed to delivering care that supports both physical and emotional well-being, ensuring that children receive the best possible start in life through preventive and therapeutic measures.",
        location: "111c Constant Spring Road, Kingston, Jamaica, Saint Andrew ",
        rating: 4.9,
        patientsReviews:
            "Nadeisha Donaldson- Dr. Scott is a wealth of knowledge. He explained my son's condition in a way I could understand and was genuinely caring throughout the appointment.\n"
            "Kerise Bonner- Dr. Scott is an outstanding doctor. He’s not only incredibly knowledgeable but also truly cares about her patients' well-being.\n",
        image: 'assets/doctor09.jpeg',
        patients: 125,
        experience: '12 Years',
      );
    }

    return null;
  }
}
