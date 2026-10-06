// lib/features/home/pages/home_page.dart
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:zappit/core/barrel_files/riverpod_core.dart';
import 'package:zappit/core/realtime/channel_provider.dart';
import 'package:zappit/core/realtime/presence_state_provider.dart';
import 'package:zappit/core/realtime/realtime_service.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final presenceState = ref.watch(presenceStateProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        actions: [
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {
              context.push('/home/settings');
            },
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Presence 상태 표시
            presenceState.when(
              data: (ExtensionPresence presence) => _PresenceIndicator(
                connected: presence.isConnected,
                extensionCount: presence.count,
                clientIds: presence.clientIds,
              ),
              loading: () => const CircularProgressIndicator(),
              error: (e, _) => Text('Error: $e'),
            ),

            const SizedBox(height: 40),

            // Latency 측정 버튼
            ElevatedButton.icon(
              onPressed: () async {
                final channelName = ref.read(channelNameProvider);
                if (channelName == null) return;

                await ref
                    .read(realtimeServiceProvider)
                    .sendPing(channelName: channelName);
              },
              icon: const Icon(Icons.speed),
              label: const Text('Latency 측정'),
            ),
          ],
        ),
      ),
    );
  }
}

class _PresenceIndicator extends StatelessWidget {
  final bool connected;
  final int extensionCount;
  final List<String> clientIds;

  const _PresenceIndicator({
    required this.connected,
    required this.extensionCount,
    required this.clientIds,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        color: connected ? Colors.green.shade50 : Colors.grey.shade100,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: connected ? Colors.green : Colors.grey,
          width: 2,
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            Icons.circle,
            size: 12,
            color: connected ? Colors.green : Colors.grey,
          ),
          const SizedBox(width: 8),
          Text(
            connected
                ? 'Extension 연결됨 ($extensionCount)'
                : 'Extension 미연결',
            style: TextStyle(
              color: connected ? Colors.green.shade700 : Colors.grey.shade700,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}