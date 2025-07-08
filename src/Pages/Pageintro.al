page 50104 PageIntro
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Documents;
    SourceTable = "Employee_";
    Caption = 'Employee Table Intro';
    
    
    layout
    {
        area(Content)
        {
            group(GroupName)
            {
                field(Empcode; rec.Empcode)
                {
                    
                }
                field(EmpName; Rec.EmpName)
                {
                    ApplicationArea = All;
                }
                field(Empdepartment; Rec.Empdepartment)
                {
                    ApplicationArea = All;
                }
            }
        }
    }
    
    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                
                trigger OnAction()
                begin
                    
                end;
            }
        }
    }
    
    var
        myInt: Integer;
}











