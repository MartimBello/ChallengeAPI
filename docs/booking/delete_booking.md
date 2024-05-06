# Delete User's Account

Delete an Booking record from the database.

**URL** : `/api/v1/booking/{id}`

**URL Parameters** : `id=[integer]` where `id` is the ID of the Booking in the database.

**Method** : `DELETE`

**Data** : `{}`

## Success Response

**Condition** : If the Booking exists.

**Code** : `200 OK`

**Content** :

```json
{
  "message": "Booking is deleted"
}
```

## Error Responses

**Condition** : If there was no Booking with specified `{id}` available to delete.

**Code** : `404 NOT FOUND`

**Content** :

```json
{
  "error": "Couldn't find Booking with 'id'={id}"
}
```

[BACK](../README.md)
