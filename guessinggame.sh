    
#!/usr/bin bash
# File: guessinggame.sh
function guess { 

    ct=$(ls | wc -l)

    echo "please guess the number of files in the current directory :"
    read response

    while [[ $response -ne $ct ]]  
    do
       if [[ $response =~ ^[0-9]+$ ]] 
       then
          if [[ $response -lt $ct ]] 
          then
             echo 'Please select different number guess is too low'
             read response
         elif [[ $response -gt $ct ]]
         then
            echo 'please select different number guess is too high'
            read response
        fi
     else
        echo 'not valid, please select a valid number!'
        read response
  
    fi
        
  done
  echo 'congratulation! you made it!'


}

guess
