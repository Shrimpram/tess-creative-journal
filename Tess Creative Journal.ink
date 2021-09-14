VAR snooze = 0

The drowsiness of your sleep fights against the clobber of horseshoes getting louder by the second. Two voices talk for a few seconds before the door swung open. -> Sleeping

= Sleeping

* [Wake up] -> Wake
+ {snooze < 3} [Snooze] Your eyelids droop down as you fall into a slumber again.
~ snooze++
-> Sleeping


= Wake
{snooze<3: You wake up.|You begrudgingly wake up.} -> Enter_Angel

= Enter_Angel
You peer over to the door as a figure you immediately recognize walks in. Mr. Angel Clare, your would be suitor, had it not been for the extenuating circumstances you were in.

Awaking at once, having not expected his arrival, you exclaim,

VAR calledAngel = ""

* "O Mr Clare!["] How you frightened me-I-" (Ch. XXVII)
  ~ calledAngel = "Mr Clare"
  -> Dear_Darling
* "O Angel!["] How you frightened me-I-" (Ch. XXVII)
  ~ calledAngel = "Angel"
  -> Dear_Darling

= Dear_Darling
"Dear, darling Tessy!" {calledAngel} whispers. {calledAngel == "Mr Clare": "Don't, for Heaven's sake, Mister me any more. I have hastened back so soon because of you!" (Ch. XXVII)|"I have hastened back so soon because of you!" (Ch. XXVII)}

Angel rummages around in the drawers before turning around at once. His eyes looked through you as if he were a wizard who could read your every thought.

"I may as well say it now as later, dearest," {calledAngel} resumes gently. "I shall soon want to marry, and, being a farmer, you see I shall require for my wife a woman who knows all about the management of farms. Will you be that woman, Tessy?" (Ch. XXVII)

* "Yes" -> Wedding
* ["No"] -> Marriage_Refused

= Marriage_Refused
"No, no! {calledAngel} I cannot be your wife!"

"But, Tess!" he exclaimed, "Surely you love me?"

* "I do[!"] -> END
* ["I don't!"] -> Breakup

->END


== Wedding ==
Here comes the bride
->END

== Breakup ==
"{calledAngel} I- I do hate to have to let down you so harshly. I fear though that a divide has come between us. The way I see you now, simply isn't the same as how I used to"
-> END
