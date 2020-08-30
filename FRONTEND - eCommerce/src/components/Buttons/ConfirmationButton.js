import React from 'react'
import 'components/Buttons/ConfirmationButton.css'

const ConfirmationButton = ({text}) => {
    return (  
        <button className="confirmation-button">
            <p className="confirmation-button-text">{text}</p>
        </button>
    )
}
 
export default ConfirmationButton