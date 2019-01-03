# update package lists
sudo apt update
sudo apt-get update

# AWS CLI
sudo apt-get install awscli -y

# pip3
sudo apt install python3-pip -y


# Maven
# Sample project https://maven.apache.org/guides/getting-started/maven-in-five-minutes.html
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

# MySQL
# Sample database https://dev.mysql.com/doc/employee/en/
cd ~
sudo apt-get install mysql-server -y
git clone https://github.com/datacharmer/test_db.git
cd test_db
sudo mysql -t < employees.sql
sudo mysql -t < test_employees_sha.sql

