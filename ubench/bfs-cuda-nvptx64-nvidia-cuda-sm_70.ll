; ModuleID = 'bfs.cu'
source_filename = "bfs.cu"
target datalayout = "e-i64:64-i128:128-v16:16-v32:32-n16:32:64"
target triple = "nvptx64-nvidia-cuda"

%struct.cudaFuncAttributes = type { i64, i64, i64, i32, i32, i32, i32, i32, i32, i32 }
%class.GraphChiContext = type { i32, i32, i32 }
%class.ChiVertex = type { i32, i32, i32, i32, %class.ChiEdge**, %class.ChiEdge** }
%class.ChiEdge = type { i32 (...)** }
%class.Edge = type { %class.ChiEdge, i32, i32 }

$_ZN15GraphChiContext16setNumIterationsEi = comdat any

$_ZN15GraphChiContext14setNumVerticesEi = comdat any

$_ZN15GraphChiContext11setNumEdgesEi = comdat any

$_ZN15GraphChiContext14getNumVerticesEv = comdat any

$_ZN15GraphChiContext11getNumEdgesEv = comdat any

$_ZN9ChiVertexIiiEC1Eiii = comdat any

$_ZN9ChiVertexIiiE8setValueEi = comdat any

$_ZN9ChiVertexIiiE9setInEdgeEiii = comdat any

$_ZN9ChiVertexIiiE10setOutEdgeEPPS0_iiii = comdat any

$_ZN9ChiVertexIiiE11numOutEdgesEv = comdat any

$_ZN9ChiVertexIiiE10getOutEdgeEi = comdat any

$_ZN9ChiVertexIiiE8getValueEv = comdat any

$_ZN9ChiVertexIiiE10numInEdgesEv = comdat any

$_ZN9ChiVertexIiiE9getInEdgeEi = comdat any

$_ZN9ChiVertexIiiEC2Eiii = comdat any

$_ZN4EdgeIiEC1Eii = comdat any

$_ZN4EdgeIiEC2Eii = comdat any

$_ZN4EdgeIiE11getVertexIdEv = comdat any

$_ZN4EdgeIiE8getValueEv = comdat any

$_ZN4EdgeIiE8setValueEi = comdat any

$_ZTV4EdgeIiE = comdat any

@_ZTV4EdgeIiE = linkonce_odr hidden unnamed_addr constant { [5 x i8*] } { [5 x i8*] [i8* null, i8* null, i8* bitcast (i32 (%class.Edge*)* @_ZN4EdgeIiE11getVertexIdEv to i8*), i8* bitcast (i32 (%class.Edge*)* @_ZN4EdgeIiE8getValueEv to i8*), i8* bitcast (void (%class.Edge*, i32)* @_ZN4EdgeIiE8setValueEi to i8*)] }, comdat, align 8

; Function Attrs: nounwind willreturn
define weak hidden i32 @cudaMalloc(i8** %p, i64 %s) local_unnamed_addr #0 {
entry:
  ret i32 999
}

; Function Attrs: nounwind willreturn
define weak hidden i32 @cudaFuncGetAttributes(%struct.cudaFuncAttributes* %p, i8* %c) local_unnamed_addr #0 {
entry:
  ret i32 999
}

; Function Attrs: nounwind willreturn
define weak hidden i32 @cudaDeviceGetAttribute(i32* %value, i32 %attr, i32 %device) local_unnamed_addr #0 {
entry:
  ret i32 999
}

; Function Attrs: nounwind willreturn
define weak hidden i32 @cudaGetDevice(i32* %device) local_unnamed_addr #0 {
entry:
  ret i32 999
}

; Function Attrs: nounwind willreturn
define weak hidden i32 @cudaOccupancyMaxActiveBlocksPerMultiprocessor(i32* %numBlocks, i8* %func, i32 %blockSize, i64 %dynamicSmemSize) local_unnamed_addr #0 {
entry:
  ret i32 999
}

; Function Attrs: nounwind willreturn
define weak hidden i32 @cudaOccupancyMaxActiveBlocksPerMultiprocessorWithFlags(i32* %numBlocks, i8* %func, i32 %blockSize, i64 %dynamicSmemSize, i32 %flags) local_unnamed_addr #0 {
entry:
  ret i32 999
}

; Function Attrs: convergent norecurse nounwind willreturn
define hidden void @_Z11initContextP15GraphChiContextii(%class.GraphChiContext* %context, i32 %vertices, i32 %edges) local_unnamed_addr #1 {
entry:
  %0 = tail call i32 @llvm.nvvm.read.ptx.sreg.ntid.x() #11, !range !15
  %1 = tail call i32 @llvm.nvvm.read.ptx.sreg.ctaid.x() #11, !range !16
  %mul = mul i32 %1, %0
  %2 = tail call i32 @llvm.nvvm.read.ptx.sreg.tid.x() #11, !range !17
  %add = sub nsw i32 0, %2
  %cmp = icmp eq i32 %mul, %add
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @_ZN15GraphChiContext16setNumIterationsEi(%class.GraphChiContext* nonnull dereferenceable(12) %context, i32 0) #11
  tail call void @_ZN15GraphChiContext14setNumVerticesEi(%class.GraphChiContext* nonnull dereferenceable(12) %context, i32 %vertices) #11
  tail call void @_ZN15GraphChiContext11setNumEdgesEi(%class.GraphChiContext* nonnull dereferenceable(12) %context, i32 %edges) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind willreturn
define linkonce_odr hidden void @_ZN15GraphChiContext16setNumIterationsEi(%class.GraphChiContext* nonnull dereferenceable(12) %this, i32 %iter) local_unnamed_addr #2 comdat align 2 {
entry:
  %numIterations = getelementptr inbounds %class.GraphChiContext, %class.GraphChiContext* %this, i64 0, i32 0
  store i32 %iter, i32* %numIterations, align 4, !tbaa !18
  ret void
}

