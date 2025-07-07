page 50102 "Employeeee card"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = Employeeee;
    
    layout
    {
        area(Content)
        {
            group("Basic Info")
            {
                field("Employee No"; Rec."Employee No")
                {
                    ApplicationArea = All;
                    ToolTip = 'Employee Number';
                    ShowMandatory = true;
                    NotBlank = true;
                }
                field("Employee Name"; Rec."Employee Name")
                {
                    ApplicationArea = All;
                    ToolTip = 'Employee Name';
                    Editable= True;
                }
                field("blood group"; Rec."blood group")
                {
                    ApplicationArea = All;
                    ToolTip = 'blood group';
                    Editable= True;
                }
                field("Date of Birth"; Rec."Date of Birth")
                {
                    ApplicationArea = All;
                    ToolTip = 'Date of Birth';
                    Editable= True;
                }
            }
            group("Contact Info")
            {
                field("Door No"; Rec."Door No")
                {
                    ApplicationArea = All;
                    ToolTip = 'Door No';
                    Editable = true;
                }
                field("Street Name"; Rec."Street Name")
                {
                    ApplicationArea = All;
                    ToolTip = 'Street Name';
                    Editable = true;
                }
                field("City"; Rec."City")
                {
                    ApplicationArea = All;
                    ToolTip = 'City';
                    Editable = true;
                }
                field("State"; Rec."State")
                {
                    ApplicationArea = All;
                    ToolTip = 'State';
                    Editable = true;
                }
                field("Country"; Rec.Country)
                {
                    ApplicationArea = All;
                    ToolTip = 'Country';
                    Editable = true;
                }
                                
            }
            group("General Info")
            {
                field("Date of joining"; Rec."Date of Joining")
                {
                    ApplicationArea = All;
                    ToolTip = 'Date of joining';
                    Editable = true;
                }
                field("Department"; Rec."Department")
                {
                    ApplicationArea = All;
                    ToolTip = 'Department';
                    Editable = true;
                }
                field("Designation"; Rec."Designation")
                {
                    ApplicationArea = All;
                    ToolTip = 'Designation';
                    Editable = true;
                }

                field("Salary"; Rec."Salary")
                {
                    ApplicationArea = All;
                    ToolTip = 'Salary';
                    Editable = true;

                    /*Salary should be more than 15000*/
                    trigger OnValidate()
                    begin
                        if(Rec.Salary < 15000) then
                            Error('You have enterred a wrong salary');
                    end;
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
                ApplicationArea = All;
                ToolTip = 'Convert to lower case';

                trigger OnAction()
                begin
                    Rec."Employee Name" := LowerCase(Rec."Employee Name");
                end;

                
            }
        }
    }
    
    var
        myInt: Integer;
}




















