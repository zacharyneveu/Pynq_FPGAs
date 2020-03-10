#include "datatypes.h"

template<int L>
class LMS {
    data_t sr[L];
    acc_t yhat;
    coef_t w[L];
    public:
        acc_t process(data_t  x, data_t y, param_t mu);
		void fill_sr(data_t x);
        void init(void);
};

template<int L>
acc_t LMS<L>::process(data_t x, data_t y, param_t mu)
{
    // update shift reg and accumulate 
    yhat = 0;
    for (int i = L-1; i > 0; i--)
    {
        sr[i] = sr[i-1];
        yhat += sr[i]*w[i];
    }
    sr[0] = x;
    yhat += sr[0]*w[0];

    // update weights
    for (int i = 0; i < L; i++)
    {
        w[i] += (y-yhat)*mu*sr[i];
    }
	return yhat;
}

template<int L>
void LMS<L>::fill_sr(data_t x)
{
    for (int i = L; i > 0; i--)
    {
        sr[i] = sr[i-1];
    }
    sr[0] = x;
}
	
