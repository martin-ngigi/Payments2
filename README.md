## Payments

This is an implementation of the various Payment Gateways in Laravel including `Mpesa`, and `Paypal`.

## Setup

To run this project locally clone the repository and in the project directory,run the following commands:

```
$ cp.env.example .env
$ composer install
$ php artisan key:generate
$ php artisan migrate
$ npm install
$ npm run dev
$ php artisan serve
```

## Technologies Used

-   [Laravel](https://laravel.com/)
-   [Vue](https://vuejs.org/)
-   [Tailwindcss](https://tailwindcss.com/)
-   [InertiaJS](https://inertiajs.com/)
-   [Laravel Mpesa Package](https://github.com/Iankumu/mpesa)
-   [Vite](https://vitejs.dev/)

## Payment Gateways

The application consists of two payment Gateways implementations with more to be added in the future. You can interact with them on [https://payments.iankumu.com](https://payments.iankumu.com).

### Mpesa

The Application Contains a [simple UI](https://payments.iankumu.com/mpesa/stkpush) from which you can interact with the various Mpesa APIs.

### Paypal

The Application Contains a [simple UI](https://payments.iankumu.com/paypal) from which you can interact with the Paypal's [Orders API](https://developer.paypal.com/docs/api/orders/v2/).

# API
1.  Simulate Mpesa STK Push
- Endpoint : http://127.0.0.1:8000/api/v1/simulate-stk-push
- Method POST
- Body: 
```
{
    "amount":"1",
    "phonenumber": "0797292290",
    "account_number": "Dev Wainaina"
}
```
- Sample of expected response:
```
{
    "response": {
        "MerchantRequestID": "84248-24215130-1",
        "CheckoutRequestID": "ws_CO_10052023204930446797292290",
        "ResponseCode": "0",
        "ResponseDescription": "Success. Request accepted for processing",
        "CustomerMessage": "Success. Request accepted for processing"
    }
}
```

2. Querry STK Push
- Endpoint: http://127.0.0.1:8000/api/v1/callback/query
- Method: POST
- Body: 
```
{
    "CheckoutRequestID":"ws_CO_10052023204930446797292290"
}
```
- Sample of expected response:
```
{
    "ResponseCode": "0",
    "ResponseDescription": "The service request has been accepted successsfully",
    "MerchantRequestID": "84248-24215130-1",
    "CheckoutRequestID": "ws_CO_10052023204930446797292290",
    "ResultCode": "0",
    "ResultDesc": "The service request is processed successfully."
}
```