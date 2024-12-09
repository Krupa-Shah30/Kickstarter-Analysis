# Kickstarter Success Prediction

This project aims to predict the success of Kickstarter campaigns using machine learning techniques. It utilizes historical data from past Kickstarter projects to build a predictive model that can assess the likelihood of success for new campaigns.

## Project Overview

The project consists of the following key components:

- Training data: Features (`ks_training_X.csv`) and labels (`ks_training_y.csv`) for past Kickstarter projects
- Test data: Features for projects to predict (`ks_test_X.csv`)
- Sample prediction script: `sample_prediction_file.R`

The goal is to develop a model that accurately predicts whether a Kickstarter project will be successful based on its characteristics.

## Data Description

- `ks_training_X.csv`: Contains features of past Kickstarter projects
- `ks_training_y.csv`: Contains the success labels (YES/NO) for the training projects
- `ks_test_X.csv`: Contains features of projects for which success needs to be predicted

## Sample Script

The `sample_prediction_file.R` script demonstrates:

1. Loading and preprocessing the data
2. Creating a simple logistic regression model
3. Making predictions on the test set
4. Outputting predictions in the required format

The sample model achieves an accuracy of 0.6045278 on the test set, serving as a baseline for improvement.

## Getting Started

### Prerequisites

- R (version 3.0.0 or higher)
- Required R packages: tidyverse

### Installation

1. Clone the repository:
   ```
   git clone https://github.com/yourusername/kickstarter-success-prediction.git
   ```

2. Install required R packages:
   ```R
   install.packages("tidyverse")
   ```

### Usage

1. Place the dataset files in the project directory.
2. Run the R script:
   ```R
   source("sample_prediction_file.R")
   ```
3. The script will generate a CSV file named `success_group0.csv` with predictions.

## Model Improvement

To enhance the model's performance:

- Incorporate additional features
- Experiment with advanced machine learning algorithms
- Perform feature engineering and selection
- Use cross-validation for model evaluation

## Evaluation

The model's performance is evaluated using accuracy. Aim to improve upon the baseline accuracy of 0.6045278.

## Contributing

Contributions are welcome! Please follow these steps:

1. Fork the repository
2. Create a new branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

## License

This project is licensed under the MIT License - see the `LICENSE` file for details.

## Acknowledgments

- Kickstarter for providing the dataset
- Contributors and maintainers of the tidyverse R packages
