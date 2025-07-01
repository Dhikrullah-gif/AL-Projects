report 50101 "Vendor Report"
{
    ApplicationArea = All;
    Caption = 'Vendor Report';
    UsageCategory = ReportsAndAnalysis;
    ExcelLayout = 'Vendor Report.xlsx';
    DefaultLayout=Excel;

    dataset
    {
        dataitem(Vendor; Vendor)
        {
            column(Name; Name)
            {
            }
            column(PartnerType; "Partner Type")
            {
            }
            column(Balance; Balance)
            {
            }
            column(City; City)
            {
            }
            column(PurchasesLCY; "Purchases (LCY)")
            {
            }
        }
    }
    requestpage
    {
        layout
        {
            area(Content)
            {
                group(GroupName)
                {
                }
            }
        }
        actions
        {
            area(Processing)
            {
            }
        }
    }
}
