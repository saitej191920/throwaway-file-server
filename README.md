# throwaway-file-server
A simple project for downloading and uploading files based on
python flask which runs in Docker container.

routes: (<ip>:<port>)
/                      - Simple Hello Greeting.
/download/<file-name>  - To download a file.
/upload                - To upload a file.

Note:
1. Problem with uploaded files being root, when docker mount bind is used.
