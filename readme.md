# I think it's better to show commits in pluggin file
1) I used 
0fd56dd Release v0.0.81
for coc.nvim because it was stable with my vim
(there were errors on tab and others)

2) I downloaded fugitive from git release in the same way
(couldn't open NERDTree when I use git)

3) to update changes in vim need to type so % command


# how to install 
- unpack into ~/AppData/Local/nvim/
- do what folder says copy_content_to_c_drive_and_add_to_env_path
- be sure that you have C:\Program Files\Neovim\bin path in sys env


# vimdiff merge tool 
just run this commands if something wrong:

git config --global mergetool.fugitive.cmd 'nvim -f -c "Gvdiffsplit!" "$MERGED"'
git config --global merge.tool fugitive
