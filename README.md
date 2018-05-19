# Basic REST Users
Basic REST backend application using Spring-boot for test purposes.

## Abstract ##
This application will serve as an example for a quick cloud microservice environment bootstrap.

## Inputs ##
The application will provide [at least] the following endpoints:

* POST /users
* GET /users
* GET /users/{id}
* PUT /users

Moreover:

1. User information are served from memory
2. The application context endpoint is /basic-rest-users
3. You get responses with state information defined by HATEOAS
4. Pagination is supported

## Usage example ##
Using any HTTP client application, you can try the below.

### Create a user
#### Request
```
POST <URL>/basic-rest-users/users
{
	"id" : "gumol",
	"lastName" : "almo",
	"location" : "somewhere in mtl"
}
```
#### Response
201 Created
```
{
  "firstName": null,
  "lastName": "almo",
  "email": null,
  "location": "somewhere in mtl",
  "_links": {
    "self": {
      "href": "<URL>/basic-rest-users/users/gumol"
    },
    "user": {
      "href": "<URL>/basic-rest-users/users/gumol"
    }
  }
}
```

### Get a user
#### Request
```
GET <URL>/basic-rest-users/users/gumol
```
#### Response
200 OK
```
{
  "firstName": null,
  "lastName": "almo",
  "email": null,
  "location": "somewhere in mtl",
  "_links": {
    "self": {
      "href": "<URL>/basic-rest-users/users/gumol"
    },
    "user": {
      "href": "<URL>/basic-rest-users/users/gumol"
    }
  }
}
```
