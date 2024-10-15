#!/usr/bin/python3

import mysq.connector

def create_db(db_name):
    try:
        #Database connection details
        mydb = mysql.connector.connect(
                host="localhost",
                user="root",
                password="",
                )
        if mydb.is_connected():
            cursor = connection.cursor()

            cursor.execute(f"CREATE DATABASE IF NOT EXISTS {db_name};")
            print(f"Database '{db_name}' created successfully!")
    except Error as e:
        print(f"Error: {e}")

    finally:
        if cursor:
            cursor.close()
        if connection.is_connected():
            connection.close()

if __name__ == "__main__":
    create_db("alx_book_store")

