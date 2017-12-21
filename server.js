const express =  require("express");
const app = express();

app.use(express.static(__dirname + '/app'));

app.get('/', (req, res) => {
  return res.sendFile(__dirname + '/app/index.html');
});

app.get('/*', (req, res)=>{
  return res.redirect('/');
});

app.set('port', (process.env.PORT || 5000));

app.listen(app.get('port'), () => {
  console.log("servidor corriendo en el puerto 5000");
});
