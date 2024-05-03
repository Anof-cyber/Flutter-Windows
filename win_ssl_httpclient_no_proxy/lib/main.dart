import 'dart:io';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: HttpRequestButton(),
        ),
      ),
    );
  }
}

class HttpRequestButton extends StatelessWidget {
  const HttpRequestButton({Key? key}) : super(key: key);

  Future<void> _sendHttpRequest(BuildContext context) async {
    try {
      // Initialize HttpClient
      HttpClient client = HttpClient();

      // No proxy
      client.findProxy = null;


      // Make the request using HttpClient
      HttpClientRequest request = await client.getUrl(Uri.parse('https://souravkalal.tech'));
      HttpClientResponse response = await request.close();

      // Check the status code
      if (response.statusCode == 200) {
        // Request successful
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Request successful')),
        );
      } else {
        // Request failed
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Request failed with status: ${response.statusCode}'),
          ),
        );
      }
    } catch (e) {
      // Handle error
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Error sending HTTP request: $e'),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => _sendHttpRequest(context),
      child: const Text('Send HTTP Request'),
    );
  }
}
