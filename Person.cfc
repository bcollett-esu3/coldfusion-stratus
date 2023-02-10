component displayname = "Person" output = "false" hint = "I am person class" accessors = "true"
{
    property name = "firstname" type = "string" default = "" setter = "false";
    property name = "lastname" type = "string" default = "" setter = "false";
    property name = "gender" type = "string" default = "" setter = "false";
    property name = "dateofbirth" type = "string" default = "" setter = "false";
    property name = "haircolor" type = "string" default = "" setter = "false";


    public any function init (required string firstname = '', required string lastname = '', 
        required string gender = '', required string dateofbirth = '', required string haircolor = '')
    {
        /* setFirstName(arguments.firstname);
        setLastName(arguments.lastname);
        setGender(arguments.gender);
        setDateOfBirth(arguments.dateofbirth);
        setHairColor(arguments.haircolor); */
        variables.firstname = arguments.firstname;
        variables.lastname = arguments.lastname;
        variables.gender = arguments.gender;
        variables.dateofbirth = arguments.dateofbirth;
        variables.haircolor = arguments.haircolor;
        return this;
    }
    

    /* // FirstName
    public void function setFirstName (required string firstname)
    {
        variables.instance.firstname = arguments.firstname;
    }

    public string function getFirstname ()
    {
        return variables.instance.firstname;
    }

    
    // LastName
    public void function setLastName (required string lastname)
    {
        variables.instance.lastname = arguments.lastname;
    }
    
    public string function getLastName ()
    {
        return variables.instance.lastname;
    }

    // Gender
    public void function setGender (required string gender)
    {
        variables.instance.gender = arguments.gender;
    }

    public string function getGender ()
    {
        return variables.instance.gender;
    }

    // DateOfBirth
    public void function setDateOfBirth (required string dateofbirth)
    {
        variables.instance.dateofbirth = arguments.dateofbirth;
    }

    public string function getDateOfBirth ()
    {
        return variables.instance.dateofbirth;
    }

    // HairColor
    public void function setHairColor (required string haircolor)
    {
        variables.instance.haircolor = arguments.haircolor;
    }

    public string function getHairColor ()
    {
        return variables.instance.haircolor;
    } */

    // Utility
    public any function getMemento()
    {
        return variables;
    }

    public any function getFullName()
    {
        var strFullName = '';
        return strFullName = variables.firstname & ' ' & variables.lastname;
    }

    public any function getAgeInYears()
    {
        var strAgeInYears = dateDiff('yyyy', variables.dateofbirth, now());
        return strAgeInYears;
    }
}