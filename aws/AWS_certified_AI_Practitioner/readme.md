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
  - end to end automation
  - flexible pipeline definiton.
  - workflow visuals
  - seamless integration points

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

### Overview of AI and ML services.

- Bedrock
  - Is a managed servcie.
  - can host the models
  - for foundation models.
  - Can intergrate with S3, EC2, sagemaker etc
- Bedrock - guardrails.
  - Ensuring safe and responsible AI
  - Built in xontent moderation
  - Compliance and data privacy features
  - Subservice of Bedrock
- Bedrock agents

  - can create task and workflow.
  - enhances the fucntions
  - automate complex tasks
  - Orchestrate workflows based on AI output.

- Sagemaker
  - Managed service for quickly building, training and deploying ML models.
  - It simplifies deployments
  - Helps in data preparation
  - Helps with model training
  - auto matic hyperparamic tuning

* Sagemaker key features.
  - Data labelling tools
  - notebook for model development (py??)
  - automatic model tuning
  - scalable deployment
  - easy to use for those with minimal AI expertise,

![Alt text](/aws/AWS_certified_AI_Practitioner/images/sagemaker_workflow.png)

Before sagemaker

![Alt text](/aws/AWS_certified_AI_Practitioner/images/sagemaker_workflow_2.png)

- Rekognition
  - Analyses inages and videos for object detection, facial analysis and text recognition.
  - Does near realtime analysis.

![Alt text](/aws/AWS_certified_AI_Practitioner/images/Rekognition.png)

- Lex

  - Helps building chat bots
  - Virtual assitant for bookings etc
  - Is a Natural language understanding NLU and automatic speach recognition (ASR)
  - Multi channel support
  - managed service

- Polly
  - Text to voice service.
  - it does not have intelligence to do research, it just converts the text to speech.
  - Speech systhesis markup.

![Alt text](/aws/AWS_certified_AI_Practitioner/images/polly.png)

- Comprehend
  - Figures out, what was the language? what is they talking, sentiment analysis.
  - Key phrase extraction.
  - Search for sensitive info, PII
  - real time processing.

![Alt text](/aws/AWS_certified_AI_Practitioner/images/comprehend.png)

- Fraud detector
  - Name says its a fraud detector.
  - It checks for fraud before any transaction is done.
  - real time processing, also has an optiont to config batch processing.
  - customisable fraud detection config
  - managed service.

![Alt text](/aws/AWS_certified_AI_Practitioner/images/Fraud.png)

- Transcribe
  - Convert voice or videos into text.

![Alt text](/aws/AWS_certified_AI_Practitioner/images/transcribe.png)

- Translate
  - converts language to another language.
  * needs text to work, voice input is not valid.

![Alt text](/aws/AWS_certified_AI_Practitioner/images/translate.png)

- Textract
  - its like an OCR
  - extracts text from the page/form.
  - managed service

![Alt text](/aws/AWS_certified_AI_Practitioner/images/textract.png)

- Glue
  - Takes data and does ETL.
  - make it pallatable.
  - crawler pulls the data into data catalog and works on it.
  * glue databrew is a subservice

![Alt text](/aws/AWS_certified_AI_Practitioner/images/glue.png)

- Glue Databrew
  - Helps in visual data preparation
  - data profiling.
  - Can feed the data to Sagemaker.

![Alt text](/aws/AWS_certified_AI_Practitioner/images/glue1.png)

- Elastic Map reduce.
  - Allows to run big data workloads.
  - Hadoop and spark and stuff like that can be run to process the data.
  * managed hadoop framework.
  * supports pig, spark etc.
  * highly scalable and cost effective.

![Alt text](/aws/AWS_certified_AI_Practitioner/images/emr.png)

![Alt text](/aws/AWS_certified_AI_Practitioner/images/emr1.png)

- Augmented AI
  - Build in human review workflow.
  - if low confidence, it can ask for human review.
  - Continous learning and improvement for the model.

![Alt text](/aws/AWS_certified_AI_Practitioner/images/augmented.png)

- QUicksight
  - visualisation tool
  - feels like splunk or Tableu.
  * Uses SPICE engine
  * Super fast, parallel, inmomory calculation engine

