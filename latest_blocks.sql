SELECT
  block_timestamp,
  block_number, 
  from_address, 
  to_address, 
  value/1e18 AS `value in ETH`, 
  gas AS `gas in wei`       
FROM
    `bigquery-public-data.crypto_ethereum.transactions` 
ORDER BY block_timestamp DESC 
LIMIT 100 

-- What percentage of transactions are zero ETH?
SELECT
  COUNT(*) AS num_transactions,
  SUM(value = 0) AS num_zero_value_transactions,
  100 * SUM(value = 0)/COUNT(*) AS pct_zero_value_transactions
FROM
    `bigquery-public-data.crypto_ethereum.transactions`
WHERE block_timestamp >= TIMESTAMP_SUB(CURRENT_TIMESTAMP(), INTERVAL 1 DAY)
