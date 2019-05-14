# The script MUST contain a function named azureml_main
# which is the entry point for this module.

# imports up here can be used to 
import pandas as pd
import numpy as np

# The entry point function can contain up to two input arguments:
#   Param<dataframe1>: a pandas.DataFrame
#   Param<dataframe2>: a pandas.DataFrame
def azureml_main(dataframe1 = None, dataframe2 = None):

    a = 1000 * np.random.rand(100,1)
    b = 1000 * np.random.rand(100,1)

    dataframe1 = pd.DataFrame(np.c_[a, b])
    
    import matplotlib
    # Switch the backend to “AGG” from the default Qt-based renderer 
    matplotlib.use("agg")
    import matplotlib.pyplot as plt
    
    plt.scatter(a,b)
    plt.savefig("scatter.png")
    
    # Return value must be of a sequence of pandas.DataFrame
    return dataframe1,

    
    
    
    
# The script MUST contain a function named azureml_main
# which is the entry point for this module.

# imports up here can be used to 
import pandas as pd

# The entry point function can contain up to two input arguments:
#   Param<dataframe1>: a pandas.DataFrame
#   Param<dataframe2>: a pandas.DataFrame
def azureml_main(dataframe1 = None, dataframe2 = None):

    import matplotlib
    # Switch the backend to “AGG” from the default Qt-based renderer 
    matplotlib.use("agg")
    import matplotlib.pyplot as plt
    
    plt.scatter(dataframe1["0"], dataframe1["1"])
    plt.savefig("scatter.png")
    
    # Return value must be of a sequence of pandas.DataFrame
    return dataframe1,