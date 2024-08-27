# Vought Showcase

Vought Showcase is a SwiftUI-based project that showcases a carousel view with image progression. The app features a button that opens a carousel displaying multiple images, with a smooth transition and easy-to-use interface. The carousel automatically progresses through the images and allows the user to navigate manually by tapping on the left or right sides of the screen. The carousel closes automatically after the last image is displayed or can be dismissed by swiping down.

## Features

- **Carousel View**: Displays a series of images with smooth transition effects.
- **Manual Navigation**: Navigate through the images by tapping on the left or right side of the screen.
- **Auto-Progress**: The images automatically progress after a set interval.
- **Dismissal**: The carousel can be dismissed by swiping down or after viewing the last image.
- **Gradient Background**: The main view features a black-to-gray gradient background.
- **Custom Button**: A stylish button to open the carousel with a black background and rounded corners.

## Usage

1. **Home Screen**:
   - On launch, the app displays a button labeled "Open Carousel".
   - The background of the home screen is a gradient from black to gray.

2. **Opening the Carousel**:
   - Tap the "Open Carousel" button to display the carousel view.
   - The carousel view slides in from the bottom with a smooth transition.

3. **Navigating the Carousel**:
   - Tap on the right side of the screen to move to the next image.
   - Tap on the left side of the screen to go back to the previous image.
   - Swipe down to dismiss the carousel at any time.
   - The carousel automatically closes after the last image is displayed.

## Code Structure

- **`IntermediateView.swift`**: Contains the initial screen with the "Open Carousel" button.
- **`CarouselView.swift`**: Manages the carousel view and its interactions.
- **`StoryProgressView.swift`**: Handles the image display and progress bar.
- **`LoadingRectangle.swift`**: A custom view used to display the progress of image loading.
- **`StoryTimer.swift`**: Manages the timing for automatic image progression.
- **`StoryController.swift`**: Coordinates the logic for image transitions and user interactions.
