# See LICENSE for license details.

#*****************************************************************************
# NewASM.S <-- (modify file name here)
#-----------------------------------------------------------------------------

#include "riscv_test.h"
#include "test_macros.h"

RVTEST_RV32U
RVTEST_CODE_BEGIN

... (your inst) ... <-- (add inst here)

RVTEST_CODE_END

  .data
RVTEST_DATA_BEGIN

  TEST_DATA

... (your data) ... <-- (add data here)

RVTEST_DATA_END