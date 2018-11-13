require_relative '../db/migrate/01_create_students'
  connection = ActiveRecord::Base.establish_connection(
    :adapter => "sqlite3",
    :database => "db/school-test.sqlite"
  )

  sql = <<-SQL
    CREATE TABLE IF NOT EXISTS students (
      id INTEGER PRIMARY KEY,
      name TEXT,
      genre TEXT,
      age INTEGER,
      hometown TEXT
    )
  SQL

  DB[:conn].execute(sql)
end
