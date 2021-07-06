table 51010 "Cubex Items"
{
    Caption = 'Cubex Items';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; entry_no; Integer)
        {
            Caption = 'entry_no';
            DataClassification = CustomerContent;
        }
        field(2; Code; Text[100])
        {
            Caption = 'code';
            DataClassification = CustomerContent;
        }
        field(3; Description1; Text[250])
        {
            Caption = 'Description 1';
            DataClassification = CustomerContent;
        }
        field(4; Description2; Text[250])
        {
            Caption = 'Description 2';
            DataClassification = CustomerContent;
        }
        field(5; ItemType; Text[20])
        {
            Caption = 'Item Type';
            DataClassification = CustomerContent;
        }
        field(6; Substitute; Text[10])
        {
            Caption = 'Substitute';
            DataClassification = CustomerContent;
        }
        field(7; PackQty; Text[10])
        {
            Caption = 'PackQty';
            DataClassification = CustomerContent;
        }
        field(8; OrderQty; Text[10])
        {
            Caption = 'OrderQty';
            DataClassification = CustomerContent;
        }
        field(9; AvgUnitCost; Text[10])
        {
            Caption = 'AvgUnitCost';
            DataClassification = CustomerContent;
        }
        field(10; IssueCost; Text[10])
        {
            Caption = 'IssueCost';
            DataClassification = CustomerContent;
        }
        field(11; Cost; Text[10])
        {
            Caption = 'Cost';
            DataClassification = CustomerContent;
        }
        field(12; Vendor; Text[200])
        {
            Caption = 'Vendor';
            DataClassification = CustomerContent;
        }
        field(13; VendorItem; Text[100])
        {
            Caption = 'VendorItem';
            DataClassification = CustomerContent;
        }
        field(14; Mfg; Text[50])
        {
            Caption = 'Mfg';
            DataClassification = CustomerContent;
        }
        field(15; MfgItem; Text[50])
        {
            Caption = 'MfgItem';
            DataClassification = CustomerContent;
        }
        field(16; Class; Text[100])
        {
            Caption = 'Class';
            DataClassification = CustomerContent;
        }
        field(17; "LastReview"; Text[80])
        {
            Caption = 'LastReview';
            DataClassification = CustomerContent;
        }
        field(18; MaxSysQty; Text[20])
        {
            Caption = 'MaxSysQty';
            DataClassification = CustomerContent;
        }
        field(19; LastIssue; Text[50])
        {
            Caption = 'LastIssue';
            DataClassification = CustomerContent;
        }
        field(20; RefDifPQty; Text[10])
        {
            Caption = 'RefDifPQty';
            DataClassification = CustomerContent;
        }
        field(21; CField1; Text[100])
        {
            Caption = 'CField1';
            DataClassification = CustomerContent;
        }
        field(22; CField2; Text[100])
        {
            Caption = 'CField2';
            DataClassification = CustomerContent;
        }
        field(23; Weigh; Text[10])
        {
            Caption = 'Weigh';
            DataClassification = CustomerContent;
        }
        field(24; Weight; Text[20])
        {
            Caption = 'Weight';
            DataClassification = CustomerContent;

        }
        field(25; UOM; Text[30])
        {
            Caption = 'UOM';
            DataClassification = CustomerContent;
        }
        field(26; OrderUnit; Text[30])
        {
            Caption = 'Order Unit';
            DataClassification = CustomerContent;
        }
        field(27; OrderBulkUnit; Text[30])
        {
            Caption = 'Order Bulk Unit';
            DataClassification = CustomerContent;
        }
        field(28; OrderBulkQty; Text[30])
        {
            Caption = 'Order Bulk Qty.';
            DataClassification = CustomerContent;
        }
        field(29; IssueUnit; Text[30])
        {
            Caption = 'Issue Unit';
            DataClassification = CustomerContent;
        }
        field(30; IssuePackUnit; Text[30])
        {
            Caption = 'Issue Pack Unit';
            DataClassification = CustomerContent;
        }
        field(31; PMV; Text[30])
        {
            Caption = 'PMV';
            DataClassification = CustomerContent;
        }
        field(32; Status; Text[30])
        {
            Caption = 'Status';
            DataClassification = CustomerContent;
        }
        field(33; Active; Text[10])
        {
            Caption = 'Active';
            DataClassification = CustomerContent;
        }
        field(34; IssueUnitPrice; Text[30])
        {
            Caption = 'IssueUnitPrice';
            DataClassification = CustomerContent;
        }
        field(35; IssueIssueCost; Text[30])
        {
            Caption = 'Issue Issue Cost';
            DataClassification = CustomerContent;
        }
        field(36; IssueUnitCost; Text[30])
        {
            Caption = 'Issue Unit Cost';
            DataClassification = CustomerContent;
        }
        field(37; OrderUnitPrice; Text[30])
        {
            Caption = 'Order Unit Price';
            DataClassification = CustomerContent;
        }
        field(38; SupplierChoice; Text[30])
        {
            Caption = 'Supplier Choice';
            DataClassification = CustomerContent;
        }
        field(39; OrderBulkUnit1; Text[30])
        {
            Caption = 'Order Bulk Unit1';
            DataClassification = CustomerContent;
        }
        field(40; OrderBulkQty1; Text[30])
        {
            Caption = 'Order Bulk Qty1';
            DataClassification = CustomerContent;
        }
        field(41; OrderUintPrice1; Text[30])
        {
            Caption = 'Order Unit Price1';
            DataClassification = CustomerContent;
        }
        field(42; Vendor1; Text[200])
        {
            Caption = 'Vendor1';
            DataClassification = CustomerContent;
        }
        field(43; VendorItem1; Text[30])
        {
            Caption = 'Vendor Item1';
            DataClassification = CustomerContent;
        }
        field(44; Mfg1; Text[30])
        {
            Caption = 'Mfg1';
            DataClassification = CustomerContent;
        }
        field(45; MfgItem1; Text[30])
        {
            Caption = 'MfgItem1';
            DataClassification = CustomerContent;
        }
        field(46; OrderBulkUint2; Text[30])
        {
            Caption = 'Order Bulk Unit2';
            DataClassification = CustomerContent;
        }
        field(47; OrderBulkQty2; Text[30])
        {
            Caption = 'Order Bulk Qty2';
            DataClassification = CustomerContent;
        }
        field(48; OrderUintPrice2; Text[30])
        {
            Caption = 'Order Unit Price2';
            DataClassification = CustomerContent;
        }
        field(49; Vendor2; Text[200])
        {
            Caption = 'Vendor2';
            DataClassification = CustomerContent;
        }
        field(50; VendorItem2; Text[30])
        {
            Caption = 'Vendor Item2';
            DataClassification = CustomerContent;
        }
        field(51; Mfg2; Text[30])
        {
            Caption = 'Mfg2';
            DataClassification = CustomerContent;
        }
        field(52; MfgItem2; Text[30])
        {
            Caption = 'MfgItem2';
            DataClassification = CustomerContent;
        }
        field(53; OrderBulkUint3; Text[30])
        {
            Caption = 'Order Bulk Unit3';
            DataClassification = CustomerContent;
        }
        field(54; OrderBulkQty3; Text[30])
        {
            Caption = 'Order Bulk Qty3';
            DataClassification = CustomerContent;
        }
        field(55; OrderUintPrice3; Text[30])
        {
            Caption = 'Order Unit Price3';
            DataClassification = CustomerContent;
        }
        field(56; Vendor3; Text[200])
        {
            Caption = 'Vendor3';
            DataClassification = CustomerContent;
        }
        field(57; VendorItem3; Text[30])
        {
            Caption = 'Vendor Item3';
            DataClassification = CustomerContent;
        }
        field(58; Mfg3; Text[30])
        {
            Caption = 'Mfg3';
            DataClassification = CustomerContent;
        }
        field(59; MfgItem3; Text[30])
        {
            Caption = 'MfgItem3';
            DataClassification = CustomerContent;
        }
        field(60; OverrideExclude; Text[10])
        {
            Caption = 'Override Exclude';
            DataClassification = CustomerContent;
        }
        field(61; PharmacyOwned; Text[10])
        {
            Caption = 'Pharmacy Owned';
            DataClassification = CustomerContent;
        }
        field(62; NDCSUpplier1; Text[10])
        {
            Caption = 'NDCSupplier1';
            DataClassification = CustomerContent;
        }
        field(63; NDCSUpplier2; Text[10])
        {
            Caption = 'NDCSupplier2';
            DataClassification = CustomerContent;
        }
        field(64; NDCSUpplier3; Text[10])
        {
            Caption = 'NDCSupplier3';
            DataClassification = CustomerContent;
        }
        field(65; RxCheck; Text[10])
        {
            Caption = 'RxCheck';
            DataClassification = CustomerContent;
        }
        field(66; DoseVolume; Text[10])
        {
            Caption = 'Dose Volume';
            DataClassification = CustomerContent;
        }
        field(67; DoseVolumeUnits; Text[30])
        {
            Caption = 'Dose Volume Units';
            DataClassification = CustomerContent;
        }
        field(68; DoseForm; Text[10])
        {
            Caption = 'Dose Form';
            DataClassification = CustomerContent;
        }
        field(69; Strength; Text[20])
        {
            Caption = 'Strength';
            DataClassification = CustomerContent;
        }
        field(70; StrengthUnits; Text[10])
        {
            Caption = 'Strength Units';
            DataClassification = CustomerContent;
        }
        field(71; StrengthAmount; Text[10])
        {
            Caption = 'Strength Amount';
            DataClassification = CustomerContent;
        }
        field(72; StrengthAmountUnits; Text[10])
        {
            Caption = 'Strength Amount Units';
            DataClassification = CustomerContent;
        }
        field(73; DpsePerWeight; Text[10])
        {
            Caption = 'DpsePerWeight';
            DataClassification = CustomerContent;
        }
        field(74; DosePerWeightUnits; Text[10])
        {
            Caption = 'DosePerWeightUnits';
            DataClassification = CustomerContent;
        }
        field(75; ItemDetailedDescription; Text[30])
        {
            Caption = 'Item Detailed Description';
            DataClassification = CustomerContent;
        }
        field(76; UserDefinedText; Text[400])
        {
            Caption = 'User Defined Text';
            DataClassification = CustomerContent;
        }
        field(77; NDCNumber; Text[20])
        {
            Caption = 'NDCNumber';
            DataClassification = CustomerContent;
        }
        field(78; DrugSchedule; Text[20])
        {
            Caption = 'Drug Schedule';
            DataClassification = CustomerContent;
        }
        field(79; ExternalItem; Text[30])
        {
            Caption = 'External Item';
            DataClassification = CustomerContent;
        }
        field(80; ExternalLocation; Text[30])
        {
            Caption = 'External Location';
            DataClassification = CustomerContent;
        }
        field(81; Billable; Text[10])
        {
            Caption = 'Billable';
            DataClassification = CustomerContent;
        }
        field(82; ShowDose; Text[10])
        {
            Caption = 'Show Dose';
            DataClassification = CustomerContent;
        }
        field(83; DosInMassUnits; Text[10])
        {
            Caption = 'Dos In Mass Units';
            DataClassification = CustomerContent;
        }
        field(84; AskDose; Text[10])
        {
            Caption = 'Ask Dose';
            DataClassification = CustomerContent;
        }
        field(85; IssueWitnessRequired; Text[10])
        {
            Caption = 'Issue Witness Required';
            DataClassification = CustomerContent;
        }
        field(86; WasteWitnessRequired; Text[10])
        {
            Caption = 'Waste Witness Required';
            DataClassification = CustomerContent;
        }
        field(87; RestockWitnessRequired; Text[10])
        {
            Caption = 'Restock Witness Required';
            DataClassification = CustomerContent;
        }
        field(88; CycleCountWitnessRequired; Text[10])
        {
            Caption = 'Cycle Count Witness Required';
            DataClassification = CustomerContent;
        }
        field(89; CanReturnToIssueLocation; Text[10])
        {
            Caption = 'Can Return To Issue Location';
            DataClassification = CustomerContent;
        }
        field(90; CanReturnTORtrnBinOnly; Text[10])
        {
            Caption = 'Can Return To Rtrn Bin Only';
            DataClassification = CustomerContent;
        }
        field(91; CountBackRequired; Text[10])
        {
            Caption = 'Count Back Required';
            DataClassification = CustomerContent;
        }
        field(92; CNR; Text[10])
        {
            Caption = 'CNR';
            DataClassification = CustomerContent;
        }
        field(93; CNI; Text[10])
        {
            Caption = 'CNI';
            DataClassification = CustomerContent;
        }
        field(94; LNR; Text[10])
        {
            Caption = 'LNR';
            DataClassification = CustomerContent;
        }
        field(95; LNI; Text[10])
        {
            Caption = 'LNI';
            DataClassification = CustomerContent;
        }
        field(96; EXPR; Text[10])
        {
            Caption = 'EXPR';
            DataClassification = CustomerContent;
        }
        field(97; EXPI; Text[10])
        {
            Caption = 'EXPI';
            DataClassification = CustomerContent;
        }
        field(98; DN; Text[10])
        {
            Caption = 'DN';
            DataClassification = CustomerContent;
        }
        field(99; RefrigeratedItem; Text[10])
        {
            Caption = 'Refrigerated Item';
            DataClassification = CustomerContent;
        }
        field(100; EmergencyItem; Text[10])
        {
            Caption = 'Emergency Item';
            DataClassification = CustomerContent;
        }
        field(101; EmergencyDefaultQty; Text[10])
        {
            Caption = 'Emergency Default Qty.';
            DataClassification = CustomerContent;
        }
        field(102; _ReqType; Text[10])
        {
            Caption = '_Req Type';
            DataClassification = CustomerContent;
        }
    }

    keys
    {
        key(PK; entry_no)
        {
            Clustered = true;
        }
    }

}
