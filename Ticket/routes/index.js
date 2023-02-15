let express = require('express');
var request = require('request');
const port = 8000
const localHost = "auth"
const url = `http://${localHost}:${port}/auth/user_info`;


const {filter_flights, buy_ticket, validate_buy, get_user_tickets} = require("../public/javascripts/logic");
let router = express.Router();

router.post('/ticket/filter_flights', async function (req, res, next) {
  res.json({
    flights: await filter_flights(req.body)
  });
});

router.put('/ticket/buy_ticket', async function (req, res, next) {
  const token = req.header("Authorization");
  let userId;
  request.get(
    {
      url:url,
      headers : {"Authorization":token}},
      async function(error, response,body){
        console.log(response)
        console.log(error)
        console.log(body)
      userId = JSON.parse(body).user.ID;
      res.status(await buy_ticket(req.body,userId) ? 300 : 200).send()
  })
});

router.get('/ticket/validate_buy', async function (req, res, next) {
  let message = await validate_buy(req.body)
  res.status(message ? 400 : 200).send(message);
});

router.get('/ticket/get_user_tickets', async function (req, res, next) {
  const token = req.header("Authorization");
  let userId;
  request.get(
    {
      url:url,
      headers : {"Authorization":token}},
      async function(error, response,body){
        console.log(response)
        console.log(error)
        console.log(body)
      userId = JSON.parse(body).user.ID;
      res.json({
        tickets : await get_user_tickets(userId)
      })
  })

  
});

module.exports = router;
