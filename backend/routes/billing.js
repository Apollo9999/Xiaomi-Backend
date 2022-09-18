
    
const express = require('express');
const router = express.Router();
const { GetbillingRegions } = require('../dataAccessLayer/billing-controller');

//get all Shipping Regions
router.get('/getbillingRegions', GetbillingRegions);

module.exports = router;
