#include "datatypes.h"

template<int L>
class NLMS {
    data_t sr[L];
    acc_t yhat;
    coef_t w[L];
    public:
        acc_t process(data_t  x, data_t y, param_t mu, param_t delta);
		void fill_sr(data_t x);
        void init(void);
};

template<int L>
acc_t NLMS<L>::process(data_t x, data_t y, param_t mu, param_t delta)
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

	acc_t xtx = 0;
	for (int i = 0; i < L; ++i) {
		xtx += sr[i]*sr[i];
	}

    // update weights
    for (int i = 0; i < L; i++)
    {
        w[i] += (y-yhat)*mu*sr[i] / (xtx + delta);
    }
	return yhat;
}

template<int L>
void NLMS<L>::fill_sr(data_t x)
{
    for (int i = L; i > 0; i--)
    {
        sr[i] = sr[i-1];
    }
    sr[0] = x;
}
	
