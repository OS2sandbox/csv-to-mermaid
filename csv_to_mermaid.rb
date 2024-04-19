require 'csv'
require 'yaml'

def csv_to_mermaid(yaml_file)
  config = YAML.load_file(yaml_file)
  csv_file = config['filename']
  chart_type = config['chart_type']

  data = CSV.read(csv_file, headers: true)
  mermaid_code = ""

  if chart_type == 'flowchart'
    mermaid_code = "graph TD;\n"
    data.each do |row|
      row.each_cons(2) do |a, b|
        mermaid_code += "#{a} --> #{b};\n" unless b.nil?
      end
    end
  elsif chart_type == 'barchart'
    mermaid_code = "pie title Your Barchart\n"
    data.each do |row|
      mermaid_code += "\"#{row[0]}\" : #{row[1]}\n"
    end
  else
    return "Invalid chart type specified in YAML file."
  end

  mermaid_code
end

puts csv_to_mermaid('config.yml')
