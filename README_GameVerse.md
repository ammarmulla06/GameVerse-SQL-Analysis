# GameVerse – Gaming Platform SQL Analysis

## Project Overview
GameVerse is a SQL-based data analysis project built around a fictional gaming platform. The project uses relational data to explore player registrations, game activity, in-game purchases, payment transactions, and player achievements.

The database is named `GameVerseDB` and is designed in MySQL.

## Objectives
- Understand the registered player base.
- Calculate revenue generated through player purchases.
- Measure player engagement through game sessions.
- Identify the highest-spending player.
- Find the most-played game.
- Explore the platform's core gaming and transaction data.

## Database Schema
The project contains six related tables:

| Table | Purpose |
|---|---|
| `Players` | Player profile, country, join date, and level |
| `Games` | Game details such as genre, platform, developer, rating, and price |
| `GameSessions` | Player game sessions, duration, score, date, and device |
| `Purchases` | In-game purchases and purchase amounts |
| `Payments` | Payment methods, transaction dates, and payment statuses |
| `Achievements` | Player achievements, achievement types, and unlock dates |

## SQL Skills Demonstrated
- Database and table creation
- Primary keys and foreign-key relationships
- Data insertion
- Aggregate functions: `COUNT()`, `SUM()`, `AVG()`
- `DISTINCT`
- `INNER JOIN`
- `GROUP BY`
- `ORDER BY`
- `LIMIT`

## Key Business Questions
The KPI query file currently answers these six questions:

1. How many players are registered on the GameVerse platform?
2. What is the total revenue from player purchases?
3. How many distinct players have played at least one game session?
4. What is the average duration of recorded game sessions?
5. Which player has the highest total purchase amount?
6. Which game has the highest number of recorded sessions?

## Project Files
- `GameVerse_SQL_Project.sql` – creates the database and tables, defines relationships, and inserts the sample data.
- `KPI_gameverse.sql` – contains SQL queries for the six KPI questions listed above.

## How to Run the Project
1. Install and open MySQL Workbench (or another MySQL client).
2. Open `GameVerse_SQL_Project.sql`.
3. Execute the script to create `GameVerseDB`, its six tables, and the sample records.
4. Open `KPI_gameverse.sql`.
5. Execute the KPI queries after the database setup is complete.

> Run the database setup script before running the KPI query file.

## Example SQL Analysis
```sql
-- Total registered players
SELECT COUNT(*) AS reg_players
FROM Players;

-- Total purchase revenue
SELECT SUM(Amount) AS revenue
FROM Purchases;

-- Distinct players who have played at least one session
SELECT COUNT(DISTINCT PlayerID) AS uniplayer
FROM GameSessions;

-- Average game-session duration
SELECT AVG(DurationMinutes) AS avg_time
FROM GameSessions;
```

## Tools Used
- MySQL
- MySQL Workbench (for running and managing SQL scripts)

## Notes
- This is a SQL-focused database and KPI analysis project; the uploaded project files do not include a dashboard or visualisation.
- The data represents a fictional gaming platform and is intended for learning and portfolio demonstration.
- The KPI queries are based on the supplied SQL files.

## Author
**Ammar Mulla**

