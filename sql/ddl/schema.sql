CREATE TABLE coins (
    coin_id TEXT PRIMARY KEY,
    symbol TEXT,
    name TEXT
);

CREATE TABLE daily_prices (
    price_date DATE,
    coin_id TEXT REFERENCES coins(coin_id),
    price_usd NUMERIC,
    market_cap NUMERIC,
    volume NUMERIC,
    PRIMARY KEY (price_date, coin_id)
);