CREATE TABLE bitcoin(
date DATE,    
btc_market_price FLOAT,
btc_total_bitcoins FLOAT,
btc_cost_per_transaction_percent  FLOAT,
btc_cost_per_transaction FLOAT,
btc_n_transactions_total FLOAT,
btc_estimated_transaction_volume_usd FLOAT,
id INTEGER PRIMARY KEY
);

CREATE TABLE tcp(
date DATE,
dolar FLOAT,
id INTEGER PRIMARY KEY
);


SELECT tcp.date, tcp.dolar, bitcoin.btc_market_price, bitcoin.btc_total_bitcoins, bitcoin.btc_cost_per_transaction, bitcoin.btc_cost_per_transaction_percent, bitcoin.btc_cost_per_transaction, bitcoin.btc_n_transactions_total, bitcoin.btc_estimated_transaction_volume_usd
FROM tcp
JOIN bitcoin 
  ON tcp.date = bitcoin.date

DROP TABLE bitcoin;
