; ModuleID = 'virfunc_noemit.bc'
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
%class.Derived = type { i8 }
%class.Base = type { i8 }

$_ZN4Base5printEv = comdat any

$_ZN4Base6print2Ev = comdat any

$_ZNSt11char_traitsIcE6lengthEPKc = comdat any

$_ZStorSt12_Ios_IostateS_ = comdat any

$_ZSt13__check_facetISt5ctypeIcEERKT_PS3_ = comdat any

$_ZNKSt5ctypeIcE5widenEc = comdat any

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@_ZSt4cout = external dso_local global %"class.std::basic_ostream", align 8
@.str = private unnamed_addr constant [14 x i8] c"Base Function\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"Base Function 2\00", align 1
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_virfunc.cpp, i8* null }]

; Function Attrs: uwtable
define internal fastcc void @__cxx_global_var_init() unnamed_addr #0 section ".text.startup" !dbg !9 {
entry:
  call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* nonnull dereferenceable(1) @_ZStL8__ioinit), !dbg !11
  %0 = call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i64 0, i32 0), i8* nonnull @__dso_handle) #14, !dbg !14
  ret void, !dbg !11
}

declare dso_local void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* nonnull dereferenceable(1)) unnamed_addr #1

; Function Attrs: nounwind
declare dso_local void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* nonnull dereferenceable(1)) unnamed_addr #2

; Function Attrs: nofree nounwind
declare dso_local i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #3

; Function Attrs: norecurse uwtable mustprogress
define hidden i32 @main() local_unnamed_addr #4 !dbg !15 {
entry:
  %derived1 = alloca %class.Derived, align 1
  %0 = getelementptr inbounds %class.Derived, %class.Derived* %derived1, i64 0, i32 0, !dbg !16
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %0) #14, !dbg !16
  %1 = bitcast %class.Derived* %derived1 to %class.Base*, !dbg !17
  call void @_ZN4Base5printEv(%class.Base* nonnull dereferenceable(1) %1), !dbg !18
  call void @_ZN4Base6print2Ev(%class.Base* nonnull dereferenceable(1) %1), !dbg !19
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %0) #14, !dbg !20
  ret i32 0, !dbg !21
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #5

; Function Attrs: uwtable mustprogress
define linkonce_odr hidden void @_ZN4Base5printEv(%class.Base* nonnull dereferenceable(1) %this) local_unnamed_addr #6 comdat align 2 !dbg !22 !type !23 {
entry:
  %call = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0)), !dbg !24
  %call2 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* nonnull dereferenceable(8) %call, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_), !dbg !25
  ret void, !dbg !26
}

; Function Attrs: uwtable mustprogress
define linkonce_odr hidden void @_ZN4Base6print2Ev(%class.Base* nonnull dereferenceable(1) %this) local_unnamed_addr #6 comdat align 2 !dbg !27 !type !23 {
entry:
  %call = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0)), !dbg !28
  %call2 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* nonnull dereferenceable(8) %call, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_), !dbg !29
  ret void, !dbg !30
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #5

; Function Attrs: inlinehint uwtable mustprogress
define available_externally dso_local nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %__out, i8* %__s) local_unnamed_addr #7 !dbg !31 {
entry:
  %tobool.not = icmp eq i8* %__s, null, !dbg !33
  br i1 %tobool.not, label %if.then, label %if.else, !dbg !34

if.then:                                          ; preds = %entry
  %0 = bitcast %"class.std::basic_ostream"* %__out to i8**, !dbg !35
  %vtable = load i8*, i8** %0, align 8, !dbg !35, !tbaa !36
  %vbase.offset.ptr = getelementptr i8, i8* %vtable, i64 -24, !dbg !35
  %1 = bitcast i8* %vbase.offset.ptr to i64*, !dbg !35
  %vbase.offset = load i64, i64* %1, align 8, !dbg !35
  %2 = bitcast %"class.std::basic_ostream"* %__out to i8*, !dbg !35
  %add.ptr = getelementptr inbounds i8, i8* %2, i64 %vbase.offset, !dbg !35
  %3 = bitcast i8* %add.ptr to %"class.std::basic_ios"*, !dbg !35
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate(%"class.std::basic_ios"* nonnull dereferenceable(264) %3, i32 1), !dbg !39
  br label %if.end, !dbg !35

