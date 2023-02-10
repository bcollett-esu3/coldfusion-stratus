component displayname = "Car" output="false" hint="I am the Car Class."
{
    property name="engine" type="any" default="";
    property name="driver" type="any" default="";

    variables.instance = structNew();

    public any function init(any driver) output="false"
    {
        variables.instance.engine = createObject('component', 'engine');

        if (structKeyExists(arguments, 'driver'))
        {
            variables.instance.driver = arguments.driver;
        }
        return this;
    }

    public any function getEngine() output="false"
    {
        return variables.instance.engine;
    }

    public boolean function hasDriver() output="false"
    {
        return structKeyExists(variables.instance, 'driver');
    }
}