import React from "react"


function Header({searchFunc}) {

    let searchTerm = ""

    function changeSearch(e){
        searchTerm = (e.target.value)
    }

    function keyp(e){
        if (e==="Enter"){
            searchFunc(searchTerm)
    }
    }
    return(
        <div>
            <label for="searchTerm">Search: </label>
            <input type="text" class="searchTerm" id="searchTerm" onKeyPress={(e) => keyp(e.code)} onChange={e => changeSearch(e)}/>
            <button id="startSearch" onClick={ () => searchFunc(searchTerm) } >Search</button>
        </div>
    )
}

export default Header