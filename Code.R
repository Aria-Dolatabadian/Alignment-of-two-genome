#Download the genomes from NCBI
#BLAST two genomes against each other using accession numbers https://blast.ncbi.nlm.nih.gov/Blast.cgi?BLAST_SPEC=blast2seq&LINK_LOC=align2seq&PAGE_TYPE=BlastSearch
#Download Hit Table (Text) and rename
#Place all the files in WD and run

BH <- try(read_dna_seg_from_file("NC_005956.gbk"))
BQ <- try(read_dna_seg_from_file("NC_005955.gbk"))
BH_vs_BQ <- try(read_comparison_from_blast("NC_005956_vs_NC_005955.blast.blast"))

 xlims <- list(c(1,50000), c(1,50000))
 plot_gene_map(dna_segs=list(BH, BQ),
               comparisons=list(BH_vs_BQ),
               xlims=xlims,
               main="BH vs BQ, comparison of the first 50 kb",
               gene_type="side_blocks",
             dna_seg_scale=TRUE, scale=FALSE)
