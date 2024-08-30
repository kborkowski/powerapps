# Sample collection to generate conic gradients:
```
ClearCollect(colTemp,ForAll(fxData.budgets,{Gradient:theme,Degree:ThisRecord.maximum/Sum(fxData.budgets,maximum)*360}));
//Add RowNumber
ClearCollect(colTempRowNumber,ForAll(Sequence(CountRows(colTemp)),Patch(Last(FirstN(colTemp,Value)),{RowNumber:Value})));
// Add cumulative degrees to colTemp
ClearCollect(colTempWithDegrees,ForAll(colTempRowNumber As t,Patch(t,{CumulativeDegrees:Sum(FirstN(colTemp,t.RowNumber-1),Degree)})));
// Add StartGradient and EndGradient to colGradients and Remove some columns 
ClearCollect(colGradients,DropColumns(ForAll(colTempWithDegrees,Patch(ThisRecord,{StartGradient:CumulativeDegrees,EndGradient:CumulativeDegrees+Degree})),CumulativeDegrees,Degree));
```

## Sample SVG donut chart for PowerApps.
```
    // Create the conic gradient with the calculated degrees
    "data:image/svg+xml;utf8, "&EncodeUrl("<svg width='241' height='240' viewBox='0 0 241 240' fill='none' xmlns='http://www.w3.org/2000/svg'>
    <style>
        .conic-gradient {
        background: conic-gradient(
            from 0deg at 50% 50%,
            "&Concat(colGradients,Gradient&" "&Text(If(IsBlank(StartGradient),0,StartGradient))&"deg "&Text(EndGradient)&"deg"&If(RowNumber<CountRows(colGradients),", ",""))&");
        width: 100%;
        height: 100%;
        border-radius: 50%;
        }
    </style>
    <foreignObject x='0' y='0' width='241' height='240'>
        <div xmlns='http://www.w3.org/1999/xhtml' class='conic-gradient'></div>
    </foreignObject>
    <circle cx='120.5' cy='120' r='81' fill='white'/>
    <circle opacity='0.25' cx='120.25' cy='119.75' r='93.7501' fill='white'/>
    </svg>")
```
