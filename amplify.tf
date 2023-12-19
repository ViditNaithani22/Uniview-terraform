resource "aws_amplify_app" "uniview_app" {
  name = "uniview-app"

  repository  = var.github_repo_url #create a copy of this repository: https://github.com/ViditNaithani22/amplify-final, and add the link of that repository here
  oauth_token = var.github_oauth_token #generate an access token for your account with which you can access your newly created repository
  
  environment_variables = {
    "S3_BUCKET_RAW"        = aws_s3_bucket.uniview_fetchdata.bucket
    "S3_BUCKET_REVIEWS"    = aws_s3_bucket.uniview_preprocessing.bucket
    "S3_BUCKET_ANALYZED"   = aws_s3_bucket.uniview_analyzed.bucket
    "DYNAMODB_TABLE"       = aws_dynamodb_table.UniversityReviews.name
  }

  auto_branch_creation_config {
    #patterns = ["feature/*"]
    }
}
