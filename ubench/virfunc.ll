; ModuleID = 'virfunc.bc'
source_filename = "virfunc.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%"class.std::basic_ostream" = type { i32 (...)**, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", %"class.std::basic_ostream"*, i8, i8, %"class.std::basic_streambuf"*, %"class.std::ctype"*, %"class.std::num_put"*, %"class.std::num_get"* }
%"class.std::ios_base" = type { i32 (...)**, i64, i64, i32, i32, i32, %"struct.std::ios_base::_Callback_list"*, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, %"struct.std::ios_base::_Words"*, %"class.std::locale" }
%"struct.std::ios_base::_Callback_list" = type { %"struct.std::ios_base::_Callback_list"*, void (i32, %"class.std::ios_base"*, i32)*, i32, i32 }
%"struct.std::ios_base::_Words" = type { i8*, i64 }
%"class.std::locale" = type { %"class.std::locale::_Impl"* }
%"class.std::locale::_Impl" = type { i32, %"class.std::locale::facet"**, i64, %"class.std::locale::facet"**, i8** }
%"class.std::locale::facet" = type <{ i32 (...)**, i32, [4 x i8] }>
%"class.std::basic_streambuf" = type { i32 (...)**, i8*, i8*, i8*, i8*, i8*, i8*, %"class.std::locale" }
%"class.std::ctype" = type <{ %"class.std::locale::facet.base", [4 x i8], %struct.__locale_struct*, i8, [7 x i8], i32*, i32*, i16*, i8, [256 x i8], [256 x i8], i8, [6 x i8] }>
%"class.std::locale::facet.base" = type <{ i32 (...)**, i32 }>
%struct.__locale_struct = type { [13 x %struct.__locale_data*], i16*, i32*, i32*, [13 x i8*] }
%struct.__locale_data = type opaque
%"class.std::num_put" = type { %"class.std::locale::facet.base", [4 x i8] }
%"class.std::num_get" = type { %"class.std::locale::facet.base", [4 x i8] }
%class.Derived = type { %class.Base }
%class.Base = type { i32 (...)** }

$_ZN7DerivedC2Ev = comdat any

$_ZN4Base6print2Ev = comdat any

$_ZN4BaseC2Ev = comdat any

$_ZN7Derived5printEv = comdat any

$_ZN4Base5printEv = comdat any

$_ZTV7Derived = comdat any

$_ZTS7Derived = comdat any

$_ZTS4Base = comdat any

$_ZTI4Base = comdat any

$_ZTI7Derived = comdat any

$_ZTV4Base = comdat any

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@_ZTV7Derived = linkonce_odr hidden unnamed_addr constant { [3 x i8*] } { [3 x i8*] [i8* null, i8* bitcast ({ i8*, i8*, i8* }* @_ZTI7Derived to i8*), i8* bitcast (void (%class.Derived*)* @_ZN7Derived5printEv to i8*)] }, comdat, align 8, !type !0, !type !1, !type !2, !type !3, !vcall_visibility !4
@_ZTVN10__cxxabiv120__si_class_type_infoE = external dso_local global i8*
@_ZTS7Derived = linkonce_odr hidden constant [9 x i8] c"7Derived\00", comdat, align 1
@_ZTVN10__cxxabiv117__class_type_infoE = external dso_local global i8*
@_ZTS4Base = linkonce_odr hidden constant [6 x i8] c"4Base\00", comdat, align 1
@_ZTI4Base = linkonce_odr hidden constant { i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv117__class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @_ZTS4Base, i32 0, i32 0) }, comdat, align 8
@_ZTI7Derived = linkonce_odr hidden constant { i8*, i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @_ZTS7Derived, i32 0, i32 0), i8* bitcast ({ i8*, i8* }* @_ZTI4Base to i8*) }, comdat, align 8
@_ZTV4Base = linkonce_odr hidden unnamed_addr constant { [3 x i8*] } { [3 x i8*] [i8* null, i8* bitcast ({ i8*, i8* }* @_ZTI4Base to i8*), i8* bitcast (void (%class.Base*)* @_ZN4Base5printEv to i8*)] }, comdat, align 8, !type !0, !type !1, !vcall_visibility !4
@_ZSt4cout = external dso_local global %"class.std::basic_ostream", align 8
@.str = private unnamed_addr constant [14 x i8] c"Base Function\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"Derived Function\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"Base Function 2\00", align 1
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_virfunc.cpp, i8* null }]

; Function Attrs: noinline uwtable
define internal void @__cxx_global_var_init() #0 section ".text.startup" {
entry:
  call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* nonnull dereferenceable(1) @_ZStL8__ioinit)
  %0 = call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i32 0, i32 0), i8* @__dso_handle) #3
  ret void
}