; Function Attrs: noinline nounwind willreturn
define linkonce_odr hidden void @_ZN15GraphChiContext14setNumVerticesEi(%class.GraphChiContext* nonnull dereferenceable(12) %this, i32 %vertices) local_unnamed_addr #2 comdat align 2 {
entry:
  %numVertices = getelementptr inbounds %class.GraphChiContext, %class.GraphChiContext* %this, i64 0, i32 1
  store i32 %vertices, i32* %numVertices, align 4, !tbaa !23
  ret void
}

; Function Attrs: noinline nounwind willreturn
define linkonce_odr hidden void @_ZN15GraphChiContext11setNumEdgesEi(%class.GraphChiContext* nonnull dereferenceable(12) %this, i32 %edges) local_unnamed_addr #2 comdat align 2 {
entry:
  %numEdges = getelementptr inbounds %class.GraphChiContext, %class.GraphChiContext* %this, i64 0, i32 2
  store i32 %edges, i32* %numEdges, align 4, !tbaa !24
  ret void
}

; Function Attrs: convergent norecurse nounwind
define hidden void @_Z10initObjectPP9ChiVertexIiiEP15GraphChiContextPiS5_S5_S5_(%class.ChiVertex** nocapture %vertex, %class.GraphChiContext* nonnull %context, i32* nocapture readonly %row, i32* nocapture readnone %col, i32* nocapture readonly %inrow, i32* nocapture readonly %incol) local_unnamed_addr #3 {
entry:
  %0 = tail call i32 @llvm.nvvm.read.ptx.sreg.ntid.x() #11, !range !15
  %1 = tail call i32 @llvm.nvvm.read.ptx.sreg.ctaid.x() #11, !range !16
  %mul = mul i32 %1, %0
  %2 = tail call i32 @llvm.nvvm.read.ptx.sreg.tid.x() #11, !range !17
  %add = add i32 %mul, %2
  %call3 = tail call i32 @_ZN15GraphChiContext14getNumVerticesEv(%class.GraphChiContext* nonnull dereferenceable(12) %context) #11
  %cmp = icmp slt i32 %add, %call3
  br i1 %cmp, label %if.then, label %if.end36

if.then:                                          ; preds = %entry
  %idxprom = sext i32 %add to i64
  %arrayidx = getelementptr inbounds i32, i32* %row, i64 %idxprom
  %3 = load i32, i32* %arrayidx, align 4, !tbaa !25
  %add4 = add nsw i32 %add, 1
  %call5 = tail call i32 @_ZN15GraphChiContext14getNumVerticesEv(%class.GraphChiContext* nonnull dereferenceable(12) %context) #11
  %cmp6 = icmp slt i32 %add4, %call5
  br i1 %cmp6, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.then
  %idxprom9 = sext i32 %add4 to i64
  %arrayidx10 = getelementptr inbounds i32, i32* %row, i64 %idxprom9
  %4 = load i32, i32* %arrayidx10, align 4, !tbaa !25
  br label %if.end

if.else:                                          ; preds = %if.then
  %call11 = tail call i32 @_ZN15GraphChiContext11getNumEdgesEv(%class.GraphChiContext* nonnull dereferenceable(12) %context) #11
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then7
  %out_end.0 = phi i32 [ %4, %if.then7 ], [ %call11, %if.else ]
  %arrayidx13 = getelementptr inbounds i32, i32* %inrow, i64 %idxprom
  %5 = load i32, i32* %arrayidx13, align 4, !tbaa !25
  %call15 = tail call i32 @_ZN15GraphChiContext14getNumVerticesEv(%class.GraphChiContext* nonnull dereferenceable(12) %context) #11
  %cmp16 = icmp slt i32 %add4, %call15
  br i1 %cmp16, label %if.then17, label %if.else21

if.then17:                                        ; preds = %if.end
  %idxprom19 = sext i32 %add4 to i64
  %arrayidx20 = getelementptr inbounds i32, i32* %inrow, i64 %idxprom19
  %6 = load i32, i32* %arrayidx20, align 4, !tbaa !25
  br label %if.end23

if.else21:                                        ; preds = %if.end
  %call22 = tail call i32 @_ZN15GraphChiContext11getNumEdgesEv(%class.GraphChiContext* nonnull dereferenceable(12) %context) #11
  br label %if.end23

if.end23:                                         ; preds = %if.else21, %if.then17
  %in_end.0 = phi i32 [ %6, %if.then17 ], [ %call22, %if.else21 ]
  %sub = sub nsw i32 %in_end.0, %5
  %sub24 = sub nsw i32 %out_end.0, %3
  %call.i = tail call noalias i8* @malloc(i64 32) #12
  %7 = bitcast i8* %call.i to %class.ChiVertex*
  tail call void @_ZN9ChiVertexIiiEC1Eiii(%class.ChiVertex* nonnull dereferenceable(32) %7, i32 %add, i32 %sub, i32 %sub24) #12
  %arrayidx27 = getelementptr inbounds %class.ChiVertex*, %class.ChiVertex** %vertex, i64 %idxprom
  %8 = bitcast %class.ChiVertex** %arrayidx27 to i8**
  store i8* %call.i, i8** %8, align 8, !tbaa !26
  tail call void @_ZN9ChiVertexIiiE8setValueEi(%class.ChiVertex* nonnull dereferenceable(32) %7, i32 2147483647) #11
  %cmp3069 = icmp sgt i32 %in_end.0, %5
  br i1 %cmp3069, label %for.body, label %if.end36

for.body:                                         ; preds = %if.end23, %for.body
  %i.070 = phi i32 [ %inc, %for.body ], [ %5, %if.end23 ]
  %9 = load %class.ChiVertex*, %class.ChiVertex** %arrayidx27, align 8, !tbaa !26
  %sub33 = sub nsw i32 %i.070, %5
  %idxprom34 = sext i32 %i.070 to i64
  %arrayidx35 = getelementptr inbounds i32, i32* %incol, i64 %idxprom34
  %10 = load i32, i32* %arrayidx35, align 4, !tbaa !25
  tail call void @_ZN9ChiVertexIiiE9setInEdgeEiii(%class.ChiVertex* nonnull dereferenceable(32) %9, i32 %sub33, i32 %10, i32 2147483647) #12
  %inc = add i32 %i.070, 1
  %exitcond.not = icmp eq i32 %inc, %in_end.0
  br i1 %exitcond.not, label %if.end36, label %for.body

