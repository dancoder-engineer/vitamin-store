import React, {useState, useEffect} from 'react'
import './checkout.css'

function CartItem({item, amount}) {

    let [itemData, setItemData] = useState({})
    let [errorMessage, setErrorMessage] = useState(" ")
    let [amt, setAmt] = useState(amount)

    const boxId = "productQuantity" + itemData.id



    useEffect( () => {
        grabItem()
    }, [])

    function grabItem() {
        let url = '/items/' + item
        console.log(url)
        fetch(url)
        .then(res => res.json())
        .then(data => setItemData(data))
    }

    
function addToCart() {
    let fullurl = "/updatecart/"
    let dat = {
        id: item,
        amount: amt}
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
            console.log(data)

            document.querySelector('#' + boxId).value = data.old
            setErrorMessage(data.error)
            setAmt(data.old)
        } else {
            
            console.log(data)
            setErrorMessage(" ")
        }
    
    
    })
}

function changeAmt(e){
    if (parseInt(e.target.value) < 0) (e.target.value = '0')
    setAmt(e.target.value)
}



    return(
        <div>
        {itemData && ( <div className= 'CartItem'>  <div className="CartItemPic"><img className='itemPic' src={itemData.picurl} /> </div>
        <div className='CartItemData'> {itemData.name}<br />
        Quantity: <input type="number" id={boxId} class="quantity" defaultValue={amount} onChange={changeAmt} />
                <button onClick={addToCart}>Add to Cart</button><br />
                <p>{errorMessage}</p>
          

        </div>

        </div>
        
        
        )}

        </div>
    )
}

export default CartItem