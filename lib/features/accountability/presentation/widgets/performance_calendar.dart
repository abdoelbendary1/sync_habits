import 'package:flutter/material.dart';

class PerformanceCalendar extends StatelessWidget {
  final String monthYear; // مثل "OCTOBER 2023"

  const PerformanceCalendar({super.key, required this.monthYear});

  @override
  Widget build(BuildContext context) {
    final daysOfWeek = ['M', 'T', 'W', 'T', 'F', 'S', 'S'];

    // دامي داتا لتمثيل الأيام وحالاتها بناءً على الصورة المرفقة
    // 1: مكتمل نيون، 2: دائرة مفرغة (جزئي)، 3: رمادي (مفقود)، 0: فارغ قبل بداية الشهر
    final List<int> daysData = [
      0, 0, 0, 1, 1, 2, 3, // الأسبوع 1
      1, 1, 1, 2, 1, 1, 1, // الأسبوع 2
      1, 1, 1, 3, 1, 2, 2, // الأسبوع 3
      1, 1, 1, 1, 3, 3, 3, // الأسبوع 4
    ];

    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color(0xFF161F1A),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Colors.white10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                monthYear,
                style: const TextStyle(
                  color: Colors.grey,
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.1,
                ),
              ),
              Row(
                children: [
                  Icon(
                    Icons.chevron_left,
                    color: Colors.white.withOpacity(0.6),
                  ),
                  const SizedBox(width: 10),
                  Icon(
                    Icons.chevron_right,
                    color: Colors.white.withOpacity(0.6),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 10),
          Text(
            monthYear.contains('OCTOBER')
                ? 'Monthly Performance'
                : 'March 2024',
            style: const TextStyle(
              color: Colors.white,
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 20),
          // أيام الأسبوع المكتوبة (M, T, W...)
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: daysOfWeek
                .map(
                  (d) => SizedBox(
                    width: 32,
                    child: Center(
                      child: Text(
                        d,
                        style: const TextStyle(
                          color: Colors.grey,
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                )
                .toList(),
          ),
          const SizedBox(height: 12),
          // شبكة الأيام
          GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: daysData.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 7,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
            ),
            itemBuilder: (context, index) {
              int status = daysData[index];
              if (status == 0) return const SizedBox.shrink();

              int dayNumber =
                  index - 2; // حساب رقم اليوم الفعلي بناءً على بداية الشبكة
              if (monthYear.contains('MARCH'))
                dayNumber = index - 3; // تظبيط أيام مارس

              return _buildDayCell(dayNumber, status);
            },
          ),
          const SizedBox(height: 20),
          // الـ Legend التوضيحي في الأسفل
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildLegendItem(
                '100%',
                const Color(0xFF00E676),
                isCircle: false,
              ),
              const SizedBox(width: 16),
              _buildLegendItem(
                'Partial',
                const Color(0xFF00E676),
                isCircle: true,
              ),
              const SizedBox(width: 16),
              _buildLegendItem('Missed', Colors.white24, isCircle: false),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildDayCell(int dayNumber, int status) {
    const primaryColor = Color(0xFF00E676);

    if (status == 1) {
      // مكتمل 100% - لون نيون كامل والكتابة سوداء
      return Container(
        decoration: const BoxDecoration(
          color: primaryColor,
          shape: BoxShape.circle,
        ),
        child: Center(
          child: Text(
            '$dayNumber',
            style: const TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 14,
            ),
          ),
        ),
      );
    } else if (status == 2) {
      // جزئي (Partial) - دائرة مفرغة بالنيون والكتابة بيضاء
      return Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: primaryColor, width: 2),
        ),
        child: Center(
          child: Text(
            '$dayNumber',
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 14,
            ),
          ),
        ),
      );
    } else {
      // مفقود (Missed) - خلفية داكنة جداً وكتابة رمادية مطفية
      return Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.white.withOpacity(0.02),
          border: Border.all(color: Colors.white10),
        ),
        child: Center(
          child: Text(
            '$dayNumber',
            style: const TextStyle(color: Colors.grey, fontSize: 14),
          ),
        ),
      );
    }
  }

  Widget _buildLegendItem(String label, Color color, {required bool isCircle}) {
    return Row(
      children: [
        Container(
          width: 12,
          height: 12,
          decoration: BoxDecoration(
            color: isCircle ? Colors.transparent : color,
            shape: BoxShape.circle,
            border: isCircle ? Border.all(color: color, width: 2) : null,
          ),
        ),
        const SizedBox(width: 6),
        Text(label, style: const TextStyle(color: Colors.grey, fontSize: 12)),
      ],
    );
  }
}
