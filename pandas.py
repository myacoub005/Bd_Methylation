df = pd.read_csv('Methylation_above0_reduced_columns.tsv', sep=' ')

c=pd.crosstab(df['Methylation'],df['gene_ID']
