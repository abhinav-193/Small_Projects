import React,{useState} from 'react'
const Context = React.createContext();

export default Context;

const wait =(time)=>{
    return new Promise((resolve)=>{
        setTimeout(resolve,time)
    })
}

export function AuthContext({children}) {

    const [loggedIn, setloggedIn] = useState(false)
    const [loading, setLoading] = useState(false)

    const logger  = {
        loggedIn: loggedIn,
        loading: loading,
        login:()=>{
            setLoading(true)
            wait(1000).then(()=>{
                setloggedIn(true)
                setLoading(false)
            })
        },

        logout:()=>{
            setLoading(true)
            wait(1000).then(()=>{
                setloggedIn(false)
                setLoading(false)
            })
        },

        
    }
    return (
        <Context.Provider value={logger}>
            {children}
        </Context.Provider>
    )
}
