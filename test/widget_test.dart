
// @override
// Widget build(BuildContext context) {
//   // 1. استدعاء كائن التجاوب
//   final responsive = AppResponsive(context);

//   // 2. تحديد الأبعاد الافتراضية للكرت الواحد بناءً على مقاسات Figma الأصيلة
//   // لنفترض أن كرت البيتزا في Figma كان عرضه 160 وارتفاعه 220 مثلاً
//   double itemWidth = responsive.setWidth(160);
//   double itemHeight = responsive.setHeight(220);

//   // 3. حساب النسبة الذكية المتغيرة بتغير الأجهزة
//   double dynamicAspectRatio = itemWidth / itemHeight;

//   return GridView.builder(
//     shrinkWrap: true,
//     physics: const NeverScrollableScrollPhysics(),
//     itemCount: 4, // عدد العناصر
//     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//       crossAxisCount: 2, // عمودين كما في الصورة
//       crossAxisSpacing: responsive.setWidth(15), // مسافة أفقية متجاوبة
//       mainAxisSpacing: responsive.setHeight(20),  // مسافة رأسية متجاوبة
//       childAspectRatio: dynamicAspectRatio,       // 💡 هنا السحر! النسبة تتغير ديناميكياً
//     ),
//     itemBuilder: (context, index) {
//       return const CustomFoodCard(); // الكرت الخاص بك
//     },
//   );
// }

