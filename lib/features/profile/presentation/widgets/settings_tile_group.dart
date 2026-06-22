import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sync_habits/features/profile/presentation/bloc/bloc/user_bloc.dart';

class SettingsTileGroup extends StatelessWidget {
  final bool syncSettingsActive;
  const SettingsTileGroup({super.key, required this.syncSettingsActive});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xff161d1a),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        children: [
          ListTile(
            leading: const Icon(Icons.sync, color: Color(0xff00e676)),
            title: const Text(
              "Sync Settings",
              style: TextStyle(color: Colors.white, fontSize: 15),
            ),
            subtitle: const Text(
              "REAL-TIME SHARING ACTIVE",
              style: TextStyle(
                color: Color(0xff00e676),
                fontSize: 10,
                fontWeight: FontWeight.bold,
              ),
            ),
            trailing: Switch.adaptive(
              value: syncSettingsActive,
              activeColor: const Color(0xff00e676),
              onChanged: (val) => context.read<UserBloc>().add(
                UserEvent.updateSyncSettings(isActive: val),
              ),
            ),
          ),
          const Divider(color: Colors.white12, height: 1),
          _buildActionTile(
            Icons.notifications_none,
            "Notification Preferences",
          ),
          const Divider(color: Colors.white12, height: 1),
          _buildActionTile(Icons.lock_outline, "Privacy & Security"),
          const Divider(color: Colors.white12, height: 1),
          _buildActionTile(
            Icons.link,
            "Connected Apps",
            trailingText: "Apple Health",
          ),
          const Divider(color: Colors.white12, height: 1),
          _buildActionTile(Icons.help_outline, "Help & Support"),
        ],
      ),
    );
  }

  Widget _buildActionTile(IconData icon, String title, {String? trailingText}) {
    return ListTile(
      leading: Icon(icon, color: Colors.white70),
      title: Text(
        title,
        style: const TextStyle(color: Colors.white, fontSize: 15),
      ),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (trailingText != null)
            Text(
              trailingText,
              style: const TextStyle(color: Colors.white38, fontSize: 14),
            ),
          const SizedBox(width: 4),
          const Icon(Icons.chevron_right, color: Colors.white30),
        ],
      ),
    );
  }
}
