Given(/^a board like this:$/) do |table|
  # table is a table.hashes.keys # => [:1, :2, :3]
  @arrayhash = table.raw

end

When(/^player "([xy])" plays in row (\d+), column (\d+)$/) do |team,row,colm|
  @arrayhash[row.to_i][colm.to_i] = team
end

Then(/^the board should look like this:$/) do |table|
 table.diff!(@arrayhash)


end