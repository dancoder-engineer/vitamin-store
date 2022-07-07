//import logo from './logo.svg';
import React, {useState, useEffect} from 'react'

import Card from './MainStore/Card.js'
import Header from './MainStore/Header.js'

import './App.css';
function App() {

let [items, setItems] = useState([])


function searchFunc(a) {
  if (!a) {return 0}
 // console.log("http://127.0.0.1:5000/searchitems/" + a)
  fetch("http://127.0.0.1:5000/searchitems/" + a)
.then(res => res.json())
.then(data => { console.log(data)
  setItems(data.map((i) => <Card key={i.id} itemData={i} class="cardDiv"/>))
}
)
}

useEffect(() => {
fetch("http://127.0.0.1:5000/featureditems")
.then(res => res.json())
.then(data => { //console.log(data)
  setItems(data.map((i) => <Card key={i.id} itemData={i} class="cardDiv"/>))

})}, []

)


  return (
    <div>
      <Header searchFunc={searchFunc} />
      <div class="cardsHolder">{items && items}</div>
    </div>

  );
}

export default App;
