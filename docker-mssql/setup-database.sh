for i in {1..50};
do
    /opt/mssql-tools/bin/sqlcmd -S localhost -U sa -P DB@APP205userMVS -d master -i create-database.sql
    if [ $? -eq 0 ]
    then
        echo "create-database.sql completed"
        break
    else
        echo "not ready yet..."
        sleep 1
    fi
done