if.else:                                          ; preds = %entry
  %call = call i64 @_ZNSt11char_traitsIcE6lengthEPKc(i8* nonnull %__s), !dbg !40
  %call1 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %__out, i8* nonnull %__s, i64 %call), !dbg !41
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret %"class.std::basic_ostream"* %__out, !dbg !42
}

; Function Attrs: uwtable mustprogress
define available_externally dso_local nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* nonnull dereferenceable(8) %this, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* %__pf) local_unnamed_addr #6 align 2 !dbg !43 {
entry:
  %call = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* %__pf(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %this), !dbg !44
  ret %"class.std::basic_ostream"* %call, !dbg !45
}

; Function Attrs: inlinehint uwtable mustprogress
define available_externally dso_local nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %__os) #7 !dbg !46 {
entry:
  %0 = bitcast %"class.std::basic_ostream"* %__os to i8**, !dbg !47
  %vtable = load i8*, i8** %0, align 8, !dbg !47, !tbaa !36
  %vbase.offset.ptr = getelementptr i8, i8* %vtable, i64 -24, !dbg !47
  %1 = bitcast i8* %vbase.offset.ptr to i64*, !dbg !47
  %vbase.offset = load i64, i64* %1, align 8, !dbg !47
  %2 = bitcast %"class.std::basic_ostream"* %__os to i8*, !dbg !47
  %add.ptr = getelementptr inbounds i8, i8* %2, i64 %vbase.offset, !dbg !47
  %3 = bitcast i8* %add.ptr to %"class.std::basic_ios"*, !dbg !47
  %call = call signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(%"class.std::basic_ios"* nonnull dereferenceable(264) %3, i8 signext 10), !dbg !48
  %call1 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* nonnull dereferenceable(8) %__os, i8 signext %call), !dbg !49
  %call2 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt5flushIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %call1), !dbg !50
  ret %"class.std::basic_ostream"* %call2, !dbg !51
}

; Function Attrs: uwtable mustprogress
define available_externally dso_local void @_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate(%"class.std::basic_ios"* nonnull dereferenceable(264) %this, i32 %__state) local_unnamed_addr #6 align 2 !dbg !52 {
entry:
  %call = call i32 @_ZNKSt9basic_iosIcSt11char_traitsIcEE7rdstateEv(%"class.std::basic_ios"* nonnull dereferenceable(264) %this), !dbg !54
  %call2 = call i32 @_ZStorSt12_Ios_IostateS_(i32 %call, i32 %__state), !dbg !55
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(%"class.std::basic_ios"* nonnull dereferenceable(264) %this, i32 %call2), !dbg !56
  ret void, !dbg !57
}

declare dso_local nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8), i8*, i64) local_unnamed_addr #1

; Function Attrs: nounwind uwtable willreturn mustprogress
define linkonce_odr dso_local i64 @_ZNSt11char_traitsIcE6lengthEPKc(i8* %__s) local_unnamed_addr #8 comdat align 2 !dbg !58 {
entry:
  %call = call i64 @strlen(i8* nonnull dereferenceable(1) %__s) #14, !dbg !60
  ret i64 %call, !dbg !61
}

declare dso_local void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(%"class.std::basic_ios"* nonnull dereferenceable(264), i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable willreturn mustprogress
define linkonce_odr dso_local i32 @_ZStorSt12_Ios_IostateS_(i32 %__a, i32 %__b) local_unnamed_addr #9 comdat !dbg !62 {
entry:
  %or = or i32 %__b, %__a, !dbg !64
  ret i32 %or, !dbg !65
}

; Function Attrs: nounwind uwtable willreturn mustprogress
define available_externally dso_local i32 @_ZNKSt9basic_iosIcSt11char_traitsIcEE7rdstateEv(%"class.std::basic_ios"* nonnull dereferenceable(264) %this) local_unnamed_addr #8 align 2 !dbg !66 {
entry:
  %_M_streambuf_state = getelementptr inbounds %"class.std::basic_ios", %"class.std::basic_ios"* %this, i64 0, i32 0, i32 5, !dbg !67
  %0 = load i32, i32* %_M_streambuf_state, align 8, !dbg !67, !tbaa !68
  ret i32 %0, !dbg !78
}

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare dso_local i64 @strlen(i8* nocapture) local_unnamed_addr #10

