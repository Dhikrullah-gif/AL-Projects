report 50103 "Report for Multiple Tables"
{
    ApplicationArea = All;
    DefaultLayout=RDLC;
    UsageCategory = Administration;
    
    RDLCLayout='MyRDLReport.rdl';


    dataset
    {
        dataitem(Customer; Customer)
        {
            DataItemTableView = sorting("No.");

            RequestFilterFields = "No.";

            PrintOnlyIfDetail = true;


            column(No_Customer; "No.")
            {
                IncludeCaption=true;
            }
            column(Name_Customer; Name)
            {
                IncludeCaption=true;
            }
            column(Phone_customer; "Phone No.")
            {
                IncludeCaption=true;
            }
            column(Address_Customer; Address)
            {
                IncludeCaption=true;
            }
            column(EMail_Customer; "E-Mail")
            {
                IncludeCaption=true;
            }
            dataitem(CustLedger; "Cust. Ledger Entry")
            {
                DataItemTableView = sorting("Entry No.");

                DataItemLink = "Customer No." = field("No.");

                column(EntryNo_CustLedgerEntry; "Entry No.")
                {
                    IncludeCaption = true;
                }
                column(CustomerNo_CustLedgerEntry; "Customer No.")
                {
                    IncludeCaption = true;
                }
                column(PostingDate_CustLedgerEntry; "Posting Date")
                {
                    IncludeCaption = true;
                }
                column(DocumentType_CustLedgerEntry; "Document Type")
                {
                    IncludeCaption = true;
                }
                column(DocumentNo_CustLedgerEntry; "Document No.")
                {
                    IncludeCaption = true;
                }
                column(CurrencyCode_CustLedgerEntry; "Currency Code")
                {
                    IncludeCaption = true;
                }
                column(Description_CustLedgerEntry; "Description")
                {
                    IncludeCaption = true;
                }
                column(Amount_CustLedgerEntry; "Amount")
                {
                    IncludeCaption = true;
                }
                column(OriginalAmtLCY_CustLedgerEntry; "Original Amt. (LCY)")
                {
                    IncludeCaption = true;
                }
                column(RemainingAmtLCY_CustLedgerEntry; "Remaining Amt. (LCY)")
                {
                    IncludeCaption = true;
                }
            dataitem(DetCustLedger; "Detailed Cust. Ledg. Entry")
            {
                DataItemTableView = sorting("entry No.");
                DataItemLink = "Cust. Ledger Entry No." = field("Entry No."), "Customer No." = field("Customer No."); 
                column(EntryNo_DetailedCustLedgerEntry; "Entry No.")
                {
                    IncludeCaption = true;
                }
                column(EntryType_DetailedCustLedgerEntry; "Entry Type")
                {
                    IncludeCaption = true;
                }
                column(PostingDate_DetailedCustLedgerEntry; "Posting Date")
                {
                    IncludeCaption = true;
                }
                column(DocumentType_DetailedCustLedgerEntry; "Document Type")
                {
                    IncludeCaption = true;
                }
                column(DocumentNo_DetailedCustLedgerEntry; "Document No.")
                {
                    IncludeCaption = true;
                }
                column(AmountLCY_DetailedCustLedgerEntry; "Amount (LCY)")
                {
                    IncludeCaption = true;
                }
                column(TransactionNo_DetailedCustLedgerEntry; "Transaction No.")
                {
                    IncludeCaption = true;
                }
                column(JournalBatchName_DetailedCustLedgerEntry; "Journal Batch Name")
                {
                    IncludeCaption = true;
                }
                column(DebitAmountLCY_DetailedCustLedgerEntry; "Debit Amount (LCY)")
                {
                    IncludeCaption = true;
                }
                column(CreditAmountLCY_DetailedCustLedgerEntry; "Credit Amount (LCY)")
                {
                    IncludeCaption = true;
                }
            }
            }
            dataitem(SalesHeader; "Sales Header")
            {
                DataItemTableView = sorting("Document Type", "No.");
                DataItemLink = "Sell-to Customer No." = field("No.");


                column(DocumentType_SalesHeader; "Document Type")
                {
                    IncludeCaption = true;
                }
                column(No_SalesHeader; "No.")
                {
                    IncludeCaption = true;
                }
                column(PostingDate_SalesHeader; "Posting Date")
                {
                    IncludeCaption = true;
                }
                column(PricesIncludingVAT_SalesHeader; "Prices Including VAT")
                {
                    IncludeCaption = true;
                }
                column(Amount_SalesHeader; "Amount")
                {
                    IncludeCaption = true;
                }
                
            }
        }
    }


    labels
    {
        Sales_Document_Caption = 'Sales Documents';

        Total_Caption = 'Total';
    }
    
    
}
