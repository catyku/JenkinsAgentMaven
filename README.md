# JenkinsAgentMaven
Jenkins Agent with maven build evn

  
blog : https://blog.yslifes.com/archives/2854

### include
* openjdk 1.8
* maven 3.5
* jenkins/jnlp-slave


### start
* build this project with  
`build build -t jenkinsagent:maven3.5 .`
* generate jenkins Agent secret and Agent name
* run script with  
```
docker run \
    --name jenkins_maven_agent \
    -d --restart always \
    jenkinsagent:maven3.5 \
    -url http://10.0.2.15:8080 \
    c11d83024cd7b90b290545c0748c5777bd92d35fa9cd83bdbc6b44f5afc43f5f \
    maven_agent 
```
  
   maven_agent is Agent Name  
  url is Jenkins server url  
  c11... is Agent secret  