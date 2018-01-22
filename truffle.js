module.exports = {
    networks: {
        development: {
            host: 'localhost',
            port: 8544,
            network_id: '*' // Match any network id
        },
        ropsten: {
            host: 'localhost',
            port: 8545,
            network_id: 3,
            gas: 2900000
        }
    },
    authors: [
        'Stefan Bley <stefan.bley@saxsys.de>'
    ]
};
