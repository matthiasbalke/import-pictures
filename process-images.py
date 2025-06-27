import itertools as it, glob
import os
import subprocess

# glob multiple patterns at once
def mglob(*patterns):
    return it.chain.from_iterable(glob.iglob(pattern) for pattern in patterns)

# ------------------------------------------------------------------------------------

print("loesche GoPro Vorschaubilder ...\n")

for filename in mglob('/source/**/*.LRV', '/source/**/*.THM'):
    print("  " + filename)
    os.remove(filename)

print("\ndone.\n\n")


print("loesche iPhone Aenderungsdateien ...\n")

for filename in mglob('/source/**/*.AAE'):
    print("  " + filename)
    os.remove(filename)

print("\ndone.\n\n")

print("konvertiere HEIC Format in JPG ...\n")

for filename in mglob('/source/**/*.HEIC', '/source/**/*.HEIF'):
    print("  " + filename)
    subprocess.call(['magick', 'mogrify', '-format', 'jpg', filename])
    os.remove(filename)

print("\ndone.\n\n")
