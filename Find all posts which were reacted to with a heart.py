# Question- Find all posts which were reacted to with a heart. For such posts output all columns from facebook_posts table.


Code- 
# Import your libraries
import pandas as pd

# Start writing code
facebook_reactions.head()
df= facebook_reactions
df1=facebook_posts


li=list(df1.columns)
df=df[df.reaction=='heart']
new=pd.merge(df,df1)

new.loc[:,li].drop_duplicates()