declare dso_local void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* nonnull dereferenceable(1)) unnamed_addr #1

; Function Attrs: nounwind
declare dso_local void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* nonnull dereferenceable(1)) unnamed_addr #2

; Function Attrs: nounwind
declare dso_local i32 @__cxa_atexit(void (i8*)*, i8*, i8*) #3

; Function Attrs: noinline norecurse optnone uwtable mustprogress
define hidden i32 @main() #4 {
entry:
  %retval = alloca i32, align 4
  %derived1 = alloca %class.Derived, align 8
  %base1 = alloca %class.Base*, align 8
  store i32 0, i32* %retval, align 4
  call void @_ZN7DerivedC2Ev(%class.Derived* nonnull dereferenceable(8) %derived1) #3
  %0 = bitcast %class.Derived* %derived1 to %class.Base*
  store %class.Base* %0, %class.Base** %base1, align 8
  %1 = load %class.Base*, %class.Base** %base1, align 8
  %2 = bitcast %class.Base* %1 to void (%class.Base*)***
  %vtable = load void (%class.Base*)**, void (%class.Base*)*** %2, align 8
  %3 = bitcast void (%class.Base*)** %vtable to i8*
  %4 = call i1 @llvm.type.test(i8* %3, metadata !"_ZTS4Base")
  call void @llvm.assume(i1 %4)
  %vfn = getelementptr inbounds void (%class.Base*)*, void (%class.Base*)** %vtable, i64 0
  %5 = load void (%class.Base*)*, void (%class.Base*)** %vfn, align 8
  call void %5(%class.Base* nonnull dereferenceable(8) %1)
  %6 = load %class.Base*, %class.Base** %base1, align 8
  %7 = bitcast %class.Base* %6 to void (%class.Base*)***
  %vtable1 = load void (%class.Base*)**, void (%class.Base*)*** %7, align 8
  %8 = bitcast void (%class.Base*)** %vtable1 to i8*
  %9 = call i1 @llvm.type.test(i8* %8, metadata !"_ZTS4Base")
  call void @llvm.assume(i1 %9)
  %vfn2 = getelementptr inbounds void (%class.Base*)*, void (%class.Base*)** %vtable1, i64 0
  %10 = load void (%class.Base*)*, void (%class.Base*)** %vfn2, align 8
  call void %10(%class.Base* nonnull dereferenceable(8) %6)
  %11 = load %class.Base*, %class.Base** %base1, align 8
  call void @_ZN4Base6print2Ev(%class.Base* nonnull dereferenceable(8) %11)
  ret i32 0
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr hidden void @_ZN7DerivedC2Ev(%class.Derived* nonnull dereferenceable(8) %this) unnamed_addr #5 comdat align 2 {
entry:
  %this.addr = alloca %class.Derived*, align 8
  store %class.Derived* %this, %class.Derived** %this.addr, align 8
  %this1 = load %class.Derived*, %class.Derived** %this.addr, align 8
  %0 = bitcast %class.Derived* %this1 to %class.Base*
  call void @_ZN4BaseC2Ev(%class.Base* nonnull dereferenceable(8) %0) #3
  %1 = bitcast %class.Derived* %this1 to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [3 x i8*] }, { [3 x i8*] }* @_ZTV7Derived, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %1, align 8
  ret void
}

; Function Attrs: nofree nosync nounwind readnone willreturn
declare i1 @llvm.type.test(i8*, metadata) #6

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.assume(i1 noundef) #7

; Function Attrs: noinline optnone uwtable mustprogress
define linkonce_odr hidden void @_ZN4Base6print2Ev(%class.Base* nonnull dereferenceable(8) %this) #8 comdat align 2 !type !10 {
entry:
  %this.addr = alloca %class.Base*, align 8
  store %class.Base* %this, %class.Base** %this.addr, align 8
  %this1 = load %class.Base*, %class.Base** %this.addr, align 8
  %call = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %call2 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* nonnull dereferenceable(8) %call, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr hidden void @_ZN4BaseC2Ev(%class.Base* nonnull dereferenceable(8) %this) unnamed_addr #5 comdat align 2 {
entry:
  %this.addr = alloca %class.Base*, align 8
  store %class.Base* %this, %class.Base** %this.addr, align 8
  %this1 = load %class.Base*, %class.Base** %this.addr, align 8
  %0 = bitcast %class.Base* %this1 to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [3 x i8*] }, { [3 x i8*] }* @_ZTV4Base, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %0, align 8
  ret void
}

