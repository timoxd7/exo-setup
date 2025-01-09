
echo "Cache folder prepare (so i can just pop my air dropped folders in here)"
mkdir -p ~/.cache/huggingface/hub

echo "Installing Homebrew..."
mkdir ~/homebrew && curl -L https://github.com/Homebrew/brew/tarball/master | tar xz --strip 1 -C ~/homebrew

echo "Installing Python..."
~/homebrew/bin/brew install python@3.12

echo "Downloading exo..."
cd
mkdir projects
cd projects
git clone https://github.com/timoxd7/exo.git
cd exo
git checkout llama-3.3-8bit

echo "Installing exo..."
~/homebrew/bin/python3.12 -m venv .venv
source .venv/bin/activate
pip install -e .

echo "Done!"
