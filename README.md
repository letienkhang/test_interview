# test_interview

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.



Your task is to create a comprehensive application with the following features:
1. Login Screen:
  - Design a login screen allowing users to input their username and password, along with a submit button. —> done
  - Upon submission, simulate a random delay between 2-5 seconds, displaying a loading state and preventing user interaction until the API handling is complete. Not yet
  - Validate user input against the data in auth.json. done
 If the input is correct, allow the user to enter the home screen; otherwise, display an error message. Not yet
  - Store user information locally to enable automatic login on subsequent visits. Done
2. Home Screen:
  - Create a home screen featuring a sticky bar at the top with a logout button, user display name, and avatar. —> done
  - Implement a card-list layout for the main content, displaying images, authors, captions/titles, like counts, share counts, and comment counts for each card. Feel free to style the cards, drawing inspiration from social networks. —> done
  - Initially display skeleton/placeholder layouts for cards. Not yet
  - Simulate a delay of 2-5 seconds upon loading the home screen, displaying a loading state until the API delay simulation is complete. Not yet
  - Bind data from data.json onto the UI, populating the card-list with relevant information. Done
3. Sorting Functionality: not yet
  - Add a sorting dropdown on the top right of the home screen with the text: "Sort by: ['date', 'like', 'share', 'comment']".
  - Implement functionality to sort the card-list based on the selected sorting criterion.