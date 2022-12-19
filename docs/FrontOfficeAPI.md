# FrontOfficeAPI

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**documentInteraction**](FrontOfficeAPI.md#documentinteraction) | **PATCH** /users/{user_id}/interactions | Add interaction between a user and a document
[**getPersonalizedDocuments**](FrontOfficeAPI.md#getpersonalizeddocuments) | **GET** /users/{user_id}/personalized_documents | Get personalized documents for the user


# **documentInteraction**
```swift
    open class func documentInteraction(userId: String, userInteractionRequest: UserInteractionRequest? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Add interaction between a user and a document

The interaction is used to provide personalized documents to the user.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let userId = "userId_example" // String | Id of the user
let userInteractionRequest = UserInteractionRequest(documents: [UserInteractionData(id: "id_example", type: UserInteractionType())]) // UserInteractionRequest |  (optional)

// Add interaction between a user and a document
FrontOfficeAPI.documentInteraction(userId: userId, userInteractionRequest: userInteractionRequest) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String** | Id of the user | 
 **userInteractionRequest** | [**UserInteractionRequest**](UserInteractionRequest.md) |  | [optional] 

### Return type

Void (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPersonalizedDocuments**
```swift
    open class func getPersonalizedDocuments(userId: String, count: Int? = nil, completion: @escaping (_ data: PersonalizedDocumentsResponse?, _ error: Error?) -> Void)
```

Get personalized documents for the user

Returns a list of documents personalized for the given `user_id`. Each document contains the id, the score and the properties that are attached to the document. The score is a value between 0 and 1 where a higher value means that the document matches the preferences of the user better.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let userId = "userId_example" // String | Id of the user
let count = 987 // Int | Maximum number of personalized documents to return (optional) (default to 10)

// Get personalized documents for the user
FrontOfficeAPI.getPersonalizedDocuments(userId: userId, count: count) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String** | Id of the user | 
 **count** | **Int** | Maximum number of personalized documents to return | [optional] [default to 10]

### Return type

[**PersonalizedDocumentsResponse**](PersonalizedDocumentsResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

