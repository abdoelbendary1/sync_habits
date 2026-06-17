import 'package:flutter/material.dart';

class LiveStatusBanner extends StatelessWidget {
  final int partnerCount;

  const LiveStatusBanner({super.key, required this.partnerCount});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: const Color(0xFF161F1A),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Colors.white10),
        // محاكاة الجرافيك الخفيف اللي في الخلفية باستخدام Gradient بسيط
        gradient: LinearGradient(
          colors: [const Color(0xFF161F1A), const Color(0xFF1A2E22).withOpacity(0.4)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Live Statistics',
            style: TextStyle(color: Colors.grey, fontSize: 14, fontWeight: FontWeight.w500),
          ),
          const SizedBox(height: 8),
          Text(
            'You are currently synced with $partnerCount partners',
            style: const TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.w600),
          ),
        ],
      ),
    );
  }
}