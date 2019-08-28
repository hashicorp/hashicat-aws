#!/bin/bash
cd ~
rm -rf tf-helper
# rm -rf ~/.terraformrc
git clone https://github.com/hashicorp-community/tf-helper.git
cd tf-helper/tfh/bin
echo "export PATH=$PWD:\$PATH" > ~/.bash_profile
echo "Script complete. Run 'source ~/.bash_profile' to enable the tfh command."