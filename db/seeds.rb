# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


User.create(name: "H.P Lovecraft", age: 32)
User.create(name: "Jane Austen", age: 45)
User.create(name: "Arthur Conan Doyle", age: 29)

user = User.find_by_name("H.P Lovecraft")
Story.create(title: "The Alchemist", body: "High up, crowning the grassy summit of a swelling mound whose sides are wooded near the base with the gnarled trees of the primeval forest, stands the old chateau of my ancestors. For centuries its lofty battlements have frowned down upon the wild and rugged countryside about, serving as a home and stronghold for the proud house whose honoured line is older even than the moss-grown castle walls. These ancient turrets, stained by the storms of generations and crumbling under the slow yet mighty pressure of time, formed in the ages of feudalism one of the most dreaded and formidable fortresses in all France. From its machicolated parapets and mounted battlements Barons, Counts, and even Kings had been defied, yet never had its spacious halls resounded to the footsteps of the invader.
     But since those glorious years all is changed. A poverty but little above the level of dire want, together with a pride of name that forbids its alleviation by the pursuits of commercial life, have prevented the scions of our line from maintaining their estates in pristine splendour; and the falling stones of the walls, the overgrown vegetation in the parks, the dry and dusty moat, the ill-paved courtyards, and toppling towers without, as well as the sagging floors, the worm-eaten wainscots, and the faded tapestries within, all tell a gloomy tale of fallen grandeur. As the ages passed, first one, then another of the four great turrets were left to ruin, until at last but a single tower housed the sadly reduced descendants of the once mighty lords of the estate.
     It was in one of the vast and gloomy chambers of this remaining tower that I, Antoine, last of the unhappy and accursed Comtes de C——, first saw the light of day, ninety long years ago. Within these walls, and amongst the dark and shadowy forests, the wild ravines and grottoes of the hillside below, were spent the first years of my troubled life. My parents I never knew. My father had been killed at the age of thirty-two, a month before I was born, by the fall of a stone somehow dislodged from one of the deserted parapets of the castle; and my mother having died at my birth, my care and education devolved solely upon one remaining servitor, an old and trusted man of considerable intelligence, whose name I remember as Pierre. I was an only child, and the lack of companionship which this fact entailed upon me was augmented by the strange care exercised by my aged guardian in excluding me from the society of the peasant children whose abodes were scattered here and there upon the plains that surround the base of the hill. At the time, Pierre said that this restriction was imposed upon me because my noble birth placed me above association with such plebeian company. Now I know that its real object was to keep from my ears the idle tales of the dread curse upon our line, that were nightly told and magnified by the simple tenantry as they conversed in hushed accents in the glow of their cottage hearths.",
   user_id: user.id)

Contact.create(email: "lovecraft@gmail.com", cellphone: "3333-3333", user_id: user.id)

user = User.find_by_name("Arthur Conan Doyle")
Story.create(title: "A SCANDAL IN BOHEMIA", body: "To Sherlock Holmes she is always _the_ woman. I have seldom heard him
mention her under any other name. In his eyes she eclipses and
predominates the whole of her sex. It was not that he felt any emotion
akin to love for Irene Adler. All emotions, and that one particularly,
were abhorrent to his cold, precise but admirably balanced mind. He
was, I take it, the most perfect reasoning and observing machine that
the world has seen, but as a lover he would have placed himself in a
false position. He never spoke of the softer passions, save with a gibe
and a sneer. They were admirable things for the observer—excellent for
drawing the veil from men’s motives and actions. But for the trained
reasoner to admit such intrusions into his own delicate and finely
adjusted temperament was to introduce a distracting factor which might
throw a doubt upon all his mental results. Grit in a sensitive
instrument, or a crack in one of his own high-power lenses, would not
be more disturbing than a strong emotion in a nature such as his. And
yet there was but one woman to him, and that woman was the late Irene
Adler, of dubious and questionable memory.

I had seen little of Holmes lately. My marriage had drifted us away
from each other. My own complete happiness, and the home-centred
interests which rise up around the man who first finds himself master
of his own establishment, were sufficient to absorb all my attention,
while Holmes, who loathed every form of society with his whole Bohemian
soul, remained in our lodgings in Baker Street, buried among his old
books, and alternating from week to week between cocaine and ambition,
the drowsiness of the drug, and the fierce energy of his own keen
nature. He was still, as ever, deeply attracted by the study of crime,
and occupied his immense faculties and extraordinary powers of
observation in following out those clues, and clearing up those
mysteries which had been abandoned as hopeless by the official police.
From time to time I heard some vague account of his doings: of his
summons to Odessa in the case of the Trepoff murder, of his clearing up
of the singular tragedy of the Atkinson brothers at Trincomalee, and
finally of the mission which he had accomplished so delicately and
successfully for the reigning family of Holland. Beyond these signs of
his activity, however, which I merely shared with all the readers of
the daily press, I knew little of my former friend and companion.", user_id: user.id)
Contact.create(email: "doyle@yahoo.com", cellphone: "3414-4315", user_id: user.id)

user = User.find_by_name("Jane Austen")
Story.create(title: "Pride and Prejudice", body: "It is a truth universally acknowledged, that a single man in
      possession of a good fortune, must be in want of a wife.

      However little known the feelings or views of such a man may be
      on his first entering a neighbourhood, this truth is so well
      fixed in the minds of the surrounding families, that he is
      considered as the rightful property of some one or other of their
      daughters.

      “My dear Mr. Bennet,” said his lady to him one day, “have you
      heard that Netherfield Park is let at last?”

      Mr. Bennet replied that he had not.

      “But it is,” returned she; “for Mrs. Long has just been here, and
      she told me all about it.”

      Mr. Bennet made no answer.

      “Do not you want to know who has taken it?” cried his wife
      impatiently.

      “_You_ want to tell me, and I have no objection to hearing it.”

      This was invitation enough.

      “Why, my dear, you must know, Mrs. Long says that Netherfield is
      taken by a young man of large fortune from the north of England;
      that he came down on Monday in a chaise and four to see the
      place, and was so much delighted with it that he agreed with Mr.
      Morris immediately; that he is to take possession before
      Michaelmas, and some of his servants are to be in the house by
      the end of next week.”

      “What is his name?”", user_id: user.id)
Contact.create(email: "austen@hotmail.com", cellphone: "3612-3477", user_id: user.id)
