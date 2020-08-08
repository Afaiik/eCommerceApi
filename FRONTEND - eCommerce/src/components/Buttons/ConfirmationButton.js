import React from 'react'
import 'components/Buttons/ConfirmationButton.css'

const ConfirmationButton = ({text}) => {
    return (  
        <button className="button">
            <p className="button-text">{text}</p>
        </button>
    )
}
 
export default ConfirmationButton