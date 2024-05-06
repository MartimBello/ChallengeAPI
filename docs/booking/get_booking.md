# Show Single RV

Show details for a specific id
**URL** : `/api/v1/booking/{id}`

**URL Parameters** : `id=[integer]` where `id` is the ID of the Booking van we are looking for.

**Method** : `GET`

**Data**: `{}`

## Success Response

**Condition** : If the Booking exists.

**Code** : `200 OK`

**Content example**

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
      "status": "Booked"
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

## Error Responses

**Condition** : If Booking does not exist with `id` parameter.

**Code** : `404 NOT FOUND`

**Content**

```json
{
  "error": "Couldn't find Booking with 'id'={id}"
}
```

[BACK](../README.md)
