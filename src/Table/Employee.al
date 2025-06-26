table 50101 Employeee
{
    Caption='Employee Table';
    DataClassification = ToBeClassified;
    
    fields
    {
        field(1; "emp code"; Code[10])
        {
            DataClassification = ToBeClassified;
            
        }
        field(10; "emp name"; Text[20])
        {
            DataClassification = ToBeClassified;
        }
        field(20; salary; Decimal)
        {
            DataClassification = ToBeClassified;
        }
        field(30; DOJ; Date)
        {
            DataClassification = ToBeClassified;
        }
        field(40; City; Option)
        {
            OptionMembers=Lagos,Abuja,Ilorin,Oyo;
            DataClassification = ToBeClassified;
        }
        field(50; Gender; Option)
        {
            OptionMembers=M,F,Notwillingtosay;
            DataClassification = ToBeClassified;
        }
    }
    
    keys
    {
        key(Key1; "emp code")
        {
            Clustered = true;
        }
        key(sk; City)
        {
            
        }
    }
    
    fieldgroups
    {
        // Add changes to field groups here
    }
    
    trigger OnInsert()
    begin
        Message('Data inserted');
    end;
    
    trigger OnModify()
    begin
        Message('Data Modified');
    end;
    
    trigger OnDelete()
    begin
        Message('Data Deleted');
    end;
    
    trigger OnRename()
    begin
        Message('Data Renamed');
    end;
    
}



