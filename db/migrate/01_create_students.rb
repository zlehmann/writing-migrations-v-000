class CreateStudents < ActiveRecord::Migration[5.1]
  connection = ActiveRecord::Base.establish_connection(
    :adapter => "sqlite3",
    :database => "db/school-test.db"
  )

  sql = <<-SQL
    CREATE TABLE IF NOT EXISTS students (
      id INTEGER PRIMARY KEY,
      name TEXT
    )
  SQL

  ActiveRecord::Base.connection.execute(sql)

  def change

  end
end
