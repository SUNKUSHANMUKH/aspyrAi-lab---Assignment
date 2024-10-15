import mysql.connector
import json

try:
    # Connect to the database
    connection = mysql.connector.connect(
        host='localhost',
        user='root',  # Replace with your MySQL username
        password='dheeraj@123',  # Replace with your MySQL password
        database='projectdb'
    )
    print("Connected to the database successfully.")

    cursor = connection.cursor(dictionary=True)

    # Fetch data from tables
    cursor.execute("SELECT * FROM SYS_State")
    states = cursor.fetchall()
    print("Fetched data from SYS_State:", states)

    cursor.execute("SELECT * FROM OPT_Party")
    parties = cursor.fetchall()
    print("Fetched data from OPT_Party:", parties)

    cursor.execute("SELECT * FROM OPT_Address")
    addresses = cursor.fetchall()
    print("Fetched data from OPT_Address:", addresses)

    # Create JSON structure
    data = {
        "SYS_State": states,
        "OPT_Party": parties,
        "OPT_Address": addresses
    }

    # Convert to JSON and write to a file
    with open('data.json', 'w') as json_file:
        json.dump(data, json_file, indent=4)
    print("JSON file created successfully.")

except mysql.connector.Error as err:
    print("Error: ", err)
finally:
    if cursor:
        cursor.close()
    if connection:
        connection.close()

