Challenge.create!(title: "Intro to JavaScript",
                  description: "<p>JavaScript is a dynamic computer language used for talking over the Internet. In this challenge, you'll learn how to use a simple function.</p><p>We've built a robot for you. His name is Rupert. Say hi! Rupert knows how to respond to a select few functions: <code>moveForward();</code>, <code>turnLeft();</code>, and <code>turnRight();</code></p><p>Choosing from the above commands, see if you can get Rupert to move forward.</p>",
                  tutorial: false,
                  hint: "Try one of these:<br><code>rupert.turnRight();</code><br><code>rupert.turnLeft();</code><br><code>rupert.moveForward();</code><br><code>rupert.moveBackward();</code>")

Challenge.create!(title: "Going the Distance",
                  description: "<p>Awesome! Now, if you want Rupert to move more than a foot forward, you can call the same <code>moveForward();</code> more than once.</p>",
                  tutorial: false,
                  hint: "Try one of these:<br><code>rupert.turnRight();</code><br><code>rupert.turnLeft();</code><br><code>rupert.moveForward();</code><br><code>rupert.moveBackward();</code>")

Challenge.create!(title: "Argue with Me",
                  description: "<p>It's a little tedious writing that function over and over, right? We can make the same thing happen by passing an argument to the <code>moveForward();</code> function.</p><p>You might know an argument as an unpleasant shouting match between two people, but in JavaScript-land, it only means something you put between the parentheses at the end of the function.</p><p>For example, if you type <code>rupert.moveForward(2);</code>, Rupert will move forward twice.</p>",
                  tutorial: false,
                  hint: "Try one of these:<br><code>rupert.turnRight();</code><br><code>rupert.turnLeft();</code><br><code>rupert.moveForward();</code><br><code>rupert.moveBackward();</code>")

Challenge.create!(title: "Defeating the Zoolander Curse",
                  description: "<p>Great! Now that Rupert has moved forward, let's see if we can get him to turn left before moving forward again.",
                  tutorial: false,
                  hint: "Try one of these:<br><code>rupert.turnRight();</code><br><code>rupert.turnLeft();</code><br><code>rupert.moveForward();</code><br><code>rupert.moveBackward();</code>")

Challenge.create!(title: "It's Hip to be Square",
                  description: "<p>Fantastic! Using the same commands you already know, let's see if you can make Rupert make a square. Start by moving forward then turning left, then repeat.</p>",
                  tutorial: false,
                  hint: "Try one of these:<br><code>rupert.turnRight();</code><br><code>rupert.turnLeft();</code><br><code>rupert.moveForward();</code><br><code>rupert.moveBackward();</code>")

Challenge.create!(title: "Loop around the Rosy",
                  description: "<p>Now you can write a FOR loop for Rupert to move in a square.</p><p>Remember to set a starting number: <code>var i=1;</code> a total count: <code>i<5;</code> and tell the loop to count by one: <code>i++</code></p><p>Tell Rupert to: <code>rupert.moveForward();</code> and <code>rupert.turnLeft();</code> inside the loop!</p>",
                  tutorial: true,
                  hint: "Try this:<br><code>for(var i=1; i<5; i++){</code><br><code>&nbsp;&nbsp;rupert.moveForward();<br>&nbsp;&nbsp;rupert.turnLeft();</code><br><code>}</code>")


Badge.create!(challenge_id: 1, image_url: "you-win.png")
Badge.create!(challenge_id: 3, image_url: "robo-banner-badge.png")
Badge.create!(challenge_id: 6, image_url: "robot-crown-badge.png")