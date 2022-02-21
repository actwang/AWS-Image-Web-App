#!/usr/bin/env bash
HOME_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
BACKEND_RUN_DIR="$HOME_DIR/BackendApp/" 
FRONTEND_RUN_DIR="$HOME_DIR/FrontendApp/" 
REACTWEB_RUN_DIR="$HOME_DIR/ReactJS/" 

echo "The HOME DIR for Apps is '$HOME_DIR'"
echo "Starting the BackendApp"
python3 ${BACKEND_RUN_DIR}run.py &
echo "Waiting the BackendApp to start"
sleep 3
echo "Starting the FrontendApp"
python3 ${FRONTEND_RUN_DIR}app.py &
echo "Waiting the FrontendApp to start"
sleep 3
echo "Starting the React JS"
npm start --prefix ${REACTWEB_RUN_DIR}