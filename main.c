#include <stio.h>
#include "platform.h"
#include "xil_printf.h"
#include "xadcps.h"
#include "xil_types.h"

//XADC block initialization
main()
init XADCstatus;
XAdcPs_Config *XADC_ConfigPtr;
init_platform();
XADC_ConfigPtr = XAdcPs_LookupConfig(XPAR_PS&_XADC_O_DEVICE_ID);
XADCstatus = XAdcPs_CfgInitialize(&XADCblock, XADC_ConfigPtr,XADC_ConfigPtr->BaseAddress)
if(XADCstatus!=XST_SUCCESS)
{
  return XST_FAILURE
}