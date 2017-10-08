
#!/bin/bash

cat *.$1 2>/dev/null|sort|uniq -u|wc -l
