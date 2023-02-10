component displayname = "Product" output = "false" hint = "I am the Product Base Class"
{
    variables.instance = structNew();

    public any function init(required string name = '', required string description = '', required string price = '') 
        output = "false" hint = "I am the constructor method for the Product Class"
    {
        variables.instance.name = arguments.name;
        variables.instance.description = arguments.description;
        variables.instance.price = arguments.price;
        return this;
    }

    public any function getName() output="false"
    {
        return variables.instance.name;
    }

    public any function getDescription() output="false"
    {
        return variables.instance.description;
    }

    public any function getPrice() output="false"
    {
        return variables.instance.price;
    }
}