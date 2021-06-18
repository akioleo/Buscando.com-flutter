import 'package:flutter/material.dart';
import 'package:projeto_blog/screens/user_model.dart';

class Message {
  final User sender;
  final String
      time; // Would usually be type DateTime or Firebase Timestamp in production apps
  final String text;
  final bool unread;

  Message({
    required this.sender,
    required this.time,
    required this.text,
    required this.unread,
  });
}

// EXAMPLE CHATS ON HOME SCREEN
List<Message> chats = [
  Message(
    sender: ibm,
    time: '5:30 PM',
    text: 'Boa sorte, esperamos você na...',
    unread: true,
  ),
  Message(
    sender: oracle,
    time: '4:30 PM',
    text: 'Boa tarde, poderia nos encontrar amanhã?',
    unread: true,
  ),
  Message(
    sender: amazon,
    time: '3:30 PM',
    text: 'Fechado!',
    unread: false,
  ),
  Message(
    sender: apple,
    time: '2:30 PM',
    text: 'Suas expectativas?',
    unread: true,
  ),
  Message(
    sender: google,
    time: '1:30 PM',
    text: 'Esperamos você!!',
    unread: false,
  ),
  Message(
    sender: microsoft,
    time: '11:30 AM',
    text: 'Entraremos em contato.',
    unread: false,
  ),
];

// EXAMPLE MESSAGES IN CHAT SCREEN
List<Message> messages = [
  Message(
    sender: ibm,
    time: '5:30 PM',
    text: 'Boa sorte, esperamos você na próxima etapa!',
    unread: true,
  ),
  Message(
    sender: currentUser,
    time: '4:30 PM',
    text: 'Ok! Muito obrigado, irei fazer agora.',
    unread: true,
  ),
  Message(
    sender: ibm,
    time: '3:45 PM',
    text: 'O prazo máximo para realizá-lo é até dia 20/07.',
    unread: true,
  ),
  Message(
    sender: ibm,
    time: '3:15 PM',
    text:
        'Teremos um teste de lógica e você deverá fazê-lo na nossa plataforma',
    unread: true,
  ),
  Message(
    sender: currentUser,
    time: '2:30 PM',
    text: 'E como será a próxima etapa?',
    unread: true,
  ),
  Message(
    sender: currentUser,
    time: '2:30 PM',
    text: 'É um sonho ser estagiário da IBM.',
    unread: true,
  ),
  Message(
    sender: currentUser,
    time: '2:30 PM',
    text: 'Que boa notícia!',
    unread: true,
  ),
  Message(
    sender: ibm,
    time: '2:00 PM',
    text:
        'Olá!! Vim aqui para te convocar para a próxima fase do programa de Estágio da IBM.',
    unread: true,
  ),
];
