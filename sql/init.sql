CREATE TABLE
    IF NOT EXISTS teams (
        id SERIAL PRIMARY KEY,
        name VARCHAR(255) NOT NULL,
        short_name VARCHAR(10) NOT NULL,
        slug VARCHAR(255) NOT NULL,
        created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
    );

CREATE TABLE
    IF NOT EXISTS players (
        player_name VARCHAR(100),
        team_abbreviation VARCHAR(10),
        age INT,
        player_height FLOAT,
        player_weight FLOAT,
        college VARCHAR(100),
        country VARCHAR(50),
        draft_year INT,
        draft_round INT,
        draft_number INT,
        gp INT,
        pts FLOAT,
        reb FLOAT,
        ast FLOAT,
        net_rating FLOAT,
        oreb_pct FLOAT,
        dreb_pct FLOAT,
        usg_pct FLOAT,
        ts_pct FLOAT,
        ast_pct FLOAT,
        season VARCHAR(20),
        created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
    );