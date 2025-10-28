# Nginx Log Analyser

A simple and efficient Bash script to analyze Nginx `access.log` files. This tool parses the log file and provides a quick summary of the top 5 IP addresses, most requested paths, response status codes, and user agents.

This project demonstrates proficiency in Bash scripting and the use of core Linux text-processing commands.

## Features

* Parses standard Nginx access logs.
* Provides the following "Top 5" reports:
    * IP addresses with the most requests.
    * Most requested paths (URLs).
    * Response status codes.
    * User agents making requests.
* Built using a powerful one-line chain of `awk`, `sort`, `uniq`, `sort`, and `head`.

## Tech Stack

* **Bash** (Shell Scripting)
* **Linux Core Utilities:** `awk`, `sort`, `uniq -c`, `sort -nr`, `head`

## How to Use

1.  **Clone or Download:**
    Get the `nginx-analyser.sh` script and the sample `access.log` file.

2.  **Make the Script Executable:**
    ```sh
    chmod +x nginx-analyser.sh
    ```

3.  **Run the Script:**
    Pass the path to your log file as an argument to the script.
    ```sh
    ./nginx-analyser.sh access.log
    ```

## Example Output

(Note: This output is based on the 10-line sample `access.log` used for development.)

    ## Project Source

This project was completed as part of the backend developer roadmap from roadmap.sh.

**Project Page URL:** [https://roadmap.sh/projects/Nginx Log Analyserl](https://roadmap.sh/projects/nginx-log-analyser)
