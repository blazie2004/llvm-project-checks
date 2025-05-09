# NOTE: Assertions have been autogenerated by utils/update_mca_test_checks.py
# RUN: llvm-mca -mtriple=x86_64-unknown-unknown -mcpu=alderlake -instruction-tables < %s | FileCheck %s

f2xm1

fabs

fadd %st, %st(1)
fadd %st(2)
fadds (%ecx)
faddl (%ecx)
faddp %st(1)
faddp %st(2)
fiadds (%ecx)
fiaddl (%ecx)

fbld (%ecx)
fbstp (%eax)

fchs

fnclex

fcmovb %st(1), %st
fcmovbe %st(1), %st
fcmove %st(1), %st
fcmovnb %st(1), %st
fcmovnbe %st(1), %st
fcmovne %st(1), %st
fcmovnu %st(1), %st
fcmovu %st(1), %st

fcom %st(1)
fcom %st(3)
fcoms (%ecx)
fcoml (%eax)
fcomp %st(1)
fcomp %st(3)
fcomps (%ecx)
fcompl (%eax)
fcompp

fcomi %st(3)
fcompi %st(3)

fcos

fdecstp

fdiv %st, %st(1)
fdiv %st(2)
fdivs (%ecx)
fdivl (%eax)
fdivp %st(1)
fdivp %st(2)
fidivs (%ecx)
fidivl (%eax)

fdivr %st, %st(1)
fdivr %st(2)
fdivrs (%ecx)
fdivrl (%eax)
fdivrp %st(1)
fdivrp %st(2)
fidivrs (%ecx)
fidivrl (%eax)

ffree %st(0)

ficoms (%ecx)
ficoml (%eax)
ficomps (%ecx)
ficompl (%eax)

filds (%edx)
fildl (%ecx)
fildll (%eax)

fincstp

fninit

fists (%edx)
fistl (%ecx)
fistps (%edx)
fistpl (%ecx)
fistpll (%eax)

fisttps (%edx)
fisttpl (%ecx)
fisttpll (%eax)

fld %st(0)
flds (%edx)
fldl (%ecx)
fldt (%eax)

fldcw (%eax)
fldenv (%eax)

fld1
fldl2e
fldl2t
fldlg2
fldln2
fldpi
fldz

fmul %st, %st(1)
fmul %st(2)
fmuls (%ecx)
fmull (%eax)
fmulp %st(1)
fmulp %st(2)
fimuls (%ecx)
fimull (%eax)

fnop

fpatan

fprem
fprem1

fptan

frndint

frstor (%eax)

fnsave (%eax)

fscale

fsin

fsincos

fsqrt

fst %st(0)
fsts (%edx)
fstl (%ecx)
fstp %st(0)
fstpl (%edx)
fstpl (%ecx)
fstpt (%eax)

fnstcw (%eax)
fnstenv (%eax)
fnstsw (%eax)

frstor (%eax)
fsave (%eax)

fsub %st, %st(1)
fsub %st(2)
fsubs (%ecx)
fsubl (%eax)
fsubp %st(1)
fsubp %st(2)
fisubs (%ecx)
fisubl (%eax)

fsubr %st, %st(1)
fsubr %st(2)
fsubrs (%ecx)
fsubrl (%eax)
fsubrp %st(1)
fsubrp %st(2)
fisubrs (%ecx)
fisubrl (%eax)

ftst

fucom %st(1)
fucom %st(3)
fucomp %st(1)
fucomp %st(3)
fucompp

fucomi %st(3)
fucompi %st(3)

fwait

fxam

fxch %st(1)
fxch %st(3)

fxrstor (%eax)
fxsave (%eax)

fxtract

fyl2x
fyl2xp1

# CHECK:      Instruction Info:
# CHECK-NEXT: [1]: #uOps
# CHECK-NEXT: [2]: Latency
# CHECK-NEXT: [3]: RThroughput
# CHECK-NEXT: [4]: MayLoad
# CHECK-NEXT: [5]: MayStore
# CHECK-NEXT: [6]: HasSideEffects (U)

