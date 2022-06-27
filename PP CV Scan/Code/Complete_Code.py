# Import required libraries
import PyPDF2
import textract

import re
import string
import pandas as pd
import matplotlib.pyplot as plt

# %matplotlib inline

# Open pdf file
pdfFileObj = open(r'C:\Users\Rimsha\Documents\PP CV Scan\Files\resume Template.pdf', 'rb')

# Read file
pdfReader = PyPDF2.PdfFileReader(pdfFileObj)

# Get total number of pages
num_pages = pdfReader.numPages

# Initialize a count for the number of pages
count = 0

# Initialize a text empty string variable
text = ""

# Extract text from every page on the file
while count < num_pages:
    pageObj = pdfReader.getPage(count)
    count += 1
    text += pageObj.extractText()

# Convert all strings to lowercase
text = text.lower()

# Remove numbers
text = re.sub(r'\d+', '', text)

# Remove punctuation
text = text.translate(str.maketrans('', '', string.punctuation))

# Create dictionary
terms = {'Front-end Development': ['HTML', 'CSS', 'JavaScript', 'Html', 'DOTNET', 'ASPNET',
                                   'Bootstrap', 'css', 'entity framework', 'Bootstrap', ' SASS (CSS preprocessor)',
                                   'jQuery', 'React', 'PHP', 'Python', 'Frameworks', 'Web'],
         'Back-end Development': ['C', 'C++', 'Csharp', 'PHP', 'php', 'SQL',
                                  'Git', 'DataBase', 'Ruby', 'Microsoft', 'MySQL', 'MS SQL',
                                  'Android studio', 'Visual Studio', 'SQL Server Management Studio', 'xamp'],
         'Tools and Techniques': ['Android studio', 'Visual Studio', 'SQL Server Management Studio', 'xamp',
                                  'Microsoft Office', 'Gimp', 'Ink Scape', 'Photoshop', 'Illustrator', 'Audacity',
                                  'Microsoft Visual', 'MS Visio Pro'],
         'Data Analytics': ['python', 'pandas', 'Data Visualization', 'Data Cleaning', 'MATLAB', 'R', 'Python',
                            'SQL and NoSQL', 'Machine Learning', 'Linear Algebra', 'Calculus', 'ML',
                            'Probability and statistics'],
         'Skills': ['Android Development', '.Net Development', 'Web Development (HTML 5)',
                    'Android studio', 'Visual Studio', 'SQL Server Management Studio', 'xamp'],
         'Other Skills': ['technical skills', 'challenging ', 'development ', 'new ideas', 'growth',
                          'Communication', 'teamwork', 'time Management', 'Critical Thinking ']}

# Initialize score counters for each area
frontEnd = 0
backEnd = 0
tools = 0
skills = 0
data = 0
others = 0

# Create an empty list where the scores will be stored
scores = []

# Obtain the scores for each area
for area in terms.keys():

    if area == 'Front-end Development':
        for word in terms[area]:
            if word in text:
                frontEnd += 1
        scores.append(frontEnd)

    elif area == 'Back-end Development':
        for word in terms[area]:
            if word in text:
                backEnd += 1
        scores.append(backEnd)

    elif area == 'Tools and Techniques':
        for word in terms[area]:
            if word in text:
                tools += 1
        scores.append(tools)

    elif area == 'Skills':
        for word in terms[area]:
            if word in text:
                skills += 1
        scores.append(skills)

    elif area == 'Data analytics':
        for word in terms[area]:
            if word in text:
                data += 1
        scores.append(data)

    else:
        for word in terms[area]:
            if word in text:
                others += 1
        scores.append(others)

# Create a data frame with the scores summary
summary = pd.DataFrame(scores, index=terms.keys(), columns=['score']).sort_values(by='score', ascending=False)
# displaying the DataFrame
summary.style
# Create pie chart visualization
pie = plt.figure(figsize=(10, 10))
plt.pie(summary['score'], labels=summary.index, explode=(0.1, 0, 0, 0, 0, 0), autopct='%2.0f%%', shadow=True,
        startangle=90)
plt.title('Resume Score')
plt.axis('equal')
plt.show()

# Save pie chart as a .png file
pie.savefig('resume_screening_results.png')
