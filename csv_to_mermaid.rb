require 'csv'
require 'yaml'

def csv_to_mermaid(yaml_file)
  begin
    config = YAML.load_file(yaml_file)

    csv_file = config['filename']
    chart_type = config['chart_type']

    data = CSV.read(csv_file, headers: true)

    mermaid_code = ""

    if chart_type == 'xychart-beta'
      mermaid_code = "xychart-beta\n"
      mermaid_code += "title \"#{config['title']}\"\n"
      mermaid_code += "x-axis [#{data['Month'].join(', ')}]\n"
      mermaid_code += "y-axis \"#{config['y-axis']}\" #{config['y-range']}\n"
      mermaid_code += "bar [#{data['Revenue'].join(', ')}]\n"
      mermaid_code += "line [#{data['Revenue'].join(', ')}]\n"
    else
      return "Invalid chart type specified in YAML file."
    end

    mermaid_code
  rescue StandardError => e
    puts "An error occurred: #{e.message}"
  end
end

puts csv_to_mermaid('config.yml')
