const express = require('express')
const app = express();

const PORT = process.env.PORT || 8000

app.listen('/',(req,res)=>{
    return res.json({message:"Hey I am nodejs in container :--) "})
});

app.listen(PORT,()=>console.log('Server started on PORT${PORT}'))
