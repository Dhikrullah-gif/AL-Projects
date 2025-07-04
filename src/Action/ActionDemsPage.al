page 50101 "Actions Dems"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Documents;
    
    
    layout
    {
        area(Content)
        {
            group(Input)
            {
                Caption = 'Input';
                field(Initialamount; Initialamount)
                {
                    ApplicationArea =  All;
                    ToolTip = 'Initial Amount';
                    Caption = 'Initial Amount';
                }
                field(NoOfYears; NoOfYears)
                {
                    ApplicationArea = All;
                }
                field(RateOfInterest; RateOfInterest)
                {
                    ApplicationArea = All;
                }
            }
            group(Output)
            {
                Caption = 'Output';
                field(FinalAmount; FinalAmount)
                {
                    ApplicationArea = All;
                    Editable = false;
                }
            }
        }
    }
    
    actions
    {
        area(Processing)
        {
            action("Calculate Simple Interest")
            {
                ApplicationArea = All;
                Caption = 'Calculate the Interest';
                Image = ExecuteBatch;
                ToolTip = 'Interest Calculation';
                trigger OnAction()
                begin
                    FinalAmount := Initialamount * (1 + RateOfInterest * NoOfYears);
                    Message('%1', FinalAmount);
                end;
            }
        }
        area(Navigation)
        {
            action("Customer")
            {
                ApplicationArea = All;
                Caption = 'Customer Details';
                RunObject = page "Customer Card";
            }
            action("Sales")
            {
                ApplicationArea = All;
                Caption = 'Sales Details';
                RunObject = page "Sales Analysis View Card";
            }
               
        }
        area(Creation)
        {
            action("New Customer")
            {
                ApplicationArea = All;
                RunObject = page "Customer Card";
                Image = Post;

            }
        }
    }
    
    var
        Initialamount: Decimal;
        NoOfYears: Integer;
        RateOfInterest: Decimal;
        FinalAmount: Decimal;
}


































