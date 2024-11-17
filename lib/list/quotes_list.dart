import '../model/model_class.dart';

List<Map<String, String>> quotesList = [
  // Inspirational Quotes
  {
    "quote": "The only way to do great work is to love what you do.",
    "author": "Steve Jobs",
    "category": "Inspirational",
  },
  {
    "quote":
        "The best time to plant a tree was 20 years ago. The second best time is now.",
    "author": "Chinese Proverb",
    "category": "Inspirational",
  },
  {
    "quote":
        "What lies behind us and what lies before us are tiny matters compared to what lies within us.",
    "author": "Ralph Waldo Emerson",
    "category": "Inspirational",
  },
  {
    "quote": "Believe you can and you're halfway there.",
    "author": "Theodore Roosevelt",
    "category": "Inspirational",
  },
  {
    "quote":
        "The only limit to our realization of tomorrow is our doubts of today.",
    "author": "Franklin D. Roosevelt",
    "category": "Inspirational",
  },

  // Motivational Quotes
  {
    "quote":
        "Your time is limited, so don't waste it living someone else's life.",
    "author": "Steve Jobs",
    "category": "Motivational",
  },
  {
    "quote":
        "The only place where success comes before work is in the dictionary.",
    "author": "Vidal Sassoon",
    "category": "Motivational",
  },
  {
    "quote": "Don't watch the clock; do what it does. Keep going.",
    "author": "Sam Levenson",
    "category": "Motivational",
  },
  {
    "quote":
        "The future belongs to those who believe in the beauty of their dreams.",
    "author": "Eleanor Roosevelt",
    "category": "Motivational",
  },
  {
    "quote": "Act as if what you do makes a difference. It does.",
    "author": "William James",
    "category": "Motivational",
  },

  // Love Quotes
  {
    "quote":
        "Love is not about how much you say 'I love you', but how much you can prove that it's true.",
    "author": "Unknown",
    "category": "Love",
  },
  {
    "quote": "Where there is love there is life.",
    "author": "Mahatma Gandhi",
    "category": "Love",
  },
  {
    "quote": "Love is composed of a single soul inhabiting two bodies.",
    "author": "Aristotle",
    "category": "Love",
  },
  {
    "quote":
        "You don't love someone because they're perfect, you love them in spite of the fact that they're not.",
    "author": "Jodi Picoult",
    "category": "Love",
  },
  {
    "quote":
        "Love is that condition in which the happiness of another person is essential to your own.",
    "author": "Robert A. Heinlein",
    "category": "Love",
  },

  // Friendship Quotes
  {
    "quote":
        "Friendship is the only cement that will ever hold the world together.",
    "author": "Woodrow Wilson",
    "category": "Friendship",
  },
  {
    "quote": "A friend is someone who knows all about you and still loves you.",
    "author": "Elbert Hubbard",
    "category": "Friendship",
  },
  {
    "quote":
        "True friends are like diamonds – bright, beautiful, valuable, and always in style.",
    "author": "Nicole Richie",
    "category": "Friendship",
  },
  {
    "quote":
        "A real friend is one who walks in when the rest of the world walks out.",
    "author": "Walter Winchell",
    "category": "Friendship",
  },
  {
    "quote": "Friends are the family you choose.",
    "author": "Jess C. Scott",
    "category": "Friendship",
  },

  // Life Quotes
  {
    "quote":
        "In the end, it's not the years in your life that count. It's the life in your years.",
    "author": "Abraham Lincoln",
    "category": "Life",
  },
  {
    "quote": "Life is what happens when you're busy making other plans.",
    "author": "John Lennon",
    "category": "Life",
  },
  {
    "quote": "Life is really simple, but we insist on making it complicated.",
    "author": "Confucius",
    "category": "Life",
  },
  {
    "quote":
        "To live is the rarest thing in the world. Most people exist, that is all.",
    "author": "Oscar Wilde",
    "category": "Life",
  },
  {
    "quote":
        "Do not take life too seriously. You will never get out of it alive.",
    "author": "Elbert Hubbard",
    "category": "Life",
  },

  // Happiness Quotes
  {
    "quote":
        "Happiness is not something ready-made. It comes from your own actions.",
    "author": "Dalai Lama",
    "category": "Happiness",
  },
  {
    "quote": "The purpose of our lives is to be happy.",
    "author": "Dalai Lama",
    "category": "Happiness",
  },
  {
    "quote": "Happiness depends upon ourselves.",
    "author": "Aristotle",
    "category": "Happiness",
  },
  {
    "quote":
        "For every minute you are angry you lose sixty seconds of happiness.",
    "author": "Ralph Waldo Emerson",
    "category": "Happiness",
  },
  {
    "quote":
        "Happiness is when what you think, what you say, and what you do are in harmony.",
    "author": "Mahatma Gandhi",
    "category": "Happiness",
  },

  // Success Quotes
  {
    "quote":
        "Success is not the key to happiness. Happiness is the key to success.",
    "author": "Albert Schweitzer",
    "category": "Success",
  },
  {
    "quote":
        "Success usually comes to those who are too busy to be looking for it.",
    "author": "Henry David Thoreau",
    "category": "Success",
  },
  {
    "quote": "The way to get started is to quit talking and begin doing.",
    "author": "Walt Disney",
    "category": "Success",
  },
  {
    "quote":
        "Success is not how high you have climbed, but how you make a positive difference to the world.",
    "author": "Roy T. Bennett",
    "category": "Success",
  },
  {
    "quote": "Don't be afraid to give up the good to go for the great.",
    "author": "John D. Rockefeller",
    "category": "Success",
  },

  // Wisdom Quotes
  {
    "quote": "The only true wisdom is in knowing you know nothing.",
    "author": "Socrates",
    "category": "Wisdom",
  },
  {
    "quote": "Turn your wounds into wisdom.",
    "author": "Oprah Winfrey",
    "category": "Wisdom",
  },
  {
    "quote":
        "Wisdom is not a product of schooling but of the lifelong attempt to acquire it.",
    "author": "Albert Einstein",
    "category": "Wisdom",
  },
  {
    "quote": "Knowing others is intelligence; knowing yourself is true wisdom.",
    "author": "Lao Tzu",
    "category": "Wisdom",
  },
  {
    "quote":
        "The fool doth think he is wise, but the wise man knows himself to be a fool.",
    "author": "William Shakespeare",
    "category": "Wisdom",
  },

  // Courage Quotes
  {
    "quote": "Courage is grace under pressure.",
    "author": "Ernest Hemingway",
    "category": "Courage",
  },
  {
    "quote": "It takes courage to grow up and become who you really are.",
    "author": "E.E. Cummings",
    "category": "Courage",
  },
  {
    "quote":
        "Courage is resistance to fear, mastery of fear—not absence of fear.",
    "author": "Mark Twain",
    "category": "Courage",
  },
  {
    "quote":
        "Success is not final, failure is not fatal: it is the courage to continue that counts.",
    "author": "Winston Churchill",
    "category": "Courage",
  },
  {
    "quote":
        "Courage doesn't always roar. Sometimes courage is the quiet voice at the end of the day saying, 'I will try again tomorrow.'",
    "author": "Mary Anne Radmacher",
    "category": "Courage",
  },

  // Leadership Quotes
  {
    "quote":
        "The function of leadership is to produce more leaders, not more followers.",
    "author": "Ralph Nader",
    "category": "Leadership",
  },
  {
    "quote":
        "A leader is one who knows the way, goes the way, and shows the way.",
    "author": "John C. Maxwell",
    "category": "Leadership",
  },
  {
    "quote": "Leadership is the capacity to translate vision into reality.",
    "author": "Warren Bennis",
    "category": "Leadership",
  },
  {
    "quote":
        "The greatest leader is not necessarily the one who does the greatest things. He is the one that gets the people to do the greatest things.",
    "author": "Ronald Reagan",
    "category": "Leadership",
  },
  {
    "quote": "Leadership and learning are indispensable to each other.",
    "author": "John F. Kennedy",
    "category": "Leadership",
  },
  // Humor Quotes
  {
    "quote": "I'm not arguing, I'm just explaining why I'm right.",
    "author": "Unknown",
    "category": "Humor",
  },
  {
    "quote": "I used to think I was indecisive, but now I'm not too sure.",
    "author": "Unknown",
    "category": "Humor",
  },
  {
    "quote":
        "If you think nobody cares if you're alive, try missing a couple of car payments.",
    "author": "Earl Wilson",
    "category": "Humor",
  },
  {
    "quote": "I'm on a whiskey diet. I've lost three days already.",
    "author": "Tommy Cooper",
    "category": "Humor",
  },
  {
    "quote": "Behind every great man is a woman rolling her eyes.",
    "author": "Jim Carrey",
    "category": "Humor",
  },

  // Nature Quotes
  {
    "quote": "In every walk with nature, one receives far more than he seeks.",
    "author": "John Muir",
    "category": "Nature",
  },
  {
    "quote": "The earth has music for those who listen.",
    "author": "William Shakespeare",
    "category": "Nature",
  },
  {
    "quote":
        "Look deep into nature, and then you will understand everything better.",
    "author": "Albert Einstein",
    "category": "Nature",
  },
  {
    "quote":
        "To sit in the shade on a fine day and look upon verdure is the most perfect refreshment.",
    "author": "Jane Austen",
    "category": "Nature",
  },
  {
    "quote": "Nature does not hurry, yet everything is accomplished.",
    "author": "Lao Tzu",
    "category": "Nature",
  },
  // https://i.pinimg.com/originals/fe/5d/f0/fe5df032f3c926f13b8a021622551a52.jpg

  // Knowledge Quotes
  {
    "quote": "An investment in knowledge pays the best interest.",
    "author": "Benjamin Franklin",
    "category": "Knowledge",
  },
  {
    "quote": "The only source of knowledge is experience.",
    "author": "Albert Einstein",
    "category": "Knowledge",
  },
  {
    "quote": "Knowledge is power.",
    "author": "Francis Bacon",
    "category": "Knowledge",
  },
  {
    "quote":
        "To know, is to know that you know nothing. That is the meaning of true knowledge.",
    "author": "Socrates",
    "category": "Knowledge",
  },
  {
    "quote":
        "The more that you read, the more things you will know. The more that you learn, the more places you'll go.",
    "author": "Dr. Seuss",
    "category": "Knowledge",
  },

  // Patience Quotes
  {
    "quote":
        "Patience is not simply the ability to wait – it’s how we behave while we’re waiting.",
    "author": "Joyce Meyer",
    "category": "Patience",
  },
  {
    "quote": "The two most powerful warriors are patience and time.",
    "author": "Leo Tolstoy",
    "category": "Patience",
  },
  {
    "quote": "Patience is bitter, but its fruit is sweet.",
    "author": "Jean-Jacques Rousseau",
    "category": "Patience",
  },
  {
    "quote":
        "One moment of patience may ward off great disaster. One moment of impatience may ruin a whole life.",
    "author": "Chinese Proverb",
    "category": "Patience",
  },
  {
    "quote": "He that can have patience can have what he will.",
    "author": "Benjamin Franklin",
    "category": "Patience",
  },

  // Creativity Quotes
  {
    "quote": "Creativity is intelligence having fun.",
    "author": "Albert Einstein",
    "category": "Creativity",
  },
  {
    "quote":
        "You can’t use up creativity. The more you use, the more you have.",
    "author": "Maya Angelou",
    "category": "Creativity",
  },
  {
    "quote": "Creativity takes courage.",
    "author": "Henri Matisse",
    "category": "Creativity",
  },
  {
    "quote": "The chief enemy of creativity is good sense.",
    "author": "Pablo Picasso",
    "category": "Creativity",
  },
  {
    "quote": "Creativity is the power to connect the seemingly unconnected.",
    "author": "William Plomer",
    "category": "Creativity",
  },

  // Perseverance Quotes
  {
    "quote":
        "Perseverance is not a long race; it is many short races one after the other.",
    "author": "Walter Elliot",
    "category": "Perseverance",
  },
  {
    "quote": "It always seems impossible until it’s done.",
    "author": "Nelson Mandela",
    "category": "Perseverance",
  },
  {
    "quote":
        "Through perseverance many people win success out of what seemed destined to be certain failure.",
    "author": "Benjamin Disraeli",
    "category": "Perseverance",
  },
  {
    "quote": "Perseverance is failing 19 times and succeeding the 20th.",
    "author": "Julie Andrews",
    "category": "Perseverance",
  },
  {
    "quote": "The only guarantee for failure is to stop trying.",
    "author": "John C. Maxwell",
    "category": "Perseverance",
  },
];

List<QuotesModel> myQuotes = quotesList
    .map(
      (e) => QuotesModel.fromMap(data: e),
    )
    .toList();

List<String> myQuotesCategory =
    myQuotes.map((e) => e.category).toList().toSet().toList();
