docker-compose up -d

docker exec influx influx -execute "CREATE DATABASE loadrunner"

REM output=transactions,lg=${__machineName},vuser=${__threadNum},transaction=${__samplerName()},scenario=0 duration=${__Random(0,10)},status=0 ${__time(/1000,)}

REM docker exec -it vector vector top
