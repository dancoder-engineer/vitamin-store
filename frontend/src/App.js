import logo from './logo.svg';
import React, {useState, useEffect} from 'react'

import Card from './MainStore/Card.js'

import './App.css';
function App() {

let [items, setItems] = useState([])


useEffect(() => {
fetch("http://127.0.0.1:5000/featureditems")
.then(res => res.json())
.then(data => { //console.log(data)
  setItems(data.map((i) => <Card key={i.id} itemData={i} />))

})}, []

)


  return (
    <div>{items ? items : <p></p>}</div>
  );
}

export default App;
