package main

deny[msg] {
  input.kind == "Deployment" #Evaluate if kins is Deployment
  not input.metadata.labels.website #If True continue otherwise Stop & Exist

  msg := "the label website have to be added to the metadata"
}