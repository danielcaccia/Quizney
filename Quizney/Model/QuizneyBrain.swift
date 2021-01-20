//
//  QuizneyBrain.swift
//  Quizney
//
//  Created by Daniel Caccia on 19/01/21.
//

import Foundation

struct QuizneyBrain {
    
    let questions = [
        Question(id: 1,
                 q: "Disney California Adventure Park used to be a parking lot.",
                 a: "True",
                 c: "When Disneyland first opened on July 17, 1955, Disney California Adventure Park was still over 45 years away from welcoming visitors. In fact, the land for Disneyland’s second theme park was originally the parking lot for Disneyland Park."),
        Question(id: 2,
                 q: "Sleeping Beauty Castle uses paint to make it look bigger than it actually is.",
                 a: "True",
                 c: "Disneyland’s Sleeping Beauty Castle is a mere 77 feet tall. To make the structure look larger and more grand, Walt Disney Imagineering uses a technique called atmospheric perspective. The warmer pink hues are used on the lower towers and the team gradually added blue to lighten the colors near the top."),
        Question(id: 3,
                 q: "The Disneyland Resort has a hotel inside a theme park.",
                 a: "True",
                 c: "The Grand Californian Hotel & Spa is Disney’s first domestic hotel to be built inside a theme park. The property is located at the edge of Disney California Adventure Park and even has a secret guest-only entrance, which drops people off inside Grizzly Peak near Soarin’ Around the World and Grizzly River Run."),
        Question(id: 4,
                 q: "Guardians of the Galaxy — Mission: Breakout! offers six different experiences.",
                 a: "True",
                 c: "When entering the Collector's Fortress on Guardians of the Galaxy — Mission: Breakout!, you might notice a few familiar artifacts from other Marvel movies, like Cosmo the Spacedog. Once you’re on the ride vehicle, you’ll be dropped into one of six different scenarios featuring Star-Lord, Groot, Gamora, Rocket, and Drax. Each of the scenarios features a different song from the '70s or '80s as you speed to the top of the tower and drop to the bottom."),
        Question(id: 5,
                 q: "The Mickey Mouse floral design is replanted multiple times a year.",
                 a: "True",
                 c: "Just inside the gates of Disneyland Park, you’ll see a giant floral Mickey Mouse on the grass leading up to the train station. This flower bed is replaced and replanted six times a year, in order to spruce up the area and make it more festive for holidays like Halloween and Christmas."),
        Question(id: 6,
                 q: "Only a single Mickey Mouse is present in the entire Disneyland Paris park.",
                 a: "True",
                 c: "At any time, only a single Mickey is present in the entire park, so that children really get the sense that the character exists and is unique."),
        Question(id: 7,
                 q: "The (Hyper) Space Mountain at Disneyland Paris is the fastest of the five in operation.",
                 a: "True",
                 c: "The trains move into a tunnel as the iconic Star Wars theme music plays before entering the cannon. After a brief lecture from Admiral Akbar, a command to launch is given and the Columbiad fires, propelling the trains forward, accelerating to 44 mph (71 km/h) in two seconds, the ride uses technology like that used in aircraft carriers to propel jet fighters, launching into Hyperspace from Earth. It is also the only one that goes upside-down."),
        Question(id: 8,
                 q: "Main Street uses a trick called forced perspective to create the illusion of a larger space.",
                 a: "True",
                 c: "When you enter the park, the castle seems distant, even though it's only a few hundred feet away. This is caused by the facades of the building along Main Street, which widen out as you move down the street. The opposite is true as well, and when you go down the avenue in the other direction to leave the park, the exit seems closer."),
        Question(id: 9,
                 q: "You can get a haircut and shave at any Disney Park.",
                 a: "True",
                 c: "On Main Street in all Disney parks, you'll find a real barber at work, because Walt Disney wanted to pay tribute to his father, who was a barber himself."),
        Question(id: 10,
                 q: "Every Cast Member at Disneyland Paris is trained to deal with wild animals found within the park.",
                 a: "False",
                 c: "There is a department at Disneyland Paris called \"Wildlife\" whose job is to deal with the many animals that run wild in the park. For instance, the park is home to many wild rabbits (hundreds are caught and released each year), and once employees even stumbled across a fox hiding inside the Peter Pan ride."),
        Question(id: 11,
                 q: "There’s a whole city in the undergrounds of all Disney Parks.",
                 a: "True",
                 c: "To travel, employees use an internal bus service which circulates throughout the park grounds, and makes stops at destinations such as the \"Pluto Gate\". Similarly, to preserve the magic, characters such as Mickey, Minnie, and Pluto never address visitors, and the actors inside the suits never reveal themselves, even when they're backstage."),
        Question(id: 12,
                 q: "Main Street USA at Disneyland Paris is based on the 19th-century New Orleans.",
                 a: "False",
                 c: "The architecture of Main Street in Disneyland Paris, was inspired by Walt Disney's hometown of Marceline, Missouri."),
        Question(id: 13,
                 q: "Disneyland Paris has actual gold at its archtecture.",
                 a: "True",
                 c: "The tops of the towers on Sleeping Beauty's castle, as well as the the rooftops of Small World are gilded with 24 carat gold leaf."),
        Question(id: 14,
                 q: "Every castle of all Disney Parks faces Disneyland Park in California",
                 a: "False",
                 c: "In all Disney parks, the castle faces south so visitors can take pictures from Main Street without worrying about lighting at any time of the day."),
        Question(id: 15,
                 q: "Rock n Roller Coaster uses the first original recordings of Aerosmith’s songs.",
                 a: "False",
                 c: "Aerosmith re-recorded vocals and guitar riffs especially for the Rock n Roller Coaster. The recorded songs, including ‘Love on a Roller Coaster’ cannot be heard anywhere else."),
        Question(id: 16,
                 q: "Walt Disney World was originally planned for St. Louis, Missouri.",
                 a: "True",
                 c: "After the success of Disneyland's opening in Anaheim, California, other states wanted park, too. Before the creators ultimately chose the Orlando, Florida destination we all know today, St. Louis was a serious contender for Disney World. There was even a blueprint (recently sold at auction) for the park, which would have all been indoors to combat the winter cold. History says there are a few reasons they chose Orlando in the end, but the not-so-fun indoor factor seems like a huge one to us."),
        Question(id: 17,
                 q: "Walt had an apartment at Disneyland Park.",
                 a: "True",
                 c: "While Disneyland was being built in the early 1950s, Walt built an apartment for his family above the Fire Department on Main Street. A lamp lit in the window let staff know anytime he was there, and now it's always alight in his honor."),
        Question(id: 18,
                 q: "Disneyland Park has a hidden private club.",
                 a: "True",
                 c: "Originally built for Walt to host important guests, Club 33 opened in 1967. (It's the only place you can buy an adult beverage at Disneyland.) This plush, secret cocktail lounge is hidden above the Blue Bayou in New Orleans Square, and has less than 500 members. Wanna join? The waiting list is around 14 years — and costs $20,000 to sign up."),
        Question(id: 19,
                 q: "The Pirates of the Caribbean ride has a real skull.",
                 a: "True",
                 c: "Rumor has it that when the ride was built in 1967, Imagineers weren't happy with the inauthentic appearance of the fake skeletons they were using. So the UCLA medical school gladly provided cadaver skeletons, which were positioned throughout the ride. Over time, they were replaced with the dummies we see today — except for one skull, which remains above this headboard."),
        Question(id: 20,
                 q: "Guests can sleep in Cinderella's Castle.",
                 a: "True",
                 c: "Originally intended as an apartment for Walt Disney's family, the 650-square-foot space is only accessible by a secret elevator. But you can't pay to book a stay — it can only be used for contest winners and other promotions. In Disneyland, there's a similar room above the Pirates of the Caribbean exhibit."),
        Question(id: 21,
                 q: "Matterhorn Mountain has a soccer court.",
                 a: "False",
                 c: "Although there's a small basketball half-court. Costumed employees used to climb or rappel the sides of the mountain, and so the attic-like space was used as a resting and preparation area. One of the climbers once brought in and installed a basketball hoop to keep them entertained on breaks."),
        Question(id: 22,
                 q: "The Disney World’s Railroad uses a replica of an actual train from the 1910s.",
                 a: "False",
                 c: "The Disney World Railroad in the Magic Kingdom has a functional real steam-powered train from the 1910’s that carries 1.5 million passengers each year. The four trains were originally built between 1916 and 1928 and have been restored to run in tip-top shape."),
        Question(id: 23,
                 q: "The American flags at Disney World are fake.",
                 a: "True",
                 c: "Because real American flags must follow the national flag code, such as flying at half-mast during times of mourning, the ones at Disney were purposefully made to be missing a stripe or a star. That means the park doesn't have to worry about flag etiquette—because its flags are technically pennants."),
        Question(id: 24,
                 q: "An estimated 1.65 million sunglasses have been lost at Disney World since it opened.",
                 a: "True",
                 c: "On average, around 210 pairs of sunglasses are turned in at the Disney World lost and found each day. The lost and found also collects around 6,000 cell phones, 3,500 cameras, and 18,000 hats each year."),
        Question(id: 25,
                 q: "The names of the trains on Big Thunder Mountain are the names of real locomotives from the 1910’s.",
                 a: "False",
                 c: "There are a total of six trains that weave through the tunnels and caverns of the abandoned mine. Each train is given a clever name. Their names are: I.M. Brave, I.B. Hearty, I.M. Fearless., U.B. Bold, U.R. Courageous and U.R. Daring."),
        Question(id: 26,
                 q: "Disneyland Paris’ Big Thunder Mountain landscape was inspired by Bryce Canyon in Utah.",
                 a: "False",
                 c: "Big Thunder Mountain Railroad (Disneyland Park, in California) is inspired by Bryce Canyon in Utah. The large rock spires called Hoodoos make up the look and of the mountain. Tony Baxter, the ride’s designer, wanted the attraction to look like the mountain was there first, before tracks were added. The Parisian version was inspired by Monument Valley, Utah."),
        Question(id: 27,
                 q: "The left one of singing busts in the graveyard scene in Disney World’s Haunted Mansion attraction is Walt Disney’s face.",
                 a: "False",
                 c: "The singing busts in the graveyard warble the attraction’s theme song, “Grim Grinning Ghosts.” Though sometimes mistaken for Walt Disney, the face on the bust on the left actually belongs to Disney Legend Thurl Ravenscroft, the song’s soloist. Ravenscroft is perhaps best-known as the voice of Tony the Tiger, the mascot of Kellogg’s Frosted Flakes cereal. In addition to Ravenscroft, the Singing Busts include Jay Meyer, Verne Row, Bob Ebright, and Chuck Schroeder."),
        Question(id: 28,
                 q: "The Pirates of the Caribbean Attraction at Disneyland Park was personally supervised by Walt Disney.",
                 a: "True",
                 c: "To help Walt get the ride experience before the boats were completed, Imagineers rigged a chair up to a dolly and pushed their boss through the attraction at the same approximate speed a boat would pass. Though they thought he would be upset riders couldn’t clearly hear what all of the pirates were saying, Disney was actually delighted. He thought it was like being at a cocktail party, and was pleased that people would be able to pick out something new every time they rode. Sadly, it was the last ride Walt would be hands-on with. He died while it was still being constructed; it opened three months after his death."),
        Question(id: 29,
                 q: "The water used to fill It’s a Small World Attraction in California came from the Park’s water recycling system.",
                 a: "False",
                 c: "When the ride first opened at Disneyland on May 28, 1966, Walt invited kids from around the world to come help dedicate it. They each brought a container of water from rivers and seas of their native lands and added it to the flume of the ride in Anaheim."),
        Question(id: 30,
                 q: "The Tower of Terror’s drop is not a real drop.",
                 a: "True",
                 c: "Tower of Terror guests may feel like they're free-falling, but they're not! They’re being pulled. Ride technology pulls the elevator car down faster than gravity, which is what results in that amazing butts-off-the-seat levitation effect.")
    ]
    var quiz: [Question] = []
    var score = 0
    var questionNumber = 0
    let totalQuestions = 10
    
    mutating func generateQuiz() {
        questionNumber = 0
        score = 0
        quiz = questions
        quiz.shuffle()
        
        while quiz.count > totalQuestions {
            quiz.remove(at: 0)
        }
    }
    
    mutating func checkAnswer(with userAnswer: String) -> Bool {
        if userAnswer == quiz[questionNumber].answer {
            score += 1
            
            return true
        } else {
            return false
        }
    }
    
    mutating func hasNextQuestion() -> Bool {
        if questionNumber < totalQuestions - 1 {
            questionNumber += 1
            
            return true
        } else {
            return false
        }
    }
    
    func getCurious() -> String {
        return quiz[questionNumber].curiosity
    }
    
    func getScore() -> Int {
        return score
    }
    
    mutating func getQuestionText() -> String {
        let text = quiz[questionNumber].text
                
        return text
    }
        
    func getProgress() -> Float {
        return Float(questionNumber + 1) / Float(totalQuestions)
    }
    
    func getImage() -> Int {
        return quiz[questionNumber].id
    }
    
}
