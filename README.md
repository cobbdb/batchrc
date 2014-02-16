# batchrc
### A collection of homegrown batch scripts to make Windows command line a bit more friendly.

---
If a command has help text available, it will be shown via the ```/?``` flag.

### Installation

###### 1. Clone the repo to ```C:\``` (from command line):

> ```
cd /d c:\
git clone https://github.com/cobbdb/batchrc.git

###### 2. Add ```C:\batchrc``` to [windows path variable](http://geekswithblogs.net/renso/archive/2009/10/21/how-to-set-the-windows-path-in-windows-7.aspx).

### Configuration
Edit the ```config.template``` file to include specific paths on your system. Only a few commands use these settings, but -for those commands- they are required. After inputing your information, save the template as ```config.bat``` and you're ready to go.

### Updating
I'm always adding cool new stuff to this repo, so be sure to update from time to time to stay current.

```
updatebrc
```

---
By Dan Cobb: <cobbdb@gmail.com>
