# function to count frame types

# spl = p14MH.1_B0

clonotypeCount <- function(spl, ...){
  print(paste("Sample =", deparse(substitute(spl)))) # NOT working properly!
  
  print(paste("All clones =", nrow(spl))) # number of all clones
  
  tlframe = c("IN", "OUT", "STOP", "Amb.")
  for (i in tlframe) {
    print(paste(i, "=", length(grep(i, spl$Frame))))
  } # number of each frame.type clones
    
  print(paste("Unique nucleotide sequences =", length(unique(spl$CDR3_sequence)))) # number of unique-nt-sequence clones
  print(paste("Unique peptides =", length(unique(spl$CDR3_aaseq)))) # number of unique-aa-sequence clones
}

#clonotypeCount(p14MH.1_B0)

