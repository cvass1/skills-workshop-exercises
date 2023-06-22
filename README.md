# Skills Workshop Exercises

## Leap Years

A simple tool that will tell you whether a year is a leap year, according to the following rules:

- All years divisible by 400 ARE leap years (e.g. 2000 was a leap year)
- All years divisible by 100 but not by 400 are NOT leap years (e.g. 1700, 1800 and 1900 were not leap years)
- All years divisible by 4 and not by 100 ARE leap years (e.g. 2004, 2008 and 2012 were leap years)
- All years not divisible by 4 are NOT leap years (e.g. 2009, 2010 and 2011 were not leap years)

### Acceptance Criteria

```
2.4.1 :001 > require './lib/leap_years.rb'
 => true
2.4.1 :002 > leap_year?(2000)
 => true
2.4.1 :003 > leap_year?(1970)
 => false
2.4.1 :004 > leap_year?(1900)
 => false
2.4.1 :005 > leap_year?(1988)
 => true
2.4.1 :006 > leap_year?(1500)
 => false
```

## Extension Options

- Write a program that takes a start year and an end year and returns an array of all the leap years between.

- Write a program that when given a year, will return the closest leap year (this could be before or after the given year)

# Get the Middle Letter(s)

## Requirements

- The program runs in a REPL like `irb` or in a browser console.

- It's fine to use Ruby or JavaScript.

- Your job is to return the middle letter of a word. If the word's length is odd, return the middle letter. If the word's length is even, return the middle 2 letters.

#### Acceptance Criteria

```ruby
get_middle("test") # => "es"
get_middle("testing") # => "t"
get_middle("middle") # => "dd"
get_middle("A") # => "A"
get_middle("of") # => "of"
```

## Take a ten minute walk

Create a function that will return true if the walk will take you exactly ten minutes and will return you to your starting point.

### Requirements

You are meeting a friend in New York City, where all roads are laid out in a perfect grid. You arrived ten minutes too early to the appointment, so you decided to take the opportunity to go for a short walk.<br>
The city provides its tourists with a Walk Generating App on their phones -- every time you press the button it sends you an array of one-letter strings representing directions to walk. **e.g. ['n', 's', 'w', 'e']**

You always walk one block at a time in a direction and you know it takes you one minute to traverse one city block, so create a function that will return true if the walk the app gives you will take you exactly ten minutes (you don't want to be early or late!) and will, of course, return you to your starting point. Return false otherwise.

_Note: you will always receive a valid array containing a random assortment of direction letters ('n', 's', 'e', or 'w' only). It will never give you an empty array (that's not a walk, that's standing still!)._

#### Acceptance Criteria

```ruby
ten_minute_walk?(['w', 's', 'e', 'e', 'n', 'n', 'e', 's', 'w', 'w']) # => true
ten_minute_walk?(['w', 's', 'e', 'n', 'n', 'e', 's', 'w', 'w', 'w']) # => false
ten_minute_walk?(['w', 's', 'e', 's', 's', 'e', 's', 'w', 'n', 'n']) # => false
ten_minute_walk?(['w', 's']) # => false
```

#### Requirements

Given a word, compute the scrabble score for that word.

##### Letter Values

You'll need these:

| Letter                       | Value |
| ---------------------------- | ----- |
| A, E, I, O, U, L, N, R, S, T | 1     |
| D, G                         | 2     |
| B, C, M, P                   | 3     |
| F, H, V, W, Y                | 4     |
| K                            | 5     |
| J, X                         | 8     |
| Q, Z                         | 10    |

Examples
"cabbage" should be scored as worth 14 points:

- 3 points for C
- 1 point for A, twice
- 3 points for B, twice
- 2 points for G
- 1 point for E

And to total:

3 + 2×1 + 2×3 + 2 + 1

= 3 + 2 + 6 + 3

= 14

#### Acceptance Criteria

```ruby
scrabble = Scrabble.new('')
scrabble.score # => 0

scrabble = Scrabble.new(" \t\n")
scrabble.score # => 0

scrabble = Scrabble.new(nil)
scrabble.score # => 0

scrabble = Scrabble.new('a')
scrabble.score # => 1

scrabble = Scrabble.new('f')
scrabble.score # => 4

scrabble = Scrabble.new('street')
scrabble.score # => 6

scrabble = Scrabble.new('quirky')
scrabble.score # => 22

scrabble = Scrabble.new('OXYPHENBUTAZONE')
scrabble.score # => 41
```
