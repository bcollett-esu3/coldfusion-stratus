component displayname = "UserDAO" output = "false" hint = "I am the UserDAO Class"
{
    variables.instances = {
        datasource = '';
    }

    public any function init(required datasource datasource)
    {
        variables.instance.datasource = arguments.datasource;
        return this;
    }

    public numeric function createNewUser(required User user)
    {
        var qInsert = '';
        var insertResult = 0;
        query(
            name="qInsert",
            datasource="#variables.instance.datasource.getDSName#",
            username="",
            password="",
            result="insertResult"
            //....//
        )

         return insertResult.generatedKey()
    }
}