if [ "$#" -eq 0 ]
then
    echo "usage example
    bash InitVenv.sh path/to/new/venv/folder"
    exit 1
fi
sudo apt install python3.10-venv
python3 -m venv $1
pbdir=$1
ppath="${pbdir}/bin/python3"
SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
$ppath -m pip install -r $SCRIPT_DIR/requirements.txt