if.end36:                                         ; preds = %for.body, %if.end23, %entry
  ret void
}

; Function Attrs: noinline nounwind willreturn
define linkonce_odr hidden i32 @_ZN15GraphChiContext14getNumVerticesEv(%class.GraphChiContext* nonnull dereferenceable(12) %this) local_unnamed_addr #2 comdat align 2 {
entry:
  %numVertices = getelementptr inbounds %class.GraphChiContext, %class.GraphChiContext* %this, i64 0, i32 1
  %0 = load i32, i32* %numVertices, align 4, !tbaa !23
  ret i32 %0
}

; Function Attrs: noinline nounwind willreturn
define linkonce_odr hidden i32 @_ZN15GraphChiContext11getNumEdgesEv(%class.GraphChiContext* nonnull dereferenceable(12) %this) local_unnamed_addr #2 comdat align 2 {
entry:
  %numEdges = getelementptr inbounds %class.GraphChiContext, %class.GraphChiContext* %this, i64 0, i32 2
  %0 = load i32, i32* %numEdges, align 4, !tbaa !24
  ret i32 %0
}

; Function Attrs: convergent noinline nounwind
define linkonce_odr hidden void @_ZN9ChiVertexIiiEC1Eiii(%class.ChiVertex* nonnull dereferenceable(32) %this, i32 %id, i32 %inDegree, i32 %outDegree) unnamed_addr #4 comdat align 2 {
entry:
  tail call void @_ZN9ChiVertexIiiEC2Eiii(%class.ChiVertex* nonnull dereferenceable(32) %this, i32 %id, i32 %inDegree, i32 %outDegree) #12
  ret void
}

; Function Attrs: noinline nounwind willreturn
define linkonce_odr hidden void @_ZN9ChiVertexIiiE8setValueEi(%class.ChiVertex* nonnull dereferenceable(32) %this, i32 %x) local_unnamed_addr #2 comdat align 2 {
entry:
  %value = getelementptr inbounds %class.ChiVertex, %class.ChiVertex* %this, i64 0, i32 3
  store i32 %x, i32* %value, align 4, !tbaa !28
  ret void
}

; Function Attrs: convergent noinline nounwind
define linkonce_odr hidden void @_ZN9ChiVertexIiiE9setInEdgeEiii(%class.ChiVertex* nonnull dereferenceable(32) %this, i32 %idx, i32 %vertexId, i32 %value) local_unnamed_addr #4 comdat align 2 {
entry:
  %call.i = tail call noalias i8* @malloc(i64 16) #12
  %0 = bitcast i8* %call.i to %class.Edge*
  tail call void @_ZN4EdgeIiEC1Eii(%class.Edge* nonnull dereferenceable(16) %0, i32 %vertexId, i32 %value) #12
  %inEdgeDataArray = getelementptr inbounds %class.ChiVertex, %class.ChiVertex* %this, i64 0, i32 4
  %1 = load %class.ChiEdge**, %class.ChiEdge*** %inEdgeDataArray, align 8, !tbaa !30
  %idxprom = sext i32 %idx to i64
  %arrayidx = getelementptr inbounds %class.ChiEdge*, %class.ChiEdge** %1, i64 %idxprom
  %2 = bitcast %class.ChiEdge** %arrayidx to i8**
  store i8* %call.i, i8** %2, align 8, !tbaa !26
  ret void
}

; Function Attrs: convergent norecurse nounwind
define hidden void @_Z11initOutEdgePP9ChiVertexIiiEP15GraphChiContextPiS5_(%class.ChiVertex** %vertex, %class.GraphChiContext* nonnull %context, i32* nocapture readonly %row, i32* nocapture readonly %col) local_unnamed_addr #3 {
entry:
  %0 = tail call i32 @llvm.nvvm.read.ptx.sreg.ntid.x() #11, !range !15
  %1 = tail call i32 @llvm.nvvm.read.ptx.sreg.ctaid.x() #11, !range !16
  %mul = mul i32 %1, %0
  %2 = tail call i32 @llvm.nvvm.read.ptx.sreg.tid.x() #11, !range !17
  %add = add i32 %mul, %2
  %call3 = tail call i32 @_ZN15GraphChiContext14getNumVerticesEv(%class.GraphChiContext* nonnull dereferenceable(12) %context) #11
  %cmp = icmp slt i32 %add, %call3
  br i1 %cmp, label %if.then, label %if.end17

if.then:                                          ; preds = %entry
  %idxprom = sext i32 %add to i64
  %arrayidx = getelementptr inbounds i32, i32* %row, i64 %idxprom
  %3 = load i32, i32* %arrayidx, align 4, !tbaa !25
  %add4 = add nsw i32 %add, 1
  %call5 = tail call i32 @_ZN15GraphChiContext14getNumVerticesEv(%class.GraphChiContext* nonnull dereferenceable(12) %context) #11
  %cmp6 = icmp slt i32 %add4, %call5
  br i1 %cmp6, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.then
  %idxprom9 = sext i32 %add4 to i64
  %arrayidx10 = getelementptr inbounds i32, i32* %row, i64 %idxprom9
  %4 = load i32, i32* %arrayidx10, align 4, !tbaa !25
  br label %if.end

if.else:                                          ; preds = %if.then
  %call11 = tail call i32 @_ZN15GraphChiContext11getNumEdgesEv(%class.GraphChiContext* nonnull dereferenceable(12) %context) #11
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then7
  %out_end.0 = phi i32 [ %4, %if.then7 ], [ %call11, %if.else ]
  %cmp1235 = icmp slt i32 %3, %out_end.0
  br i1 %cmp1235, label %for.body.lr.ph, label %if.end17

