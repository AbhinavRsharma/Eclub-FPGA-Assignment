
              //**** grover algorithm for 2 qubits ****//

#include<stdio.h>

#define byrt2 0.707106781

struct qubit{
    double zero;
    double one;
}
typedef struct qubit qubit;



void not_gt(qubit* qubit1){
    double zero = qubit1->one;
    double one = qubit1->zero;
    qubit1->zero = zero;
    qubit1->one = one;
}

void hmd_gt(qubit* qubit1){
    double zero = byrt2*(qubit1->zero)+byrt2*(qubit1->one);
    double one = byrt2*(qubit1->zero)-byrt2*(qubit1->one);
    qubit1->zero = zero;
    qubit1->one = one;
}

void cnot_gt(qubit* qubit1, qubit* qubit2){
    double zero2 = qubit2->one;
    double one2 = qubit2->zero;
    qubit2->zero = zero2;
    qubit2->one = one2;
}

int main(){

    return 0;
}
