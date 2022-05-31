import React, {useState} from "react";
import axios from "axios";



function Quotes() {
    const [text, setText] = useState("");
    const [author, setAuthor] = useState("");
    const [name, setName] = useState("");

    function getQuote() {
        axios.get("http://localhost:5001/",  { crossdomain: true }).then(response => {
            console.log(response.data);
            setText(response.data.name);
            setAuthor(response.data.id);
            setName(response.data.text);
        });
    }

    return (
        <div>
            <button onClick={getQuote}>
                Generate Quote
            </button>
            <h3>{author}</h3>
            <h1>{text}</h1>
            <h3>{name}</h3>
        </div>
    )
}

export default Quotes;