//===-- HelloWorld.cpp - Example Transformations --------------------------===//
//
// Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//

#include "llvm/IR/Function.h"
#include "llvm/IR/Instructions.h"
#include "llvm/Pass.h"
#include "llvm/Support/raw_ostream.h"

using namespace llvm;

namespace {
  struct VirtualFunctionPass : public FunctionPass {
    static char ID;
    VirtualFunctionPass() : FunctionPass(ID) {}

    bool runOnFunction(Function &F) override {
      errs() << "Function " << F.getName() << ":\n";
      bool modified = false;
      for (auto &BB : F) {
        for (auto &I : BB) {
          if (auto *Call = dyn_cast<CallBase>(&I)) {
            Value *Callee = Call->getCalledOperand();
            if (Function *Func = dyn_cast<Function>(Callee->stripPointerCasts())) {
              FunctionType *FuncTy = Func->getFunctionType();
              if (FuncTy->getNumParams() > 0 && FuncTy->getParamType(0)->isPointerTy()) {
                errs() << "Virtual function call: " << *Call << "\n";
                modified = true;
              }
            }
          }
        }
      }
      return modified;
    }
  };
}

char VirtualFunctionPass::ID = 0;

static RegisterPass<VirtualFunctionPass> X("virtual-function-pass", "Identify virtual function calls", false, false);