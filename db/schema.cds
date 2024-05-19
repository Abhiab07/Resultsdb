namespace com.abhi.results;
using {managed, cuid} from '@sap/cds/common';
entity Result: managed,cuid{
    @title:'Name'
    name:String(10);
    @title:'RollNo'
    roll:String(40);
    @title:'Email'
    email:String(40);
    @title:'Marks'
    marks:Integer;
    @title:'Percentage'
    per:Decimal;
}