for.body.lr.ph:                                   ; preds = %if.end
  %arrayidx14 = getelementptr inbounds %class.ChiVertex*, %class.ChiVertex** %vertex, i64 %idxprom
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %i.036 = phi i32 [ %3, %for.body.lr.ph ], [ %inc, %for.body ]
  %5 = load %class.ChiVertex*, %class.ChiVertex** %arrayidx14, align 8, !tbaa !26
  %sub = sub nsw i32 %i.036, %3
  %idxprom15 = sext i32 %i.036 to i64
  %arrayidx16 = getelementptr inbounds i32, i32* %col, i64 %idxprom15
  %6 = load i32, i32* %arrayidx16, align 4, !tbaa !25
  tail call void @_ZN9ChiVertexIiiE10setOutEdgeEPPS0_iiii(%class.ChiVertex* nonnull dereferenceable(32) %5, %class.ChiVertex** %vertex, i32 %add, i32 %sub, i32 %6, i32 2147483647) #12
  %inc = add i32 %i.036, 1
  %exitcond.not = icmp eq i32 %inc, %out_end.0
  br i1 %exitcond.not, label %if.end17, label %for.body

if.end17:                                         ; preds = %for.body, %if.end, %entry
  ret void
}

; Function Attrs: convergent noinline nounwind
define linkonce_odr hidden void @_ZN9ChiVertexIiiE10setOutEdgeEPPS0_iiii(%class.ChiVertex* nonnull dereferenceable(32) %this, %class.ChiVertex** %vertex, i32 %src, i32 %idx, i32 %vertexId, i32 %value) local_unnamed_addr #4 comdat align 2 {
entry:
  %idxprom = sext i32 %vertexId to i64
  %arrayidx = getelementptr inbounds %class.ChiVertex*, %class.ChiVertex** %vertex, i64 %idxprom
  %0 = load %class.ChiVertex*, %class.ChiVertex** %arrayidx, align 8, !tbaa !26
  %call22 = tail call i32 @_ZN9ChiVertexIiiE10numInEdgesEv(%class.ChiVertex* nonnull dereferenceable(32) %0) #11
  %cmp23 = icmp sgt i32 %call22, 0
  br i1 %cmp23, label %for.body, label %cleanup

for.body:                                         ; preds = %entry, %for.inc
  %i.024 = phi i32 [ %inc, %for.inc ], [ 0, %entry ]
  %1 = load %class.ChiVertex*, %class.ChiVertex** %arrayidx, align 8, !tbaa !26
  %call4 = tail call %class.ChiEdge* @_ZN9ChiVertexIiiE9getInEdgeEi(%class.ChiVertex* nonnull dereferenceable(32) %1, i32 %i.024) #11
  %2 = bitcast %class.ChiEdge* %call4 to i32 (%class.ChiEdge*)***
  %vtable = load i32 (%class.ChiEdge*)**, i32 (%class.ChiEdge*)*** %2, align 8, !tbaa !31
  %3 = bitcast i32 (%class.ChiEdge*)** %vtable to i8*
  %4 = tail call i1 @llvm.type.test(i8* %3, metadata !"_ZTS7ChiEdgeIiE")
  tail call void @llvm.assume(i1 %4)
  %5 = load i32 (%class.ChiEdge*)*, i32 (%class.ChiEdge*)** %vtable, align 8
  %call5 = tail call i32 %5(%class.ChiEdge* nonnull dereferenceable(8) %call4) #12
  %cmp6 = icmp eq i32 %call5, %src
  br i1 %cmp6, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body
  %6 = load %class.ChiVertex*, %class.ChiVertex** %arrayidx, align 8, !tbaa !26
  %call9 = tail call %class.ChiEdge* @_ZN9ChiVertexIiiE9getInEdgeEi(%class.ChiVertex* nonnull dereferenceable(32) %6, i32 %i.024) #11
  %outEdgeDataArray = getelementptr inbounds %class.ChiVertex, %class.ChiVertex* %this, i64 0, i32 5
  %7 = load %class.ChiEdge**, %class.ChiEdge*** %outEdgeDataArray, align 8, !tbaa !33
  %idxprom10 = sext i32 %idx to i64
  %arrayidx11 = getelementptr inbounds %class.ChiEdge*, %class.ChiEdge** %7, i64 %idxprom10
  store %class.ChiEdge* %call9, %class.ChiEdge** %arrayidx11, align 8, !tbaa !26
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.024, 1
  %8 = load %class.ChiVertex*, %class.ChiVertex** %arrayidx, align 8, !tbaa !26
  %call = tail call i32 @_ZN9ChiVertexIiiE10numInEdgesEv(%class.ChiVertex* nonnull dereferenceable(32) %8) #11
  %cmp = icmp slt i32 %inc, %call
  br i1 %cmp, label %for.body, label %cleanup

cleanup:                                          ; preds = %for.inc, %entry, %if.then
  ret void
}

; Function Attrs: convergent norecurse nounwind
define hidden void @_Z3BFSPP9ChiVertexIiiEP15GraphChiContexti(%class.ChiVertex** nocapture readonly %vertex, %class.GraphChiContext* nonnull %context, i32 %iteration) local_unnamed_addr #5 {
entry:
  %0 = tail call i32 @llvm.nvvm.read.ptx.sreg.ntid.x() #11, !range !15
  %1 = tail call i32 @llvm.nvvm.read.ptx.sreg.ctaid.x() #11, !range !16
  %mul = mul i32 %1, %0
  %2 = tail call i32 @llvm.nvvm.read.ptx.sreg.tid.x() #11, !range !17
  %add = add i32 %mul, %2
  %call3 = tail call i32 @_ZN15GraphChiContext14getNumVerticesEv(%class.GraphChiContext* nonnull dereferenceable(12) %context) #11
  %cmp = icmp slt i32 %add, %call3
  br i1 %cmp, label %if.then, label %if.end71

if.then:                                          ; preds = %entry
  %cmp4 = icmp eq i32 %iteration, 0
  br i1 %cmp4, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.then
  %cmp6 = icmp eq i32 %add, 0
  br i1 %cmp6, label %if.then7, label %if.end71

