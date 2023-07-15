#!/bin/bash
INPUTFILE=$1  # Use $1 to get the first command line argument
if [ -z $INPUTFILE ]; then
  echo "give me a parametar"
  exit 1
fi
if [[ $INPUTFILE == *.sh ]]
then  # Add spaces before and after the square brackets
  if [ -e $INPUTFILE ]
  then  # Add spaces after the opening square bracket and before the closing square bracket
    echo "This file already exists."
    exit 1
  else 
    touch $INPUTFILE
    chmod u+x $INPUTFILE
    echo "#!/bin/bash" > $INPUTFILE
    echo "Has Created Successfully :)"
  fi
else 
  echo "This is not a Bash file."
fi

