//: Playground - noun: a place where people can play

import Foundation

let inputString = "Delhi, India’s capital territory, is a massive metropolitan area in the country’s north. In Old Delhi, a neighborhood dating to the 1600s, stands the imposing Mughal-era Red Fort, a symbol of India, and the sprawling Jama Masjid mosque, whose courtyard accommodates 25,000 people. Nearby is Chandni Chowk, a vibrant bazaar filled with food carts, sweets shops and spice stalls."


// tag schemes: tag schemes are constants that are used to identify pieces of information that we want from the input text. Tag schemes asks tagger to look for informations like
// Token type: a contant to classify each character as a word, punctuation or a whitespace
// Language: a constant to determine langugage of the token
// LexicalClass: this constant determines class of each token. i.e. it determines part of speech for a word, type of punctuation for a punctuation or type of whitespace for a whitespace
// Name type: this constant looks for tokens that are part of a named entity. It will look for a person's name , organizational name and name of a place
// Lemma: this constant returns the stem of word.
let tagger = NSLinguisticTagger(tagSchemes: [NSLinguisticTagScheme.tokenType, .language, .lexicalClass, .nameType, .lemma], options: 0)

// Options are the way to tell API as how to split the text. We are asking to ignore any punctuations and any whitespaces. Also, if there is a named entity then join it together i.e instead of considering "New" "Delhi" as two entities, join them together as one which is "New Delhi"

let options: NSLinguisticTagger.Options = [NSLinguisticTagger.Options.omitPunctuation, .omitWhitespace, .joinNames]

var str = "Hello, playground"

func tokenizeString() {
    tagger.string = inputString
    
    let range = NSRange(location: 0, length: inputString.utf16.count)
    
    tagger.enumerateTags(in: range, unit: NSLinguisticTaggerUnit.word, scheme: NSLinguisticTagScheme.tokenType, options: options) { (tag, tokenRange, _) in
        
        let word = (inputString as NSString).substring(with: tokenRange)
        print(word)
    }
}

tokenizeString()
