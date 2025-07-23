# 5-Day Weather Forecast

Full-stack web application providing real-time 5-day weather forecasts for New Jersey cities with automated data updates and responsive user interface.

## Technical Stack
Backend: PHP, MySQL
Frontend: HTML5, CSS3, JavaScript
Data Processing: Python, XML/HTML parsing
Web Scraping: cURL, TagSoup HTML parser
Database: MySQL with dynamic table management
Automation: Bash scripting, cron jobs

## Requirements

- PHP with MySQL support
- MySQL database
- Java (for TagSoup HTML parsing)
- Python 3 with mysql-connector-python
- Web server (Apache/Nginx)

## Setup

### 1. Database Setup
```bash
mysql -u root -p
CREATE DATABASE weatherDB;
CREATE USER 'db_user'@'localhost' IDENTIFIED BY 'MyStr0ngP@ssw0rd123!';
GRANT ALL PRIVILEGES ON weatherDB.* TO 'db_user'@'localhost';
```

### 2. Create Tables
```bash
mysql -u db_user -p weatherDB < scripts/my_tables.sql
```

### 3. Install Python Dependencies
```bash
pip install mysql-connector-python
```

### 4. Initial Data Population
```bash
mysql -u db_user -p weatherDB < scripts/my_data.sql
```

## Usage

### Web Interface
- Access `index.php` in your web browser
- Select a city from the dropdown menu
- Weather data updates automatically when stale (>1 hour)

### Manual Updates
```bash
# Update single city
cd scripts
./update_city.sh Newark

# Update all cities continuously
./weather.sh
```

## Data Source
Weather data is fetched from the National Weather Service API for New Jersey locations.
