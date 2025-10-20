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

  * MAP - mean accuracy precision (no idea what this is :( )

* Consider trade-offs

* Customizing pretrained model - Consider trade-offs
  - fine tuning - small adjustments to pretrained models will get us going quick
  - Narrow - used for specific tasks
    vs
  - Train from start.

## RAG - retrival augmented generation (RAG)

- helps in optimising the performance and get better quality results

![Alt text](/aws/AWS_certified_AI_Practitioner/images/rag.png)

- Bedrock uses RAG to enchance foundation model performance in customer applications.
- Bedrock and Kendra use vector databases to enchance foundation model performance in semantic search and document retrival.
- Document DB can be anything nepture, document, rds etc.

## Selecting pretrained models.

- COnsiderations

  - Availability and compatibility of pretrained models.
  - regularly maintained and updates.
  - how much customisation should I be doing?
  - Interoperability vs explainability. i.e. no more blackbox, will the model tell me how it arrived to this decision/output (inference)
  - tools like LIME, SHAP can be used for explainability.
  - more complex models will be having lower or complex explainability.
  - data privacy considerations.
  - transfer learning and its benefits.

- additional consideration
  - Bias,
  - hardware constraints
  - explainability

## Inference paramteres and their effects.

- Control over model behaviour and output characteristics.

* inference generates a model's output from the input provided - like prompt

![Alt text](/aws/AWS_certified_AI_Practitioner/images/inference_patterns.png)

- example look at the temperature.

  - low temp - more predictable, less creative.
  - high temp - less predictable, more creative.

- Response length

  - limit the response length. if the user enters a single word vs a story response must be a decent length.

- penalities and stop sequences

  - Penalities - discourage repetition in responses.
    - prevent model from repeating phrases
  - Stop sequence - define when to stop the response
    - useful for tasks like form filling or bullet lists.

- Balancing diversity and coherence.

  - needed for effective responses.

- Mitigating Hallucinations with inference parameters
  - Lowering the randomness related parameters will mitigate the risk of hallucination.
  - this is very important for critical systems to ensure reliable outputs.
  - Law, justice, medical and health, avaition, trading etc.

# Retrieval Augmented Generation (RAG)

- What is RAG?

  - RAG is a method that basically combines two key components, large language model generation and information retrieval.
  - Goal of RAG is to retrieve the information from large language model and ingest it into the model, especially when the prompt is made
  - key for improving the accuracy and releavance in AI Tasks

- what are prompts in RAG?
  - A prompt is the user's input that guides model responses.
  - can include contextual data to enrich outputs, data can be - documents, web pages, blogs, user documentation, tech docs etc

* Vector Databases.

  - the backbone of RAG
  - store structured and unstructured data as vector embeddings.
  - efficient retrieval of semantically relevant info

* Amazon Bedrock

  - uses RAG

* Building knowledge bases for RAG

  - knowledge bases store external data to improve model responses.
  - a central repository for semantially relevant information.

* Cost consideration for RAG

  -

* Challenges and limitations of RAG
  - requires robust infra for data retrieval
  - data privacy and security consideration

## Vector Databases

- Intro

  - vector databases primarily store data as embeddings, which are numerical representations of data like text and images. they are mathematical representations. and embeddings are meanings like the semantic meaningful relationships between these numerical vectors.
  - AWS OpenSearch (formerly Elastic Search)- managed service.
  - scalable infra to handle large gen AI models.

- Opensearch key features

  - k-nearest neighbors (k-NN) for efficient vector queries,

- Aurora, PostgreSQL compatible edition and RDS for PostgreSQL support pgvector.

- Amazon Neptune ML. (not Amazon Neptune)
  Graph neural networks (GNN) enhance predictions using complex graph relationships.
  Leverages deep graph library (DGL) to simplify model selection and training.
  Achieves 50% greater accuracy in predictions for graph data.

- Amazon MemoryDB

  - in memory DB
  - High throughput with a microsecond read and single digit millisecond write latency
  - supports millions of vectors for ML with single digit query latency for updates times.
  - handles tens of thousands of queries per sec
  - Multi AZ option available, which will eliminate the cache and primary DB management overhead.

- Amazon DocumentDB (with MongoDB compatibility) supports vector search.
  - fully managed JSON document DB
  - vector search: store, index, and search millions of vectors
  - integrates with Bedrock, sagemaker, third party ML models to support vector storage.
  - enables interactive log analytics, real time application monitoring and website search.

* RAG with Bedrock and custom knowledgebases.
  - Bedrock has its own custom knoledgbase services.

## Foundation Model

- Model customization.

  - why do we customize foundation models?

    - We can train the models from sratch. there is all feasible availability and option.
    - however, it comes with significant
      - High infra costs i.e. storage, compute
      - long dev cycles.
      - requires vast datasets.
      - Bias etc.

  - If we have a pre-trained models, we can fine tune it. By avoiding the above overhead.

    - Low cost and time.
    - requires smaller datasets
    - cycle time is faster.

  - In Context learning.

    - Most cost effective.
    - Less customization.
    - Moderate accuracy.

  - RAG
    - Highly efficient.
    - Ongoing maintenance
    - Increased complexity.

![Alt text](/aws/AWS_certified_AI_Practitioner/images/model_cost_compare.png)

- WHy choose "Pre Training"?
  - Highly tailored solutions.
  - Unique specialized.
  - Demands vast, quality datasets.
  - time luxury
  - not suitable for short term or limited budget

* WHy choose "Fine tuning"?

  - Can leverage pre trained models.
  - faster and more economical.
  - suitable for wide range of AI applications.
  - Within moderate budget.
  - Less data for pre-training.

* Why choose "In Context"?

  - Ideal for fast, flexible and low cost
  - eliminates overhead of fine tuning.
  - suitable for chat bots, quick content generation.
  - Allows embedding examples directly in the input prompt
  - quick adaptability.
  - may fall short for highly specialised tasks requiring deep customization.

* Why choose RAG?
  - Ideal for realtime access to external knowledge.
  - Suitable for question answer and customer support.
  - provides accurate up to date responses.
  - relies on data retrieval from external surces.
  - requires management of external infra.
  - increases complexity and implementation of costs.
