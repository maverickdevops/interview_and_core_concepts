### Contents and area to focus

![Alt text](/aws/AWS_certified_AI_Practitioner/images/contents.png)

### difference between AI, ML and DL

![Alt text](/aws/AWS_certified_AI_Practitioner/images/AI,MLnDL.png)

### types of inferencing

Inferencing is the process in which AI models make predictions or decisions using new data.
2 major types of inferencing.

1. Real time inferencing example spam classification of emails.
   Process data instantly as it arrives.
   Chatbots, fraud detection, autonomous driving systems, voice assistants.
   Realtime endpoints for scalable and low latency processing.
2. Batch referencing.
   Process data in bulk at scheduled intervals.
   sentiment analysis on socails posts collected over "x" days.
   Transforms jobs for applying models to datasets in S3.

### Artificial Data types in AI Models

1. Numerical data
   int, flat, measurable quantities
2. Categorical data
   gender, product type, geo region
3. Text data and Natural language processing (NLP)
   raw text data,
4. Image data
   raw image
   AWS service for this is - AWS Rekognition
5. Audip data and speech recognition
   Speech recognition, music analysis.
   AWS service for this is - Transcibe
6. Structured vs unstructured.
7. Labelled vs unlabelled.
8. Time series data.
   ARIMA, Long short term memory networks (LSTM).
   Prophet is AWS service
9. Imbalanced data.
   biased data, skewed data.
10. Big data and AI
    EMR (elastic map reduce) and Sagemaker.
11. Handling missing data in AI models.

### Choosing the right data type for AI models.

1. Decision trees
   Structure data example - tabular data with numerical and categorical columns.
2. CNN (convolutional neural network)
   unstructure data example - images and text.
3. RNN (recurrent neural network)
   time series data, example - stock prices over time.

### Types of machine learning

1. Supervised Learning
   Models learn from labelled data.
   eg. predicting stock market movements using historical data.

2. Unsupervised learning
   Models finds patterns in unlabeled data.
   eg. identifying hidden customer segments based on purchasing behavior.

3. Reinforced Learning
   Model learns through trail and error by receiving rewards or penalties
   eg. alphago, AI designed to play board games.

### limitations of AI

1. Black box pattern
2. Lack of interoperability

### ML development lifecycle

![Alt text](/aws/AWS_certified_AI_Practitioner/images/ML_lifecycle.png)

- AWS provides services for all these stage of ML.

1. Business goals. This is prestage/discovery.
2. Data collection and preparation
   Redshift, s3, rds, kinesis, kafka, Glue, ETL, athena, emr etc.
   Action for me - read and understand what services fit this definition.
   2.a Data preprossing and Feature engineering.
   Cleaning the data.
   Glue, sagemaker.
   2.b Data Augmentation
   Artificially increase dataset size through transformation
   Sagemaker
3. Training the model.
   Hyperparameter tuning - increase efficiency and reduce errors.
   Sagemaker. Automatic model tuning (AMT)
   Evaluating model performance
   accuracy, precision, recall, f1 score
   true positive, false negative etc.
   Sagemaker, built in tools to evaluate models and track their performance.

4. Model deployment options.
   everything is containerised.
   sagemaker, lambda, EMR

5. Monitoring deployed models.
   Sagemaker, can be used to model monitor to check deviation. Evaluate this against the business goals set.
   cloudwatch for cpu etc.

This is how it will look
![Alt text](/aws/AWS_certified_AI_Practitioner/images/ML_pipeline.png)

### MLOps Concepts

![Alt text](/aws/AWS_certified_AI_Practitioner/images/MLops_Concept.png)

### designing the MLOps pipeline

- sagemaker can be used to build the pipeline.
- Apache airflow can be used to orchestrate complex workflows.

- Compliance and auditability

- mostly for all the above sagemaker gives the option/service.
- improve model quality with MLOps. (sagemaker studio)
- Sagemaker clarify - monitors fairness and bias. ensuring models are accurate and equitable
- Sagemaker pipelines
  end to end automation
  flexible pipeline definiton.
  workflow visuals
  seamless integration points

### Model performance metrics.

- Precision (different from accuracy) - Measures correct positive predictions, minimises false positive (use this very we need to be really precise with the model/decision. example spam emails)
- Recal - Captures actual positives, vital for medical diagnosis. We want to call it out as a problem and then eliminate it saying its not.
- F1 score - Balance precision and recall. useful for false positve/ negatie tradeoffs.

* Area under the curve (AUC) for binary classification
* Business metrics.
* finops
* CSAT.

### Possible AWS tools for MLOps

![Alt text](/aws/AWS_certified_AI_Practitioner/images/MLOps_tools.png)
