SELECT  block_timestamp, block_number, value, gas
FROM `bigquery-public-data.crypto_ethereum.transactions` 
ORDER BY block_timestamp DESC
GROUP BY block_number, SUM(value), SUM(gas)
LIMIT 100

