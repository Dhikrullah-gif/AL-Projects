table 50102 "Employeeee"
{
    DataClassification = ToBeClassified;
    
    fields
    {
        field(1; "Employee No"; Code[20])
        {
            
            
        }
        field(10; "Employee Name"; Text[30])
        {
            
            
        }
        field(20; "Door No"; Text[30])
        {
            
            
        }
        field(40; "Street Name"; Text[50])
        {
            
            
        }
        field(50; "City"; Text[15])
        {
            
            
        }
        field(60; "State"; Option)
        {
            OptionMembers = "Kwara", "Lagos", "Ilorin", "Abuja";
            
        }
        field(70; "Country"; Option)
        {
            OptionMembers = "Nigeria";
        }
        field(100; "Date of Birth"; Date)
        {
            
        }
        field(110; "Date of Joining"; Date)
        {
            
        }
        field(120; "Department"; Text[15])
        {
            
        }
        field(130; "Designation"; Option)
        {
            OptionMembers = "Jr programmer", "Snr Programmer", "Team Lead", "Manager", "Senior Manager";
        }
        field(140; "blood group"; Text[3])
        {
            
        }
        field(150; Salary; Decimal)
        {
            
        }

    }
    
    keys
    {
        key(PK; "Employee No")
        {
            
        }
        key(Name; "Employee Name")
        {
            
        }
    }
    
    fieldgroups
    {
        // Add changes to field groups here
    }
    
    var
        myInt: Integer;
    
    trigger OnInsert()
    begin
        
    end;
    
    trigger OnModify()
    begin
        
    end;
    
    trigger OnDelete()
    begin
        
    end;
    
    trigger OnRename()
    begin
        
    end;
    
}













