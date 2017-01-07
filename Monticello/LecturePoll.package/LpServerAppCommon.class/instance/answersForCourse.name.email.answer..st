as yet unclassified
answersForCourse: course name: name email: email answer: answer.
	answers insert: {#course->course.
						#name->name.
						#email->email.
						#answer->(NsSQLValue value: answer block: [
							'COALESCE(',
								'(SELECT DISTINCT answer FROM ',answers table,
									' WHERE ',"'course = :course AND ',"
										'LOWER(:answer)=LOWER(answer)',
								' LIMIT 1),:answer)'
						])}