if.then7:                                         ; preds = %if.then5
  %3 = load %class.ChiVertex*, %class.ChiVertex** %vertex, align 8, !tbaa !26
  tail call void @_ZN9ChiVertexIiiE8setValueEi(%class.ChiVertex* nonnull dereferenceable(32) %3, i32 0) #11
  %4 = load %class.ChiVertex*, %class.ChiVertex** %vertex, align 8, !tbaa !26
  %call10 = tail call i32 @_ZN9ChiVertexIiiE11numOutEdgesEv(%class.ChiVertex* nonnull dereferenceable(32) %4) #11
  %cmp11117 = icmp sgt i32 %call10, 0
  br i1 %cmp11117, label %for.body, label %if.end71

for.body:                                         ; preds = %if.then7, %for.body
  %i.0118 = phi i32 [ %inc, %for.body ], [ 0, %if.then7 ]
  %5 = load %class.ChiVertex*, %class.ChiVertex** %vertex, align 8, !tbaa !26
  %call14 = tail call %class.ChiEdge* @_ZN9ChiVertexIiiE10getOutEdgeEi(%class.ChiVertex* nonnull dereferenceable(32) %5, i32 %i.0118) #11
  %6 = bitcast %class.ChiEdge* %call14 to void (%class.ChiEdge*, i32)***
  %vtable = load void (%class.ChiEdge*, i32)**, void (%class.ChiEdge*, i32)*** %6, align 8, !tbaa !31
  %7 = bitcast void (%class.ChiEdge*, i32)** %vtable to i8*
  %8 = tail call i1 @llvm.type.test(i8* %7, metadata !"_ZTS7ChiEdgeIiE")
  tail call void @llvm.assume(i1 %8)
  %vfn = getelementptr inbounds void (%class.ChiEdge*, i32)*, void (%class.ChiEdge*, i32)** %vtable, i64 2
  %9 = load void (%class.ChiEdge*, i32)*, void (%class.ChiEdge*, i32)** %vfn, align 8
  tail call void %9(%class.ChiEdge* nonnull dereferenceable(8) %call14, i32 1) #12
  %inc = add nuw nsw i32 %i.0118, 1
  %exitcond.not = icmp eq i32 %inc, %call10
  br i1 %exitcond.not, label %if.end71, label %for.body

if.else:                                          ; preds = %if.then
  %idxprom15 = sext i32 %add to i64
  %arrayidx16 = getelementptr inbounds %class.ChiVertex*, %class.ChiVertex** %vertex, i64 %idxprom15
  %10 = load %class.ChiVertex*, %class.ChiVertex** %arrayidx16, align 8, !tbaa !26
  %call17 = tail call i32 @_ZN9ChiVertexIiiE8getValueEv(%class.ChiVertex* nonnull dereferenceable(32) %10) #11
  %11 = load %class.ChiVertex*, %class.ChiVertex** %arrayidx16, align 8, !tbaa !26
  %call20 = tail call i32 @_ZN9ChiVertexIiiE10numInEdgesEv(%class.ChiVertex* nonnull dereferenceable(32) %11) #11
  %cmp23121 = icmp sgt i32 %call20, 0
  br i1 %cmp23121, label %for.body25, label %for.cond.cleanup24

for.cond.cleanup24:                               ; preds = %for.body25, %if.else
  %curmin.0.lcssa = phi i32 [ %call17, %if.else ], [ %min.i.i, %for.body25 ]
  %12 = load %class.ChiVertex*, %class.ChiVertex** %arrayidx16, align 8, !tbaa !26
  %call38 = tail call i32 @_ZN9ChiVertexIiiE8getValueEv(%class.ChiVertex* nonnull dereferenceable(32) %12) #11
  %cmp39 = icmp slt i32 %curmin.0.lcssa, %call38
  br i1 %cmp39, label %if.then40, label %if.end71

for.body25:                                       ; preds = %if.else, %for.body25
  %curmin.0123 = phi i32 [ %min.i.i, %for.body25 ], [ %call17, %if.else ]
  %i21.0122 = phi i32 [ %inc34, %for.body25 ], [ 0, %if.else ]
  %13 = load %class.ChiVertex*, %class.ChiVertex** %arrayidx16, align 8, !tbaa !26
  %call28 = tail call %class.ChiEdge* @_ZN9ChiVertexIiiE9getInEdgeEi(%class.ChiVertex* nonnull dereferenceable(32) %13, i32 %i21.0122) #11
  %14 = bitcast %class.ChiEdge* %call28 to i32 (%class.ChiEdge*)***
  %vtable29 = load i32 (%class.ChiEdge*)**, i32 (%class.ChiEdge*)*** %14, align 8, !tbaa !31
  %15 = bitcast i32 (%class.ChiEdge*)** %vtable29 to i8*
  %16 = tail call i1 @llvm.type.test(i8* %15, metadata !"_ZTS7ChiEdgeIiE")
  tail call void @llvm.assume(i1 %16)
  %vfn30 = getelementptr inbounds i32 (%class.ChiEdge*)*, i32 (%class.ChiEdge*)** %vtable29, i64 1
  %17 = load i32 (%class.ChiEdge*)*, i32 (%class.ChiEdge*)** %vfn30, align 8
  %call31 = tail call i32 %17(%class.ChiEdge* nonnull dereferenceable(8) %call28) #12
  %min.cond.not.i.i = icmp sgt i32 %curmin.0123, %call31
  %min.i.i = select i1 %min.cond.not.i.i, i32 %call31, i32 %curmin.0123
  %inc34 = add nuw nsw i32 %i21.0122, 1
  %exitcond126.not = icmp eq i32 %inc34, %call20
  br i1 %exitcond126.not, label %for.cond.cleanup24, label %for.body25

