![watchers](https://custom-icon-badges.demolab.com/github/watchers/haithamaouati/anonfiles?logo=eye)
![stars](https://custom-icon-badges.demolab.com/github/stars/haithamaouati/anonfiles?logo=star)
![forks](https://custom-icon-badges.demolab.com/github/forks/haithamaouati/anonfiles?logo=repo-forked)
![license](https://custom-icon-badges.demolab.com/github/license/haithamaouati/anonfiles?logo=law)
___
# AnonFiles
This is a bash script that allows you to upload files to [anonfiles.com](anonfiles.com) using the [anonfiles API](https://api.anonfiles.com/).

## Table of Contents
- [Prerequisites](#prerequisites)
- [Usage](#usage)
- [Arguments](#arguments)
- [Example](#example)
- [Output](#output)
- [Troubleshooting](#troubleshooting)
- [Author](#author)
- [License](#license)

## Prerequisites
- **cURL**: a command-line tool for transferring data using various protocols.
- **jq**: a command-line JSON processor.

## Usage
```bash
./anonfiles.sh -k API_KEY -f FILE_PATH [-h]
```

## Arguments
- `-k` API_KEY: your anonfiles API key.
- `-f` FILE_PATH: the path to the file you want to upload.
- `-h`: display the usage information.

## Example
To upload a file located at `/path/to/file.txt` with an API key of `abcdefg123456`, you would run the following command:
```
./anonfiles.sh -k abcdefg123456 -f /path/to/file.txt
```

## Output
If the upload is successful, the URL of the uploaded file will be printed to the terminal.
```
File uploaded successfully to https://anonfiles.com/123abcdefg
```

## Troubleshooting
If you encounter any errors while running the script, make sure that you have the prerequisites installed and that you have provided the correct arguments.

## Author
Made with :heart: by **Haitham Aouati**

## License
This userscript is licensed under the [WTF Public License](http://www.wtfpl.net/).
