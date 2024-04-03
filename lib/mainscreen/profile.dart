import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart'; // Import GraphQL packages

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: Query(
        options: QueryOptions(
          document: gql('''
            query {
              // Your GraphQL query here
              // Query to fetch user data after login
            }
          '''),
        ),
        builder: (QueryResult result, {refetch, fetchMore}) {
          if (result.hasException) {
            return Text('Error: ${result.exception.toString()}');
          }

          if (result.isLoading) {
            return CircularProgressIndicator();
          }

          // Extract data from the result
          final userData = result.data?['userData'];

          // Display user data in UI
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Name: ${userData['name']}'),
                Text('Email: ${userData['email']}'),
                // Display other user data as needed
              ],
            ),
          );
        },
      ),
    );
  }
}
