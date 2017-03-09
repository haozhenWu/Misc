The folder test the Wordcout example given by Michael G. Noll, http://www.michael-noll.com/tutorials/writing-an-hadoop-mapreduce-program-in-python/

```bash
$ cd data; wget http://www.gutenberg.org/cache/epub/20417/pg20417.txt
$ hdfs dfs -copyFromLocal ./data/pg20417.txt /hz_temp/input
$ chmod +x mapper.py reducer.py run.sh
$ ./run.sh
```


