#include <mex.h>
   mxArray *asdf;
void mexFunction(int nlhs,mxArray *plhs[],int nrhs,const mxArray *prhs[])
{ 
mexPrintf("hello world");
 
 
  asdf =mxCreateDoubleMatrix(3,4, mxREAL);
   mexCallMATLAB(0,0,1,prhs[0],"disp");
   mxDestroyArray(asdf);
 
    }