CREATE TABLE incident (
    id INTEGER PRIMARY KEY GENERATED BY DEFAULT AS IDENTITY,
    student_marss INTEGER REFERENCES student(marss) NOT NULL,
    staff_submitter INTEGER REFERENCES staff(id) NOT NULL,
    school INTEGER REFERENCES school(id) NOT NULL,
    date  DATE NOT NULL,
    day_of_the_week TEXT NOT NULL,
    seclusion BOOLEAN NOT NULL,
    resonable_force BOOLEAN NOT NULL,
    student_injury BOOLEAN NOT NULL,
    staff_injury BOOLEAN NOT NULL,
    law_enforcement BOOLEAN NOT NULL,
    room_location TEXT NOT NULL,
    hold_1 INTEGER REFERENCES holds(id),
    hold_2 INTEGER REFERENCES holds(id),
    hold_3 INTEGER REFERENCES holds(id),
    hold_4 INTEGER REFERENCES holds(id),
    hold_5 INTEGER REFERENCES holds(id),
    antecedent TEXT NOT NULL,
    contributing_variables TEXT NOT NULL,
    people_involved TEXT NOT NULL,
    major_disruption TEXT NOT NULL,
    approved BOOLEAN DEFAULT false,
    approver INTEGER REFERENCES staff(id) NOT NULL
);