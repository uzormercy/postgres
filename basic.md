##

# Database Commands
    # Create database
```CREATE DATABASE database_name;```

    # Drop database
```DROP database_name;```

    # Create tables in a database

```CREATE TABLE table_name (columnName dataType (constraint if any))``` 
    
    # Example: CREATE TABLE users (
        id BIGSERIAL PRIMARY KEY,
        email VARCHAR(255) NOT NULL, 
        first_name VARCHAR(255) NOT NULL, 
        last_name VARCHAR(255) NOT NULL, 
        password VARCHAR(255) NOT NULL,
        level INTEGER DEFAULT 1,
        role_id UUID CONSTRAINT FOREIGN KEY (role_id) REFERENCES roles (id),
        status BOOL DEFAULT FALSE,
        date_of_birth DATE,
        created_at TIMESTAMP,
        updated_at TIMESTAMP
         );

##
    # Drop Table
  ```DROP TABLE table_name;```

    # Insert Data into database
```INSERT INTO table_name(columnName) VALUES(values);```

        Example INSERT INTO users(
        first_name, 
        last_name, 
        email,
        password,
        role, 
        date_of_birth
        ) VALUES(
            'Mercy', 
            'Uzor',
            'mercy@mercy.com',
            'password',
            '82f3a33c-10a6-42f9-8bb2-d3a7b9e46e9f',
            '2023-05-15'
         );
##

    # executing command from a file  
    First you must be signed in and connected to the database via a command line interface, and then execute the command bellow

    \i "Path to file/file.sql"

##