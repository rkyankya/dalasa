---
id: intro
title: Introduction
sidebar_label: Introduction
---

Pupilfirst LMS is a [Ruby on Rails](https://rubyonrails.org/) application. Rails follows a
[doctrine](https://rubyonrails.org/doctrine) of convention over configuration, and Pupilfirst LMS sticks to the
convention in _most_ cases. However, it does differ from the _standard_ in a few ways:

## ReasonML

[ReasonML](https://reasonml.github.io/) is our language of choice for writing front-end code. The
[ReasonReact](https://reasonml.github.io/reason-react/) library is used to build front-end components.

## GraphQL API

Since ReasonML is strongly-typed, [GraphQL](https://graphql.org/) is a great fit. Pupilfirst LMS uses the [graphql-ruby](https://graphql-ruby.org/)
library on the server, and [graphql_ppx](https://github.com/reasonml-community/graphql_ppx) for client-side code, to
offer safe & simple API communication.

## Service Objects

You'll find most business logic in classes in the `app/services` directory. Traditional Rails applications tend to have
_"fat models and skinny controllers"_. However, the use of service objects allows all parts of the application to stay
reasonably _lean_, and to have one clear purpose.
