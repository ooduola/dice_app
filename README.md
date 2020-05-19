# The TDD Process

## Learning objectives
- Explain why we do TDD
- Describe/diagram TDD as a set of steps
- Apply TDD following the diagram

## Why do we TDD

There are good reasons to write tests, but why write tests first?

## The steps of TDD

In teams, describe or diagram the process of TDD.
Your diagram might include: User story, Writing a test, Green, Red, Refactor, Write code, Feature test

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

# Approach

## User Story 1

```
As a board game player,
So that I can play a game
I want to be able to roll a dice
```
```
dice <---- roll ----> nil
```

**Dice object should repsond to roll**

 - Feature tested Dice object rolling a dice. **uninitialized constant Dice**
 - Wrote unit test for desribing Dice constant. **Test failed.**
 - Defined Dice class in dice_app.rb. **Test passed.**
 - Feature tested Dice object rolling a dice. **undefined method `roll'**
 - Wrote unit test for roll method responding to Dice object. **Test failed**
 - Defined roll method in Dice class. **Test passed**
 - Feature tested. **Feature complete**


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
**Roll dice should return random number between 1 and 6**
 - Feature tested Dice objected being rolled. **Return nil value**
 - Wrote unit test to expect dice to return rand(1..6). **Test failed**
 - Defined return value for dice to equal random number between 1 and 6. **Test passed**
 - Feature tested. **Feature complete**
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

**number of dice for each roll should be set in argument**
 - Feature test dice roll with argument. **wrong number of arguments (given 1, expected 0)**
 - Rewrote unit test for roll method to accept 1 argument. **Test failed**
 - Redefined roll method to accept one argument. **Test passed**
 - Feature test. **Feature passed**

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

**Return method called on dice will return previous rolls**
 - Feature test record being called on dice method. **undefined method `record'**
 - Wrote unit test for record method. **Test failed**
 - Defined record method. **test passed**
 - Feature test 1st dice roll to be returned using record. **Nil value returned**
 - Unit test record method to return previous rolls. 


## Resources

:pill: [Behaviour Driven Development with RSpec](https://github.com/makersacademy/course/blob/master/pills/rspec.md)

:pill: [Test Driven Development](https://github.com/makersacademy/course/blob/master/pills/tdd.md)