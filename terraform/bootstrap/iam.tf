data "aws_iam_policy_document" "github_actions_assume_role" {
  statement {
    effect = "Allow"

    actions = [
      "sts:AssumeRoleWithWebIdentity"
    ]

    principals {
      type = "Federated"

      identifiers = [
        aws_iam_openid_connect_provider.github.arn
      ]
    }

    condition {
      test     = "StringEquals"
      variable = "token.actions.githubusercontent.com:aud"

      values = [
        "sts.amazonaws.com"
      ]
    }

    condition {
      test     = "StringLike"
      variable = "token.actions.githubusercontent.com:sub"

      values = [
        "repo:${var.github_repository}:ref:refs/heads/main"
      ]
    }
  }
}



resource "aws_iam_role" "github_actions_terraform" {
  name = "${var.project_name}-github-actions-terraform"

  assume_role_policy = data.aws_iam_policy_document.github_actions_assume_role.json

  tags = {
    Name      = "${var.project_name}-github-actions-terraform"
    Project   = var.project_name
    ManagedBy = "Terraform"
  }
}