


var word = String()
var unsortedArray = [String]()

// Add your code below:
var line : String?
repeat {

    line = readLine()
    if line != nil {
        word.append(line!)
    }
    unsortedArray.append(word)
    word.removeAll()
} while line != nil



// Add your code below:

func sort(array: [String]) {
    var fake = array

    // *make swaps and passes variables*

    
    
    for i in 0 ..< fake.count  {
        print(fake)
        
        var leastIndex = i // least and i are the same

        for j in i+1 ..< fake.count{
            // j is one index ahead of leastIndex which is the previous

            //if element at j is less than element at leastIndex
            // let leastIndex = the element in j 
            if fake[j] < fake[leastIndex] {                
                
                leastIndex = j
                // Least is the same as i, BUT here Least is now equal to element j which is ahead of i in the array
                // so rather than being the same index/element as i, its now the same index/element j
                
                // this conditional sets the path for the next conditional on line 43
            }

        }
        // if the previous if-statement is true then this if-statement will swap i and least(j) because,
        // Least which was the same as i is no longer a thing
        if i != leastIndex{

            // index's stay the same when using swapAt but elements change            
            fake.swapAt(i, leastIndex)
            
            // after swap i and Least elements get their respectable places
        }
        

    }


}
sort(array: unsortedArray)

