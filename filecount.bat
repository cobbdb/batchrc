@echo off
:: http://social.technet.microsoft.com/wiki/contents/articles/9173.counting-the-number-of-files-in-a-directory-command-line-style.aspx
dir/s/b/a-d | find /v /c "::"
