const GetShippingRegions = (request, response) => {
    try {
        let query = `SELECT 
                        A.billing_region_id AS 'RegionId',
                        A.billing_region AS 'Region'
                    FROM shipping_region A 
                    ORDER BY billing_region_id ASC`; // query database to get all the  billing Regions

        // execute query
        db.query(query, (err, result) => {
           if (err != null) response.status(500).send({ error: error.message });

           return response.json(result);
       });
    } catch (error) {
        if (error != null) response.status(500).send({ error: error.message });
    }
};

const billing = {
    GetbillingRegions
};

module.exports = billing; 
