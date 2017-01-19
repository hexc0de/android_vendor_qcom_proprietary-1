LOCAL_PATH:= $(call my-dir)

mc_SRC_FILES := \
  ELFObjectWriter.cpp \
  MachObjectWriter.cpp \
  MCAsmBackend.cpp \
  MCAsmInfo.cpp \
  MCAsmInfoDarwin.cpp \
  MCAsmStreamer.cpp \
  MCAssembler.cpp \
  MCCodeEmitter.cpp \
  MCCodeGenInfo.cpp \
  MCContext.cpp \
  MCDisassembler.cpp \
  MCDwarf.cpp \
  MCELF.cpp \
  MCELFObjectTargetWriter.cpp \
  MCELFStreamer.cpp \
  MCExpr.cpp \
  MCInst.cpp \
  MCInstPrinter.cpp \
  MCInstrAnalysis.cpp \
  MCLabel.cpp \
  MCMachObjectTargetWriter.cpp \
  MCMachOStreamer.cpp \
  MCNullStreamer.cpp \
  MCObjectFileInfo.cpp \
  MCObjectStreamer.cpp \
  MCObjectWriter.cpp \
  MCSection.cpp \
  MCSectionELF.cpp \
  MCSectionMachO.cpp \
  MCStreamer.cpp \
  MCSubtargetInfo.cpp \
  MCSymbol.cpp \
  MCTargetAsmLexer.cpp \
  MCValue.cpp \
  SubtargetFeature.cpp

# For the host
# =====================================================
include $(CLEAR_VARS)

LOCAL_SRC_FILES := $(mc_SRC_FILES)

LOCAL_MODULE:= lib${LLVM_VER}LLVMMC

LOCAL_MODULE_TAGS := optional


include $(LLVM_HOST_BUILD_MK)
include $(BUILD_HOST_STATIC_LIBRARY)

# For the device
# =====================================================
include $(CLEAR_VARS)

LOCAL_SRC_FILES := $(mc_SRC_FILES)

LOCAL_MODULE:= lib${LLVM_VER}LLVMMC

LOCAL_MODULE_TAGS := optional

include $(LLVM_DEVICE_BUILD_MK)
include $(BUILD_STATIC_LIBRARY)