# myapp.rb
get '/ranking' do
  @ranking = CountTable.find_by_sql(["select user_id, count from count_tables order by count desc"])
  haml :"ranking/index"
end