if.then40:                                        ; preds = %for.cond.cleanup24
  %18 = load %class.ChiVertex*, %class.ChiVertex** %arrayidx16, align 8, !tbaa !26
  tail call void @_ZN9ChiVertexIiiE8setValueEi(%class.ChiVertex* nonnull dereferenceable(32) %18, i32 %curmin.0.lcssa) #11
  %19 = load %class.ChiVertex*, %class.ChiVertex** %arrayidx16, align 8, !tbaa !26
  %call46 = tail call i32 @_ZN9ChiVertexIiiE11numOutEdgesEv(%class.ChiVertex* nonnull dereferenceable(32) %19) #11
  %cmp49119 = icmp sgt i32 %call46, 0
  br i1 %cmp49119, label %for.body51.lr.ph, label %if.end71

for.body51.lr.ph:                                 ; preds = %if.then40
  %add59 = add nsw i32 %curmin.0.lcssa, 1
  br label %for.body51

for.body51:                                       ; preds = %for.body51.lr.ph, %if.end65
  %i47.0120 = phi i32 [ 0, %for.body51.lr.ph ], [ %inc67, %if.end65 ]
  %20 = load %class.ChiVertex*, %class.ChiVertex** %arrayidx16, align 8, !tbaa !26
  %call55 = tail call %class.ChiEdge* @_ZN9ChiVertexIiiE10getOutEdgeEi(%class.ChiVertex* nonnull dereferenceable(32) %20, i32 %i47.0120) #11
  %21 = bitcast %class.ChiEdge* %call55 to i32 (%class.ChiEdge*)***
  %vtable56 = load i32 (%class.ChiEdge*)**, i32 (%class.ChiEdge*)*** %21, align 8, !tbaa !31
  %22 = bitcast i32 (%class.ChiEdge*)** %vtable56 to i8*
  %23 = tail call i1 @llvm.type.test(i8* %22, metadata !"_ZTS7ChiEdgeIiE")
  tail call void @llvm.assume(i1 %23)
  %vfn57 = getelementptr inbounds i32 (%class.ChiEdge*)*, i32 (%class.ChiEdge*)** %vtable56, i64 1
  %24 = load i32 (%class.ChiEdge*)*, i32 (%class.ChiEdge*)** %vfn57, align 8
  %call58 = tail call i32 %24(%class.ChiEdge* nonnull dereferenceable(8) %call55) #12
  %cmp60 = icmp sgt i32 %call58, %add59
  br i1 %cmp60, label %if.then61, label %if.end65

if.then61:                                        ; preds = %for.body51
  %25 = bitcast %class.ChiEdge* %call55 to void (%class.ChiEdge*, i32)***
  %vtable63 = load void (%class.ChiEdge*, i32)**, void (%class.ChiEdge*, i32)*** %25, align 8, !tbaa !31
  %26 = bitcast void (%class.ChiEdge*, i32)** %vtable63 to i8*
  %27 = tail call i1 @llvm.type.test(i8* %26, metadata !"_ZTS7ChiEdgeIiE")
  tail call void @llvm.assume(i1 %27)
  %vfn64 = getelementptr inbounds void (%class.ChiEdge*, i32)*, void (%class.ChiEdge*, i32)** %vtable63, i64 2
  %28 = load void (%class.ChiEdge*, i32)*, void (%class.ChiEdge*, i32)** %vfn64, align 8
  tail call void %28(%class.ChiEdge* nonnull dereferenceable(8) %call55, i32 %add59) #12
  br label %if.end65

if.end65:                                         ; preds = %if.then61, %for.body51
  %inc67 = add nuw nsw i32 %i47.0120, 1
  %exitcond125.not = icmp eq i32 %inc67, %call46
  br i1 %exitcond125.not, label %if.end71, label %for.body51

if.end71:                                         ; preds = %if.end65, %for.body, %if.then40, %if.then7, %for.cond.cleanup24, %if.then5, %entry
  ret void
}

; Function Attrs: noinline nounwind willreturn
define linkonce_odr hidden i32 @_ZN9ChiVertexIiiE11numOutEdgesEv(%class.ChiVertex* nonnull dereferenceable(32) %this) local_unnamed_addr #2 comdat align 2 {
entry:
  %nOutedges = getelementptr inbounds %class.ChiVertex, %class.ChiVertex* %this, i64 0, i32 2
  %0 = load i32, i32* %nOutedges, align 8, !tbaa !34
  ret i32 %0
}

; Function Attrs: noinline nounwind willreturn
define linkonce_odr hidden %class.ChiEdge* @_ZN9ChiVertexIiiE10getOutEdgeEi(%class.ChiVertex* nonnull dereferenceable(32) %this, i32 %i) local_unnamed_addr #2 comdat align 2 {
entry:
  %outEdgeDataArray = getelementptr inbounds %class.ChiVertex, %class.ChiVertex* %this, i64 0, i32 5
  %0 = load %class.ChiEdge**, %class.ChiEdge*** %outEdgeDataArray, align 8, !tbaa !33
  %idxprom = sext i32 %i to i64
  %arrayidx = getelementptr inbounds %class.ChiEdge*, %class.ChiEdge** %0, i64 %idxprom
  %1 = load %class.ChiEdge*, %class.ChiEdge** %arrayidx, align 8, !tbaa !26
  ret %class.ChiEdge* %1
}

; Function Attrs: nofree nosync nounwind readnone willreturn
declare i1 @llvm.type.test(i8*, metadata) #6

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.assume(i1 noundef) #7

; Function Attrs: noinline nounwind willreturn
define linkonce_odr hidden i32 @_ZN9ChiVertexIiiE8getValueEv(%class.ChiVertex* nonnull dereferenceable(32) %this) local_unnamed_addr #2 comdat align 2 {
entry:
  %value = getelementptr inbounds %class.ChiVertex, %class.ChiVertex* %this, i64 0, i32 3
  %0 = load i32, i32* %value, align 4, !tbaa !28
  ret i32 %0
}

; Function Attrs: noinline nounwind willreturn
define linkonce_odr hidden i32 @_ZN9ChiVertexIiiE10numInEdgesEv(%class.ChiVertex* nonnull dereferenceable(32) %this) local_unnamed_addr #2 comdat align 2 {
entry:
  %nInedges = getelementptr inbounds %class.ChiVertex, %class.ChiVertex* %this, i64 0, i32 1
  %0 = load i32, i32* %nInedges, align 4, !tbaa !35
  ret i32 %0
}

