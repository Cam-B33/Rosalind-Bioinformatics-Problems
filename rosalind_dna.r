# Rosalind DNA problem implemented in R. 
#Set working directory. for linux
setwd("~/Dropbox/Rosalind_Problems/")

# Import .txt file. 
dna <- readLines("rosalind_dna.txt")
class(dna)

dna <- as.list(dna)

# Convert to character vector.
dna <- unlist(dna)

# Count the frequency of charachters in a charachter string.
dna.char <- strsplit(dna, "")[[1]]
table(dna.char)

# Rosalind RNA problem implemented in R.
dna.rna <- readLines("rosalind_rna.txt")
class(dna.rna)
print(dna.rna)
dna.rna.char <- strsplit(dna.rna, "")[[1]]

class(dna.rna.char)
print(dna.rna.char)

dna.rna.char <- as.list(dna.rna.char)

for(i in seq_along(dna.rna.char)) {
  # Replace the character in each string
  dna.rna.char[[i]] <- gsub("T", "U", dna.rna.char[[i]])
}
dna.rna.char <- paste(dna.rna.char, collapse = "")

# Save list as .txt file. 
write.table(dna.rna.char, "rosalind_rna_solution.txt", row.names = FALSE, col.names = FALSE, quote = FALSE)


# Rosalind REVC problem implemented in R.
dna.rev <- readLines("rosalind_revc.txt")
class(dna.rev)

dna.rev <- strsplit(dna.rev, "")[[1]]

print(dna.rev)
class(dna.rev)
as.list(dna.rev)

# Reverse a lsit. 
dna.rev <- rev(dna.rev)
print(dna.rev)

for (i in seq_along(dna.rev)) {
  char <- dna.rev[[i]]
  
  if (char == 'A') {
    dna.rev[[i]] <- 'T'
  } else if (char == 'T') {
    dna.rev[[i]] <- 'A'
  } else if (char == 'G') {
    dna.rev[[i]] <- 'C'
  } else if (char == 'C') {
    dna.rev[[i]] <- 'G'
  }
  # No change for characters other than A, T, G, C
}
unlist(dna.rev)
dna.rev <- paste(dna.rev, collapse = "")

print(dna.rev)

write.table(dna.rev, "rosalind_rev_solution.txt", row.names = FALSE, col.names = FALSE, quote = FALSE)

# Finding a Motif in DNA. 

setwd("~/Dropbox/Rosalind_Problems/")

dna.motif <- readLines("rosalind_subs.txt")

print(dna.motif)

string <- dna.motif[[1]]
motif <- dna.motif[[2]]
print(string)
print(motif)


# Find the starting position of the motif in the string.
match.position <- gregexpr(motif, string)

matches <- gregexpr(motif, string)

print(matches)

print(match.position)













