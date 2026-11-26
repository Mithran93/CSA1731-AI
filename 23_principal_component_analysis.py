# PCA for a small 2D dataset using NumPy covariance eigendecomposition.
import numpy as np
X=np.array([[2,0],[0,2],[3,1],[1,3]],float); Z=X-X.mean(axis=0); vals,vecs=np.linalg.eigh(np.cov(Z,rowvar=False)); comp=vecs[:,np.argmax(vals)]; projected=Z@comp
print('Largest eigenvalue:',round(max(vals),3)); print('1D projected values:',np.round(projected,3).tolist())
