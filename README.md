# The TDD Process

## Learning objectives
- [x] Explain why we do TDD
- [x] Describe/diagram TDD as a set of steps
- [x] Apply TDD following the diagram

## Why do we TDD?

There are good reasons to write tests, but why write tests first?

## The steps of TDD

```
User Story ---> Feature Test ---> Write Test ---> RED ---> Write code ---> GREEN --> Feature Test ---> Refactor

```


## Apply the process

Setup a `dice_app` folder with rspec:

```
mkdir dice_app
cd dice_app
rspec --init
```

Here are some user stories. For each of them, follow the TDD process from your diagram.

```
As a board game player,
So that I can play a game
I want to be able to roll a dice
```

```
As a board game player,
So that I know how many steps I should move
Rolling a dice should give me a number between 1 and 6
```

```
As a dice app developer,
So that I give players a good game experience
If it is not already random, I want the dice roll to be randomly picked
```

```
As a board game player,
So that I can play many types of games
I want to be able to roll any number of dice at the same time
```

```
As a board game player,
So that I can keep track of past and previous rolls
I want to record each dice roll
```

```
As a board game player,
So that I know what my score is after I have rolled several dice
I want to be able to get my current score
```

# My approach to solving exercise

## User Story 1
```
As a board game player,
So that I can play a game
I want to be able to roll a dice
```
```
dice <---- roll ----> nil
```

> **Dice object should repsond to roll**

 - [x] Feature test: Dice object rolling a dice.      
   - *uninitialized constant Dice*
 - [x] Write test: Desribing Dice constant. 
    - *Test failed.*
 - [x] Write code: Defined Dice class in dice_app.rb. 
    - *Test passed.*
 - [x] Feature test: Dice object rolling a dice. 
   - *undefined method `roll'*
 - [x] Write test: roll method responding to Dice object. 
    - *Test failed*
 - [x] Write code: Defined roll method in Dice class. 
   - *Test passed*
 - [x] Feature tested: 
   - **Feature complete**

## User Story 2 & 3

```
As a board game player,
So that I know how many steps I should move
Rolling a dice should give me a number between 1 and 6

As a dice app developer,
So that I give players a good game experience
If it is not already random, I want the dice roll to be randomly picked
```
```
dice <---- roll ----> rand(1..6)
```
> **Roll dice should return random number between 1 and 6**
 - [x] Feature test: Dice objected being rolled. 
   - *Returned nil value*
 - [x] Write test: Expect dice to return rand(1..6). 
   - *Test failed*
 - [x] Write code: Defined return value for dice to equal random number between 1 and 6. 
   - *Test passed*
 - [x] Feature test: 
   - **Feature complete**
---

## User Story 4

```
As a board game player,
So that I can play many types of games
I want to be able to roll any number of dice at the same time
```

```
dice <--- roll(number_of_dice) ----> rand(1..6)
```

> **number of dice for each roll should be set in argument**
 - [x] Feature test: Dice roll with argument. 
   - *wrong number of arguments (given 1, expected 0)*
 - [x] Write test: Rewrote test for roll method to accept 1 argument. 
   - *Test failed*
 - [x] Write code: Redefined roll method to accept one argument. 
   - *Test passed*
 - [x] Feature test:
   - **Feature passed**

---

## User Story 5

```
As a board game player,
So that I can keep track of past and previous rolls
I want to record each dice roll
```
```
dice <--- record ----> previous_rolls
```
> **Return method called on dice will return previous rolls**
 - [x] Feature test: Record on dice method. 
   - *undefined method `record'*
 - [x] Write test: record method to respond to dice.
   - *Test failed*
 - [x] Write code: defined record method. 
   - *Test passed*
 - [x] Feature test: record after dice roll. 
   - *Nil value returned*
 - [x] Write test: record method to store return of each roll. 
   - *Test failed*
 - [x] Write code: to store roll return in record instant variable. 
   - *Test passed*
 - [x] Feature test record after dice roll. 
   - **Feature test passed.**

---

## User story 6

```
As a board game player,
So that I know what my score is after I have rolled several dice
I want to be able to get my current score
```
```
dice <---- current_score ----> value
```
> **User can get the total of current score when required**

 - [x] Feature test: call method current score on dice after roll. 
   - *undefined method `current_score'*
 - [x] Unit test: Tested for Dice to respond to current_score. 
   - *Test failed*
 - [x] Write code: Defined current_score method. 
   - *Test passed*
 - [x] Feature test: call method returns nil after dice roll. 
 - [x] Unit test: Tested for current_score to return recorded total. 
   - *Test failed*
 - [x] Wrote code: Defined returned value to equal sum of record. 
   - *Test passed*
 - [x] Feature test: 
   - **Feature test passed. All user stories requirements satisfied.**
---

## Resources

:pill: [Behaviour Driven Development with RSpec](https://github.com/makersacademy/course/blob/master/pills/rspec.md)

:pill: [Test Driven Development](https://github.com/makersacademy/course/blob/master/pills/tdd.md)