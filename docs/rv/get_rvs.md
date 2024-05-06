# Show All RVs

Shows all the RVs in the system

**URL** : `/api/v1/rvs`

**Method** : `GET`

**Data constraints** : `{}`

## Success Responses

**Condition** : There are no RVs.

**Code** : `200 OK`

**Content** : `{"data": []}`

### OR

**Condition** : User can see one or more RVs.

**Code** : `200 OK`

**Content** : In this example we can see two RVs in the system

```json
{
  "data": [
    {
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
    },
    {
      "id": "2",
      "type": "rv",
      "attributes": {
        "make": "Mercedes",
        "model": "Transporter",
        "year": 2020,
        "description": "A reliable and big RV for the whole family.",
        "image_url": "https://example.com/car-image.jpg",
        "daily_rate": 100.99
      }
    }
  ]
}
```

[BACK](../README.md)
