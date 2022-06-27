# Initializie score counters for each area
quality = 0
operations = 0
supplychain = 0
project = 0
data = 0
healthcare = 0

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
