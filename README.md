# Swift5 API client for XaynFrontOfficeSdk

# Front Office
The front office is typically used within front-end apps, for example a website or a mobile application.
With this SDK, you can handle interactions with documents and request a list of personalized documents.

## User
Each method requires a `user_id`.
From our perspective, a `user_id` is simply required to group interactions together. We don't need to know who that user is, so it is preferred to create this `user_id` in a privacy-preserving way.
For example, create a hash method which transforms your user into an ID hash.

## Document
A document here is represented by its `id` and optional `properties`.
In order to display a document in an interface, it's preferred to use `properties`, which is an arbitrary collection of values.
For example, it could contain an image url, a full article url, the publication date, the author or much more.
The properties that were added when the document was submitted to us, are just mirrored here.

## Auth
The API requires an authenticationToken when used.
Please see further down in this README.md file, or refer to the test included in this SDK's codebase, on how to set this token correctly.
\\

## Overview
This API client was generated by the [OpenAPI Generator](https://openapi-generator.tech) project.  By using the [openapi-spec](https://github.com/OAI/OpenAPI-Specification) from a remote server, you can easily generate an API client.

- API version: 1.0.0-rc6
- Package version: 
- Build package: org.openapitools.codegen.languages.Swift5ClientCodegen

## Installation

### Carthage

Run `carthage update`

### CocoaPods

Run `pod install`

# Getting started

## Prerequisities

Before using this library, ensure that you have submitted a reasonably large amount of documents via our other SDK, the back office.

Any usage of this SDK depends on the above requirement, without it, none of the functionality that this SDK provides will be of use.

## Setting up the SDK

Our SDK includes a test code page, which simply invokes each existing method. Method invocation examples can always be copied from there.

This SDK has been generated via OpenAPI. The original spec files can be found in our [open source git repository](https://github.com/xaynetwork/xayn_discovery_engine/tree/main/web-api/openapi).
If preferred, you can also generate the SDK yourself using the tooling provided by [OpenAPI](https://www.openapis.org/).

The following code snippet initializes the API using 2 parameters:
- A `base_url`, which acts as the endpoint for API calls
- An authorization token

```swift
let base_url = $URL
let authorizationToken = $TOKEN

XaynFrontOfficeSdk.basePath = base_url
XaynFrontOfficeSdk.customHeaders["authorizationToken"] = authorizationToken
```

## Interacting with documents

Next, we will create an interaction for a document. We currently support only a positive interaction, or a "like".

The following paramers are required:
- A valid document ID, matching any ID which exists in the system
- A user ID

As explained above, a user is nothing more than a unique `String` under which we accumulate document interactions.

The user does not need to be created seperately, if we receive an "unknown" user via an interaction, then we simply create that user on our side. The user then exists from this point and can recurringly be used in the future.

The next example is a simple document interaction:

```swift
let user = $USER
let documentId = "document_A"
        
FrontOfficeAPI.updateUserInteractions(
    userId: user, 
    userInteractionRequest: UserInteractionRequest(documents: [
        UserInteractionData(id: documentId, type: UserInteractionType.positive)
    ])
) { response, error in
    if let error = error else {
        print("\(error)")
        return
    }
    
    // done!
}
```

## Obtaining user recommendations

If you have performed at least _one_ interaction for a given `user_id`, as portrayed in the above example, then you can also use the next example to fetch recommendations.

The count parameter is optional, it defaults to 10 if not specified.

```swift
let user = $USER

FrontOfficeAPI.getPersonalizedDocuments(userId: user) { response, error in
    if let error = error else {
        print("\(error)")
        return
    }

    // done!
}
```
