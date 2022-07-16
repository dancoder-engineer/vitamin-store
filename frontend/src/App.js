//import logo from './logo.svg';
import React, {useState, useEffect} from 'react'

import Card from './MainStore/Card.js'
import Header from './MainStore/Header.js'


import './App.css';
function App({}) {

let [items, setItems] = useState([])

let [user, setUser] = useState([])


function youGetMe() {

  fetch("/getme/")
  .then(res => res.json())
  .then(data => setUser(data))
}



function searchFunc(a) {
  if (!a) {return 0}
 // console.log("http://127.0.0.1:5000/searchitems/" + a)
  fetch("/searchitems/" + a)
.then(res => res.json())
.then(data => { console.log(data)
  setItems(data.map((i) => <Card key={i.id} itemData={i} class="cardDiv"/>))
}
)
}

function getFeaturedItems() {
  fetch("/featureditems/")
.then(res => res.json())
.then(data => { //console.log(data)
  setItems(data.map((i) => <Card key={i.id} itemData={i} class="cardDiv"/>))

})
}

useEffect(() => {
  getFeaturedItems()
  youGetMe()
}, []

)




  return (
    <div class="mainStore">
      <div class="things">
        <Header searchFunc={searchFunc} youGetMe={youGetMe} search={1} user={user} />
        <div class="cardsHolder">{items && items}</div>
    </div></div>

  );
}

export default App;