; Function Attrs: noinline optnone uwtable mustprogress
define linkonce_odr hidden void @_ZN7Derived5printEv(%class.Derived* nonnull dereferenceable(8) %this) unnamed_addr #8 comdat align 2 {
entry:
  %this.addr = alloca %class.Derived*, align 8
  store %class.Derived* %this, %class.Derived** %this.addr, align 8
  %this1 = load %class.Derived*, %class.Derived** %this.addr, align 8
  %call = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %call2 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* nonnull dereferenceable(8) %call, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  ret void
}

; Function Attrs: noinline optnone uwtable mustprogress
define linkonce_odr hidden void @_ZN4Base5printEv(%class.Base* nonnull dereferenceable(8) %this) unnamed_addr #8 comdat align 2 {
entry:
  %this.addr = alloca %class.Base*, align 8
  store %class.Base* %this, %class.Base** %this.addr, align 8
  %this1 = load %class.Base*, %class.Base** %this.addr, align 8
  %call = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %call2 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* nonnull dereferenceable(8) %call, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  ret void
}

declare dso_local nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8), i8*) #1

declare dso_local nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* nonnull dereferenceable(8), %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)*) #1

declare dso_local nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8)) #1

; Function Attrs: noinline uwtable
define internal void @_GLOBAL__sub_I_virfunc.cpp() #0 section ".text.startup" {
entry:
  call void @__cxx_global_var_init()
  ret void
}

attributes #0 = { noinline uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { noinline norecurse optnone uwtable mustprogress "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noinline nounwind optnone uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nofree nosync nounwind readnone willreturn }
attributes #7 = { nofree nosync nounwind willreturn }
attributes #8 = { noinline optnone uwtable mustprogress "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!5, !6, !7, !8}
!llvm.ident = !{!9}

!0 = !{i64 16, !"_ZTS4Base"}
!1 = !{i64 16, !"_ZTSM4BaseFvvE.virtual"}
!2 = !{i64 16, !"_ZTS7Derived"}
!3 = !{i64 16, !"_ZTSM7DerivedFvvE.virtual"}
!4 = !{i64 1}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{i32 1, !"Virtual Function Elim", i32 0}
!7 = !{i32 1, !"ThinLTO", i32 0}
!8 = !{i32 1, !"EnableSplitLTOUnit", i32 1}
!9 = !{!"clang version 12.0.1 (https://github.com/christindbose/oldllvm.git 8e6b877c531234164c5868e17752c3dcd7f161d6)"}
!10 = !{i64 0, !"_ZTSM4BaseFvvE"}

