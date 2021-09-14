VAR snooze = 0

The drowsiness of your sleep fought against the clobber of horseshoes getting louder by the second. Two voices talked for a few seconds before the door swung open. -> Sleeping

= Sleeping

* [Wake up] -> Wake
+ {snooze < 3} [Snooze] {snooze <2: Your eyelids drooped down as you fall into a slumber again.|The door slammed shut, awakening you from your sleep.}
~ snooze++
-> Sleeping


= Wake
{snooze<3: You woke up.|You begrudgingly got up.} -> Enter_Angel

= Enter_Angel
You peered over to the door as a figure you immediately recognized walked in. Mr. Angel Clare, your would be suitor, had it not been for the extenuating circumstances you were in.

Awaking at once, having not expected his arrival, you exclaimed,

VAR calledAngel = ""

* "O Mr Clare!["] How you frightened me-I-" (Ch. XXVII)
  ~ calledAngel = "Mr Clare"
  -> Dear_Darling
* "O Angel!["] How you frightened me-I-" (Ch. XXVII)
  ~ calledAngel = "Angel"
  -> Dear_Darling

= Dear_Darling
"Dear, darling Tessy!" {calledAngel} whispered. {calledAngel == "Mr Clare": "Don't, for Heaven's sake, Mister me any more. I have hastened back so soon because of you!" (Ch. XXVII)|"I have hastened back so soon because of you!" (Ch. XXVII)}

Angel rummaged around in the drawers before turning around at once. His eyes looked through you as if he were a wizard who could read your every thought.

"I may as well say it now as later, dearest," {calledAngel} resumed gently. "I shall soon want to marry, and, being a farmer, you see I shall require for my wife a woman who knows all about the management of farms. Will you be that woman, Tessy?" (Ch. XXVII) -> Marriage_Question

= Marriage_Question

+ "Yes" -> Wedding
+ ["No"] -> Marriage_Refused

= Marriage_Refused
"No, no! {calledAngel} I cannot be your wife!"

"But, Tess!" he exclaimed, "Surely you love me?"

* "I do!"
"But why then? Have I asked you too suddenly?"
  * * "Yes-I did not expect it." (Ch. XXVII)
  "Very well then, Tessy, I will give you time." {calledAngel} said. -> Waiting
  * * ["I take that back, I don't love you."] -> Breakup
* ["I don't!"] -> Breakup

-> END

== Waiting ==
-> END

== Wedding ==
Here comes the bride
-> END

== Breakup ==
"{calledAngel} I- I do hate to have to let down you so harshly. I fear though that a divide has come between us. The way I see you now, simply isn't the same as how I used to."

{calledAngel} stood there, you could see him going through the various of grief trying to comprehend what you had just said. The words that had just ended what love you had shared hung in the air, like a swarm of bees that he dared not touch, as if ignoring what you just said would reverse it.

"Tessy dear, come now, this is hardly the time for jokes." {calledAngel} tried to reason, his voice showed the slightest hints of pleading.

* "Yes it was a joke.["] I never really meant that, though it was probably in poor taste, my apologies. Now then, as far as your actual question..." -> Marriage_Question
* "I wasn't joking[."] {calledAngel}, why do you think I would joke about something like that. Now then, it's probably time you packed your things and left."
I ushered {calledAngel} out the door, closing it and locking it behind him. With the latch of the deadbolt I felt a relief, but a looming feeling that I had made some sort of mistake.

-> END
