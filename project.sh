run()
{
  git status >/dev/null 2>/dev/null || return

  PROJECT=$(git rev-parse --git-dir | tr /  ' ' | awk '{print $(NF-1)}')

  if [ "$PROJECT" == ".git" ]
  then
    PROJECT=$(basename "$PWD")
  fi

  BRANCH=$(git status | grep '# On branc' | awk '{print $NF}')
  [[ $(git status | grep "working directory clean") ]] && STATUS=" " || STATUS="*"  
  red='\033[0;31m'
  green='\033[1;32m'
  NC='\033[0m' # No Color
  echo -e "${red}$PROJECT:${green}$BRANCH${NC}$STATUS"
}

run
