var request = require('request');
const express = require('express');
const app = express();
const path = require('path');
const router = express.Router();
//const mysql = require('mysql')





//function insert(price,soldQuantity,titleItem,permaLink){
//    var pool  = mysql.createPool({
//        connectionLimit : 2000, 
//        host            : 'localhost',
//        user            : 'root',
//        password        : '1234',
//        database        : 'bot_search'
//    });
//
//    pool.getConnection(function (err, connection) {
//        connection.query("insert into produto (valor_produto,quantidade,produto_pesquisado_desc,url) values ("+price+","+soldQuantity+",'"+titleItem+"','"+permaLink+"');", function (err, rows) {
//        });
//    });
//}


router.get('/',function(req,res){
  res.sendFile(path.join(__dirname+'/index.html'));

});


app.get('/api/:product', (req, res) => {
    var product = req.params.product
    product = product.replace(' ', '-')
    var listItemsMl = []
    var listItemsGoogle = []
    searchMl(encodeURI(product), listItemsMl, listItemsGoogle, res)

})
    
    function sortfunction(a, b){
      return (a - b) 
    }
    function sendJson(product, listItemsMl, listItemsGoogle, res){
        let loop = 0;
        var interval = setInterval(function(){
            let listMl = []
            let listGoogle = []
            loop++
            if (loop == 7){
                res.send({status: 'Error' });
                clearInterval(interval);
            }
			if(listItemsMl.length > 0 && listItemsGoogle.length > 0){
                somaMl = 0
                somaGoogle = 0
                for(let i = 0; i < listItemsMl.length; i++){
                    somaMl += listItemsMl[i].price
                    listMl.push(listItemsMl[i].price)
    
                }
                for(let i = 0; i < listItemsGoogle.length; i++){
                    somaGoogle += listItemsGoogle[i].price
                    listGoogle.push(listItemsGoogle[i].price)
                }

                listMl.sort(sortfunction);
                listGoogle.sort(sortfunction);

                mediaMl = somaMl/listItemsMl.length
                mediaGoogle = somaGoogle/listItemsGoogle.length

                let varianciaMl = listMl.reduce((total, valor) => total + Math.pow(mediaMl - valor, 2)/listMl.length, 0);
                let desvioPadraoMl = Math.sqrt(varianciaMl);

                let varianciaGoogle = listGoogle.reduce((total, valor) => total + Math.pow(mediaGoogle - valor, 2)/listGoogle.length, 0);
                let desvioPadraoGoogle = Math.sqrt(varianciaGoogle);

                res.send({status: 'Ok', product: product, Mercado_Livre: { result: listItemsMl, media_mercado_livre: parseFloat(mediaMl).toFixed(2), desvio_padrao_ml: desvioPadraoMl}
                          ,Google: { result: listItemsGoogle, media_google: parseFloat(mediaGoogle).toFixed(2), desvio_padrao_google: desvioPadraoGoogle}});
				clearInterval(interval);
			}
        },1000);
    
    }

    function searchMl(product, listItemsMl, listItemsGoogle, res){
        request('https://api.mercadolibre.com/sites/MLB/search?q='+product+'#json', function (error, response, body) {

            bodyString = String(body)
            bodyJS = JSON.parse(body)
            for(let i = 0; i < bodyJS.results.length; i++){
                price = body
                price = price.split('"price":')
                price = price[i+1].split(',"')
                price = price[0]
        
                soldQuantity = body
                soldQuantity = soldQuantity.split('"sold_quantity":')
                soldQuantity = soldQuantity[i+1].split(',"')
                soldQuantity = soldQuantity[0]
    
                permaLink = body
                permaLink = permaLink.split('"permalink":"')
                permaLink = permaLink[i+1].split('","')
                permaLink = permaLink[0]

                titleItem = body
                titleItem = titleItem.split('"title":"')
                titleItem = titleItem[i+1].split('","')
                titleItem = titleItem[0]

        
               // insert(parseFloat(price),parseInt(soldQuantity),titleItem,permaLink)
            
                listItemsMl.push({title: titleItem,price: parseFloat(price), sold_quantity: parseInt(soldQuantity), perma_link: permaLink})
            }
        })
        searchGoogle(product, listItemsMl, listItemsGoogle, res)
    }


    function searchGoogle(product, listItemsMl, listItemsGoogle, res){
        request('https://www.google.com.br/search?tbm=shop&q='+product+'&safe=strict&biw=1304&bih=697', function (error, response, body) {
            bodyString = String(body)
            price = bodyString.split('<div><b>R$�')
            for(let i = 0; i < price.length; i++){
                price = bodyString.split('<div><b>R$�')
              
                price = price[i+1].split('</b>')
                price = price[0].replace('.','')
                    
                try {
                    link = bodyString.split('"/shopping/product/')
                    link = link[i+1].split('">')
                    link = link[0]
                    link = 'https://www.google.com.br/shopping/product/' + link
                 }
                 catch (e) {
                    link = 'google.com'
                 }


                //insert(parseFloat(price), 0, 'Google Product', link)
                listItemsGoogle.push({ price: parseFloat(price), perma_link: link})
            }
            sendJson(product, listItemsMl, listItemsGoogle, res)
        })
    }

    


app.use('/', router);
app.listen(process.env.port || 3000);

console.log('Running at Port 3000');







