import React from "react"
import GooglePayButton from '@google-pay/button-react'


function Test({}) {
	let price = 9.00

return (
    <div>

<GooglePayButton
	environment="TEST"			//TEST or PRODUCTION
	paymentRequest={{
		apiVersion:2,
		apiVersionMinor:0,
		allowedPaymentMethods:[
			{
				type:"CARD",
				parameters: {
					allowedAuthMethods:["PAN_ONLY", "CRYPTOGRAM_3DS"],
					allowedCardNetworks:["MASTERCARD", "VISA"]
				},

				tokenizationSpecification:{
					type:"PAYMENT_GATEWAY",
					parameters:{
						gateway:"example",
						GatewayMerchantId:"example"
					}
                }
            }
        ],
            
					merchantInfo:{
						merchantId:"12345678",
						merchantName:"Demo Merchant"
					},

					transactionInfo:{
						totalPriceStatus:"FINAL",
						totalPriceLabel:"Total",
						totalPrice:price.toString(),
						currencyCode:"USD",
						countryCode:"US"
					},
					shippingAddressRequired:true,
					callbackIntents:["PAYMENT_AUTHORIZATION"]
				}}

				onLoadPaymentData={paymentRequest => paymentRequest }
				onPaymentAuthorized={paymentData => {
					console.log("a", paymentData)
					return { transactionState: "SUCCESS" }
				}}
				existingPaymentMethodRequired="false"
				buttonColor="Black"
				buttonType="Buy"

	>
		</GooglePayButton>

    </div>
)
}

export default Test







