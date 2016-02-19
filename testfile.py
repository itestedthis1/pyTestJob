
from calc import multiply
 
def test_numbers_3_4():
    assert multiply(3,4) == 12 
 
def test_strings_a_3():
    assert multiply('a',3) == 'aaa' 
 
def test_1Neg_numbers_3_4():
    assert multiply(-3,4) == 12 
    
def test_BothNeg_numbers_3_4():
    assert multiply(-3,-4) == 12 

def test_0numbers_3_4():
    assert multiply(3,0) == 0 
