function [res]=expbraid(base,expon)
    res=[inverse(expon) base expon];