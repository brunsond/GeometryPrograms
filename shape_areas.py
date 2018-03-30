# Module of functions for calculating areas of geometric shapes.

# Written by Douglas Brunson (2018)

# Example (python3 shell):

# >>> import shape_areas
# >>> print(shape_areas.triangle(3,4,5))
# 6.0

import math

# Compute area of triangle given lengths of its sides.

def triangle(s1,s2,s3,mod=math):
    if (s1 <= 0 or s2 <= 0 or s3 <= 0):
        pass
    elif (s1+s2<s3 or s1+s3<s2 or s2+s3<s1):
        pass
    else:
        p = 0.5*(s1+s2+s3)
        return mod.sqrt(p*(p-s1)*(p-s2)*(p-s3))  #Heron's formula

# Compute area of convex, regular polygon with n sides, each side having length l.

def polygon(n,l,mod=math):
    if (n<3):
        pass
    else:
        return ((n/8)*l**2)*mod.sin(2*mod.pi/n)/((mod.sin(mod.pi/n))**2)

# Compute area of circle given its radius r.

def circle(r,mod=math):
    if (r < 0):
        pass
    else:
        return mod.pi*r**2

