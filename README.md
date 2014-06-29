#Thunder talk - Build an API
****************************

This is an API that has been created to query recipes.


##Getting started!
------------------

The first thing you'll need to do is visit our root directory and create an account. After creation you will be redirected to a keygen page. By clicking the link, a new key 20 digit key will be created.  it will look similar to <code>a139xxxxx422exxxx89e</code>Do not lose this!
------------------


##End points
------------
We have provided users with 2 major end points. The key previously generated will be used to query these end points.  In the examples below, simply replace *your_api_key* with your 20 digit key.

| End Point | Description | Example Response |
|-----------|-------------|------------------|
| **GET** '/api/v1/your_api_key/recipes' | Returns a list of 20 random recipes | <pre>[ {
	"id":371,
	"title":"Chicken fin strange gravy",
	"content":"Pig salsify bonbon toffee macaroon gummies.",
	"created_at":"2014-06-29T20:10:59Z",
	"updated_at":"2014-06-29T20:10:59Z" },
{
	"id":99,
	"title":"Cat arm happy donut",
	"content":"Oat beef ribs tigernut tart asparagus.",
	"created_at":"2014-06-29T00:13:19Z",
	"updated_at":"2014-06-29T00:13:19Z" } ] </pre>|

| End Point | Description | Example Response |
|-----------|-------------|------------------|
|	**GET** '/api/v1/your_api_key/recipes/:id' | Returns information for the recipe specified by the id parameter | <pre> {
	"id":59,
	"title":"Beef neck red smoothie",
	"content":"Collard greens filet mignon spinach arugula",
	"created_at":"2014-06-29T00:13:19Z",
	"updated_at":"2014-06-29T00:13:19Z"
} </pre> |