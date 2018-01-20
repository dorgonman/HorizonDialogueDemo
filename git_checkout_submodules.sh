

git submodule foreach --recursive "git checkout -f feature/core || :"
git submodule foreach --recursive "git pull"


