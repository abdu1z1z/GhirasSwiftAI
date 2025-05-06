#GhirasProject

Plant Classification Application
Overview
This project focuses on building a deep learning-based application to classify various plants found in Saudi Arabia. By leveraging convolutional neural networks (CNNs) and data augmentation techniques, the app can identify over 30 plant categories with high accuracy. Users can upload a plant image, and the application will predict the plant's name, provide additional details, and map its common location.

Features
Robust Image Augmentation: Utilizes advanced techniques (e.g., rotation, zoom, flips, color adjustments) to enhance model training and improve performance.

Accurate Deep Learning Models: Implements both models trained from scratch and fine-tuned pre-trained models (e.g., EfficientNetB0).

Detailed Plant Classification: After classification, users will receive the plant's name, description, and an illustrative image.

Comprehensive Performance Metrics: The model is evaluated using accuracy, precision, recall, and F1-score to ensure reliable predictions.

Visualization of Results: Provides charts showing accuracy per plant category and displays misclassified images for further analysis.

Project Structure
Data Augmentation: Includes transformations using ImageDataGenerator and imgaug to create diverse training samples.

Training Setup: Uses K-Fold Cross-Validation to train and evaluate models, ensuring consistent performance across multiple folds.
Pre-trained Models: Fine-tuning of EfficientNetB0, leveraging pre-existing knowledge to enhance classification accuracy.

Evaluation: Visualizes results with charts, highlights performance per class, and analyzes misclassifications for improvement.

Technologies Used
Deep Learning Framework: TensorFlow and Keras
Models: Convolutional Neural Networks (trained from scratch), Pre-trained models (EfficientNetB0, MobileNetV2)
Data Augmentation: ImageDataGenerator, imgaug
Visualization: Matplotlib, Seaborn
Dataset Management: Google Drive integration for easy data handling
Dataset
The dataset consists of labeled images of plants from Saudi Arabia, organized into more than 30 categories. The data was pre-processed, and augmentation techniques were applied to improve the model's robustness.

Training and Testing Directories: Images are split into separate directories for training and testing, stored on Google Drive.

Model Architecture
Model from Scratch:
Includes multiple convolutional and max-pooling layers followed by fully connected layers.
Uses dropout to prevent overfitting.

Compiled with categorical cross-entropy loss and metrics including accuracy, precision, recall, and a custom F1-score.

Pre-trained Model:
EfficientNetB0 is fine-tuned for plant classification, providing better generalization and quicker convergence.

Includes additional dropout layers to reduce overfitting.

Performance Metrics
Cross-Validation: The model's performance was validated using K-Fold Cross-Validation, providing an average accuracy across multiple folds.
Comprehensive Metrics: The models were evaluated based on accuracy, precision, recall, and F1-score, ensuring balanced performance.

Data Augmentation Techniques
Basic Augmentation: Rotations, shifts, zooms, flips, brightness adjustments, and channel shifts.

Advanced Augmentation: Adding Gaussian noise, sharpening, and applying affine transformations for better generalization.

Usage
Data Preparation: Organize your dataset into training and testing directories on Google Drive.

Model Training:
Choose between training from scratch or fine-tuning a pre-trained model.

Use K-Fold Cross-Validation for robust evaluation.
Testing and Evaluation:
The final model is tested on a separate dataset to ensure reliable predictions.

View visualizations, including accuracy per class and examples of misclassified images.

Future Enhancements
Multi-language Support: Add Arabic and English descriptions for ease of use.

Improved User Interface: Create a more user-friendly app for seamless plant classification.

Expanded Dataset: Include more plant species to increase the app's utility.



Project contributors : 
abdulaziz althobaiti
Khalid alsoqairi
maram albahili
