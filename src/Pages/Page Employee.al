page 50115 "Employee Page"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = Employeee;


    layout
    {
        area(Content)
        {
            group(General)
            {
                field(empcode; Rec."emp code")
                {
                    ApplicationArea = All;
                }
                field("emp name"; Rec."emp name")
                {
                    ApplicationArea = All;
                }
                field(salary; Rec.salary)
                {
                    ApplicationArea = All;
                }
                
            }


            group("Other Information")
            {
                field(DOJ; Rec.DOJ)
                {
                    ApplicationArea = All;
                }
                field(City; Rec.City)
                {
                    ApplicationArea = All;
                }
                field(Gender; Rec.Gender)
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
            action(Test)
            {
                ApplicationArea = All;
                trigger OnAction()
                begin
                        Message('Data saved in the table');
                end;
            }
        }
    }
    
    var
        myInt: Integer;
}




