SalamES
======

SalamES is a tool that automates the process of deleting ElasticSearch instances. 

Usage
-----

It only requires a file with a list of ElasticSearch hosts. It will automatically perform the deletion of the indices find there. 

You will have to either download the repository or clone it:
```
git clone https://github.com/darkpakol/salames
cd salames
``` 

You have two options to run it:

```
# Make the file executable
chmod +x SalamES.sh
# Launch the script
./SalamES.sh <servers_file>
```

Or more directly:
```
bash SalamES.sh <servers_file>
```

Privacy considerations
----------------------

You may consider using Tor to perform the queries and hide the origin. This can be performed by using `torify`. 
You can install Tor from the repos:

```
sudo apt-get install tor
```

And start the server:

```
sudo service tor start
```

Afterwards, you may launch the app typing torify first for more privacy: `torify ./SalamES.sh <servers_file>`.
Additionally, you may consider adding a signature as a header. You'd have to add a new parameter as follows: `torify ./SalamES.sh <servers_file> "X-Signature: Deleted by You"`.
