import os
import os.path
import stat


def print_spath_content(sPath):
    for f in os.listdir(sPath):
        mode = os.stat(os.path.join(sPath, f)).st_mode
        if stat.S_ISDIR(mode):
            print_spath_content(os.path.join(sPath, f))
        elif stat.S_ISREG(mode):
            print (os.path.join(sPath, f))
        else:
            print ('skip unvalid file')
if __name__ == "__main__":
    print_spath_content('.')