; Function Attrs: inlinehint uwtable mustprogress
define available_externally dso_local nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt5flushIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %__os) local_unnamed_addr #7 !dbg !79 {
entry:
  %call = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* nonnull dereferenceable(8) %__os), !dbg !80
  ret %"class.std::basic_ostream"* %call, !dbg !81
}

declare dso_local nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* nonnull dereferenceable(8), i8 signext) local_unnamed_addr #1

; Function Attrs: uwtable mustprogress
define available_externally dso_local signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(%"class.std::basic_ios"* nonnull dereferenceable(264) %this, i8 signext %__c) local_unnamed_addr #6 align 2 !dbg !82 {
entry:
  %_M_ctype = getelementptr inbounds %"class.std::basic_ios", %"class.std::basic_ios"* %this, i64 0, i32 5, !dbg !83
  %0 = load %"class.std::ctype"*, %"class.std::ctype"** %_M_ctype, align 8, !dbg !83, !tbaa !84
  %call = call nonnull align 8 dereferenceable(570) %"class.std::ctype"* @_ZSt13__check_facetISt5ctypeIcEERKT_PS3_(%"class.std::ctype"* %0), !dbg !87
  %call2 = call signext i8 @_ZNKSt5ctypeIcE5widenEc(%"class.std::ctype"* nonnull dereferenceable(570) %call, i8 signext %__c), !dbg !88
  ret i8 %call2, !dbg !89
}

declare dso_local nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* nonnull dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: inlinehint uwtable mustprogress
define linkonce_odr dso_local nonnull align 8 dereferenceable(570) %"class.std::ctype"* @_ZSt13__check_facetISt5ctypeIcEERKT_PS3_(%"class.std::ctype"* %__f) local_unnamed_addr #7 comdat !dbg !90 {
entry:
  %tobool.not = icmp eq %"class.std::ctype"* %__f, null, !dbg !91
  br i1 %tobool.not, label %if.then, label %if.end, !dbg !92

if.then:                                          ; preds = %entry
  call void @_ZSt16__throw_bad_castv() #15, !dbg !93
  unreachable, !dbg !93

if.end:                                           ; preds = %entry
  ret %"class.std::ctype"* %__f, !dbg !94
}

; Function Attrs: uwtable mustprogress
define linkonce_odr dso_local signext i8 @_ZNKSt5ctypeIcE5widenEc(%"class.std::ctype"* nonnull dereferenceable(570) %this, i8 signext %__c) local_unnamed_addr #6 comdat align 2 !dbg !95 {
entry:
  %_M_widen_ok = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %this, i64 0, i32 8, !dbg !97
  %0 = load i8, i8* %_M_widen_ok, align 8, !dbg !97, !tbaa !98
  %tobool.not = icmp eq i8 %0, 0, !dbg !97
  br i1 %tobool.not, label %if.end, label %if.then, !dbg !97

if.then:                                          ; preds = %entry
  %idxprom = zext i8 %__c to i64, !dbg !100
  %arrayidx = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %this, i64 0, i32 9, i64 %idxprom, !dbg !100
  %1 = load i8, i8* %arrayidx, align 1, !dbg !100, !tbaa !101
  br label %return, !dbg !102

if.end:                                           ; preds = %entry
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull dereferenceable(570) %this), !dbg !103
  %2 = bitcast %"class.std::ctype"* %this to i8 (%"class.std::ctype"*, i8)***, !dbg !104
  %vtable = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %2, align 8, !dbg !104, !tbaa !36
  %3 = bitcast i8 (%"class.std::ctype"*, i8)** %vtable to i8*, !dbg !104
  %4 = call i1 @llvm.type.test(i8* %3, metadata !"_ZTSSt5ctypeIcE"), !dbg !104
  call void @llvm.assume(i1 %4), !dbg !104
  %vfn = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %vtable, i64 6, !dbg !104
  %5 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %vfn, align 8, !dbg !104
  %call = call signext i8 %5(%"class.std::ctype"* nonnull dereferenceable(570) %this, i8 signext %__c), !dbg !104
  br label %return, !dbg !105

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i8 [ %1, %if.then ], [ %call, %if.end ], !dbg !106
  ret i8 %retval.0, !dbg !107
}

