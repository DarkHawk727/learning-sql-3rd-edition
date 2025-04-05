import sqlite3
import sys

from tabulate import tabulate


def main() -> None:
    if len(sys.argv) < 2:
        print("Usage: python main.py <path_to_sql_file>")
        sys.exit(1)

    path = sys.argv[1]

    con = sqlite3.connect("sqlite-sakila.db")
    cur = con.cursor()

    with open(path, "r") as f:
        query = f.read()

    res = cur.execute(query)
    column_names = [description[0] for description in cur.description]
    rows = res.fetchall()

    print(tabulate(rows, headers=column_names))

    con.close()


if __name__ == "__main__":
    main()