# CHECK:      [1]    [2]    [3]    [4]    [5]    [6]    Instructions:
# CHECK-NEXT:  1      100   0.25                  U     f2xm1
# CHECK-NEXT:  1      1     1.00                  U     fabs
# CHECK-NEXT:  1      3     1.00                  U     fadd	%st, %st(1)
# CHECK-NEXT:  1      3     1.00                  U     fadd	%st(2), %st
# CHECK-NEXT:  2      10    1.00    *             U     fadds	(%ecx)
# CHECK-NEXT:  2      10    1.00    *             U     faddl	(%ecx)
# CHECK-NEXT:  1      3     1.00                  U     faddp	%st, %st(1)
# CHECK-NEXT:  1      3     1.00                  U     faddp	%st, %st(2)
# CHECK-NEXT:  3      13    2.00    *             U     fiadds	(%ecx)
# CHECK-NEXT:  3      13    2.00    *             U     fiaddl	(%ecx)
# CHECK-NEXT:  1      100   0.25    *             U     fbld	(%ecx)
# CHECK-NEXT:  2      1     1.00           *      U     fbstp	(%eax)
# CHECK-NEXT:  1      1     1.00                  U     fchs
# CHECK-NEXT:  4      4     1.00                  U     fnclex
# CHECK-NEXT:  1      3     1.00                  U     fcmovb	%st(1), %st
# CHECK-NEXT:  1      3     1.00                  U     fcmovbe	%st(1), %st
# CHECK-NEXT:  1      3     1.00                  U     fcmove	%st(1), %st
# CHECK-NEXT:  1      3     1.00                  U     fcmovnb	%st(1), %st
# CHECK-NEXT:  1      3     1.00                  U     fcmovnbe	%st(1), %st
# CHECK-NEXT:  1      3     1.00                  U     fcmovne	%st(1), %st
# CHECK-NEXT:  1      3     1.00                  U     fcmovnu	%st(1), %st
# CHECK-NEXT:  1      3     1.00                  U     fcmovu	%st(1), %st
# CHECK-NEXT:  1      1     1.00                  U     fcom	%st(1)
# CHECK-NEXT:  1      1     1.00                  U     fcom	%st(3)
# CHECK-NEXT:  2      8     1.00    *             U     fcoms	(%ecx)
# CHECK-NEXT:  2      8     1.00    *             U     fcoml	(%eax)
# CHECK-NEXT:  1      1     1.00                  U     fcomp	%st(1)
# CHECK-NEXT:  1      1     1.00                  U     fcomp	%st(3)
# CHECK-NEXT:  2      8     1.00    *             U     fcomps	(%ecx)
# CHECK-NEXT:  2      8     1.00    *             U     fcompl	(%eax)
# CHECK-NEXT:  1      100   0.25                  U     fcompp
# CHECK-NEXT:  1      1     1.00                  U     fcomi	%st(3), %st
# CHECK-NEXT:  1      1     1.00                  U     fcompi	%st(3), %st
# CHECK-NEXT:  1      100   0.25                  U     fcos
# CHECK-NEXT:  2      2     1.00                  U     fdecstp
# CHECK-NEXT:  1      15    1.00                  U     fdiv	%st, %st(1)
# CHECK-NEXT:  1      20    1.00                  U     fdiv	%st(2), %st
# CHECK-NEXT:  2      22    1.00    *             U     fdivs	(%ecx)
# CHECK-NEXT:  2      22    1.00    *             U     fdivl	(%eax)
# CHECK-NEXT:  1      15    1.00                  U     fdivp	%st, %st(1)
# CHECK-NEXT:  1      15    1.00                  U     fdivp	%st, %st(2)
# CHECK-NEXT:  3      25    1.00    *             U     fidivs	(%ecx)
# CHECK-NEXT:  3      25    1.00    *             U     fidivl	(%eax)
# CHECK-NEXT:  1      20    1.00                  U     fdivr	%st, %st(1)
# CHECK-NEXT:  1      15    1.00                  U     fdivr	%st(2), %st
# CHECK-NEXT:  2      27    1.00    *             U     fdivrs	(%ecx)
# CHECK-NEXT:  2      27    1.00    *             U     fdivrl	(%eax)
# CHECK-NEXT:  1      20    1.00                  U     fdivrp	%st, %st(1)
# CHECK-NEXT:  1      20    1.00                  U     fdivrp	%st, %st(2)
# CHECK-NEXT:  3      30    1.00    *             U     fidivrs	(%ecx)
# CHECK-NEXT:  3      30    1.00    *             U     fidivrl	(%eax)
# CHECK-NEXT:  1      100   0.25                  U     ffree	%st(0)
# CHECK-NEXT:  3      11    2.00    *             U     ficoms	(%ecx)
# CHECK-NEXT:  3      11    2.00    *             U     ficoml	(%eax)
# CHECK-NEXT:  3      11    2.00    *             U     ficomps	(%ecx)
# CHECK-NEXT:  3      11    2.00    *             U     ficompl	(%eax)
# CHECK-NEXT:  2      10    1.00    *             U     filds	(%edx)
# CHECK-NEXT:  2      10    1.00    *             U     fildl	(%ecx)
# CHECK-NEXT:  2      10    1.00    *             U     fildll	(%eax)
# CHECK-NEXT:  1      1     0.50                  U     fincstp
# CHECK-NEXT:  15     75    6.00                  U     fninit
# CHECK-NEXT:  3      4     1.00           *      U     fists	(%edx)
# CHECK-NEXT:  3      4     1.00           *      U     fistl	(%ecx)
# CHECK-NEXT:  3      4     1.00           *      U     fistps	(%edx)
# CHECK-NEXT:  3      4     1.00           *      U     fistpl	(%ecx)
# CHECK-NEXT:  3      4     1.00           *      U     fistpll	(%eax)
# CHECK-NEXT:  3      4     1.00           *      U     fisttps	(%edx)
# CHECK-NEXT:  3      4     1.00           *      U     fisttpl	(%ecx)
# CHECK-NEXT:  3      4     1.00           *      U     fisttpll	(%eax)
# CHECK-NEXT:  1      1     0.25                  U     fld	%st(0)
# CHECK-NEXT:  1      7     0.50    *             U     flds	(%edx)
# CHECK-NEXT:  1      7     0.50    *             U     fldl	(%ecx)
# CHECK-NEXT:  1      7     0.50    *             U     fldt	(%eax)
# CHECK-NEXT:  3      7     1.00    *             U     fldcw	(%eax)
# CHECK-NEXT:  64     62    14.00   *             U     fldenv	(%eax)
# CHECK-NEXT:  2      1     1.00                  U     fld1
# CHECK-NEXT:  2      1     1.00                  U     fldl2e
# CHECK-NEXT:  2      1     1.00                  U     fldl2t
# CHECK-NEXT:  2      1     1.00                  U     fldlg2
# CHECK-NEXT:  2      1     1.00                  U     fldln2
# CHECK-NEXT:  2      1     1.00                  U     fldpi
# CHECK-NEXT:  1      1     0.50                  U     fldz
# CHECK-NEXT:  1      4     1.00                  U     fmul	%st, %st(1)
# CHECK-NEXT:  1      4     1.00                  U     fmul	%st(2), %st
# CHECK-NEXT:  2      11    1.00    *             U     fmuls	(%ecx)
# CHECK-NEXT:  2      11    1.00    *             U     fmull	(%eax)
# CHECK-NEXT:  1      4     1.00                  U     fmulp	%st, %st(1)
# CHECK-NEXT:  1      4     1.00                  U     fmulp	%st, %st(2)
# CHECK-NEXT:  3      14    1.00    *             U     fimuls	(%ecx)
# CHECK-NEXT:  3      14    1.00    *             U     fimull	(%eax)
# CHECK-NEXT:  1      1     0.50                  U     fnop
# CHECK-NEXT:  1      100   0.25                  U     fpatan
# CHECK-NEXT:  1      100   0.25                  U     fprem
# CHECK-NEXT:  1      100   0.25                  U     fprem1
# CHECK-NEXT:  1      100   0.25                  U     fptan
# CHECK-NEXT:  1      100   0.25                  U     frndint
# CHECK-NEXT:  1      100   0.25    *             U     frstor	(%eax)
# CHECK-NEXT:  1      100   0.25           *      U     fnsave	(%eax)
# CHECK-NEXT:  1      100   0.25                  U     fscale
# CHECK-NEXT:  1      100   0.25                  U     fsin
# CHECK-NEXT:  1      100   0.25                  U     fsincos
# CHECK-NEXT:  1      21    7.00                  U     fsqrt
# CHECK-NEXT:  1      1     0.25                  U     fst	%st(0)
# CHECK-NEXT:  1      1     1.00           *      U     fsts	(%edx)
# CHECK-NEXT:  1      1     1.00           *      U     fstl	(%ecx)
# CHECK-NEXT:  1      1     0.25                  U     fstp	%st(0)
# CHECK-NEXT:  2      1     1.00           *      U     fstpl	(%edx)
# CHECK-NEXT:  2      1     1.00           *      U     fstpl	(%ecx)
# CHECK-NEXT:  2      1     1.00           *      U     fstpt	(%eax)
# CHECK-NEXT:  3      2     1.00           *      U     fnstcw	(%eax)
# CHECK-NEXT:  100    106   19.50          *      U     fnstenv	(%eax)
# CHECK-NEXT:  3      3     1.00           *      U     fnstsw	(%eax)
# CHECK-NEXT:  1      100   0.25    *             U     frstor	(%eax)
# CHECK-NEXT:  2      2     0.50                  U     wait
# CHECK-NEXT:  1      100   0.25           *      U     fnsave	(%eax)
# CHECK-NEXT:  1      3     1.00                  U     fsub	%st, %st(1)
# CHECK-NEXT:  1      3     1.00                  U     fsub	%st(2), %st
# CHECK-NEXT:  2      10    1.00    *             U     fsubs	(%ecx)
# CHECK-NEXT:  2      10    1.00    *             U     fsubl	(%eax)
# CHECK-NEXT:  1      3     1.00                  U     fsubp	%st, %st(1)
# CHECK-NEXT:  1      3     1.00                  U     fsubp	%st, %st(2)
# CHECK-NEXT:  3      13    2.00    *             U     fisubs	(%ecx)
# CHECK-NEXT:  3      13    2.00    *             U     fisubl	(%eax)
# CHECK-NEXT:  1      3     1.00                  U     fsubr	%st, %st(1)
# CHECK-NEXT:  1      3     1.00                  U     fsubr	%st(2), %st
# CHECK-NEXT:  2      10    1.00    *             U     fsubrs	(%ecx)
# CHECK-NEXT:  2      10    1.00    *             U     fsubrl	(%eax)
# CHECK-NEXT:  1      3     1.00                  U     fsubrp	%st, %st(1)
# CHECK-NEXT:  1      3     1.00                  U     fsubrp	%st, %st(2)
# CHECK-NEXT:  3      13    2.00    *             U     fisubrs	(%ecx)
# CHECK-NEXT:  3      13    2.00    *             U     fisubrl	(%eax)
# CHECK-NEXT:  1      2     1.00                  U     ftst
# CHECK-NEXT:  1      1     1.00                  U     fucom	%st(1)
# CHECK-NEXT:  1      1     1.00                  U     fucom	%st(3)
# CHECK-NEXT:  1      1     1.00                  U     fucomp	%st(1)
# CHECK-NEXT:  1      1     1.00                  U     fucomp	%st(3)
# CHECK-NEXT:  1      2     1.00                  U     fucompp
# CHECK-NEXT:  1      1     1.00                  U     fucomi	%st(3), %st
# CHECK-NEXT:  1      1     1.00                  U     fucompi	%st(3), %st
# CHECK-NEXT:  2      2     0.50                  U     wait
# CHECK-NEXT:  1      2     1.00                  U     fxam
# CHECK-NEXT:  15     17    4.00                  U     fxch	%st(1)
# CHECK-NEXT:  15     17    4.00                  U     fxch	%st(3)
# CHECK-NEXT:  90     63    16.50   *      *      U     fxrstor	(%eax)
# CHECK-NEXT:  110    100   19.00   *      *      U     fxsave	(%eax)
# CHECK-NEXT:  1      100   0.25                  U     fxtract
# CHECK-NEXT:  1      100   0.25                  U     fyl2x
# CHECK-NEXT:  1      100   0.25                  U     fyl2xp1

