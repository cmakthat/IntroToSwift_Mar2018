// ## Problem: “How do we calculate a student’s grade for the term?”
//
// Each term has a midterm exam, a final exam, and a paper to write.
// Each piece has a weighted percentage
// All exams and papers are scored out of 100
//
// Exam weight is 30%, paper weight is 40%
//
// formula:
// (midtermExam * examWeight) + (finalExam * examWeight) + (paperScore * paperWeight)
//
// We need to convert the student’s grade to an overall grade and letter grade for the term
//
//
// Grade Scale:
// A > 80, B > 70, C > 60, D > 50, F < 50


// Constant
let examWeight = 0.3
let paperWeight = 0.4


// Student 1
let student1Name = "John"
let midtermExamScore1 = Double(90)
let finalExamScore1 = Double(80)
let paperScore1 = Double(70)

let student1Grade = (midtermExamScore1 * examWeight) + (paperScore1 * paperWeight) + (finalExamScore1 * examWeight)


// Student 2
let student2Name = "Joe"
let midtermExamScore2 = Double(75)
let finalExamScore2 = Double(40)
let paperScore2 = Double(65)

let student2Grade = (midtermExamScore2 * examWeight) + (paperScore2 * paperWeight) + (finalExamScore2 * examWeight)


func finalGrade(midtermExamScoreParam: Double, finalExamScoreParam: Double, paperScoreParam: Double) -> Double{
    
    let gradeTotal = (midtermExamScoreParam * examWeight) + (paperScoreParam * paperWeight) + (finalExamScoreParam * examWeight)
    return gradeTotal
}

// Student 3

let student3Name = "Jane"
let midtermExamScore3 = Double(80)
let finalExamScore3 = Double(70)
let paperScore3 = Double(86)

finalGrade(midtermExamScoreParam: midtermExamScore3, finalExamScoreParam: finalExamScore3, paperScoreParam: paperScore3)


class Score{
    
    var studentName: String
    var midtermExamScore: Double
    var finalExamScore: Double
    var paperScore: Double
    
    init(midtermExamScoreParam: Double, finalExamScoreParam: Double, paperScoreParam: Double, studentNameParam: String) {
        
        studentName = studentNameParam
        midtermExamScore = midtermExamScoreParam
        finalExamScore = finalExamScoreParam
        paperScore = paperScoreParam
    }
    
    func calculateFinalGrade() -> Double{
        
        let gradeTotal = (midtermExamScore * examWeight) + (paperScore * paperWeight) + (finalExamScore * examWeight)
        return gradeTotal
    }
    
    func letterGrade() -> String{
        
        let gradeTotal = calculateFinalGrade()
        
        if gradeTotal > 80 {
            
            return "A"
        }
        else if gradeTotal > 70 {
            
            return "B"
        }
        else if gradeTotal > 60 {
            
            return "C"
        }
        else if gradeTotal > 50 {
            
            return "D"
        }
        else{
            
            return "F"
        }
    }
    
    func totalGradeAndALetterGradeAsASingleLine(){
        
        let gradeTotal = calculateFinalGrade()
        let letterGradeParam = letterGrade()
        
        print( "Your final grade \(gradeTotal) and your letter grade is \(letterGradeParam)")
    }
    
}





// Student 4

let score1 = Score(midtermExamScoreParam: 90.0, finalExamScoreParam: 80.0, paperScoreParam: 70.0, studentNameParam: "Bob")
score1.calculateFinalGrade()
score1.letterGrade()
score1.totalGradeAndALetterGradeAsASingleLine()
//let sentence = score1.totalGradeAndALetterGradeAsASingleLine()
//print(sentence)


let score2 = Score(midtermExamScoreParam: 40.0, finalExamScoreParam: 30.0, paperScoreParam: 50.0, studentNameParam: "John")
score2.calculateFinalGrade()
score2.letterGrade()
//let sentence2 = score2.totalGradeAndALetterGradeAsASingleLine()
//print(sentence2)











class Employee {
    
    var name: String = ""
    var age: Int = 1
    var gender: String = ""
    
    func introduceMyself(){
        
        print("My name is \(name). I am \(age) years old. I am \(gender)")
    }
}


let employeeObject = Employee()
employeeObject.name = "Employee 1"
employeeObject.age = 23
employeeObject.gender = "Male"
//employeeObject.introduceMyself()


let employeeObject2 = Employee()
employeeObject2.name = "Employee 2"
//employeeObject2.introduceMyself()































