import NaturalLanguage

let text = "The American Red Cross was established in Washington, D.C., by Clara Barton."
//let tagger = NLTagger(tagSchemes: [.nameType])
//tagger.string = text
//let options: NLTagger.Options = [.omitPunctuation, .omitWhitespace, .joinNames]
//let tags: [NLTag] = [.personalName, .placeName, .organizationName]
//tagger.enumerateTags(in: text.startIndex..<text.endIndex, unit: .word, scheme: .nameType, options: options) { tag, tokenRange in
//    if let tag = tag, tags.contains(tag) {
//        print("\(text[tokenRange]): \(tag.rawValue)")
//    }
//    return true
//}
//
//
//func calculateSentiment(_ text: String) -> Double {
//    let sentimentTagger = NLTagger(tagSchemes: [.sentimentScore])
//    sentimentTagger.string = text
//    let (sentiment, _) = sentimentTagger.tag(at: text.startIndex, unit: .sentence, scheme: .sentimentScore)
//    return Double(sentiment?.rawValue ?? "0") ?? 0
//}
//
//// range -1.0 (negative) to 1.0 (positive)
//func detectSentiment(message: String) {
//    let tagger = NLTagger(tagSchemes: [.sentimentScore])
//    tagger.string = message
//
//    let (sentiment, _) = tagger.tag(at: message.startIndex, unit: .paragraph, scheme: .sentimentScore)
//
//    // it supports 7 languages: English, French, Italian, German, Spanish, Portuguese, and simplified Chinese.
//    guard let sentimentScore = sentiment?.rawValue else {
//        return
//    }
//
//    sentimentLabel?.text = "sentiment score: \(sentimentScore)"
//}


//var res = ""
//let tagger = NLTagger(tagSchemes: [.nameTypeOrLexicalClass, .lexicalClass, .lemma, .tokenType])
//tagger.string = text
//let range = text.startIndex ..< text.endIndex
//tagger.enumerateTags(in: range, unit: .word, scheme: .tokenType, options: []) {
//    (tag, range) in
//    guard let tag = tag else {
//        return true
//    }
//    res += "\(text[range])"
//    if tag == .punctuation {
//        if text[range] == "." {
//            res += "\n\n"
//        }
//    }
//    return true
//}
//print(res)
