process randomNum {
  accelerator 4, type: 'nvidia.com/gpu'
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
