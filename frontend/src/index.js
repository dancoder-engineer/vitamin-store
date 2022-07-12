import React from 'react';
import ReactDOM from 'react-dom/client';
import './index.css';
import ItemPage from './MainStore/ItemPage.js'
import App from './App';
import Test from './Test.js'
import reportWebVitals from './reportWebVitals';

import {BrowserRouter, Routes, Route} from "react-router-dom"

const url="http://localhost:5000/"

const root = ReactDOM.createRoot(document.getElementById('root'));
root.render(
  <React.StrictMode>
    <BrowserRouter>
      <Routes>
        <Route path='/' element={<App url={url} />} />
        <Route path='/item/:id' element={<ItemPage url={url} />} />
        <Route path='/test/' element={<Test />} />
      </Routes>
    </BrowserRouter>
  </React.StrictMode>
);

// If you want to start measuring performance in your app, pass a function
// to log results (for example: reportWebVitals(console.log))
// or send to an analytics endpoint. Learn more: https://bit.ly/CRA-vitals
reportWebVitals();
