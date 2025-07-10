pageextension 50104 ItemCardExtension extends "Item Card"
{
     
    actions
    {

        addafter(Functions)
        {
            action(ImportItemPicture)
            {
                ApplicationArea = All;
                Caption = 'Import Item Picture';

                trigger OnAction()
                var
                    ImageManagement: Codeunit ImageManagement;
                begin
                    ImageManagement.ImportItemPicture(Rec);
                end;

            }
            action(ExportItemPicture)
            {
                ApplicationArea = All;
                Caption = 'Export Item Picture';
                trigger OnAction()
                var
                    ImageManagement: Codeunit ImageManagement;
                begin
                    ImageManagement.ExportItemPicture(Rec);
                end;
            }
        }
        // Add changes to page actions here
    }
    
    var
        myInt: Integer;
}


















