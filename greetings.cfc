component displayname = "greetings" 
{
    public any function sayHello () 
    {
        var strHelloMessage = "Hello World!";
        return strHelloMessage;
    }

    public any function getname (required string firstname, required string lastname)
    {
        var strFullName = firstname & ' ' & lastname;
        return strFullName;
    }

    public any function personalGreeting (required string firstname, required string lastname)
    {
        var strHello = sayHello();
        var strFullName = getName(firstname ,lastname);
        var strHelloMessage = strHello & ' My name is ' & strFullName;
        return strHelloMessage;
    }
}