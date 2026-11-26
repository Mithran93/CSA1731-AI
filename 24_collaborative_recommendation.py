# User-based collaborative filtering with cosine similarity.
from math import sqrt
ratings={'A':{'Book1':5,'Book2':3,'Book3':4},'B':{'Book1':4,'Book2':2,'Book3':5},'C':{'Book1':1,'Book2':5,'Book3':2}}
def cos(a,b):
 common=set(a)&set(b); return sum(a[i]*b[i] for i in common)/(sqrt(sum(a[i]**2 for i in common))*sqrt(sum(b[i]**2 for i in common)))
score=cos(ratings['A'],ratings['B']); print('Similarity A-B:',round(score,3)); print('Recommend for A: Book3 is highly rated by similar user B.')
