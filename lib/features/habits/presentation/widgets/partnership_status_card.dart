import 'package:flutter/material.dart';

class PartnershipStatusCard extends StatelessWidget {
  final double myProgress; // مثلاً 0.65
  final double partnerProgress; // مثلا trampled 0.40
  final String partnerName;

  const PartnershipStatusCard({
    super.key,
    required this.myProgress,
    required this.partnerProgress,
    required this.partnerName,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: const Color(0xFF161F1A),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Colors.white10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'PARTNERSHIP STATUS',
            style: TextStyle(color: Colors.grey, fontSize: 12, fontWeight: FontWeight.bold, letterSpacing: 1.2),
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _buildProgressCircle('${(myProgress * 100).toInt()}%', myProgress, 'Me', const Color(0xFF00E676)),
              Column(
                children: const [
                  Text('bolt', style: TextStyle(color: Color(0xFFFFD54F), fontSize: 24, fontWeight: FontWeight.bold)),
                  Text('In Sync', style: TextStyle(color: Colors.grey, fontSize: 12)),
                ],
              ),
              _buildProgressCircle('${(partnerProgress * 100).toInt()}%', partnerProgress, partnerName, const Color(0xFFFFD54F)),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildProgressCircle(String text, double value, String label, Color color) {
    return Column(
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            SizedBox(
              width: 85,
              height: 85,
              child: CircularProgressIndicator(
                value: value,
                strokeWidth: 6,
                backgroundColor: Colors.white10,
                valueColor: AlwaysStoppedAnimation<Color>(color),
              ),
            ),
            Text(text, style: const TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold)),
          ],
        ),
        const SizedBox(height: 10),
        Text(label, style: const TextStyle(color: Colors.grey, fontSize: 14)),
      ],
    );
  }
}