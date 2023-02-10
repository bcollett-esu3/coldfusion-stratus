<!--- <cfset objGreeting = createObject('component', 'greetings') />
<cfset strPersonalGreeting = objGreeting.personalGreeting("bob", "brown")/>
<cfoutput>
    #strPersonalGreeting#
</cfoutput> --->
<!--- <cfinvoke component="greetings" method="sayHello" returnvariable="strHello"/>
<cfoutput>
    #strHello#
</cfoutput>
<cfinvoke component="greetings" method="personalGreeting" returnvariable="strPersonalGreeting">
    <cfinvokeargument  name="firstname"  value="bob">
    <cfinvokeargument  name="lastname"  value="asdgasg">
</cfinvoke>
<cfoutput>
    #strPersonalGreeting#
</cfoutput> --->
<!--- <cfscript>
    objPerson = createObject('component', 'Person').init('bob','singer','male','01/25/58','brown');
</cfscript>
<cfdump  var="#objPerson.getMemento()#" label="Person - variables"/>
<cfdump  var="#objPerson.getFullName()#" label="Person - variables"/>
<cfdump  var="#objPerson.getAgeInYears()#" label="Person - variables"/>
--->

 <cfset objBook = 
    createObject('component',
        'store.Book')
        .init(
            author = 'John Farrar',
            totalPages = '382',
            name = 'Coldfusion Tutorial',
            description = 'Create robust professional web applications with CF',
            price = '30.99'
        ) />

<cfdump var="#objBook#" />


<cfset objDriver =
createObject('component',
    'car.Driver')
    .init(
        name = 'Stevey Jay',
        age = '31'
    ) />

<cfset objCar = 
createObject('component',
    'car.Car')
    .init(
        driver = objDriver
    ) />

<cfdump var="#objCar#" />

<cfoutput>
    <cfif objCar.hasDriver()>
        This car is being driven by #objDriver.getName()#,
        who is #objDriver.getAge()# years old.
    <cfelse>
        The car is not being driven at the moment.
    </cfif>
</cfoutput>

<cfdump var="#objDriver#"/>
<cfdump var="#objCar#" />
<cfscript>
    Date1 = "{ts '2022-11-14 17:22:00.000'}";
    Date2 = "{ts '2022-09-22 14:14:50'}";

    diff= DateDiff("n",Date1, now())

    writeOutput("difference in date is : " & diff &  " minutes or" & "<br/>" )

    diffAdd = DateAdd("n",-30,Date1)
    writeOutput("dateadd 30: " & diffAdd & " <br/>")


    writeoutput(now() & '<br/>')


    if (diffAdd <= now()) {
        writeoutput("<br/> this is <= <br/>")
    } else {
        writeoutput("<br/> error <br/>")
    }

    writeOutput("--------------------------------")

    cdiff = datediff("n", now(), Date1)
    if (cdiff <= 2 && cdiff >= 0)  {
        writeoutput("true")
    } else {
        writeoutput("false")
    }
</cfscript>


<!--- 

    AND (timeFrom LTE now() OR formReset EQ true)


    (timeFrom <= now() OR formReset == true)

--->