![Alt text](/aws/AWS_certified_AI_Practitioner/images/quicksight.png)

### why Generative AI

- Artificial intelligence - learns from data then makes predictions.
- Generative AI - creates new solutions based on learned data.

```
 Key difference - AI generally predicts outcomes based on the input data, while generative AI focuses on producing new outputs that resemble the data it was trained on.

```

### Concepts in generative AI

- Models
- Transformers
- Prompt Engineering
- Inference
- Context window
- Token
- Vector
- Embeddings
- Chunking
- Multi-mode models
- Diffusion models.

### Models

- models -
  - the core of generative AI systems, built from neural networks.
  - use data, neural networks, system resources and prompts to generate outputs
  - predict the enxt token or word based on learned patterns

### Transformers

- Transformers
  - A neural network architecture that processes input in parallel.
  - functional to models like gpt, bert.
  - enables generative AI to handle long sequence of data efficiently.

### Context window

- Context window
  - The model's kind of memory span when it generating text
  - understand relationships between the words and tokens it has already processed.
  - the portio of input data that a model process at a time.
  - Determines how much text or data the model can remember and consider when generating output
  - Larger context windows allow models to handle longer and more complex inputs.

### tokens and tokenisation

- Tokens and tokenisation
  - Tokens: smallest units of data eg. words or parts of words. In order words its like atoms in physics.
  - Tokeninsation: The process of breaking down input into tokens.
  - Essential for how AI models process language and text.

### embeddings and vectors

- Embedding
  - embedding - numeric representation of words or phrases that capture their meaning.
  - vectors - ordered lists of numbers that represent data features.
  - used to understand relationships between tokens in generative AI models

### Chunking

- Chunking
  - chunking - is used in gen AI to handle large amounts of data by breaking it down into smaller more manageable pieces called "chunks"
  - makes it easier for AI models tp process and understand the data.
  - choosing the right data chunk size is the key to getting the most accurate and relevant search results.

### LLM (large language models)

- LLMs
  - gpt and bert are the examples. they can generate coherent, context-aware text
  - generative AI models trained on vast amount of text data.
  - LLMs are fine tuned for specific tasks, making them versatile tools.

### Prompt engineering

- Prompt

  - Prompt - the input or instrcutions given to the model.
  - prompt engineering - designing prompts to get the desired outcomes.
  - techniques include - zero-shot, one-shot, and few-shot learning

- Prompt engineering technique
  - Zero shot - the AI recognises something entirely new without any direct examples using descriptions or related knowledge.
  - one shot - the AI learns from just one example and can recognise it in the future.
  - few shot learning - the ai learns from a few examples and can generalise to recognise new instances.

### Multi modal models

- multi modal - they handle different types of data (text, images, audio)
- they combine multiple data sources to generate richer, more diverse outputs.
- applications include image captioning, text-to-image generation and more.

- Diffusion models - used to generate high quality images, audio, images. Used in image generation and upscaling

## Generative AI use cases

## Architecture behind Gen AI

- GAN - Generative Adversarial Network
- VAE - Variational autoencoder
- Transformers

## Generative AI Project Lifecycle - intro

![Alt text](/aws/AWS_certified_AI_Practitioner/images/GenAI_lifecycle.png)

![Alt text](/aws/AWS_certified_AI_Practitioner/images/GenAI_usecases.png)

## AWS infra for building the Gen AI

- Partyrock - is good place to play with bedrock using the app.
- Vector databases
- AWS Nitro - enchanced security and performance

## Cost considerarion

- Balance needs with the cost.
-

![Alt text](/aws/AWS_certified_AI_Practitioner/images/cost_performance.png)

## Design considerations for Foundation model

- balancing accuracy and inference speed

  - KNN model -> high computational work
  - Complex model -> realtime decision making.

- Modality consideration
  refers to the types of input data a model can handle.

- Choosing the right architecture
  - CNN - Convolutional neural network
    - Prdominently used for image recognition
  - RNN - Recurrent neural network
    - used for speech and text.
- Complexity and resource requirements.

  - high complexity = higher accuracy.
  - high resource consumption,
  - expensive.
  - longr time to train.

- Performance metrics.
  - Accuracy
  - Precision
  - Recall
  - F1 score
