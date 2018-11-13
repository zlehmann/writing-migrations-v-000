class AddGradeAndBirthdateToStudents < ActiveRecord::Migration[5.1]
  connection = ActiveRecord::Base.establish_connection(
    :adapter => "sqlite3",
    :database => "db/school-test.db"
  )

  sql = <<-SQL
    CREATE TABLE IF NOT EXISTS students (
      id INTEGER PRIMARY KEY,
      name TEXT,
      grade INTEGER,
      birthdate TEXT,
      birthday DATETIME
    )
  SQL

  ActiveRecord::Base.connection.execute(sql)

  def change
    add_column :grade, :integer
    add_column :birthdate, :string
  end
end
