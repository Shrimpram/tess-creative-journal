VAR snooze = 0

The drowsiness of your sleep fought against the clobber of horseshoes getting louder by the second. Two voices talked for a few seconds before the door swung open. -> Sleeping

= Sleeping

* [Wake up] -> Wake
  + {snooze < 3} [Snooze] {snooze <2: Your eyelids drooped down as you fall into a slumber again.|The door slammed shut, awakening you from your sleep.}
  ~ snooze++
  -> Sleeping


= Wake
{snooze < 3: You woke up.|You begrudgingly got up.} -> Enter_Angel

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

{calledAngel} rummaged around in the drawers before turning around at once. His eyes looked through you as if he were a wizard who could read your every thought.

"I may as well say it now as later, dearest," {calledAngel} resumed gently. "I shall soon want to marry, and, being a farmer, you see I shall require for my wife a woman who knows all about the management of farms. Will you be that woman, Tessy?" (Ch. XXVII) -> Marriage_Question

= Marriage_Question

+ "Yes["] I will marry you."
  -> Waiting.Agreed_to_Wedding
+ ["No"] -> Marriage_Refused

= Marriage_Refused
"No, no! {calledAngel} I cannot be your wife!"

"But, Tess!" he exclaimed, "Surely you love me?"

+ "I do!"
"But why then? Have I asked you too suddenly?"
  * * "Yes-I did not expect it." (Ch. XXVII)
      "Very well then, Tessy, I will give you time." {calledAngel} said. -> Waiting
  * * ["I take that back, I don't love you."] -> Breakup
+ ["I don't!"] -> Breakup

-> END

== Waiting ==
And surely enough, just as he said, {calledAngel} left.
-> Marriage_Question_2

= Marriage_Question_2
After many more visits from him you finally ended up together again while running some simple errands. {calledAngel} was relentless and brought up that question again

"Well, dear—about that question of mine—that long-standing question?" (Ch. XXX)

You were stuck, no matter what answer you gave him there was no escaping. All the norms and cultural expectations that you had been raised to follow reared their fangs against the love you cherished so dearly. Who would win?

* [Divert (talk about your d'Urberville history)]
  <> "I fear my history may upset you. To tell you the truth, I-I—am not a Durbeyfield, but a d’Urberville—a descendant of the same family as those that owned the old house we passed. And—we are all gone to nothing!" (modified from Ch. XXX)

  "A d'Urberville? Now then Tessy that's no trouble, surely you didn't think your family history would cause me to love you any less."

  "No... I-" {calledAngel} cut you off before you could finish.

  "Not at all. Now then, if that's all then I shall set the date for our wedding as soon as possible!"
  -> Agreed_to_Wedding

* [Tell {calledAngel} the truth]

* [Break up with {calledAngel}] -> Breakup


= Agreed_to_Wedding
Shocked at the consequences of what had just happened, all your mind permitted you to do was stare and nod along as he finalized your future.
-> Pre_Wedding

= Truth
[You] bent forward, at which each diamond on [your] neck gave a sinister wink like a toad’s; and pressing [your] forehead against his temple [you] entered on [your] story of [your] acquaintance with Alec d’Urberville and its results, murmuring the words without flinching, and with [your] eyelids drooping down." (Ch. XXXIV)

After finishing your story the silence stuck in the air, as if it had stolen both of your voices. Though, even if you could speak neither would dare be the first to acknowledge what had just been said. {calledAngel} finally cracked, pleading, "Am I to believe this? From your manner I am to take it as true. O you cannot be out of your mind! You ought to be! Yet you are not... My wife, my Tess—nothing in you warrants such a supposition as that?" (Ch. XXXV)

Just as he had finished saying that, {calledAngel} let out a laugh, followed by another, and another, and erupted in a shrill cacophany of laughter, each laugh sending chills down your spine.

"Angel, Angel! what do you mean by that laugh?” you cried out. “Do you know what this is to me?" (Ch. XXXV)

"Tessy" he started, before correcting himself. "No. I shouldn't call you that, my Tessy was a different woman. You are some other woman who has taken her place."

You looked at him in shock, failing to comprehend what he had just said.

"I repeat, the woman I have been loving is not you."

"But who?"

"Another woman in your shape." (Ch. XXXV)

The realization of what {calledAngel} meant crept up on you, and the fangs of society seemed to have won. All you could do now was to let {calledAngel} do what he wanted, which it seemed he knew as well, grabbing his coat and slamming the door beind you, its reverberations echoing off the stone cold walls.

Fin. -> END


== Pre_Wedding ==
The next couple of days blurred together as you sat in your home preparing for the wedding that was to come. You came to the conclusion that you realistically had three choices:

* Write a letter to {calledAngel} confessing your past
* Confess to {calledAngel} at the wedding
* [Run away] -> Run_Away


= Run_Away
You run away. -> END

== Wedding ==
Here comes the bride
-> END


== Breakup ==
"{calledAngel} I- I do hate to have to let down you so harshly. I fear though that a divide has come between us. The way I see you now, simply isn't the same as how I used to."

{calledAngel} stood there, you could see him going through the various of grief trying to comprehend what you had just said. The words that had just ended what love you had shared hung in the air, like a swarm of bees that he dared not touch, as if ignoring what you just said would reverse it.

"Tessy dear, come now, this is hardly the time for jokes." {calledAngel} tried to reason, his voice showed the slightest hints of pleading.

+ "Yes it was a joke.["] I never really meant that, though it was probably in poor taste, my apologies. Now then, as far as your actual question..." -> Marriage_Question
+ "I wasn't joking[."] {calledAngel}, why do you think I would joke about something like that. Now then, it's probably time you packed your things and left."
  I ushered {calledAngel} out the door, closing it and locking it behind him. With the latch of the deadbolt I felt a relief, but a looming feeling that I had made some sort of mistake.
  Fin.-> END
