Rektangle by Seybol(and update spec beer by hadenai)

Ruby script which will draw a rectangle. Give it a height, a width and optionnaly the characters you want to use and it
will draw a rectangle. For more details:
```
ruby ./rektangle --help
```
```
bundle install
```

For example:
```
ruby ./rektangle 4 5
```
or
```
ruby ./rektangle 6 9 o o o o -
```
Be carefull with special characters:
```
ruby ./rektangle.rb 10 3 \/ \\ \/ \\ \*
```
