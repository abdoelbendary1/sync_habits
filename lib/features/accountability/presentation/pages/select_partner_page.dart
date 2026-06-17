import 'package:flutter/material.dart';
import '../widgets/live_status_banner.dart';
import '../widgets/partner_linkup_card.dart';

class SelectPartnerPage extends StatelessWidget {
  const SelectPartnerPage({super.key});

  @override
  Widget build(BuildContext context) {
    const bgColor = Color(0xFF0A0F0C);

    // دامي داتا مطابقة تماماً للشاشات المطلوبة
    final partners = [
      {
        'name': 'Youssef',
        'avatar':
            'https://images.unsplash.com/photo-1534528741775-53994a69daeb?q=80&w=200',
        'active': '2m ago',
        'score': 92,
        'streak': 24,
        'habits': 8,
      },
      {
        'name': 'Sarah',
        'avatar':
            'https://images.unsplash.com/photo-1494790108377-be9c29b29330?q=80&w=200',
        'active': '45m ago',
        'score': 78,
        'streak': 12,
        'habits': 5,
      },
      {
        'name': 'Alex',
        'avatar':
            'https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?q=80&w=200',
        'active': '3h ago',
        'score': 64,
        'streak': 5,
        'habits': 12,
      },
    ];

    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text(
          'Synchabit',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.bar_chart, color: Colors.white),
            onPressed: () {},
          ),
          const CircleAvatar(
            radius: 16,
            backgroundColor: Colors.white10,
            child: Icon(Icons.person, color: Colors.white, size: 18),
          ),
          const SizedBox(width: 16),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Select Partner',
              style: TextStyle(
                color: Colors.white,
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),
            const LiveStatusBanner(partnerCount: 3),
            const SizedBox(height: 24),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'ACTIVE LINKUPS',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.2,
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'View All',
                    style: TextStyle(color: Colors.grey, fontSize: 13),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),
            // بناء قائمة الشركاء ديناميكياً
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: partners.length,
              itemBuilder: (context, index) {
                final p = partners[index];
                return PartnerLinkupCard(
                  name: p['name'] as String,
                  avatarUrl: p['avatar'] as String,
                  activeTime: p['active'] as String,
                  syncScore: p['score'] as int,
                  currentStreak: p['streak'] as int,
                  sharedHabitsCount: p['habits'] as int,
                  onTap: () {
                    // هنا هتربط فتح إحصائيات الشريك المحددة لاحقاً
                  },
                );
              },
            ),
            const SizedBox(height: 20),
            // زرار ربط شريك جديد السفلي باللون الفاتح المميز في الديزاين
            ElevatedButton.icon(
              onPressed: () {},
              icon: const Icon(
                Icons.person_add_alt_1_outlined,
                color: Colors.black,
                size: 20,
              ),
              label: const Text(
                'Link with New Partner',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(
                  0xFFE0E5E1,
                ), // نفس درجة اللون العاجي الفاتح المطابق للصورة
                minimumSize: const Size(double.infinity, 55),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}
