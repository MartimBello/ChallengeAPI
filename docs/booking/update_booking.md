# Update RV

Update an Booking record in the database.

**URL** : `/api/v1/booking/{id}`

**Method** : `PUT`

**URL Parameters** : `id=[integer]` where `id` is the ID of the Booking van we want to update .

**Data constraints**

`status` can be `["Booked", "Cancelled", "Completed"]`

```json
{
    "rv_id": [integer],
    "user_id": [integer],
    "start_date": [date],
    "end_date": [date],
    "status": [enum]
}
```

**Data example** All fields but `status` must be sent. `status` default value is `"Booked"`

```json
{
  "rv_id": 1,
  "user_id": 1,
  "start_date": "5/05/2024",
  "end_date": "6/05/2024",
  "status": "Cancelled"
}
```

## Success Responses

**Code** : `200 OK`

**Content example** : For the example above, when the `status` is changed

```json
{
  "data": {
    "id": "1",
    "type": "booking",
    "attributes": {
      "user_id": 1,
      "start_date": "2024-05-05",
      "end_date": "2024-05-06",
      "total_price": 35.99,
      "status": "Cancelled"
    },
    "relationships": {
      "rv": {
        "data": {
          "id": "1",
          "type": "rv"
        }
      }
    }
  }
}
```

## Error Response

**Condition** : Booking with the `{id}` specified does not exist.

**Code** : `404 NOT FOUND`

**Content** :

```json
{
  "error": "Couldn't find Booking with 'id'={id}"
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

**Condition** : If dates are not correct.

**Code** : `400 BAD REQUEST`

**Content example**

```json
{
  "error": "invalid date"
}
```

### or

**Condition** : If `rv_id` is not a valid `{id}` for an RV.

**Code** : `400 BAD REQUEST`

**Content example**

```json
{
  "error": "Couldn't find Rv with 'id'={id}"
}
```

### or

**Condition** : If `start_date` is bigger than `end_date`.

**Code** : `400 BAD REQUEST`

**Content example**

```json
{
  "error": "The start date needs to be before the end date."
}
```

### or

**Condition** : If `start_date` is equal to the `end_date`.

**Code** : `400 BAD REQUEST`

**Content example**

```json
{
  "error": "There is a minimum one day rental period."
}
```

[BACK](../README.md)
