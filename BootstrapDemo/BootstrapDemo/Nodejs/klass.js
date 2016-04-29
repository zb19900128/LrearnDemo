var student = require('./student');//引用学生模块 new 
var teacher = require('./teacher');//引用老师模块 new 


function addTeacherAndStudents(teacherName , students) {
	
	teacher.addTeacher(teacherName)
	students.forEach(function(item,index) {
		student.addStudnet(item)
	})
}


exports.addTeacherAndStudents = addTeacherAndStudents      
//module.exports = addTeacherAndStudents 

 