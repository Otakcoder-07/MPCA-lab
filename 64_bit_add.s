.TEXT
@To add two 64-bit numbers we store one 64 bit instruction/number in two registers as two 32 bit number/instruction
@ex:0000 0E44 32A84FE6 is first number where 0000 0E44 will be stored in one register and 32A84FE6 will be stored in seoond
@so suppose r0,r2 have LSB of first and second number and r1,r3 have the MSB we use
@ADDS r2,r2,r0
@ADC r3,r3,r1 
@Usual ADD doesn't update flags. ADDS does. See better documentation at arm infocenter. As it wrote there:  If S is specified, these instructions update the N, Z, C and V flags according to the result.
