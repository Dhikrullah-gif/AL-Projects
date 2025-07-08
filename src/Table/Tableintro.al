table 50103 Employee_
{
    DataClassification = ToBeClassified;
    Caption = 'Employee_ table';
    
    
    fields
    {
        field(1; Empcode; Code[20])
        {
            NotBlank = true;
            
        }
        field(2; EmpName; Text[50])
        {
            
        }
        field(3; Empdepartment; Text[50])
        {
            
        }
    }
    
    keys
    {
        key(PK; Empcode)
        {
            Clustered = true;
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




















