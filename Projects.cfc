component displayname = "Projects"
{
    This.dsn = "someDataSource";

    public any function getCurrentDate ()
    {
        return dateFormat(Now(), "dd/mm/yyyy");
    }
}