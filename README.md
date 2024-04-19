# 📊 CSV to Mermaid
## Description
This project is a Ruby script that converts CSV data to Mermaid syntax. It’s designed for users who want to visualize their CSV data as flowcharts or barcharts using Mermaid.

## Features
Converts CSV data to Mermaid syntax
Supports both flowcharts and barcharts
Configurable via a YAML file

## Installation
To install this project, clone the repository and navigate to the project directory:

```bash
git clone https://github.com/yourusername/csv-to-mermaid.git cd csv-to-mermaid
```

## Usage
To use this script, run it with the YAML configuration file:

ruby csv_to_mermaid.rb config.yml

The YAML configuration file should specify the CSV filename and the type of Mermaid diagram:

filename: ‘your_file.csv’ chart_type: ‘flowchart’ # or ‘barchart’

## Contributing
Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

Please make sure to update tests as appropriate.

## License
MIT
