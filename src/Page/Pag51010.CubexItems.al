page 51010 CubexItems
{

    ApplicationArea = All;
    Caption = 'Cubex Items';
    PageType = List;
    SourceTable = "Cubex Items";
    UsageCategory = Lists;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field(entry_no; Rec.entry_no)
                {
                    ToolTip = 'Specifies the value of the entry_no field';
                    ApplicationArea = All;
                }
                field(Code; Rec.Code)
                {
                    ToolTip = 'Specifies the value of the code field';
                    ApplicationArea = All;
                }
                field(Description1; Rec.Description1)
                {
                    ToolTip = 'Specifies the value of the Description 1 field';
                    ApplicationArea = All;
                }
                field(Description2; Rec.Description2)
                {
                    ToolTip = 'Specifies the value of the Description 2 field';
                    ApplicationArea = All;
                }
                field(ItemType; Rec.ItemType)
                {
                    ToolTip = 'Specifies the value of the Item Type field';
                    ApplicationArea = All;
                }
                field(Substitute; Rec.Substitute)
                {
                    ToolTip = 'Specifies the value of the Substitute field';
                    ApplicationArea = All;
                }
                field(PackQty; Rec.PackQty)
                {
                    ToolTip = 'Specifies the value of the PackQty field';
                    ApplicationArea = All;
                }
                field(OrderQty; Rec.OrderQty)
                {
                    ToolTip = 'Specifies the value of the OrderQty field';
                    ApplicationArea = All;
                }
                field(AvgUnitCost; Rec.AvgUnitCost)
                {
                    ToolTip = 'Specifies the value of the AvgUnitCost field';
                    ApplicationArea = All;
                }
                field(IssueCost; Rec.IssueCost)
                {
                    ToolTip = 'Specifies the value of the IssueCost field';
                    ApplicationArea = All;
                }
                field(Cost; Rec.Cost)
                {
                    ToolTip = 'Specifies the value of the Cost field';
                    ApplicationArea = All;
                }
                field(Vendor; Rec.Vendor)
                {
                    ToolTip = 'Specifies the value of the Vendor field';
                    ApplicationArea = All;
                }
                field(VendorItem; Rec.VendorItem)
                {
                    ToolTip = 'Specifies the value of the VendorItem field';
                    ApplicationArea = All;
                }
                field(Mfg; Rec.Mfg)
                {
                    ToolTip = 'Specifies the value of the Mfg field';
                    ApplicationArea = All;
                }
                field(MfgItem; Rec.MfgItem)
                {
                    ToolTip = 'Specifies the value of the MfgItem field';
                    ApplicationArea = All;
                }
                field(Class; Rec.Class)
                {
                    ToolTip = 'Specifies the value of the Class field';
                    ApplicationArea = All;
                }
                field(LastIssue; Rec.LastIssue)
                {
                    ToolTip = 'Specifies the value of the LastIssue field';
                    ApplicationArea = All;
                }
                field(MaxSysQty; Rec.MaxSysQty)
                {
                    ToolTip = 'Specifies the value of the MaxSysQty field';
                    ApplicationArea = All;
                }
                field(LastReview; Rec.LastReview)
                {
                    ToolTip = 'Specifies the value of the LastReview field';
                    ApplicationArea = All;
                }
                field(RefDifPQty; Rec.RefDifPQty)
                {
                    ToolTip = 'Specifies the value of the RefDifPQty field';
                    ApplicationArea = All;
                }
                field(CField1; Rec.CField1)
                {
                    ToolTip = 'Specifies the value of the CField1 field';
                    ApplicationArea = All;
                }
                field(CField2; Rec.CField2)
                {
                    ToolTip = 'Specifies the value of the CField2 field';
                    ApplicationArea = All;
                }
                field(Weigh; Rec.Weigh)
                {
                    ToolTip = 'Specifies the value of the Weigh field';
                    ApplicationArea = All;
                }
                field(Weight; Rec.Weight)
                {
                    ToolTip = 'Specifies the value of the Weight field';
                    ApplicationArea = All;
                }
                field(UOM; Rec.UOM)
                {
                    ToolTip = 'Specifies the value of the UOM field';
                    ApplicationArea = All;
                }
                field(OrderUnit; Rec.OrderUnit)
                {
                    ToolTip = 'Specifies the value of the Order Unit field';
                    ApplicationArea = All;
                }
                field(OrderBulkUnit; Rec.OrderBulkUnit)
                {
                    ToolTip = 'Specifies the value of the Order Bulk Unit field';
                    ApplicationArea = All;
                }
                field(OrderBulkQty; Rec.OrderBulkQty)
                {
                    ToolTip = 'Specifies the value of the Order Bulk Qty. field';
                    ApplicationArea = All;
                }
                field(IssueUnit; Rec.IssueUnit)
                {
                    ToolTip = 'Specifies the value of the Issue Unit field';
                    ApplicationArea = All;
                }
                field(IssuePackUnit; Rec.IssuePackUnit)
                {
                    ToolTip = 'Specifies the value of the Issue Pack Unit field';
                    ApplicationArea = All;
                }
                field(PMV; Rec.PMV)
                {
                    ToolTip = 'Specifies the value of the PMV field';
                    ApplicationArea = All;
                }
                field(Status; Rec.Status)
                {
                    ToolTip = 'Specifies the value of the Status field';
                    ApplicationArea = All;
                }
                field(Active; Rec.Active)
                {
                    ToolTip = 'Specifies the value of the Active field';
                    ApplicationArea = All;
                }
                field(IssueUnitPrice; Rec.IssueUnitPrice)
                {
                    ToolTip = 'Specifies the value of the IssueUnitPrice field';
                    ApplicationArea = All;
                }
                field(IssueIssueCost; Rec.IssueIssueCost)
                {
                    ToolTip = 'Specifies the value of the Issue Issue Cost field';
                    ApplicationArea = All;
                }
                field(IssueUnitCost; Rec.IssueUnitCost)
                {
                    ToolTip = 'Specifies the value of the Issue Unit Cost field';
                    ApplicationArea = All;
                }
                field(OrderUnitPrice; Rec.OrderUnitPrice)
                {
                    ToolTip = 'Specifies the value of the Order Unit Price field';
                    ApplicationArea = All;
                }
                field(SupplierChoice; Rec.SupplierChoice)
                {
                    ToolTip = 'Specifies the value of the Supplier Choice field';
                    ApplicationArea = All;
                }
                field(OrderBulkUint1; Rec.OrderBulkUnit1)
                {
                    ToolTip = 'Specifies the value of the Order Bulk Unit1 field';
                    ApplicationArea = All;
                }
                field(OrderBulkQty1; Rec.OrderBulkQty1)
                {
                    ToolTip = 'Specifies the value of the Order Bulk Qty1 field';
                    ApplicationArea = All;
                }
                field(OrderUintPrice1; Rec.OrderUintPrice1)
                {
                    ToolTip = 'Specifies the value of the Order Unit Price1 field';
                    ApplicationArea = All;
                }
                field(Vendor1; Rec.Vendor1)
                {
                    ToolTip = 'Specifies the value of the Vendor1 field';
                    ApplicationArea = All;
                }
                field(VendorItem1; Rec.VendorItem1)
                {
                    ToolTip = 'Specifies the value of the Vendor Item1 field';
                    ApplicationArea = All;
                }
                field(Mfg1; Rec.Mfg1)
                {
                    ToolTip = 'Specifies the value of the Mfg1 field';
                    ApplicationArea = All;
                }
                field(MfgItem1; Rec.MfgItem1)
                {
                    ToolTip = 'Specifies the value of the MfgItem1 field';
                    ApplicationArea = All;
                }
                field(OrderBulkUint2; Rec.OrderBulkUint2)
                {
                    ToolTip = 'Specifies the value of the Order Bulk Unit2 field';
                    ApplicationArea = All;
                }
                field(OrderBulkQty2; Rec.OrderBulkQty2)
                {
                    ToolTip = 'Specifies the value of the Order Bulk Qty2 field';
                    ApplicationArea = All;
                }
                field(OrderUintPrice2; Rec.OrderUintPrice2)
                {
                    ToolTip = 'Specifies the value of the Order Unit Price2 field';
                    ApplicationArea = All;
                }
                field(Vendor2; Rec.Vendor2)
                {
                    ToolTip = 'Specifies the value of the Vendor2 field';
                    ApplicationArea = All;
                }
                field(VendorItem2; Rec.VendorItem2)
                {
                    ToolTip = 'Specifies the value of the Vendor Item2 field';
                    ApplicationArea = All;
                }
                field(Mfg2; Rec.Mfg2)
                {
                    ToolTip = 'Specifies the value of the Mfg2 field';
                    ApplicationArea = All;
                }
                field(MfgItem2; Rec.MfgItem2)
                {
                    ToolTip = 'Specifies the value of the MfgItem2 field';
                    ApplicationArea = All;
                }
                field(OrderBulkQty3; Rec.OrderBulkQty3)
                {
                    ToolTip = 'Specifies the value of the Order Bulk Qty3 field';
                    ApplicationArea = All;
                }
                field(OrderBulkUint3; Rec.OrderBulkUint3)
                {
                    ToolTip = 'Specifies the value of the Order Bulk Unit3 field';
                    ApplicationArea = All;
                }
                field(OrderUintPrice3; Rec.OrderUintPrice3)
                {
                    ToolTip = 'Specifies the value of the Order Unit Price3 field';
                    ApplicationArea = All;
                }
                field(Vendor3; Rec.Vendor3)
                {
                    ToolTip = 'Specifies the value of the Vendor3 field';
                    ApplicationArea = All;
                }
                field(VendorItem3; Rec.VendorItem3)
                {
                    ToolTip = 'Specifies the value of the Vendor Item3 field';
                    ApplicationArea = All;
                }
                field(Mfg3; Rec.Mfg3)
                {
                    ToolTip = 'Specifies the value of the Mfg3 field';
                    ApplicationArea = All;
                }
                field(MfgItem3; rec.MfgItem3)
                {
                    ToolTip = 'Specifies the value of the Mfg Item3 field';
                    ApplicationArea = all;
                }
                field(OverrideExclude; Rec.OverrideExclude)
                {
                    ToolTip = 'Specifies the value of the Override Exclude field';
                    ApplicationArea = All;
                }
                field(PharmacyOwned; Rec.PharmacyOwned)
                {
                    ToolTip = 'Specifies the value of the Pharmacy Owned field';
                    ApplicationArea = All;
                }
                field(NDCSUpplier1; Rec.NDCSUpplier1)
                {
                    ToolTip = 'Specifies the value of the NDCSupplier1 field';
                    ApplicationArea = All;
                }
                field(NDCSUpplier2; Rec.NDCSUpplier2)
                {
                    ToolTip = 'Specifies the value of the NDCSupplier2 field';
                    ApplicationArea = All;
                }
                field(NDCSUpplier3; Rec.NDCSUpplier3)
                {
                    ToolTip = 'Specifies the value of the NDCSupplier3 field';
                    ApplicationArea = All;
                }
                field(RxCheck; Rec.RxCheck)
                {
                    ToolTip = 'Specifies the value of the RxCheck field';
                    ApplicationArea = All;
                }
                field(DoseVolume; Rec.DoseVolume)
                {
                    ToolTip = 'Specifies the value of the Dose Volume field';
                    ApplicationArea = All;
                }
                field(DoseVolumeUnits; Rec.DoseVolumeUnits)
                {
                    ToolTip = 'Specifies the value of the Dose Volume Units field';
                    ApplicationArea = All;
                }
                field(DoseForm; Rec.DoseForm)
                {
                    ToolTip = 'Specifies the value of the Dose Form field';
                    ApplicationArea = All;
                }
                field(Strength; Rec.Strength)
                {
                    ToolTip = 'Specifies the value of the Strength field';
                    ApplicationArea = All;
                }
                field(StrengthUnits; Rec.StrengthUnits)
                {
                    ToolTip = 'Specifies the value of the Strength Units field';
                    ApplicationArea = All;
                }
                field(StrengthAmount; Rec.StrengthAmount)
                {
                    ToolTip = 'Specifies the value of the Strength Amount field';
                    ApplicationArea = All;
                }
                field(StrengthAmountUnits; Rec.StrengthAmountUnits)
                {
                    ToolTip = 'Specifies the value of the Strength Amount Units field';
                    ApplicationArea = All;
                }
                field(DpsePerWeight; Rec.DpsePerWeight)
                {
                    ToolTip = 'Specifies the value of the DpsePerWeight field';
                    ApplicationArea = All;
                }
                field(DosePerWeightUnits; Rec.DosePerWeightUnits)
                {
                    ToolTip = 'Specifies the value of the DosePerWeightUnits field';
                    ApplicationArea = All;
                }
                field(ItemDetailedDescription; Rec.ItemDetailedDescription)
                {
                    ToolTip = 'Specifies the value of the Item Detailed Description field';
                    ApplicationArea = All;
                }
                field(UserDefinedText; Rec.UserDefinedText)
                {
                    ToolTip = 'Specifies the value of the User Defined Text field';
                    ApplicationArea = All;
                }
                field(NDCNumber; Rec.NDCNumber)
                {
                    ToolTip = 'Specifies the value of the NDCNumber field';
                    ApplicationArea = All;
                }
                field(DrugSchedule; Rec.DrugSchedule)
                {
                    ToolTip = 'Specifies the value of the Drug Schedule field';
                    ApplicationArea = All;
                }
                field(ExternalItem; Rec.ExternalItem)
                {
                    ToolTip = 'Specifies the value of the External Item field';
                    ApplicationArea = All;
                }
                field(ExternalLocation; Rec.ExternalLocation)
                {
                    ToolTip = 'Specifies the value of the External Location field';
                    ApplicationArea = All;
                }
                field(Billable; Rec.Billable)
                {
                    ToolTip = 'Specifies the value of the Billable field';
                    ApplicationArea = All;
                }
                field(ShowDose; Rec.ShowDose)
                {
                    ToolTip = 'Specifies the value of the Show Dose field';
                    ApplicationArea = All;
                }
                field(DosInMassUnits; Rec.DosInMassUnits)
                {
                    ToolTip = 'Specifies the value of the Dos In Mass Units field';
                    ApplicationArea = All;
                }
                field(AskDose; Rec.AskDose)
                {
                    ToolTip = 'Specifies the value of the Ask Dose field';
                    ApplicationArea = All;
                }
                field(IssueWitnessRequired; Rec.IssueWitnessRequired)
                {
                    ToolTip = 'Specifies the value of the Issue Witness Required field';
                    ApplicationArea = All;
                }
                field(WasteWitnessRequired; Rec.WasteWitnessRequired)
                {
                    ToolTip = 'Specifies the value of the Waste Witness Required field';
                    ApplicationArea = All;
                }
                field(RestockWitnessRequired; Rec.RestockWitnessRequired)
                {
                    ToolTip = 'Specifies the value of the Restock Witness Required field';
                    ApplicationArea = All;
                }
                field(CycleCountWitnessRequired; Rec.CycleCountWitnessRequired)
                {
                    ToolTip = 'Specifies the value of the Cycle Count Witness Required field';
                    ApplicationArea = All;
                }
                field(CanReturnTORtrnBinOnly; Rec.CanReturnTORtrnBinOnly)
                {
                    ToolTip = 'Specifies the value of the Can Return To Rtrn Bin Only field';
                    ApplicationArea = All;
                }
                field(CanReturnToIssueLocation; Rec.CanReturnToIssueLocation)
                {
                    ToolTip = 'Specifies the value of the Can Return To Issue Location field';
                    ApplicationArea = All;
                }
                field(CountBackRequired; Rec.CountBackRequired)
                {
                    ToolTip = 'Specifies the value of the Count Back Required field';
                    ApplicationArea = All;
                }
                field(CNR; Rec.CNR)
                {
                    ToolTip = 'Specifies the value of the CNR field';
                    ApplicationArea = All;
                }
                field(CNI; Rec.CNI)
                {
                    ToolTip = 'Specifies the value of the CNI field';
                    ApplicationArea = All;
                }
                field(LNR; Rec.LNR)
                {
                    ToolTip = 'Specifies the value of the LNR field';
                    ApplicationArea = All;
                }
                field(LNI; Rec.LNI)
                {
                    ToolTip = 'Specifies the value of the LNI field';
                    ApplicationArea = All;
                }
                field(EXPR; Rec.EXPR)
                {
                    ToolTip = 'Specifies the value of the EXPR field';
                    ApplicationArea = All;
                }
                field(EXPI; Rec.EXPI)
                {
                    ToolTip = 'Specifies the value of the EXPI field';
                    ApplicationArea = All;
                }
                field(DN; Rec.DN)
                {
                    ToolTip = 'Specifies the value of the DN field';
                    ApplicationArea = All;
                }
                field(RefrigeratedItem; Rec.RefrigeratedItem)
                {
                    ToolTip = 'Specifies the value of the Refrigerated Item field';
                    ApplicationArea = All;
                }
                field(EmergencyItem; Rec.EmergencyItem)
                {
                    ToolTip = 'Specifies the value of the Emergency Item field';
                    ApplicationArea = All;
                }
                field(EmergencyDefaultQty; Rec.EmergencyDefaultQty)
                {
                    ToolTip = 'Specifies the value of the Emergency Default Qty. field';
                    ApplicationArea = All;
                }
                field(_ReqType; Rec._ReqType)
                {
                    ToolTip = 'Specifies the value of the _Req Type field';
                    ApplicationArea = All;
                }
            }
        }
    }
    actions
    {
        area(Processing)
        {
            action(GetItems)
            {
                Caption = 'Get Items';
                Image = GetLines;
                Promoted = true;
                PromotedIsBig = true;
                PromotedCategory = Process;
                ApplicationArea = All;

                trigger OnAction()
                var
                    GetItems: Codeunit "Cubex Get Items";
                begin
                    GetItems.Run();
                end;
            }

        }
    }



}
