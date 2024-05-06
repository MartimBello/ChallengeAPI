# Update RV

Update an RV record in the database.

**URL** : `/api/v1/rvs/{id}`

**Method** : `PUT`

**URL Parameters** : `id=[integer]` where `id` is the ID of the RV van we want to update .

**Data constraints**

```json
{
  "make": [string],
  "model": [string],
  "year": [integer],
  "description": [string],
  "image_url": [string],
  "daily_rate": [float]
}
```

**Data example** All fields must be sent.

```json
{
  "make": "Mercedes",
  "model": "Transporter",
  "year": 2020,
  "description": "A reliable and big RV for the whole family.",
  "image_url": "https://example.com/car-image.jpg",
  "daily_rate": 150.99
}
```

## Success Responses

**Condition** : Update can be performed either fully or partially by the Owner
of the Account.

**Code** : `200 OK`

**Content example** : For the example above, when the `daily_rate` is updated

```json
{
  "data": {
    "id": "2",
    "type": "rv",
    "attributes": {
      "make": "Mercedes",
      "model": "Transporter",
      "year": 2020,
      "description": "A reliable and big RV for the whole family.",
      "image_url": "https://example.com/car-image.jpg",
      "daily_rate": 150.99
    }
  }
}
```

## Error Response

**Condition** : RV with the `{id}` specified does not exist.

**Code** : `404 NOT FOUND`

**Content** :

```json
{
  "error": "Couldn't find Rv with 'id'={id}"
}
```

### Or

**Condition** : If fields are missing.

**Code** : `400 BAD REQUEST`

**Content example**

```json
{
  "error": "Parameter missing in request body."
}
```

### or

**Condition** : If daily rate is less or equal than zero.

**Code** : `400 BAD REQUEST`

**Content example**

```json
{
  "error": "Daily rate must be a positive number bigger than 0."
}
```

[BACK](../README.md)
