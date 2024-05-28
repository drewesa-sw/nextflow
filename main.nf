process randomNum {
  accelerator 4, type: 'nvidia-tesla-v100'
  output:
  path 'result.txt'

  '''
  echo $RANDOM > result.txt
  '''
}

workflow {
  numbers = randomNum()
  numbers.view { "Received: ${it.text}" }
}