; Function Attrs: noinline nounwind willreturn
define linkonce_odr hidden %class.ChiEdge* @_ZN9ChiVertexIiiE9getInEdgeEi(%class.ChiVertex* nonnull dereferenceable(32) %this, i32 %i) local_unnamed_addr #2 comdat align 2 {
entry:
  %inEdgeDataArray = getelementptr inbounds %class.ChiVertex, %class.ChiVertex* %this, i64 0, i32 4
  %0 = load %class.ChiEdge**, %class.ChiEdge*** %inEdgeDataArray, align 8, !tbaa !30
  %idxprom = sext i32 %i to i64
  %arrayidx = getelementptr inbounds %class.ChiEdge*, %class.ChiEdge** %0, i64 %idxprom
  %1 = load %class.ChiEdge*, %class.ChiEdge** %arrayidx, align 8, !tbaa !26
  ret %class.ChiEdge* %1
}

; Function Attrs: convergent norecurse nounwind willreturn
define hidden void @_Z8copyBackPP9ChiVertexIiiEP15GraphChiContextPi(%class.ChiVertex** nocapture readonly %vertex, %class.GraphChiContext* nonnull %context, i32* nocapture %index) local_unnamed_addr #1 {
entry:
  %0 = tail call i32 @llvm.nvvm.read.ptx.sreg.ntid.x() #11, !range !15
  %1 = tail call i32 @llvm.nvvm.read.ptx.sreg.ctaid.x() #11, !range !16
  %mul = mul i32 %1, %0
  %2 = tail call i32 @llvm.nvvm.read.ptx.sreg.tid.x() #11, !range !17
  %add = add i32 %mul, %2
  %call3 = tail call i32 @_ZN15GraphChiContext14getNumVerticesEv(%class.GraphChiContext* nonnull dereferenceable(12) %context) #11
  %cmp = icmp slt i32 %add, %call3
  %idxprom = sext i32 %add to i64
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %arrayidx6 = getelementptr inbounds i32, i32* %index, i64 %idxprom
  %arrayidx = getelementptr inbounds %class.ChiVertex*, %class.ChiVertex** %vertex, i64 %idxprom
  %3 = load %class.ChiVertex*, %class.ChiVertex** %arrayidx, align 8, !tbaa !26
  %call4 = tail call i32 @_ZN9ChiVertexIiiE8getValueEv(%class.ChiVertex* nonnull dereferenceable(32) %3) #11
  store i32 %call4, i32* %arrayidx6, align 4, !tbaa !25
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @llvm.nvvm.read.ptx.sreg.ntid.x() #8

; Function Attrs: nounwind readnone
declare i32 @llvm.nvvm.read.ptx.sreg.ctaid.x() #8

; Function Attrs: nounwind readnone
declare i32 @llvm.nvvm.read.ptx.sreg.tid.x() #8

; Function Attrs: convergent nounwind
declare dso_local noalias i8* @malloc(i64) local_unnamed_addr #9

; Function Attrs: convergent noinline nounwind
define linkonce_odr hidden void @_ZN9ChiVertexIiiEC2Eiii(%class.ChiVertex* nonnull dereferenceable(32) %this, i32 %id, i32 %inDegree, i32 %outDegree) unnamed_addr #4 comdat align 2 {
entry:
  %id2 = getelementptr inbounds %class.ChiVertex, %class.ChiVertex* %this, i64 0, i32 0
  store i32 %id, i32* %id2, align 8, !tbaa !36
  %nInedges = getelementptr inbounds %class.ChiVertex, %class.ChiVertex* %this, i64 0, i32 1
  store i32 %inDegree, i32* %nInedges, align 4, !tbaa !35
  %nOutedges = getelementptr inbounds %class.ChiVertex, %class.ChiVertex* %this, i64 0, i32 2
  store i32 %outDegree, i32* %nOutedges, align 8, !tbaa !34
  %conv = sext i32 %inDegree to i64
  %mul = shl nsw i64 %conv, 3
  %call = tail call noalias i8* @malloc(i64 %mul) #12
  %inEdgeDataArray = getelementptr inbounds %class.ChiVertex, %class.ChiVertex* %this, i64 0, i32 4
  %0 = bitcast %class.ChiEdge*** %inEdgeDataArray to i8**
  store i8* %call, i8** %0, align 8, !tbaa !30
  %conv3 = sext i32 %outDegree to i64
  %mul4 = shl nsw i64 %conv3, 3
  %call5 = tail call noalias i8* @malloc(i64 %mul4) #12
  %outEdgeDataArray = getelementptr inbounds %class.ChiVertex, %class.ChiVertex* %this, i64 0, i32 5
  %1 = bitcast %class.ChiEdge*** %outEdgeDataArray to i8**
  store i8* %call5, i8** %1, align 8, !tbaa !33
  ret void
}

; Function Attrs: convergent noinline nounwind willreturn
define linkonce_odr hidden void @_ZN4EdgeIiEC1Eii(%class.Edge* nonnull dereferenceable(16) %this, i32 %id, i32 %value) unnamed_addr #10 comdat align 2 {
entry:
  tail call void @_ZN4EdgeIiEC2Eii(%class.Edge* nonnull dereferenceable(16) %this, i32 %id, i32 %value) #11
  ret void
}

; Function Attrs: noinline nounwind willreturn
define linkonce_odr hidden void @_ZN4EdgeIiEC2Eii(%class.Edge* nonnull dereferenceable(16) %this, i32 %id, i32 %value) unnamed_addr #2 comdat align 2 {
entry:
  %0 = getelementptr inbounds %class.Edge, %class.Edge* %this, i64 0, i32 0, i32 0
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTV4EdgeIiE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %0, align 8, !tbaa !31
  %vertexId = getelementptr inbounds %class.Edge, %class.Edge* %this, i64 0, i32 2
  store i32 %id, i32* %vertexId, align 4, !tbaa !37
  %edgeValue = getelementptr inbounds %class.Edge, %class.Edge* %this, i64 0, i32 1
  store i32 %value, i32* %edgeValue, align 8, !tbaa !39
  ret void
}

