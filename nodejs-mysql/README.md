# Whatever

A simple Node app connected with MySQL database.

## Config

1. Create a `.env` file in root directory and add the environment variables:

```bash
DB_HOST="localhost"
DB_USER="root" # default mysql user
DB_PASS=""
DB_NAME=""
TABLE_NAME=""
PORT=3000
```

> Make sure to create the database and the corresponding table in your mySQL database.
3. Initialize and start the development server:

```bash
npm install
npm run dev
```

---
