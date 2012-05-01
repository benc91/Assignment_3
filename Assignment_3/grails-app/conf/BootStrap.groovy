import assignment_3.Student
class BootStrap {

    def init = { servletContext ->
    }
	def benstu = new Student(name: "Ben", courseCode: "C2", applications: "2", notes: "n/a").save();
	def tomstu = new Student(name: "Tom", courseCode: "C1", applications: "1", notes: "n/a").save();

    def destroy = {
    }
}
