#!/bin/bash
`set -e`

function verify-dependencies {
  echo "=== Verifying dependencies"
  flag=true

  yarn=`yarn -v`
  if [[ $? > 0 ]]; then
    echo "You must yarn before continuing."
    echo "You can run the command: curl -o- -L https://yarnpkg.com/install.sh | bash"
    flag=true
  else
    echo "Yarn is installed"
  fi

  chromedriver=`chromedriver -v`
  if [[ $? > 0 ]]; then
    echo "You must chromedriver before continuing."
    echo "You can run the command: sudo yarn global add chromedriver"
    echo "Followed by the command ln -sf /usr/lib/node_modules/chromedriver/lib/chromedriver/chromedriver ~/bin/chromedriver"
    flag=true
  else
    echo "Chromedriver is installed"
  fi

  if [[ "$flag" =~ true ]]; then
    exit 1
  fi
}

function setup_dev {
    cd api
    bundle install
    cd ..
}

verify-dependencies
setup_dev