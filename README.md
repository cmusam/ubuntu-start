# ubuntu-start
Install AWS CLI, pip3, Maven (with sample project), MySQL (with sample database) on Ubuntu Server 18.04 LTS (HVM)

This script has been tested on a newly launched AWS EC2 instance running Ubuntu Server 18.04 LTS. The list of installed packages were often found to be useful for weekly assignments and the team project for the [15-619 Cloud Computing](http://www.cs.cmu.edu/~msakr/15619-f18/) course.

### update package lists
```Bash
sudo apt update
sudo apt-get update
```

### AWS CLI
```Bash
sudo apt-get install awscli -y
```

### pip3
```Bash
sudo apt install python3-pip -y
```

### Maven
Sample project https://maven.apache.org/guides/getting-started/maven-in-five-minutes.html
```Bash
sudo apt-get install maven -y

cd ~
mvn archetype:generate \
    -DgroupId=com.mycompany.app \
    -DartifactId=my-app \
    -DarchetypeArtifactId=maven-archetype-quickstart \
    -DarchetypeVersion=1.4 \
    -DinteractiveMode=false

cd my-app
mvn package
java -cp target/my-app-1.0-SNAPSHOT.jar com.mycompany.app.App
mvn exec:java -Dexec.mainClass="com.mycompany.app.App"
```

### MySQL
Sample database https://dev.mysql.com/doc/employee/en/

Database: `employees`

Tables: `current_dept_emp, departments, dept_emp, dept_emp_latest_date, dept_manager, employees, salaries, titles`
```Bash
cd ~
sudo apt-get install mysql-server -y
git clone https://github.com/datacharmer/test_db.git
cd test_db
sudo mysql -t < employees.sql
sudo mysql -t < test_employees_sha.sql
```
