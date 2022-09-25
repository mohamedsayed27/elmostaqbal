import '../../data/models/shared_model.dart';

class DummyData{
  static final List<SharedModel> departmentList = [
    const SharedModel(
      image: 'assets/images/Engineer@2x.png',
      label: 'المساحة والهندسة',
    ),
    const SharedModel(
        image: 'assets/images/Mask Group 2.png', label: 'تكنولوجيا المعلومات'),
    const SharedModel(
        image: 'assets/images/raxs@2x.png', label: 'التحاليل الطبية'),
  ];

  static final List<SharedModel> onlineCoursesList = [
    const SharedModel(
      image: 'assets/images/1@2x.png',
      label: 'تعلم تجربة المستخدم',
    ),
    const SharedModel(
      image: 'assets/images/2@2x.png',
      label: 'تعلم اداره الاعمال',
    ),
  ];

  static final List<SharedModel> servicesList = [
    const SharedModel(
      image: 'assets/images/الاخبار والاحداث.png',
      label: 'الاخبار والاحداث',
    ),
    const SharedModel(
      image: 'assets/images/طلب الالتحاق.png',
      label: 'طلب الالتحاق',
    ),
    const SharedModel(
      image: 'assets/images/جدول الدراسى.png',
      label: 'جدول الدراسي',
    ),
    const SharedModel(
      image: 'assets/images/كورسات.png',
      label: 'الكورسات',
    ),
    const SharedModel(
      image: 'assets/images/شركاء النجاح.png',
      label: 'شركة النجاح',
    ),
    const SharedModel(
      image: 'assets/images/اتصل بنا.png',
      label: 'اتصل بنا',
    ),
  ];

  DummyData._();
}