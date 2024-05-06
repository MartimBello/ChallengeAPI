# Show All RVs

Shows all the bookings.

**URL** : `/api/v1/booking`

**Method** : `GET`

**Data constraints** : `{}`

## Success Responses

**Condition** : There are no Bookings.

**Code** : `200 OK`

**Content** : `{"data": []}`

### OR

**Condition** : User can see one or more Bookings.

**Code** : `200 OK`

**Content** : In this example we can see two Bookings in the system

```json
{
  "data": [
    {
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
    },
    {
      "id": "2",
      "type": "booking",
      "attributes": {
        "user_id": 4,
        "start_date": "2024-05-10",
        "end_date": "2024-05-13",
        "total_price": 107.97,
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
  ]
}
```

[BACK](../README.md)
