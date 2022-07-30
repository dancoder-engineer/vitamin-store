import React, {useState, useEffect} from 'react'
import CartItem from './CartItem.js'

import GooglePayButton from '@google-pay/button-react'

function Cart() {

    let [cartItems, setCartItems] = useState([])
    let [subtotal, setSubtotal] = useState(0.00)
    let [grandTotal, setGrandTotal] = useState(0.00)
    let [paymentInfo, setPaymentInfo] = useState({})

    let salesTax = .085

    useEffect(() => setGrandTotal((subtotal * (salesTax + 1)).toFixed(2)), [subtotal])
   
    useEffect(() => 
       {completeOrder(paymentInfo)}, [paymentInfo] )

    useEffect(()  => { 
    grabCart()

}, [])

    function completeOrder(paymentData) {
        console.log(paymentData)
    }

    function grabCart() {
        fetch('/getcart/')
        .then(res => res.json())
        .then((data) => {
            makeGrandTotal(data)
            makeItems(data)
            
        })
    }

    let gpButton = (
                
        <GooglePayButton
        className="centered"
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
                                totalPrice:grandTotal.toString(),
                                currencyCode:"USD",
                                countryCode:"US"
                            },
                            shippingAddressRequired:true,
                            callbackIntents:["PAYMENT_AUTHORIZATION"]
                        }}

                        onLoadPaymentData={paymentRequest => paymentRequest }
                        onPaymentAuthorized={paymentData => {
                            setPaymentInfo(paymentData)
                            return { transactionState: "SUCCESS" }
                        }}
                        existingPaymentMethodRequired="false"
                        buttonColor="Black"
                        buttonType="Buy"

            >
                </GooglePayButton>
            )



            function makeGrandTotal(cartData) {
                let total = 0.00
                let iterations = 0
                for (let i of Object.keys(cartData)) {
                    let url = '/items/' + i
                    fetch(url)
                    .then(res => res.json())
                    .then(data => { 
                        iterations += 1
                        let subPrice = data.price * cartData[i]
                        total = subPrice + total
                        if (iterations === Object.keys(cartData).length)    { setSubtotal(total.toFixed(2)) }
                    })
                }
            }




    function makeItems(cartData) {
        
        if (cartData) { 
           setCartItems (Object.keys(cartData).map(i => <CartItem item={i} amount={cartData[i]} redoItems={redoItems}  key={i} />) )
        }
    }

    function redoItems() {
        setCartItems([])
        grabCart()
    }



    return(
        <div>
            <h1 className='middleText'>Cart</h1>
            {cartItems}
            <br />
            Subtotal: ${subtotal}<br />
            Sales Tax: {salesTax * 100}%<br />
            Total: ${grandTotal}
            <div>{gpButton}</div>


        </div>
    )
}

export default Cart