import React, {useState, useEffect} from 'react'
import './checkout.css'

function CartItem({item, amount, redoItems, bigTotal}) {

    let [itemData, setItemData] = useState({})
    let [errorMessage, setErrorMessage] = useState(" ")
    let [amt, setAmt] = useState(amount)
    

    const boxId = "productQuantity" + itemData.id



    useEffect( () => {
        grabItem()
    }, [])

    function grabItem() {
        let url = '/items/' + item
        fetch(url)
        .then(res => res.json())
        .then(data => { 
            setItemData(data)
        })
    }

    
function addToCart(del = 0) {
    let fullurl = "/updatecart/"
    let dat = {
        id: item,
        amount: amt}
    if (del === 1) {dat.amount = 0}
    fetch(fullurl, {
        headers: {
            'Accept': 'application/json',
            'Content-Type': 'application/json'
        },
        method: "POST",
        body: JSON.stringify(dat)
    })
    .then(res => res.json())
    .then(data => {
        
        if (data.error) {
        //    console.log(data)

            document.querySelector('#' + boxId).value = data.old
            setErrorMessage(data.error)
            setAmt(data.old)
        } else {
            setErrorMessage(" ")
            redoItems()
        }
    
    
    })
}
 
function deleteFromCart() {
    addToCart(1)
}

function changeAmt(e){
    if (parseInt(e.target.value) < 0) (e.target.value = '0')
    setAmt(e.target.value)
}

function getTotal(amount, price) {
    let total = amount * parseFloat(price)

    return total.toFixed(2)
}



    return(
        <div>
        {itemData && ( <div className= 'CartItem'>  <div className="CartItemPic"><img className='itemPic' src={itemData.picurl} /> </div>
        <div className='CartItemData'> {itemData.name}<br />
        Quantity: <input type="number" id={boxId} className="quantity" defaultValue={amount} onChange={changeAmt} />
                <button onClick={addToCart} className="buttn">Update Amount</button> <button className="buttn" onClick={deleteFromCart}>Remove from Cart</button> <br />
                <div className='prices'><span className='justifyLeft'>Unit Price ${itemData.price}</span>   <span className='justifyRight'>Total Price: ${getTotal(amount, itemData.price)}</span></div>
                <p>{errorMessage}</p>
          

        </div>

        </div>
        
        
        )}

        </div>
    )
}

export default CartItem