base = pd.read_table("myfile.bed")
base.loc[base['Methylation'] > 0, 'Methylation'] = 1
base.to_csv('Methylation_above0.csv', sep=',', index = False)

df = pd.read_csv('Methylation_above0_reduced_columns.tsv', sep=' ')

c=pd.crosstab(df['Methylation'],df['gene_ID']
