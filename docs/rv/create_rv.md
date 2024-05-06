# Create RV

Add an RV to the database.

**URL** : `/api/v1/rvs`

**Method** : `POST`

**Data constraints**

Provide the details for the RV.

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
  "daily_rate": 100.99
}
```

## Success Response

**Condition** : If everything is OK the RV is created.

**Code** : `201 CREATED`

**Content example**

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
      "daily_rate": 100.99
    }
  }
}
```

## Error Responses

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