; Function Attrs: noinline nounwind willreturn
define linkonce_odr hidden i32 @_ZN4EdgeIiE11getVertexIdEv(%class.Edge* nonnull dereferenceable(16) %this) unnamed_addr #2 comdat align 2 {
entry:
  %vertexId = getelementptr inbounds %class.Edge, %class.Edge* %this, i64 0, i32 2
  %0 = load i32, i32* %vertexId, align 4, !tbaa !37
  ret i32 %0
}

; Function Attrs: noinline nounwind willreturn
define linkonce_odr hidden i32 @_ZN4EdgeIiE8getValueEv(%class.Edge* nonnull dereferenceable(16) %this) unnamed_addr #2 comdat align 2 {
entry:
  %edgeValue = getelementptr inbounds %class.Edge, %class.Edge* %this, i64 0, i32 1
  %0 = load i32, i32* %edgeValue, align 8, !tbaa !39
  ret i32 %0
}

; Function Attrs: noinline nounwind willreturn
define linkonce_odr hidden void @_ZN4EdgeIiE8setValueEi(%class.Edge* nonnull dereferenceable(16) %this, i32 %x) unnamed_addr #2 comdat align 2 {
entry:
  %edgeValue = getelementptr inbounds %class.Edge, %class.Edge* %this, i64 0, i32 1
  store i32 %x, i32* %edgeValue, align 8, !tbaa !39
  ret void
}

attributes #0 = { nounwind willreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="sm_70" "target-features"="+ptx70,+sm_70" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { convergent norecurse nounwind willreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="sm_70" "target-features"="+ptx70,+sm_70" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noinline nounwind willreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="sm_70" "target-features"="+ptx70,+sm_70" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { convergent norecurse nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="sm_70" "target-features"="+ptx70,+sm_70" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { convergent noinline nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="sm_70" "target-features"="+ptx70,+sm_70" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { convergent norecurse nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="sm_70" "target-features"="+ptx70,+sm_70" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nofree nosync nounwind readnone willreturn }
attributes #7 = { nofree nosync nounwind willreturn }
attributes #8 = { nounwind readnone }
attributes #9 = { convergent nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="sm_70" "target-features"="+ptx70,+sm_70" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { convergent noinline nounwind willreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="sm_70" "target-features"="+ptx70,+sm_70" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { nounwind }
attributes #12 = { convergent nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!nvvm.annotations = !{!4, !5, !6, !7, !8, !9, !10, !9, !11, !11, !11, !11, !12, !12, !11}
!llvm.ident = !{!13}
!nvvmir.version = !{!14}

!0 = !{i32 2, !"SDK Version", [2 x i32] [i32 11, i32 0]}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 1, !"Virtual Function Elim", i32 0}
!3 = !{i32 4, !"nvvm-reflect-ftz", i32 0}
!4 = !{void (%class.GraphChiContext*, i32, i32)* @_Z11initContextP15GraphChiContextii, !"kernel", i32 1}
!5 = !{void (%class.ChiVertex**, %class.GraphChiContext*, i32*, i32*, i32*, i32*)* @_Z10initObjectPP9ChiVertexIiiEP15GraphChiContextPiS5_S5_S5_, !"kernel", i32 1}
!6 = !{void (%class.ChiVertex**, %class.GraphChiContext*, i32*, i32*)* @_Z11initOutEdgePP9ChiVertexIiiEP15GraphChiContextPiS5_, !"kernel", i32 1}
!7 = !{void (%class.ChiVertex**, %class.GraphChiContext*, i32)* @_Z3BFSPP9ChiVertexIiiEP15GraphChiContexti, !"kernel", i32 1}
!8 = !{void (%class.ChiVertex**, %class.GraphChiContext*, i32*)* @_Z8copyBackPP9ChiVertexIiiEP15GraphChiContextPi, !"kernel", i32 1}
!9 = !{null, !"align", i32 8}
!10 = !{null, !"align", i32 8, !"align", i32 65544, !"align", i32 131080}
!11 = !{null, !"align", i32 16}
!12 = !{null, !"align", i32 16, !"align", i32 65552, !"align", i32 131088}
!13 = !{!"clang version 12.0.1 (https://github.com/christindbose/oldllvm.git 8e6b877c531234164c5868e17752c3dcd7f161d6)"}
!14 = !{i32 1, i32 4}
!15 = !{i32 1, i32 1025}
!16 = !{i32 0, i32 2147483647}
!17 = !{i32 0, i32 1024}
!18 = !{!19, !20, i64 0}
!19 = !{!"_ZTS15GraphChiContext", !20, i64 0, !20, i64 4, !20, i64 8}
!20 = !{!"int", !21, i64 0}
!21 = !{!"omnipotent char", !22, i64 0}
!22 = !{!"Simple C++ TBAA"}
!23 = !{!19, !20, i64 4}
!24 = !{!19, !20, i64 8}
!25 = !{!20, !20, i64 0}
!26 = !{!27, !27, i64 0}
!27 = !{!"any pointer", !21, i64 0}
!28 = !{!29, !20, i64 12}
!29 = !{!"_ZTS9ChiVertexIiiE", !20, i64 0, !20, i64 4, !20, i64 8, !20, i64 12, !27, i64 16, !27, i64 24}
!30 = !{!29, !27, i64 16}
!31 = !{!32, !32, i64 0}
!32 = !{!"vtable pointer", !22, i64 0}
!33 = !{!29, !27, i64 24}
!34 = !{!29, !20, i64 8}
!35 = !{!29, !20, i64 4}
!36 = !{!29, !20, i64 0}
!37 = !{!38, !20, i64 12}
!38 = !{!"_ZTS4EdgeIiE", !20, i64 8, !20, i64 12}
!39 = !{!38, !20, i64 8}
