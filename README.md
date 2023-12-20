# Uniview
#### Imagine you are a student and you have shortlisted few universities that you want to go to for your batchalor's or master's degree. By their websites they all look very similar, so the only way to further shortlist them is to get the reviews of the students who have been there because things that you read on the university website are often very different in reality. A university website will always tell you pros of going there not cons. You can only know cons from the students who have studied there. But where to get these reviews from actual students for free? We found that Google maps is a good source to get honest reviews for any university. Some of these reviews were very helpful, filled with real experiences of students. But reading reviews is time consuming, and even if you read 20-30 reviews there is still a chance of missing an important one that could flip your entire mood about that place. That's why we created Uniview. It gives you a summary of google maps reviews for a particular university that you are interested in. By summary we mean that you would be able to see the overall opinion of the public about a university in a single glance with out missing anything important. We do this by providing you the % of positive, negative and neutral reviews. We display the most important things the positive reviews are talking about and the most important things the negative reviews are talking about. Then we recommend five similar universities based on your current selection. Currently Uniview covers the top 100 universities of the world. 
  
### The entire project was created using these AWS technologies:
#### Amazon Lambda: We are using three Lambda functions. First to fetch the google maps reviews. Second to remove the unwanted reviews from the fetched data. Third to fetch the university recommendations from AWS Personalize.
#### Amazon S3: We are using four S3 buckets. First to store the raw google maps reviews. Second to store the refined google maps reviews. Third to store the actual data table with the extracted keywords from each review. Fourth to store the data of the third bucket as a CSV file.
#### Amazon EC2: To run a python script that uses TF-IDF algorithm to extract keywords from each review and to perform sentiment analysis of each review to find out whether it is positive, negative or neutral.
#### Amazon Comprehend: To perform sentiment analysis
#### AWS Amplify: To host the website
#### AWS Personalize: To build a recommendation model which could recommend 5 universities similar to your current selection.
#### AWS Cloudwatch: To keep a track of all the metrics of our system.
#### AWS Secret Manager: To store our Google API key
#### AWS DynamoDB: Its a non-relational key-value database. It will store the final data table that our website will use.
#### Terraform: It an IAC, which will help us to create and destroy the entire project whenever we want.

### The data flow diagram:
![proj](https://github.com/ViditNaithani22/amplify-final/assets/102232954/db6bd86a-8dae-4d06-855b-d42f54cf0aba)
