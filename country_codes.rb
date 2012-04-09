
# a quick script to parse the comma delimited file and output a ruby hash

def go
  records = parse_csv
  write_ruby(records)
end

def parse_csv
  records = []
  while line = gets
    data = line.gsub(/\t/,'').gsub(/\n/,'').split(',')
    records << data
  end 
  records
end

def write_ruby(records)
  ruby_file = ""
  ruby_file << "[ \n"
  ruby_file << body( records )
  ruby_file << "]\n"
  puts ruby_file
end

def body(records)
  body_string = ""
  last_record = records.last
  records.each do |record|
    comma = (last_record==record) ? '' : ','
    body_string << "[ \"#{record[1]}\", \"#{record[0]}\" ]#{comma}\n"
  end
  body_string
end 
  
go()