# Indie Challenge API Docs

## Data Models

### RV

```json
{
    "id": [integer],
    "make": [string],
    "model": [string],
    "year": [integer],
    "description": [string],
    "image_url": [string],
    "daily_rate": [float]
}
```

### Booking

`status` can be `["Booked", "Cancelled", "Completed"]`

```json
{
    "id": [integer],
    "user_id": [integer],
    "start_date": [date],
    "end_date": [date],
    "total_price": [float],
    "status": [enum]
}
```

## Endpoints

### RV

- [Create RV](rv/create_rv.md) : `POST /api/v1/rvs`
- [Get RVs](rv/get_rvs.md) : `GET /api/v1/rvs`
- [Get RV](rv/get_rv.md) : `GET /api/v1/rvs/{id}`
- [Update RV](rv/update_rv.md) : `PUT /api/v1/rvs/{id}`
- [Delete RV](rv/delete_rv.md) : `DELETE /api/v1/rvs/{id}`

### Booking

- [Create Booking](booking/create_booking.md) : `POST /api/v1/booking`
- [Get Bookings](booking/get_bookings.md) : `POST /api/v1/booking`
- [Get Booking](booking/get_booking.md) : `POST /api/v1/booking/{id}`
- [Update Booking](booking/update_booking.md) : `PUT /api/v1/booking/{id}`
- [Delete Booking](booking/delete_booking.md) : `DELETE /api/v1/booking/{id}`
