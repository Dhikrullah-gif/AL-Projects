page 50103 getset
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    
    actions
    {
        area(Processing)
        {
            action(getset)
            {
                ApplicationArea = All;
                
                trigger OnAction()
                begin
                    Mycode.Run()
                end;
            }
        }
    }
    
    var
        Mycode: codeunit getset;
}











