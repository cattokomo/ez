## `ez.http`

HTTP library.

This library provides HTTP client API, via libcurl.
It depends on libcurl, please install before using this.

### ez.http.Headers

```nelua
global ez.http.Headers = @hashmap(string, string)
```

Headers type, alias to `hashmap(string, string)`.

### ez.http.RequestOptions

```nelua
global ez.http.RequestOptions = @record{
    method: string, -- HTTP method, e.g `GET`, `HEAD`, `POST`...
    headers: ez.http.Headers, -- Headers to send
    body: string, -- Body to send
    timeout: integer, -- Timeout
    follow_redirects: boolean, -- Whether to follow redirects
    max_redirects: boolean, -- Maximum numbers to follow redirects
    output_file: filestream, -- Output file instead of returning `response.body`
}
```

Request options.

### ez.http.ResponseResult

```nelua
global ez.http.ResponseResult = @record{
    body: string, -- Response body, can be empty depends on `options.output_file`
    code: integer, -- HTTP code
    headers: ez.http.Headers, -- Response headers
}
```

Response result from request.

### ez.http.request

```nelua
function ez.http.request(url: string, options: facultative(ez.http.RequestOptions)): (boolean, ez.http.ResponseResult, string)
```

Send HTTP request.

`url`: URL to send the HTTP request.
`options`: Additional options in the request.
Returns:
* `boolean`: Whether the request is successfully made.
* `ez.http.ResponseResult`: Response result from the request.
* `string`: Error message if request failed.

---