^0 = module: (path: "virfunc.bc", hash: (0, 0, 0, 0, 0))
^1 = gv: (name: "_ZNSt8ios_base4InitD1Ev") ; guid = 341920293124011546
^2 = gv: (name: "_ZN4Base5printEv", summaries: (function: (module: ^0, flags: (linkage: linkonce_odr, notEligibleToImport: 1, live: 0, dsoLocal: 1, canAutoHide: 1), insts: 6, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 1, alwaysInline: 0), calls: ((callee: ^12), (callee: ^8)), refs: (^18, ^9, ^28)))) ; guid = 380907501641487629
^3 = gv: (name: "llvm.type.test") ; guid = 608142985856744218
^4 = gv: (name: "_ZStL8__ioinit", summaries: (variable: (module: ^0, flags: (linkage: internal, notEligibleToImport: 1, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 1, constant: 0)))) ; guid = 847027822115061264
^5 = gv: (name: "_ZN7DerivedC2Ev", summaries: (function: (module: ^0, flags: (linkage: linkonce_odr, notEligibleToImport: 1, live: 0, dsoLocal: 1, canAutoHide: 1), insts: 8, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 1, alwaysInline: 0), calls: ((callee: ^23)), refs: (^24)))) ; guid = 1422518963065200313
^6 = gv: (name: "__cxa_atexit") ; guid = 1728571239102037110
^7 = gv: (name: "_ZTV4Base", summaries: (variable: (module: ^0, flags: (linkage: linkonce_odr, notEligibleToImport: 1, live: 0, dsoLocal: 1, canAutoHide: 1), varFlags: (readonly: 0, writeonly: 0, constant: 1), refs: (^22, ^2)))) ; guid = 1960855528937986108
^8 = gv: (name: "_ZNSolsEPFRSoS_E") ; guid = 1974621466523451246
^9 = gv: (name: ".str", summaries: (variable: (module: ^0, flags: (linkage: private, notEligibleToImport: 1, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 1984148116689723415
^10 = gv: (name: "_ZTS4Base", summaries: (variable: (module: ^0, flags: (linkage: linkonce_odr, notEligibleToImport: 1, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 0, writeonly: 0, constant: 1)))) ; guid = 2370067920813235120
^11 = gv: (name: "llvm.global_ctors", summaries: (variable: (module: ^0, flags: (linkage: appending, notEligibleToImport: 1, live: 1, dsoLocal: 0, canAutoHide: 0), varFlags: (readonly: 0, writeonly: 0, constant: 0), refs: (^13)))) ; guid = 2412314959268824392
^12 = gv: (name: "_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc") ; guid = 3668032130702950469
^13 = gv: (name: "_GLOBAL__sub_I_virfunc.cpp", summaries: (function: (module: ^0, flags: (linkage: internal, notEligibleToImport: 1, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 2, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 1, alwaysInline: 0), calls: ((callee: ^26))))) ; guid = 3778145522116705305
^14 = gv: (name: "_ZN7Derived5printEv", summaries: (function: (module: ^0, flags: (linkage: linkonce_odr, notEligibleToImport: 1, live: 0, dsoLocal: 1, canAutoHide: 1), insts: 6, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 1, alwaysInline: 0), calls: ((callee: ^12), (callee: ^8)), refs: (^18, ^31, ^28)))) ; guid = 5363480132390698749
^15 = gv: (name: "llvm.assume") ; guid = 6385187066495850096
^16 = gv: (name: "_ZTI7Derived", summaries: (variable: (module: ^0, flags: (linkage: linkonce_odr, notEligibleToImport: 1, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 0, writeonly: 0, constant: 1), refs: (^19, ^17, ^22)))) ; guid = 7771837567748150594
^17 = gv: (name: "_ZTS7Derived", summaries: (variable: (module: ^0, flags: (linkage: linkonce_odr, notEligibleToImport: 1, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 0, writeonly: 0, constant: 1)))) ; guid = 9137587913532494517
^18 = gv: (name: "_ZSt4cout") ; guid = 9855638509257681147
^19 = gv: (name: "_ZTVN10__cxxabiv120__si_class_type_infoE") ; guid = 10873349890511596996
^20 = gv: (name: "_ZN4Base6print2Ev", summaries: (function: (module: ^0, flags: (linkage: linkonce_odr, notEligibleToImport: 1, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 6, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 1, alwaysInline: 0), calls: ((callee: ^12), (callee: ^8)), refs: (^18, ^29, ^28)))) ; guid = 10970885597961897990
^21 = gv: (name: "_ZNSt8ios_base4InitC1Ev") ; guid = 11391198098215874460
^22 = gv: (name: "_ZTI4Base", summaries: (variable: (module: ^0, flags: (linkage: linkonce_odr, notEligibleToImport: 1, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 0, writeonly: 0, constant: 1), refs: (^27, ^10)))) ; guid = 13357340906568957678
^23 = gv: (name: "_ZN4BaseC2Ev", summaries: (function: (module: ^0, flags: (linkage: linkonce_odr, notEligibleToImport: 1, live: 0, dsoLocal: 1, canAutoHide: 1), insts: 6, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 1, alwaysInline: 0), refs: (^7)))) ; guid = 13594392056002451044
^24 = gv: (name: "_ZTV7Derived", summaries: (variable: (module: ^0, flags: (linkage: linkonce_odr, notEligibleToImport: 1, live: 0, dsoLocal: 1, canAutoHide: 1), varFlags: (readonly: 0, writeonly: 0, constant: 1), refs: (^16, ^14)))) ; guid = 13870436605473471591
^25 = gv: (name: "main", summaries: (function: (module: ^0, flags: (linkage: external, notEligibleToImport: 1, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 28, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 1, returnDoesNotAlias: 0, noInline: 1, alwaysInline: 0), calls: ((callee: ^5), (callee: ^20)), typeIdInfo: (typeTestAssumeConstVCalls: ((vFuncId: (guid: 2370067920813235120, offset: 0))))))) ; guid = 15822663052811949562
^26 = gv: (name: "__cxx_global_var_init", summaries: (function: (module: ^0, flags: (linkage: internal, notEligibleToImport: 1, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 3, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 1, alwaysInline: 0), calls: ((callee: ^21), (callee: ^6)), refs: (^4, ^30, ^1)))) ; guid = 16027452209504714844
^27 = gv: (name: "_ZTVN10__cxxabiv117__class_type_infoE") ; guid = 16105443863886496782
^28 = gv: (name: "_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_") ; guid = 16623691981793914600
^29 = gv: (name: ".str.2", summaries: (variable: (module: ^0, flags: (linkage: private, notEligibleToImport: 1, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 16848283846855097103
^30 = gv: (name: "__dso_handle") ; guid = 18232673344708187679
^31 = gv: (name: ".str.1", summaries: (variable: (module: ^0, flags: (linkage: private, notEligibleToImport: 1, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 18304245305332718772
^32 = flags: 8
^33 = blockcount: 8
