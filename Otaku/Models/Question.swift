//
//  Question.swift
//  Code History Beatrice
//
//  Created by Beatrice Movila on 06.10.2022.
//

import Foundation

struct Question: Hashable {
    let questionText: String
    let possibleAnswers: [String]
    let correctAnswerIndex: Int
    let questionBackground: String
    //let afiseaza: [String]
    
    static var allQuestions = [
        Question(questionText: "In which anime series is Ash Ketchum the main character??",
                         possibleAnswers: [
                            "Eyeshield 21",
                            "Cowboy Bebop",
                            "Pokémon",
                            
                         ],
                 correctAnswerIndex: 2,
                 questionBackground: "Ash"),
        
        Question(questionText: "Dragon Ball’ was created by who in 1984?",
                         possibleAnswers: [
                            "Akira Toriyama",
                            "Satoshi Tajiri",
                            "Hirohiko Araki",
                            
                         ],
                         correctAnswerIndex: 0,
                         questionBackground: "dragonball"),
        
        Question(questionText: "In ‘One Piece’, Monkey D. Luffy originally sets out with the Straw Hat Pirates to become the pirate king on which ship?",
                         possibleAnswers: [
                            "Going Merry",
                            "Thousand Sunny",
                            "Ever Darker",
                            
                         ],
                         correctAnswerIndex: 0,
                         questionBackground: "onepiece"),
        
        Question(questionText: "Which planet is also known as the Dragon World in ‘Dragon Ball’?",
                         possibleAnswers: [
                            "Earth",
                            "Saturn",
                            "Jupiter",
                            
                         ],
                         correctAnswerIndex: 0,
                         questionBackground: "dragonball"),
        
        Question(questionText: "What is the name of Studio Ghibli’s well-known mascot?",
                         possibleAnswers: [
                            "Kiki",
                            "Bakura",
                            "Totoro",
                            
                         ],
                         correctAnswerIndex: 2,
                 questionBackground: "totoro"),
                        
        Question(questionText: "In ‘Nurato’, the main character, Naruto Uzumaki, is a host for the powerful Nine-Tales. What creature is the Nine-Tails?",
                         possibleAnswers: [
                            "Wolf",
                            "Fox",
                            "Cat",
                            
                         ],
                         correctAnswerIndex: 1,
                 questionBackground: "naruto"),
        
        Question(questionText: "Yubaba is a witch in which animated film written and directed by Hayao Miyazaki?",
                         possibleAnswers: [
                            "Ocean Waves",
                            "Spirited Away",
                            "Castle in the Sky",
                            
                         ],
                         correctAnswerIndex: 1,
                 questionBackground: "spiritedaway"),
        
        Question(questionText: "Which anime series is set in the world of Amestris",
                         possibleAnswers: [
                            "Naruto",
                            "Pokemon",
                            "Fullmetal Alchemist",
                            
                         ],
                         correctAnswerIndex: 2,
                 questionBackground: "fullmetal"),
        
        Question(questionText: "In ‘Howl’s Moving Castle’, Sophie is transformed into an old woman by a witch. How old is Sophie as an old woman?",
                         possibleAnswers: [
                            "90 years old",
                            "75 years old",
                            "85 years old",
                            
                         ],
                         correctAnswerIndex: 0,
                 questionBackground: "howls"),
        
        Question(questionText: "Which series is set in the dark underworld of Victorian London?",
                         possibleAnswers: [
                            "Phantomhive",
                            "Black Butler",
                            "Blue Exorcist",
                            
                         ],
                         correctAnswerIndex: 1,
                 questionBackground: "blackbutler"),
        
        Question(questionText: "In ’Cowboy Bebop’ Ein is a genetically engineered dog with human levels of intelligence. Which breed of dog is Ein?",
                         possibleAnswers: [
                            "Great Dane",
                            "Dachshund",
                            "Pembrokeshire Welsh Corgi",
                            
                         ],
                         correctAnswerIndex: 2,
                 questionBackground: "cowboy"),
        
        Question(questionText: "Which sport is the focus of ‘Eyeshield 21’?",
                         possibleAnswers: [
                            "American Football",
                            "Soccer",
                            "Tenis",
                            
                         ],
                         correctAnswerIndex: 0,
                 questionBackground: "eyeshield"),
        
        Question(questionText: "In ‘Sailor Moon’ the anime character Makoto Kino transforms into...",
                         possibleAnswers: [
                            "Sailor Jupiter",
                            "Sailor Venus",
                            "Sailor Mars",
                            
                         ],
                         correctAnswerIndex: 0,
                 questionBackground: "sailormoon"),
        
        Question(questionText: "When was the first episode of Soul Eater released?",
                         possibleAnswers: [
                            "2005",
                            "2008",
                            "2010",
                            
                         ],
                         correctAnswerIndex: 1,
                 questionBackground: "soul"),
        
        Question(questionText: "What is the last name of Edward and Alphonse in the Fullmetal Alchemist series?",
                         possibleAnswers: [
                            "Eric",
                            "Edric",
                            "Elric",
                            
                         ],
                         correctAnswerIndex: 2,
                 questionBackground: "fullmetal"),
        
        Question(questionText: "The manga JoJo’s Bizarre Adventure is split into how many parts?",
                         possibleAnswers: [
                            "9",
                            "8",
                            "7",
                            
                         ],
                         correctAnswerIndex: 1,
                 questionBackground: "jojo"),
        
        Question(questionText: "The first anime was recorded in which year?",
                         possibleAnswers: [
                            "1925",
                            "1917",
                            "1921",
                            
                         ],
                         correctAnswerIndex: 1,
                 questionBackground: "astro")
        
        
        
    ]
}



