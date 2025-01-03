# Uncommon Dart Bug: Handling JSON Responses in Async Operations

This repository demonstrates a common error in Dart applications when working with asynchronous operations and JSON responses. The code fails to handle cases where the JSON response might not be in the expected format or when network requests fail silently.

## Bug Description
The `fetchData` function uses `http.get` to fetch data from an API. If the request is successful, it attempts to parse the JSON response and extract a `name` field. However, it does not handle scenarios where:

1. The API returns an error status code (not 200).
2. The JSON structure is different from what's expected.
3. The network request fails.

These cases will result in either runtime exceptions or silent failures, making debugging difficult.

## Solution
The provided solution shows how to handle these issues with appropriate error handling, type checking and more robust JSON parsing.