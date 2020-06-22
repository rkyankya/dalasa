---
id: upgrading
title: Upgrading Guide
sidebar_label: Upgrading
---

## Run Migrations

When deploying changes from `master` branch, please check for any pending [migrations](https://edgeguides.rubyonrails.org/active_record_migrations.html)
and run them after deployment.

## Breaking changes

These are a list of changes that should be accounted for when upgrading an existing installation of Pupilfirst. If you
encounter any problems while following these instructions, please [create a new issue](https://github.com/pupilfirst/pupilfirst/issues/new)
on our Github repo.

Your current version can be found in `Pupilfirst::Application::VERSION`.

### 2020.3

- Introduced required environment variable `DEFAULT_SENDER_EMAIL_ADDRESS`. Prior to this, the default sender email id
  was assumed to be `noreply@pupilfirst.com`.

### 2020.2

- Introduced required environment variable `AWS_REGION`. Prior to this, the region was assumed to be `us-east-1`; set
  the correct value for your S3 bucket.

### 2020.1

- Initial release.

