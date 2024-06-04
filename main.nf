process randomNum {
  accelerator 1, type: 'nvidia.com/gpu'
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
