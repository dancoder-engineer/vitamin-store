import React, {useState} from 'react';
import ReactDOM from 'react-dom/client';
import './index.css';
import ItemPage from './MainStore/ItemPage.js'
import App from './App';
import Test from './Test.js'
import reportWebVitals from './reportWebVitals';

import {BrowserRouter, Routes, Route} from "react-router-dom"
import LogOut from './LogPages/LogOut.js'
import LogIn from './LogPages/LogIn.js'
import NewUser from './LogPages/NewUser.js'
import Cart from './checkout/Cart.js'
import OrderDone from './checkout/OrderDone.js'


const url=""

const root = ReactDOM.createRoot(document.getElementById('root'));

<script
  async
  src="https://pay.google.com/gp/p/js/pay.js"
  onload="onGooglePayLoaded()"
></script>


root.render(
  <React.StrictMode>
    <BrowserRouter>
      <Routes>
        <Route path='/' element={<App url={url} />} />
        <Route path='/item/:id' element={<ItemPage url={url} />} />
        <Route path='/test/' element={<Test />} />
        <Route path='/logout/' element={<LogOut />} />
        <Route path='/login/' element={<LogIn />} />
        <Route path='/newuser/' element={ <NewUser /> } />
        <Route path='/cart/' element= { <Cart /> } />
        <Route path='/orderdone/' element={ <OrderDone /> } />
      </Routes>
    </BrowserRouter>
  </React.StrictMode>
);

// If you want to start measuring performance in your app, pass a function
// to log results (for example: reportWebVitals(console.log))
// or send to an analytics endpoint. Learn more: https://bit.ly/CRA-vitals
reportWebVitals();
