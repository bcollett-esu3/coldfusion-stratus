component displayname = "Driver" output = "false" hint = "I am the Driver Class."
{
    property name = "name" type = "string" default = "";
    property name = "age" type = "string" default = "";

    variables.instance = structNew();

    public any function init(required string name, required string age) output = false
    {
        variables.instance.name = arguments.name;
        variables.instance.age = arguments.age;

        return this;
    }


    public function getName() output = "false"
    {
        return variables.instance.name;
    }

    public function getAge() output = "false"
    {
        return variables.instance.age;
    }
}