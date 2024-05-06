# Delete User's Account

Delete an RV record from the database.

**URL** : `/api/v1/rvs/{id}`

**URL Parameters** : `id=[integer]` where `id` is the ID of the RV in the database.

**Method** : `DELETE`

**Data** : `{}`

## Success Response

**Condition** : If the RV exists.

**Code** : `200 OK`

**Content** :

```json
{ "message": "Rv is deleted" }
```

## Error Responses

**Condition** : If there was no RV with specified `{id}` available to delete.

**Code** : `404 NOT FOUND`

**Content** :

```json
{
  "error": "Couldn't find Rv with 'id'={id}"
}
```

[BACK](../README.md)
