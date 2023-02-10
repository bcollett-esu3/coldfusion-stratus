component displayname = "Book" output = "false" hint = "I am the Book class" extends="Product"
{
    property name = "author" type = "string" default = "";
    property name = "totalPages" type = "string" default = "";
    property name = "name" type = "string" default = "";
    property name = "description" type = "string" default = "";
    property name = "price" type = "string" default = "";

    variables.instance = structNew();

    public any function init(required string author = '', required string totalPages = '',
        required string name = '', required string description = '', required string price = '')
    {
        variables.instance.author = arguments.author;
        variables.instance.totalPages = arguments.totalPages;
        
        super.init(
            name = arguments.name,
            description = arguments.description,
            price = arguments.price
        );

        return this;
    }

    public any function getAuthor() output = "false"
    {
        return variables.instance.author;
    }

    public any function getTotalPages() output = "false"
    {
        return variables.instance.totalPages;
    }
}