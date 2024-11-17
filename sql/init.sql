CREATE TABLE
    IF NOT EXISTS teams (
        id SERIAL PRIMARY KEY,
        name VARCHAR(255) NOT NULL UNIQUE,
        short_name VARCHAR(10) NOT NULL,
        slug VARCHAR(255) NOT NULL,
        created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
    );

CREATE TABLE
    IF NOT EXISTS players (
        player_name VARCHAR(100) UNIQUE,
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

CREATE TABLE
    IF NOT EXISTS players_draft (
        id SERIAL PRIMARY KEY,
        player_name VARCHAR(100) UNIQUE,
        season INT,
        round_number INT,
        round_pick INT,
        overall_pick INT,
        draft_type VARCHAR(50),
        team_id INT,
        team_city VARCHAR(100),
        team_name VARCHAR(100),
        team_abbreviation VARCHAR(10),
        organization VARCHAR(100),
        organization_type VARCHAR(50),
        player_profile_flag INT
    );

CREATE TABLE
    IF NOT EXISTS team_details (
        id SERIAL PRIMARY KEY,
        abbreviation VARCHAR(10) UNIQUE NOT NULL,
        nickname VARCHAR(100),
        yearfounded INT,
        city VARCHAR(100),
        arena VARCHAR(100),
        arenacapacity INT,
        owner VARCHAR(100),
        generalmanager VARCHAR(100),
        headcoach VARCHAR(100),
        dleagueaffiliation VARCHAR(100),
        facebook VARCHAR(200),
        instagram VARCHAR(200),
        twitter VARCHAR(200)
    );