# CHECK:      Resources:
# CHECK-NEXT: [0]   - ADLPPort00
# CHECK-NEXT: [1]   - ADLPPort01
# CHECK-NEXT: [2]   - ADLPPort02
# CHECK-NEXT: [3]   - ADLPPort03
# CHECK-NEXT: [4]   - ADLPPort04
# CHECK-NEXT: [5]   - ADLPPort05
# CHECK-NEXT: [6]   - ADLPPort06
# CHECK-NEXT: [7]   - ADLPPort07
# CHECK-NEXT: [8]   - ADLPPort08
# CHECK-NEXT: [9]   - ADLPPort09
# CHECK-NEXT: [10]  - ADLPPort10
# CHECK-NEXT: [11]  - ADLPPort11
# CHECK-NEXT: [12]  - ADLPPortInvalid

# CHECK:      Resource pressure per iteration:
# CHECK-NEXT: [0]    [1]    [2]    [3]    [4]    [5]    [6]    [7]    [8]    [9]    [10]   [11]   [12]
# CHECK-NEXT: 131.25 62.75  49.67  49.67  46.00  159.25 74.75  28.00  19.00  19.00  0.67   1.00   7.00

# CHECK:      Resource pressure by instruction:
# CHECK-NEXT: [0]    [1]    [2]    [3]    [4]    [5]    [6]    [7]    [8]    [9]    [10]   [11]   [12]   Instructions:
# CHECK-NEXT: 0.25   0.25    -      -      -     0.25   0.25    -      -      -      -      -      -     f2xm1
# CHECK-NEXT: 1.00    -      -      -      -      -      -      -      -      -      -      -      -     fabs
# CHECK-NEXT:  -      -      -      -      -     1.00    -      -      -      -      -      -      -     fadd	%st, %st(1)
# CHECK-NEXT:  -      -      -      -      -     1.00    -      -      -      -      -      -      -     fadd	%st(2), %st
# CHECK-NEXT:  -      -     0.50   0.50    -     1.00    -      -      -      -      -      -      -     fadds	(%ecx)
# CHECK-NEXT:  -      -     0.50   0.50    -     1.00    -      -      -      -      -      -      -     faddl	(%ecx)
# CHECK-NEXT:  -      -      -      -      -     1.00    -      -      -      -      -      -      -     faddp	%st, %st(1)
# CHECK-NEXT:  -      -      -      -      -     1.00    -      -      -      -      -      -      -     faddp	%st, %st(2)
# CHECK-NEXT:  -      -     0.50   0.50    -     2.00    -      -      -      -      -      -      -     fiadds	(%ecx)
# CHECK-NEXT:  -      -     0.50   0.50    -     2.00    -      -      -      -      -      -      -     fiaddl	(%ecx)
# CHECK-NEXT: 0.25   0.25    -      -      -     0.25   0.25    -      -      -      -      -      -     fbld	(%ecx)
# CHECK-NEXT:  -      -     0.33   0.33   1.00    -      -     0.33    -      -      -      -      -     fbstp	(%eax)
# CHECK-NEXT: 1.00    -      -      -      -      -      -      -      -      -      -      -      -     fchs
# CHECK-NEXT: 1.00   1.00    -      -      -     1.00   1.00    -      -      -      -      -      -     fnclex
# CHECK-NEXT:  -     1.00    -      -      -      -      -      -      -      -      -      -      -     fcmovb	%st(1), %st
# CHECK-NEXT:  -     1.00    -      -      -      -      -      -      -      -      -      -      -     fcmovbe	%st(1), %st
# CHECK-NEXT:  -     1.00    -      -      -      -      -      -      -      -      -      -      -     fcmove	%st(1), %st
# CHECK-NEXT:  -     1.00    -      -      -      -      -      -      -      -      -      -      -     fcmovnb	%st(1), %st
# CHECK-NEXT:  -     1.00    -      -      -      -      -      -      -      -      -      -      -     fcmovnbe	%st(1), %st
# CHECK-NEXT:  -     1.00    -      -      -      -      -      -      -      -      -      -      -     fcmovne	%st(1), %st
# CHECK-NEXT:  -     1.00    -      -      -      -      -      -      -      -      -      -      -     fcmovnu	%st(1), %st
# CHECK-NEXT:  -     1.00    -      -      -      -      -      -      -      -      -      -      -     fcmovu	%st(1), %st
# CHECK-NEXT:  -      -      -      -      -     1.00    -      -      -      -      -      -      -     fcom	%st(1)
# CHECK-NEXT:  -      -      -      -      -     1.00    -      -      -      -      -      -      -     fcom	%st(3)
# CHECK-NEXT:  -      -     0.50   0.50    -     1.00    -      -      -      -      -      -      -     fcoms	(%ecx)
# CHECK-NEXT:  -      -     0.50   0.50    -     1.00    -      -      -      -      -      -      -     fcoml	(%eax)
# CHECK-NEXT:  -      -      -      -      -     1.00    -      -      -      -      -      -      -     fcomp	%st(1)
# CHECK-NEXT:  -      -      -      -      -     1.00    -      -      -      -      -      -      -     fcomp	%st(3)
# CHECK-NEXT:  -      -     0.50   0.50    -     1.00    -      -      -      -      -      -      -     fcomps	(%ecx)
# CHECK-NEXT:  -      -     0.50   0.50    -     1.00    -      -      -      -      -      -      -     fcompl	(%eax)
# CHECK-NEXT: 0.25   0.25    -      -      -     0.25   0.25    -      -      -      -      -      -     fcompp
# CHECK-NEXT:  -      -      -      -      -     1.00    -      -      -      -      -      -      -     fcomi	%st(3), %st
# CHECK-NEXT:  -      -      -      -      -     1.00    -      -      -      -      -      -      -     fcompi	%st(3), %st
# CHECK-NEXT: 0.25   0.25    -      -      -     0.25   0.25    -      -      -      -      -      -     fcos
# CHECK-NEXT: 1.00    -      -      -      -     1.00    -      -      -      -      -      -      -     fdecstp
# CHECK-NEXT: 1.00    -      -      -      -      -      -      -      -      -      -      -      -     fdiv	%st, %st(1)
# CHECK-NEXT: 1.00    -      -      -      -      -      -      -      -      -      -      -      -     fdiv	%st(2), %st
# CHECK-NEXT: 1.00    -     0.50   0.50    -      -      -      -      -      -      -      -      -     fdivs	(%ecx)
# CHECK-NEXT: 1.00    -     0.50   0.50    -      -      -      -      -      -      -      -      -     fdivl	(%eax)
# CHECK-NEXT: 1.00    -      -      -      -      -      -      -      -      -      -      -      -     fdivp	%st, %st(1)
# CHECK-NEXT: 1.00    -      -      -      -      -      -      -      -      -      -      -      -     fdivp	%st, %st(2)
# CHECK-NEXT: 1.00    -     0.50   0.50    -     1.00    -      -      -      -      -      -      -     fidivs	(%ecx)
# CHECK-NEXT: 1.00    -     0.50   0.50    -     1.00    -      -      -      -      -      -      -     fidivl	(%eax)
# CHECK-NEXT: 1.00    -      -      -      -      -      -      -      -      -      -      -      -     fdivr	%st, %st(1)
# CHECK-NEXT: 1.00    -      -      -      -      -      -      -      -      -      -      -      -     fdivr	%st(2), %st
# CHECK-NEXT: 1.00    -     0.50   0.50    -      -      -      -      -      -      -      -      -     fdivrs	(%ecx)
# CHECK-NEXT: 1.00    -     0.50   0.50    -      -      -      -      -      -      -      -      -     fdivrl	(%eax)
# CHECK-NEXT: 1.00    -      -      -      -      -      -      -      -      -      -      -      -     fdivrp	%st, %st(1)
# CHECK-NEXT: 1.00    -      -      -      -      -      -      -      -      -      -      -      -     fdivrp	%st, %st(2)
# CHECK-NEXT: 1.00    -     0.50   0.50    -     1.00    -      -      -      -      -      -      -     fidivrs	(%ecx)
# CHECK-NEXT: 1.00    -     0.50   0.50    -     1.00    -      -      -      -      -      -      -     fidivrl	(%eax)
# CHECK-NEXT: 0.25   0.25    -      -      -     0.25   0.25    -      -      -      -      -      -     ffree	%st(0)
# CHECK-NEXT:  -      -     0.50   0.50    -     2.00    -      -      -      -      -      -      -     ficoms	(%ecx)
# CHECK-NEXT:  -      -     0.50   0.50    -     2.00    -      -      -      -      -      -      -     ficoml	(%eax)
# CHECK-NEXT:  -      -     0.50   0.50    -     2.00    -      -      -      -      -      -      -     ficomps	(%ecx)
# CHECK-NEXT:  -      -     0.50   0.50    -     2.00    -      -      -      -      -      -      -     ficompl	(%eax)
# CHECK-NEXT:  -      -     0.50   0.50    -     1.00    -      -      -      -      -      -      -     filds	(%edx)
# CHECK-NEXT:  -      -     0.50   0.50    -     1.00    -      -      -      -      -      -      -     fildl	(%ecx)
# CHECK-NEXT:  -      -     0.50   0.50    -     1.00    -      -      -      -      -      -      -     fildll	(%eax)
# CHECK-NEXT: 0.50    -      -      -      -     0.50    -      -      -      -      -      -      -     fincstp
# CHECK-NEXT: 3.00   1.50    -      -      -     9.00   1.50    -      -      -      -      -      -     fninit
# CHECK-NEXT:  -      -     0.33   0.33   1.00   1.00    -     0.33    -      -      -      -      -     fists	(%edx)
# CHECK-NEXT:  -      -     0.33   0.33   1.00   1.00    -     0.33    -      -      -      -      -     fistl	(%ecx)
# CHECK-NEXT:  -      -     0.33   0.33   1.00   1.00    -     0.33    -      -      -      -      -     fistps	(%edx)
# CHECK-NEXT:  -      -     0.33   0.33   1.00   1.00    -     0.33    -      -      -      -      -     fistpl	(%ecx)
# CHECK-NEXT:  -      -     0.33   0.33   1.00   1.00    -     0.33    -      -      -      -      -     fistpll	(%eax)
# CHECK-NEXT:  -      -     0.33   0.33   1.00   1.00    -     0.33    -      -      -      -      -     fisttps	(%edx)
# CHECK-NEXT:  -      -     0.33   0.33   1.00   1.00    -     0.33    -      -      -      -      -     fisttpl	(%ecx)
# CHECK-NEXT:  -      -     0.33   0.33   1.00   1.00    -     0.33    -      -      -      -      -     fisttpll	(%eax)
# CHECK-NEXT: 0.25   0.25    -      -      -     0.25   0.25    -      -      -      -      -      -     fld	%st(0)
# CHECK-NEXT:  -      -     0.50   0.50    -      -      -      -      -      -      -      -      -     flds	(%edx)
# CHECK-NEXT:  -      -     0.50   0.50    -      -      -      -      -      -      -      -      -     fldl	(%ecx)
# CHECK-NEXT:  -      -     0.50   0.50    -      -      -      -      -      -      -      -      -     fldt	(%eax)
# CHECK-NEXT: 1.50    -     0.50   0.50    -     0.50    -      -      -      -      -      -      -     fldcw	(%eax)
# CHECK-NEXT: 19.25  9.75   4.00   4.00    -     12.25  14.75   -      -      -      -      -      -     fldenv	(%eax)
# CHECK-NEXT: 1.00    -      -      -      -     1.00    -      -      -      -      -      -      -     fld1
# CHECK-NEXT: 1.00    -      -      -      -     1.00    -      -      -      -      -      -      -     fldl2e
# CHECK-NEXT: 1.00    -      -      -      -     1.00    -      -      -      -      -      -      -     fldl2t
# CHECK-NEXT: 1.00    -      -      -      -     1.00    -      -      -      -      -      -      -     fldlg2
# CHECK-NEXT: 1.00    -      -      -      -     1.00    -      -      -      -      -      -      -     fldln2
# CHECK-NEXT: 1.00    -      -      -      -     1.00    -      -      -      -      -      -      -     fldpi
# CHECK-NEXT: 0.50    -      -      -      -     0.50    -      -      -      -      -      -      -     fldz
# CHECK-NEXT: 1.00    -      -      -      -      -      -      -      -      -      -      -      -     fmul	%st, %st(1)
# CHECK-NEXT: 1.00    -      -      -      -      -      -      -      -      -      -      -      -     fmul	%st(2), %st
# CHECK-NEXT: 1.00    -     0.50   0.50    -      -      -      -      -      -      -      -      -     fmuls	(%ecx)
# CHECK-NEXT: 1.00    -     0.50   0.50    -      -      -      -      -      -      -      -      -     fmull	(%eax)
# CHECK-NEXT: 1.00    -      -      -      -      -      -      -      -      -      -      -      -     fmulp	%st, %st(1)
# CHECK-NEXT: 1.00    -      -      -      -      -      -      -      -      -      -      -      -     fmulp	%st, %st(2)
# CHECK-NEXT: 1.00    -     0.50   0.50    -     1.00    -      -      -      -      -      -      -     fimuls	(%ecx)
# CHECK-NEXT: 1.00    -     0.50   0.50    -     1.00    -      -      -      -      -      -      -     fimull	(%eax)
# CHECK-NEXT: 0.50    -      -      -      -     0.50    -      -      -      -      -      -      -     fnop
# CHECK-NEXT: 0.25   0.25    -      -      -     0.25   0.25    -      -      -      -      -      -     fpatan
# CHECK-NEXT: 0.25   0.25    -      -      -     0.25   0.25    -      -      -      -      -      -     fprem
# CHECK-NEXT: 0.25   0.25    -      -      -     0.25   0.25    -      -      -      -      -      -     fprem1
# CHECK-NEXT: 0.25   0.25    -      -      -     0.25   0.25    -      -      -      -      -      -     fptan
# CHECK-NEXT: 0.25   0.25    -      -      -     0.25   0.25    -      -      -      -      -      -     frndint
# CHECK-NEXT: 0.25   0.25    -      -      -     0.25   0.25    -      -      -      -      -      -     frstor	(%eax)
# CHECK-NEXT: 0.25   0.25    -      -      -     0.25   0.25    -      -      -      -      -      -     fnsave	(%eax)
# CHECK-NEXT: 0.25   0.25    -      -      -     0.25   0.25    -      -      -      -      -      -     fscale
# CHECK-NEXT: 0.25   0.25    -      -      -     0.25   0.25    -      -      -      -      -      -     fsin
# CHECK-NEXT: 0.25   0.25    -      -      -     0.25   0.25    -      -      -      -      -      -     fsincos
# CHECK-NEXT: 1.00    -      -      -      -      -      -      -      -      -      -      -     7.00   fsqrt
# CHECK-NEXT: 0.25   0.25    -      -      -     0.25   0.25    -      -      -      -      -      -     fst	%st(0)
# CHECK-NEXT:  -      -     0.33   0.33   1.00    -      -     0.33    -      -      -      -      -     fsts	(%edx)
# CHECK-NEXT:  -      -     0.33   0.33   1.00    -      -     0.33    -      -      -      -      -     fstl	(%ecx)
# CHECK-NEXT: 0.25   0.25    -      -      -     0.25   0.25    -      -      -      -      -      -     fstp	%st(0)
# CHECK-NEXT:  -      -     0.33   0.33   1.00    -      -     0.33    -      -      -      -      -     fstpl	(%edx)
# CHECK-NEXT:  -      -     0.33   0.33   1.00    -      -     0.33    -      -      -      -      -     fstpl	(%ecx)
# CHECK-NEXT:  -      -     0.33   0.33   1.00    -      -     0.33    -      -      -      -      -     fstpt	(%eax)
# CHECK-NEXT:  -      -     0.33   0.33   1.00    -     1.00   0.33    -      -      -      -      -     fnstcw	(%eax)
# CHECK-NEXT: 27.00  8.50   3.67   3.67   11.00  23.50  19.00  3.67    -      -      -      -      -     fnstenv	(%eax)
# CHECK-NEXT: 1.00    -     0.33   0.33   1.00    -      -     0.33    -      -      -      -      -     fnstsw	(%eax)
# CHECK-NEXT: 0.25   0.25    -      -      -     0.25   0.25    -      -      -      -      -      -     frstor	(%eax)
# CHECK-NEXT: 0.50   0.50    -      -      -     0.50   0.50    -      -      -      -      -      -     wait
# CHECK-NEXT: 0.25   0.25    -      -      -     0.25   0.25    -      -      -      -      -      -     fnsave	(%eax)
# CHECK-NEXT:  -      -      -      -      -     1.00    -      -      -      -      -      -      -     fsub	%st, %st(1)
# CHECK-NEXT:  -      -      -      -      -     1.00    -      -      -      -      -      -      -     fsub	%st(2), %st
# CHECK-NEXT:  -      -     0.50   0.50    -     1.00    -      -      -      -      -      -      -     fsubs	(%ecx)
# CHECK-NEXT:  -      -     0.50   0.50    -     1.00    -      -      -      -      -      -      -     fsubl	(%eax)
# CHECK-NEXT:  -      -      -      -      -     1.00    -      -      -      -      -      -      -     fsubp	%st, %st(1)
# CHECK-NEXT:  -      -      -      -      -     1.00    -      -      -      -      -      -      -     fsubp	%st, %st(2)
# CHECK-NEXT:  -      -     0.50   0.50    -     2.00    -      -      -      -      -      -      -     fisubs	(%ecx)
# CHECK-NEXT:  -      -     0.50   0.50    -     2.00    -      -      -      -      -      -      -     fisubl	(%eax)
# CHECK-NEXT:  -      -      -      -      -     1.00    -      -      -      -      -      -      -     fsubr	%st, %st(1)
# CHECK-NEXT:  -      -      -      -      -     1.00    -      -      -      -      -      -      -     fsubr	%st(2), %st
# CHECK-NEXT:  -      -     0.50   0.50    -     1.00    -      -      -      -      -      -      -     fsubrs	(%ecx)
# CHECK-NEXT:  -      -     0.50   0.50    -     1.00    -      -      -      -      -      -      -     fsubrl	(%eax)
# CHECK-NEXT:  -      -      -      -      -     1.00    -      -      -      -      -      -      -     fsubrp	%st, %st(1)
# CHECK-NEXT:  -      -      -      -      -     1.00    -      -      -      -      -      -      -     fsubrp	%st, %st(2)
# CHECK-NEXT:  -      -     0.50   0.50    -     2.00    -      -      -      -      -      -      -     fisubrs	(%ecx)
# CHECK-NEXT:  -      -     0.50   0.50    -     2.00    -      -      -      -      -      -      -     fisubrl	(%eax)
# CHECK-NEXT: 1.00    -      -      -      -      -      -      -      -      -      -      -      -     ftst
# CHECK-NEXT:  -      -      -      -      -     1.00    -      -      -      -      -      -      -     fucom	%st(1)
# CHECK-NEXT:  -      -      -      -      -     1.00    -      -      -      -      -      -      -     fucom	%st(3)
# CHECK-NEXT:  -      -      -      -      -     1.00    -      -      -      -      -      -      -     fucomp	%st(1)
# CHECK-NEXT:  -      -      -      -      -     1.00    -      -      -      -      -      -      -     fucomp	%st(3)
# CHECK-NEXT: 1.00    -      -      -      -      -      -      -      -      -      -      -      -     fucompp
# CHECK-NEXT:  -      -      -      -      -     1.00    -      -      -      -      -      -      -     fucomi	%st(3), %st
# CHECK-NEXT:  -      -      -      -      -     1.00    -      -      -      -      -      -      -     fucompi	%st(3), %st
# CHECK-NEXT: 0.50   0.50    -      -      -     0.50   0.50    -      -      -      -      -      -     wait
# CHECK-NEXT: 1.00    -      -      -      -      -      -      -      -      -      -      -      -     fxam
# CHECK-NEXT: 4.00   2.00    -      -      -     4.00   5.00    -      -      -      -      -      -     fxch	%st(1)
# CHECK-NEXT: 4.00   2.00    -      -      -     4.00   5.00    -      -      -      -      -      -     fxch	%st(3)
# CHECK-NEXT: 17.25  12.25  16.50  16.50   -     12.75  14.75   -      -      -      -      -      -     fxrstor	(%eax)
# CHECK-NEXT: 8.00   11.00  0.67   0.67   19.00  6.00   6.00   19.00  19.00  19.00  0.67   1.00    -     fxsave	(%eax)
# CHECK-NEXT: 0.25   0.25    -      -      -     0.25   0.25    -      -      -      -      -      -     fxtract
# CHECK-NEXT: 0.25   0.25    -      -      -     0.25   0.25    -      -      -      -      -      -     fyl2x
# CHECK-NEXT: 0.25   0.25    -      -      -     0.25   0.25    -      -      -      -      -      -     fyl2xp1