; Function Attrs: noreturn
declare dso_local void @_ZSt16__throw_bad_castv() local_unnamed_addr #11

declare dso_local void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* nonnull dereferenceable(570)) local_unnamed_addr #1

; Function Attrs: nofree nosync nounwind readnone willreturn
declare i1 @llvm.type.test(i8*, metadata) #12

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.assume(i1 noundef) #13

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_virfunc.cpp() #0 section ".text.startup" !dbg !108 {
entry:
  call fastcc void @__cxx_global_var_init(), !dbg !109
  ret void
}

attributes #0 = { uwtable "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nofree nounwind }
attributes #4 = { norecurse uwtable mustprogress "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { argmemonly nofree nosync nounwind willreturn }
attributes #6 = { uwtable mustprogress "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { inlinehint uwtable mustprogress "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind uwtable willreturn mustprogress "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { inlinehint nounwind uwtable willreturn mustprogress "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { argmemonly nofree nounwind readonly willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { noreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #12 = { nofree nosync nounwind readnone willreturn }
attributes #13 = { nofree nosync nounwind willreturn }
attributes #14 = { nounwind }
attributes #15 = { noreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_14, file: !1, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: NoDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "virfunc.cpp", directory: "/home/tgrogers-raid/a/chris241/work/663/oldllvm/llvm-project-llvmorg-12.0.1/llvm-project-llvmorg-12.0.1/myfiles")
!2 = !{}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 4}
!5 = !{i32 1, !"Virtual Function Elim", i32 0}
!6 = !{i32 1, !"ThinLTO", i32 0}
!7 = !{i32 1, !"EnableSplitLTOUnit", i32 1}
!8 = !{!"clang version 12.0.1"}
!9 = distinct !DISubprogram(name: "__cxx_global_var_init", scope: !1, file: !1, type: !10, flags: DIFlagArtificial, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!10 = !DISubroutineType(types: !2)
!11 = !DILocation(line: 74, column: 25, scope: !12)
!12 = !DILexicalBlockFile(scope: !9, file: !13, discriminator: 0)
!13 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/7.5.0/../../../../include/c++/7.5.0/iostream", directory: "")
!14 = !DILocation(line: 0, scope: !9)
!15 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 21, type: !10, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!16 = !DILocation(line: 22, column: 5, scope: !15)
!17 = !DILocation(line: 25, column: 19, scope: !15)
!18 = !DILocation(line: 28, column: 12, scope: !15)
!19 = !DILocation(line: 29, column: 12, scope: !15)
!20 = !DILocation(line: 35, column: 1, scope: !15)
!21 = !DILocation(line: 32, column: 5, scope: !15)
!22 = distinct !DISubprogram(name: "print", scope: !1, file: !1, line: 6, type: !10, scopeLine: 6, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!23 = !{i64 0, !"_ZTSM4BaseFvvE"}
!24 = !DILocation(line: 7, column: 14, scope: !22)
!25 = !DILocation(line: 7, column: 33, scope: !22)
!26 = !DILocation(line: 8, column: 5, scope: !22)
!27 = distinct !DISubprogram(name: "print2", scope: !1, file: !1, line: 9, type: !10, scopeLine: 9, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!28 = !DILocation(line: 10, column: 14, scope: !27)
!29 = !DILocation(line: 10, column: 35, scope: !27)
!30 = !DILocation(line: 11, column: 5, scope: !27)
!31 = distinct !DISubprogram(name: "operator<<<std::char_traits<char> >", scope: !32, file: !32, line: 556, type: !10, scopeLine: 557, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!32 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/7.5.0/../../../../include/c++/7.5.0/ostream", directory: "")
!33 = !DILocation(line: 558, column: 12, scope: !31)
!34 = !DILocation(line: 558, column: 11, scope: !31)
!35 = !DILocation(line: 559, column: 2, scope: !31)
!36 = !{!37, !37, i64 0}
!37 = !{!"vtable pointer", !38, i64 0}
!38 = !{!"Simple C++ TBAA"}
!39 = !DILocation(line: 559, column: 8, scope: !31)
!40 = !DILocation(line: 562, column: 29, scope: !31)
!41 = !DILocation(line: 561, column: 2, scope: !31)
!42 = !DILocation(line: 563, column: 7, scope: !31)
!43 = distinct !DISubprogram(name: "operator<<", scope: !32, file: !32, line: 108, type: !10, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!44 = !DILocation(line: 113, column: 9, scope: !43)
!45 = !DILocation(line: 113, column: 2, scope: !43)
!46 = distinct !DISubprogram(name: "endl<char, std::char_traits<char> >", scope: !32, file: !32, line: 590, type: !10, scopeLine: 591, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!47 = !DILocation(line: 591, column: 29, scope: !46)
!48 = !DILocation(line: 591, column: 34, scope: !46)
!49 = !DILocation(line: 591, column: 25, scope: !46)
!50 = !DILocation(line: 591, column: 14, scope: !46)
!51 = !DILocation(line: 591, column: 7, scope: !46)
!52 = distinct !DISubprogram(name: "setstate", scope: !53, file: !53, line: 157, type: !10, scopeLine: 158, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!53 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/7.5.0/../../../../include/c++/7.5.0/bits/basic_ios.h", directory: "")
!54 = !DILocation(line: 158, column: 27, scope: !52)
!55 = !DILocation(line: 158, column: 37, scope: !52)
!56 = !DILocation(line: 158, column: 15, scope: !52)
!57 = !DILocation(line: 158, column: 49, scope: !52)
!58 = distinct !DISubprogram(name: "length", scope: !59, file: !59, line: 314, type: !10, scopeLine: 315, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!59 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/7.5.0/../../../../include/c++/7.5.0/bits/char_traits.h", directory: "")
!60 = !DILocation(line: 320, column: 9, scope: !58)
!61 = !DILocation(line: 320, column: 2, scope: !58)
!62 = distinct !DISubprogram(name: "operator|", scope: !63, file: !63, line: 169, type: !10, scopeLine: 170, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!63 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/7.5.0/../../../../include/c++/7.5.0/bits/ios_base.h", directory: "")
!64 = !DILocation(line: 170, column: 47, scope: !62)
!65 = !DILocation(line: 170, column: 5, scope: !62)
!66 = distinct !DISubprogram(name: "rdstate", scope: !53, file: !53, line: 137, type: !10, scopeLine: 138, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!67 = !DILocation(line: 138, column: 16, scope: !66)
!68 = !{!69, !73, i64 32}
!69 = !{!"_ZTSSt8ios_base", !70, i64 8, !70, i64 16, !72, i64 24, !73, i64 28, !73, i64 32, !74, i64 40, !75, i64 48, !71, i64 64, !76, i64 192, !74, i64 200, !77, i64 208}
!70 = !{!"long", !71, i64 0}
!71 = !{!"omnipotent char", !38, i64 0}
!72 = !{!"_ZTSSt13_Ios_Fmtflags", !71, i64 0}
!73 = !{!"_ZTSSt12_Ios_Iostate", !71, i64 0}
!74 = !{!"any pointer", !71, i64 0}
!75 = !{!"_ZTSNSt8ios_base6_WordsE", !74, i64 0, !70, i64 8}
!76 = !{!"int", !71, i64 0}
!77 = !{!"_ZTSSt6locale", !74, i64 0}
!78 = !DILocation(line: 138, column: 9, scope: !66)
!79 = distinct !DISubprogram(name: "flush<char, std::char_traits<char> >", scope: !32, file: !32, line: 612, type: !10, scopeLine: 613, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!80 = !DILocation(line: 613, column: 19, scope: !79)
!81 = !DILocation(line: 613, column: 7, scope: !79)
!82 = distinct !DISubprogram(name: "widen", scope: !53, file: !53, line: 449, type: !10, scopeLine: 450, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!83 = !DILocation(line: 450, column: 30, scope: !82)
!84 = !{!85, !74, i64 240}
!85 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !74, i64 216, !71, i64 224, !86, i64 225, !74, i64 232, !74, i64 240, !74, i64 248, !74, i64 256}
!86 = !{!"bool", !71, i64 0}
!87 = !DILocation(line: 450, column: 16, scope: !82)
!88 = !DILocation(line: 450, column: 40, scope: !82)
!89 = !DILocation(line: 450, column: 9, scope: !82)
!90 = distinct !DISubprogram(name: "__check_facet<std::ctype<char> >", scope: !53, file: !53, line: 47, type: !10, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!91 = !DILocation(line: 49, column: 12, scope: !90)
!92 = !DILocation(line: 49, column: 11, scope: !90)
!93 = !DILocation(line: 50, column: 2, scope: !90)
!94 = !DILocation(line: 51, column: 7, scope: !90)
!95 = distinct !DISubprogram(name: "widen", scope: !96, file: !96, line: 872, type: !10, scopeLine: 873, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!96 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/7.5.0/../../../../include/c++/7.5.0/bits/locale_facets.h", directory: "")
!97 = !DILocation(line: 874, column: 6, scope: !95)
!98 = !{!99, !71, i64 56}
!99 = !{!"_ZTSSt5ctypeIcE", !74, i64 16, !86, i64 24, !74, i64 32, !74, i64 40, !74, i64 48, !71, i64 56, !71, i64 57, !71, i64 313, !71, i64 569}
!100 = !DILocation(line: 875, column: 11, scope: !95)
!101 = !{!71, !71, i64 0}
!102 = !DILocation(line: 875, column: 4, scope: !95)
!103 = !DILocation(line: 876, column: 8, scope: !95)
!104 = !DILocation(line: 877, column: 15, scope: !95)
!105 = !DILocation(line: 877, column: 2, scope: !95)
!106 = !DILocation(line: 0, scope: !95)
!107 = !DILocation(line: 878, column: 7, scope: !95)
!108 = distinct !DISubprogram(linkageName: "_GLOBAL__sub_I_virfunc.cpp", scope: !1, file: !1, type: !10, flags: DIFlagArtificial, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!109 = !DILocation(line: 0, scope: !108)

^0 = module: (path: "virfunc_noemit.bc", hash: (0, 0, 0, 0, 0))
^1 = gv: (name: "_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate") ; guid = 179326676504936346
^2 = gv: (name: "_ZNSt8ios_base4InitD1Ev") ; guid = 341920293124011546
^3 = gv: (name: "_ZN4Base5printEv", summaries: (function: (module: ^0, flags: (linkage: linkonce_odr, notEligibleToImport: 1, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 3, calls: ((callee: ^16), (callee: ^10)), refs: (^26, ^11, ^34)))) ; guid = 380907501641487629
^4 = gv: (name: "_ZNSo5flushEv") ; guid = 587089747786589061
^5 = gv: (name: "llvm.type.test") ; guid = 608142985856744218
^6 = gv: (name: "_ZStL8__ioinit", summaries: (variable: (module: ^0, flags: (linkage: internal, notEligibleToImport: 1, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 1, constant: 0)))) ; guid = 847027822115061264
^7 = gv: (name: "_ZNKSt5ctypeIcE5widenEc", summaries: (function: (module: ^0, flags: (linkage: linkonce_odr, notEligibleToImport: 1, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 20, calls: ((callee: ^24)), typeIdInfo: (typeTestAssumeVCalls: (vFuncId: (guid: 12540549391857714916, offset: 48)))))) ; guid = 968825231200299846
^8 = gv: (name: "_ZNSo3putEc") ; guid = 1518713784926674231
^9 = gv: (name: "__cxa_atexit") ; guid = 1728571239102037110
^10 = gv: (name: "_ZNSolsEPFRSoS_E", summaries: (function: (module: ^0, flags: (linkage: available_externally, notEligibleToImport: 1, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 2))) ; guid = 1974621466523451246
^11 = gv: (name: ".str", summaries: (variable: (module: ^0, flags: (linkage: private, notEligibleToImport: 1, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 1984148116689723415
^12 = gv: (name: "llvm.global_ctors", summaries: (variable: (module: ^0, flags: (linkage: appending, notEligibleToImport: 1, live: 1, dsoLocal: 0, canAutoHide: 0), varFlags: (readonly: 0, writeonly: 0, constant: 0), refs: (^18)))) ; guid = 2412314959268824392
^13 = gv: (name: "strlen") ; guid = 2965136410638013299
^14 = gv: (name: "_ZStorSt12_Ios_IostateS_", summaries: (function: (module: ^0, flags: (linkage: linkonce_odr, notEligibleToImport: 1, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 2))) ; guid = 3439173866890845001
^15 = gv: (name: "llvm.lifetime.start.p0i8") ; guid = 3657761528566682672
^16 = gv: (name: "_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc", summaries: (function: (module: ^0, flags: (linkage: available_externally, notEligibleToImport: 1, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 16, calls: ((callee: ^31), (callee: ^21), (callee: ^20))))) ; guid = 3668032130702950469
^17 = gv: (name: "_ZNKSt9basic_iosIcSt11char_traitsIcEE7rdstateEv", summaries: (function: (module: ^0, flags: (linkage: available_externally, notEligibleToImport: 1, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 3))) ; guid = 3702665668304759324
^18 = gv: (name: "_GLOBAL__sub_I_virfunc.cpp", summaries: (function: (module: ^0, flags: (linkage: internal, notEligibleToImport: 1, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 2, calls: ((callee: ^33))))) ; guid = 3778145522116705305
^19 = gv: (name: "_ZSt16__throw_bad_castv") ; guid = 4088941968120692483
^20 = gv: (name: "_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l") ; guid = 4240958916413714427
^21 = gv: (name: "_ZNSt11char_traitsIcE6lengthEPKc", summaries: (function: (module: ^0, flags: (linkage: linkonce_odr, notEligibleToImport: 1, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 2, calls: ((callee: ^13))))) ; guid = 5416310843529364284
^22 = gv: (name: "llvm.assume") ; guid = 6385187066495850096
^23 = gv: (name: "_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc", summaries: (function: (module: ^0, flags: (linkage: available_externally, notEligibleToImport: 1, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 5, calls: ((callee: ^27), (callee: ^7))))) ; guid = 7033369832423244514
^24 = gv: (name: "_ZNKSt5ctypeIcE13_M_widen_initEv") ; guid = 7252888049172915932
^25 = gv: (name: "_ZSt5flushIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_", summaries: (function: (module: ^0, flags: (linkage: available_externally, notEligibleToImport: 1, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 2, calls: ((callee: ^4))))) ; guid = 7866737699217654289
^26 = gv: (name: "_ZSt4cout") ; guid = 9855638509257681147
^27 = gv: (name: "_ZSt13__check_facetISt5ctypeIcEERKT_PS3_", summaries: (function: (module: ^0, flags: (linkage: linkonce_odr, notEligibleToImport: 1, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 5, calls: ((callee: ^19))))) ; guid = 10179524288214600616
^28 = gv: (name: "_ZN4Base6print2Ev", summaries: (function: (module: ^0, flags: (linkage: linkonce_odr, notEligibleToImport: 1, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 3, calls: ((callee: ^16), (callee: ^10)), refs: (^26, ^36, ^34)))) ; guid = 10970885597961897990
^29 = gv: (name: "_ZNSt8ios_base4InitC1Ev") ; guid = 11391198098215874460
^30 = gv: (name: "llvm.lifetime.end.p0i8") ; guid = 14311549039910520616
^31 = gv: (name: "_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate", summaries: (function: (module: ^0, flags: (linkage: available_externally, notEligibleToImport: 1, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 4, calls: ((callee: ^17), (callee: ^14), (callee: ^1))))) ; guid = 15516998708367284444
^32 = gv: (name: "main", summaries: (function: (module: ^0, flags: (linkage: external, notEligibleToImport: 1, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 8, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 1, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0), calls: ((callee: ^3), (callee: ^28))))) ; guid = 15822663052811949562
^33 = gv: (name: "__cxx_global_var_init", summaries: (function: (module: ^0, flags: (linkage: internal, notEligibleToImport: 1, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 3, calls: ((callee: ^29), (callee: ^9)), refs: (^6, ^35, ^2)))) ; guid = 16027452209504714844
^34 = gv: (name: "_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_", summaries: (function: (module: ^0, flags: (linkage: available_externally, notEligibleToImport: 1, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 12, calls: ((callee: ^23), (callee: ^8), (callee: ^25))))) ; guid = 16623691981793914600
^35 = gv: (name: "__dso_handle") ; guid = 18232673344708187679
^36 = gv: (name: ".str.1", summaries: (variable: (module: ^0, flags: (linkage: private, notEligibleToImport: 1, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 18304245305332718772
^37 = flags: 8
^38 = blockcount: 24
