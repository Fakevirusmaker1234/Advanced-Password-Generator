Function GeneratePassword(length, includeUpperCase, includeNumbers, includeSpecialChars)
    Dim lowerChars, upperChars, numbers, specialChars, allChars
    Dim password, i, charIndex, randomChar

    lowerChars = "abcdefghijklmnopqrstuvwxyz"
    upperChars = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
    numbers = "0123456789"
    specialChars = "!@#$%^&*()-_=+[]{}|;:,.<>?/"
    
    allChars = lowerChars
    If includeUpperCase Then allChars = allChars & upperChars
    If includeNumbers Then allChars = allChars & numbers
    If includeSpecialChars Then allChars = allChars & specialChars
    
    password = ""
    Randomize
    For i = 1 To length
        charIndex = Int((Len(allChars) * Rnd) + 1)
        randomChar = Mid(allChars, charIndex, 1)
        password = password & randomChar
    Next
    
    GeneratePassword = password
End Function

' Main part of the script
Sub Main()
    Dim length, includeUpperCase, includeNumbers, includeSpecialChars, password
    
    length = InputBox("Enter the desired length of the password:", "Password Generator")
    includeUpperCase = MsgBox("Include uppercase letters?", vbYesNo + vbQuestion, "Password Generator") = vbYes
    includeNumbers = MsgBox("Include numbers?", vbYesNo + vbQuestion, "Password Generator") = vbYes
    includeSpecialChars = MsgBox("Include special characters?", vbYesNo + vbQuestion, "Password Generator") = vbYes
    
    password = GeneratePassword(CInt(length), includeUpperCase, includeNumbers, includeSpecialChars)
    
    MsgBox "Generated Password: " & password, vbInformation, "Password Generator"
End Sub

Main
