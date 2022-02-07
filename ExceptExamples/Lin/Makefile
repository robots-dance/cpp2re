TARGET_FULL=$(1)-gcc $(1)-gcc-arm $(1)-gcc-mips $(1)-clang $(1)-llvm

all: $(call TARGET_FULL,example1) $(call TARGET_FULL,example2) \
	$(call TARGET_FULL,example3) $(call TARGET_FULL,example4) \
	$(call TARGET_FULL,example5) $(call TARGET_FULL,example6)

ARM_CFLAGS=-specs=nosys.spec

BUILD_GCC=g++ -S -o $@.s $<;g++ -o $@ $<
BUILD_GCC_ARM=arm-none-eabi-g++ -S -o $@.s $<;arm-none-eabi-g++ $(ARM_CFLAGS) -o $@ $<
BUILD_GCC_MIPS=mips-linux-gnu-g++ -S -o $@.s $<;mips-linux-gnu-g++ -o $@ $<
BUILD_CLANG=clang++ -S -o $@.s $<; clang++ -o $@ $<
BUILD_LLVM=clang++ -c -o $@ -emit-llvm  $<

DEL=unlink $(1) 2>/dev/null; test 0==1

DEL_TARGET=$(call DEL,$(1)-gcc);$(call DEL,$(1)-gcc-arm);$(call DEL,$(1)-gcc-mips);\
	$(call DEL,$(1)-gcc.s);$(call DEL,$(1)-gcc-arm.s);$(call DEL,$(1)-gcc-mips.s);\
	$(call DEL,$(1)-clang);$(call DEL,$(1)-clang.s);$(call DEL,$(1)-llvm)

# ******** EXAMPLE 1 ********
example1-gcc: example1.cpp
	$(BUILD_GCC)

example1-gcc-arm: example1.cpp
	$(BUILD_GCC_ARM)

example1-gcc-mips: example1.cpp
	$(BUILD_GCC_MIPS)

example1-clang: example1.cpp
	$(BUILD_CLANG)

example1-llvm: example1.cpp
	$(BUILD_LLVM)

# ******** EXAMPLE 2 ********
example2-gcc: example2.cpp
	$(BUILD_GCC)

example2-gcc-arm: example2.cpp
	$(BUILD_GCC_ARM)

example2-gcc-mips: example2.cpp
	$(BUILD_GCC_MIPS)

example2-clang: example2.cpp
	$(BUILD_CLANG)

example2-llvm: example2.cpp
	$(BUILD_LLVM)

# ******** EXAMPLE 3 ********
example3-gcc: example3.cpp
	$(BUILD_GCC)

example3-gcc-arm: example3.cpp
	$(BUILD_GCC_ARM)

example3-gcc-mips: example3.cpp
	$(BUILD_GCC_MIPS)

example3-clang: example3.cpp
	$(BUILD_CLANG)

example3-llvm: example3.cpp
	$(BUILD_LLVM)

# ******** EXAMPLE 4 ********
example4-gcc: example4.cpp
	$(BUILD_GCC)

example4-gcc-arm: example4.cpp
	$(BUILD_GCC_ARM)

example4-gcc-mips: example4.cpp
	$(BUILD_GCC_MIPS)

example4-clang: example4.cpp
	$(BUILD_CLANG)

example4-llvm: example4.cpp
	$(BUILD_LLVM)

# ******** EXAMPLE 5 ********
example5-gcc: example5.cpp
	$(BUILD_GCC)

example5-gcc-arm: example5.cpp
	$(BUILD_GCC_ARM)

example5-gcc-mips: example5.cpp
	$(BUILD_GCC_MIPS)

example5-clang: example5.cpp
	$(BUILD_CLANG)

example5-llvm: example5.cpp
	$(BUILD_LLVM)

# ******** EXAMPLE 6 ********
example6-gcc: example6.cpp
	$(BUILD_GCC)

example6-gcc-arm: example6.cpp
	$(BUILD_GCC_ARM)

example6-gcc-mips: example6.cpp
	$(BUILD_GCC_MIPS)

example6-clang: example6.cpp
	$(BUILD_CLANG)

example6-llvm: example6.cpp
	$(BUILD_LLVM)

clean:
	$(call DEL_TARGET,example1)
	$(call DEL_TARGET,example2)
	$(call DEL_TARGET,example3)
	$(call DEL_TARGET,example4)
	$(call DEL_TARGET,example5)
	$(call DEL_TARGET,example6)
