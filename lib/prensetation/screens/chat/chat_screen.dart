import 'package:flutter/material.dart';
import 'package:yes_no_app/prensetation/widgets/chat/her_message_bubble.dart';
import 'package:yes_no_app/prensetation/widgets/chat/my_message_bubble.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.all(4.0),
          child: CircleAvatar(),
        ),
        title: const Text('Contatinho <3'),
        centerTitle: true,
      ),
      body: _ChatView(),
    );
  }
}

class _ChatView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Expanded(
                child: ListView.builder(
                    itemCount: 100,
                    itemBuilder: (context, index) {
                      return (index % 2 == 0)
                          ? const HerMessagebubble()
                          : const MyMessagebubble();
                    })),
            const Text('Mundo')
          ],
        ),
      ),
    );
  }
}
