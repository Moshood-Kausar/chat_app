import 'package:chat_test/message.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:generic_social_widgets/chat_bubble.dart';
import 'package:generic_social_widgets/chat_input.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          ElevatedButton(
            onPressed: () async {
              final auth = FirebaseAuth.instance;
              if (auth.currentUser != null) {
                await auth.signOut();
              } else {
                await auth.signInAnonymously();
              }
            },
            child: const Text('Log In Or Out'),
          ),
        ],
      ),
      body: const ChatView(),
    );
  }
}

class ChatView extends StatelessWidget {
  const ChatView({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<User?>(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, snapshot) {
        return Column(
          children: [
            Text('User id: ${snapshot.data?.uid}'),
            Expanded(
              child: StreamBuilder<QuerySnapshot>(
                  stream: messagesQuery.snapshots(),
                  builder: (context, messageSnapshot) {
                    if (messageSnapshot.connectionState == ConnectionState.waiting) {
                      return const CircularProgressIndicator();
                    }
                    return ListView.builder(
                        reverse: true,
                        itemCount: messageSnapshot.data!.size,
                        itemBuilder: (BuildContext context, int idx) {
                         
                          final message =
 Message.fromFirestore(messageSnapshot.data!.docs[idx] as DocumentSnapshot<Map<String, dynamic>>);
                          print('hello'  '$message');
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ChatBubble(text: message.message),
                          );
                        });
                  }),
            ),
            ChatTextInput(
              onSend: (message) {
                FirebaseFirestore.instance.collection('messages').add(
                      Message(
                        uid: snapshot.data!.uid,
                        message: message,
                      ).toFirestore(),
                    );
              },
            ),
            // rest of app
          ],
        );
      },
    );
  }
}
