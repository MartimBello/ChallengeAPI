# Show Single RV

Show details for a specific id
**URL** : `/api/v1/rvs/{id}`

**URL Parameters** : `id=[integer]` where `id` is the ID of the RV van we are looking for.

**Method** : `GET`

**Data**: `{}`

## Success Response

**Condition** : If the RV exists.

**Code** : `200 OK`

**Content example**

```json
{
  "data": {
    "id": "1",
    "type": "rv",
    "attributes": {
      "make": "Ford",
      "model": "Focus",
      "year": 2000,
      "description": "A reliable and fuel-efficient sedan.",
      "image_url": "https://example.com/car-image.jpg",
      "daily_rate": 35.99
    }
  }
}
```

## Error Responses

**Condition** : If RV does not exist with `id` parameter.

**Code** : `404 NOT FOUND`

**Content**

```json
{
  "error": "Couldn't find Rv with 'id'={id}"
}
```

[BACK](../README.md)
