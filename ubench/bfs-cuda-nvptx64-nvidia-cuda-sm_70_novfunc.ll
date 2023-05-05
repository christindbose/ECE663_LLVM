; ModuleID = 'bfs.cu'
source_filename = "bfs.cu"
target datalayout = "e-i64:64-i128:128-v16:16-v32:32-n16:32:64"
target triple = "nvptx64-nvidia-cuda"

%struct.cudaFuncAttributes = type { i64, i64, i64, i32, i32, i32, i32, i32, i32, i32 }
%class.GraphChiContext = type { i32, i32, i32 }
%class.ChiVertex = type { i32, i32, i32, i32, %class.Edge**, %class.Edge** }
%class.Edge = type { i32, i32 }

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

$_ZN4EdgeIiE8setValueEi = comdat any

$_ZN9ChiVertexIiiE8getValueEv = comdat any

$_ZN9ChiVertexIiiE10numInEdgesEv = comdat any

$_ZN9ChiVertexIiiE9getInEdgeEi = comdat any

$_ZN4EdgeIiE8getValueEv = comdat any

$_ZN9ChiVertexIiiEC2Eiii = comdat any

$_ZN4EdgeIiEC1Eii = comdat any

$_ZN4EdgeIiEC2Eii = comdat any

$_ZN4EdgeIiE11getVertexIdEv = comdat any

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
  %0 = tail call i32 @llvm.nvvm.read.ptx.sreg.ntid.x() #9, !range !15
  %1 = tail call i32 @llvm.nvvm.read.ptx.sreg.ctaid.x() #9, !range !16
  %mul = mul i32 %1, %0
  %2 = tail call i32 @llvm.nvvm.read.ptx.sreg.tid.x() #9, !range !17
  %add = sub nsw i32 0, %2
  %cmp = icmp eq i32 %mul, %add
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @_ZN15GraphChiContext16setNumIterationsEi(%class.GraphChiContext* nonnull dereferenceable(12) %context, i32 0) #9
  tail call void @_ZN15GraphChiContext14setNumVerticesEi(%class.GraphChiContext* nonnull dereferenceable(12) %context, i32 %vertices) #9
  tail call void @_ZN15GraphChiContext11setNumEdgesEi(%class.GraphChiContext* nonnull dereferenceable(12) %context, i32 %edges) #9
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
  %0 = tail call i32 @llvm.nvvm.read.ptx.sreg.ntid.x() #9, !range !15
  %1 = tail call i32 @llvm.nvvm.read.ptx.sreg.ctaid.x() #9, !range !16
  %mul = mul i32 %1, %0
  %2 = tail call i32 @llvm.nvvm.read.ptx.sreg.tid.x() #9, !range !17
  %add = add i32 %mul, %2
  %call3 = tail call i32 @_ZN15GraphChiContext14getNumVerticesEv(%class.GraphChiContext* nonnull dereferenceable(12) %context) #9
  %cmp = icmp slt i32 %add, %call3
  br i1 %cmp, label %if.then, label %if.end36

if.then:                                          ; preds = %entry
  %idxprom = sext i32 %add to i64
  %arrayidx = getelementptr inbounds i32, i32* %row, i64 %idxprom
  %3 = load i32, i32* %arrayidx, align 4, !tbaa !25
  %add4 = add nsw i32 %add, 1
  %call5 = tail call i32 @_ZN15GraphChiContext14getNumVerticesEv(%class.GraphChiContext* nonnull dereferenceable(12) %context) #9
  %cmp6 = icmp slt i32 %add4, %call5
  br i1 %cmp6, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.then
  %idxprom9 = sext i32 %add4 to i64
  %arrayidx10 = getelementptr inbounds i32, i32* %row, i64 %idxprom9
  %4 = load i32, i32* %arrayidx10, align 4, !tbaa !25
  br label %if.end

if.else:                                          ; preds = %if.then
  %call11 = tail call i32 @_ZN15GraphChiContext11getNumEdgesEv(%class.GraphChiContext* nonnull dereferenceable(12) %context) #9
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then7
  %out_end.0 = phi i32 [ %4, %if.then7 ], [ %call11, %if.else ]
  %arrayidx13 = getelementptr inbounds i32, i32* %inrow, i64 %idxprom
  %5 = load i32, i32* %arrayidx13, align 4, !tbaa !25
  %call15 = tail call i32 @_ZN15GraphChiContext14getNumVerticesEv(%class.GraphChiContext* nonnull dereferenceable(12) %context) #9
  %cmp16 = icmp slt i32 %add4, %call15
  br i1 %cmp16, label %if.then17, label %if.else21

if.then17:                                        ; preds = %if.end
  %idxprom19 = sext i32 %add4 to i64
  %arrayidx20 = getelementptr inbounds i32, i32* %inrow, i64 %idxprom19
  %6 = load i32, i32* %arrayidx20, align 4, !tbaa !25
  br label %if.end23

if.else21:                                        ; preds = %if.end
  %call22 = tail call i32 @_ZN15GraphChiContext11getNumEdgesEv(%class.GraphChiContext* nonnull dereferenceable(12) %context) #9
  br label %if.end23

if.end23:                                         ; preds = %if.else21, %if.then17
  %in_end.0 = phi i32 [ %6, %if.then17 ], [ %call22, %if.else21 ]
  %sub = sub nsw i32 %in_end.0, %5
  %sub24 = sub nsw i32 %out_end.0, %3
  %call.i = tail call noalias i8* @malloc(i64 32) #10
  %7 = bitcast i8* %call.i to %class.ChiVertex*
  tail call void @_ZN9ChiVertexIiiEC1Eiii(%class.ChiVertex* nonnull dereferenceable(32) %7, i32 %add, i32 %sub, i32 %sub24) #10
  %arrayidx27 = getelementptr inbounds %class.ChiVertex*, %class.ChiVertex** %vertex, i64 %idxprom
  %8 = bitcast %class.ChiVertex** %arrayidx27 to i8**
  store i8* %call.i, i8** %8, align 8, !tbaa !26
  tail call void @_ZN9ChiVertexIiiE8setValueEi(%class.ChiVertex* nonnull dereferenceable(32) %7, i32 2147483647) #9
  %cmp3069 = icmp sgt i32 %in_end.0, %5
  br i1 %cmp3069, label %for.body, label %if.end36

for.body:                                         ; preds = %if.end23, %for.body
  %i.070 = phi i32 [ %inc, %for.body ], [ %5, %if.end23 ]
  %9 = load %class.ChiVertex*, %class.ChiVertex** %arrayidx27, align 8, !tbaa !26
  %sub33 = sub nsw i32 %i.070, %5
  %idxprom34 = sext i32 %i.070 to i64
  %arrayidx35 = getelementptr inbounds i32, i32* %incol, i64 %idxprom34
  %10 = load i32, i32* %arrayidx35, align 4, !tbaa !25
  tail call void @_ZN9ChiVertexIiiE9setInEdgeEiii(%class.ChiVertex* nonnull dereferenceable(32) %9, i32 %sub33, i32 %10, i32 2147483647) #10
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
  tail call void @_ZN9ChiVertexIiiEC2Eiii(%class.ChiVertex* nonnull dereferenceable(32) %this, i32 %id, i32 %inDegree, i32 %outDegree) #10
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
  %call.i = tail call noalias i8* @malloc(i64 8) #10
  %0 = bitcast i8* %call.i to %class.Edge*
  tail call void @_ZN4EdgeIiEC1Eii(%class.Edge* nonnull dereferenceable(8) %0, i32 %vertexId, i32 %value) #10
  %inEdgeDataArray = getelementptr inbounds %class.ChiVertex, %class.ChiVertex* %this, i64 0, i32 4
  %1 = load %class.Edge**, %class.Edge*** %inEdgeDataArray, align 8, !tbaa !30
  %idxprom = sext i32 %idx to i64
  %arrayidx = getelementptr inbounds %class.Edge*, %class.Edge** %1, i64 %idxprom
  %2 = bitcast %class.Edge** %arrayidx to i8**
  store i8* %call.i, i8** %2, align 8, !tbaa !26
  ret void
}

; Function Attrs: convergent norecurse nounwind
define hidden void @_Z11initOutEdgePP9ChiVertexIiiEP15GraphChiContextPiS5_(%class.ChiVertex** %vertex, %class.GraphChiContext* nonnull %context, i32* nocapture readonly %row, i32* nocapture readonly %col) local_unnamed_addr #3 {
entry:
  %0 = tail call i32 @llvm.nvvm.read.ptx.sreg.ntid.x() #9, !range !15
  %1 = tail call i32 @llvm.nvvm.read.ptx.sreg.ctaid.x() #9, !range !16
  %mul = mul i32 %1, %0
  %2 = tail call i32 @llvm.nvvm.read.ptx.sreg.tid.x() #9, !range !17
  %add = add i32 %mul, %2
  %call3 = tail call i32 @_ZN15GraphChiContext14getNumVerticesEv(%class.GraphChiContext* nonnull dereferenceable(12) %context) #9
  %cmp = icmp slt i32 %add, %call3
  br i1 %cmp, label %if.then, label %if.end17

if.then:                                          ; preds = %entry
  %idxprom = sext i32 %add to i64
  %arrayidx = getelementptr inbounds i32, i32* %row, i64 %idxprom
  %3 = load i32, i32* %arrayidx, align 4, !tbaa !25
  %add4 = add nsw i32 %add, 1
  %call5 = tail call i32 @_ZN15GraphChiContext14getNumVerticesEv(%class.GraphChiContext* nonnull dereferenceable(12) %context) #9
  %cmp6 = icmp slt i32 %add4, %call5
  br i1 %cmp6, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.then
  %idxprom9 = sext i32 %add4 to i64
  %arrayidx10 = getelementptr inbounds i32, i32* %row, i64 %idxprom9
  %4 = load i32, i32* %arrayidx10, align 4, !tbaa !25
  br label %if.end

if.else:                                          ; preds = %if.then
  %call11 = tail call i32 @_ZN15GraphChiContext11getNumEdgesEv(%class.GraphChiContext* nonnull dereferenceable(12) %context) #9
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
  tail call void @_ZN9ChiVertexIiiE10setOutEdgeEPPS0_iiii(%class.ChiVertex* nonnull dereferenceable(32) %5, %class.ChiVertex** %vertex, i32 %add, i32 %sub, i32 %6, i32 2147483647) #10
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
  %call22 = tail call i32 @_ZN9ChiVertexIiiE10numInEdgesEv(%class.ChiVertex* nonnull dereferenceable(32) %0) #9
  %cmp23 = icmp sgt i32 %call22, 0
  br i1 %cmp23, label %for.body, label %cleanup

for.body:                                         ; preds = %entry, %for.inc
  %i.024 = phi i32 [ %inc, %for.inc ], [ 0, %entry ]
  %1 = load %class.ChiVertex*, %class.ChiVertex** %arrayidx, align 8, !tbaa !26
  %call4 = tail call %class.Edge* @_ZN9ChiVertexIiiE9getInEdgeEi(%class.ChiVertex* nonnull dereferenceable(32) %1, i32 %i.024) #9
  %call5 = tail call i32 @_ZN4EdgeIiE11getVertexIdEv(%class.Edge* nonnull dereferenceable(8) %call4) #9
  %cmp6 = icmp eq i32 %call5, %src
  br i1 %cmp6, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body
  %2 = load %class.ChiVertex*, %class.ChiVertex** %arrayidx, align 8, !tbaa !26
  %call9 = tail call %class.Edge* @_ZN9ChiVertexIiiE9getInEdgeEi(%class.ChiVertex* nonnull dereferenceable(32) %2, i32 %i.024) #9
  %outEdgeDataArray = getelementptr inbounds %class.ChiVertex, %class.ChiVertex* %this, i64 0, i32 5
  %3 = load %class.Edge**, %class.Edge*** %outEdgeDataArray, align 8, !tbaa !31
  %idxprom10 = sext i32 %idx to i64
  %arrayidx11 = getelementptr inbounds %class.Edge*, %class.Edge** %3, i64 %idxprom10
  store %class.Edge* %call9, %class.Edge** %arrayidx11, align 8, !tbaa !26
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.024, 1
  %4 = load %class.ChiVertex*, %class.ChiVertex** %arrayidx, align 8, !tbaa !26
  %call = tail call i32 @_ZN9ChiVertexIiiE10numInEdgesEv(%class.ChiVertex* nonnull dereferenceable(32) %4) #9
  %cmp = icmp slt i32 %inc, %call
  br i1 %cmp, label %for.body, label %cleanup

cleanup:                                          ; preds = %for.inc, %entry, %if.then
  ret void
}

; Function Attrs: convergent norecurse nounwind
define hidden void @_Z3BFSPP9ChiVertexIiiEP15GraphChiContexti(%class.ChiVertex** nocapture readonly %vertex, %class.GraphChiContext* nonnull %context, i32 %iteration) local_unnamed_addr #5 {
entry:
  %0 = tail call i32 @llvm.nvvm.read.ptx.sreg.ntid.x() #9, !range !15
  %1 = tail call i32 @llvm.nvvm.read.ptx.sreg.ctaid.x() #9, !range !16
  %mul = mul i32 %1, %0
  %2 = tail call i32 @llvm.nvvm.read.ptx.sreg.tid.x() #9, !range !17
  %add = add i32 %mul, %2
  %call3 = tail call i32 @_ZN15GraphChiContext14getNumVerticesEv(%class.GraphChiContext* nonnull dereferenceable(12) %context) #9
  %cmp = icmp slt i32 %add, %call3
  br i1 %cmp, label %if.then, label %if.end65

if.then:                                          ; preds = %entry
  %cmp4 = icmp eq i32 %iteration, 0
  br i1 %cmp4, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.then
  %cmp6 = icmp eq i32 %add, 0
  br i1 %cmp6, label %if.then7, label %if.end65

if.then7:                                         ; preds = %if.then5
  %3 = load %class.ChiVertex*, %class.ChiVertex** %vertex, align 8, !tbaa !26
  tail call void @_ZN9ChiVertexIiiE8setValueEi(%class.ChiVertex* nonnull dereferenceable(32) %3, i32 0) #9
  %4 = load %class.ChiVertex*, %class.ChiVertex** %vertex, align 8, !tbaa !26
  %call10 = tail call i32 @_ZN9ChiVertexIiiE11numOutEdgesEv(%class.ChiVertex* nonnull dereferenceable(32) %4) #9
  %cmp11111 = icmp sgt i32 %call10, 0
  br i1 %cmp11111, label %for.body.preheader, label %if.end65

for.body.preheader:                               ; preds = %if.then7
  %5 = add i32 %call10, -1
  %xtraiter = and i32 %call10, 7
  %6 = icmp ult i32 %5, 7
  br i1 %6, label %if.end65.loopexit.unr-lcssa, label %for.body.preheader.new

for.body.preheader.new:                           ; preds = %for.body.preheader
  %unroll_iter = and i32 %call10, -8
  br label %for.body

for.body:                                         ; preds = %for.body, %for.body.preheader.new
  %i.0112 = phi i32 [ 0, %for.body.preheader.new ], [ %inc.7, %for.body ]
  %niter = phi i32 [ %unroll_iter, %for.body.preheader.new ], [ %niter.nsub.7, %for.body ]
  %7 = load %class.ChiVertex*, %class.ChiVertex** %vertex, align 8, !tbaa !26
  %call14 = tail call %class.Edge* @_ZN9ChiVertexIiiE10getOutEdgeEi(%class.ChiVertex* nonnull dereferenceable(32) %7, i32 %i.0112) #9
  tail call void @_ZN4EdgeIiE8setValueEi(%class.Edge* nonnull dereferenceable(8) %call14, i32 1) #9
  %inc = or i32 %i.0112, 1
  %8 = load %class.ChiVertex*, %class.ChiVertex** %vertex, align 8, !tbaa !26
  %call14.1 = tail call %class.Edge* @_ZN9ChiVertexIiiE10getOutEdgeEi(%class.ChiVertex* nonnull dereferenceable(32) %8, i32 %inc) #9
  tail call void @_ZN4EdgeIiE8setValueEi(%class.Edge* nonnull dereferenceable(8) %call14.1, i32 1) #9
  %inc.1 = or i32 %i.0112, 2
  %9 = load %class.ChiVertex*, %class.ChiVertex** %vertex, align 8, !tbaa !26
  %call14.2 = tail call %class.Edge* @_ZN9ChiVertexIiiE10getOutEdgeEi(%class.ChiVertex* nonnull dereferenceable(32) %9, i32 %inc.1) #9
  tail call void @_ZN4EdgeIiE8setValueEi(%class.Edge* nonnull dereferenceable(8) %call14.2, i32 1) #9
  %inc.2 = or i32 %i.0112, 3
  %10 = load %class.ChiVertex*, %class.ChiVertex** %vertex, align 8, !tbaa !26
  %call14.3 = tail call %class.Edge* @_ZN9ChiVertexIiiE10getOutEdgeEi(%class.ChiVertex* nonnull dereferenceable(32) %10, i32 %inc.2) #9
  tail call void @_ZN4EdgeIiE8setValueEi(%class.Edge* nonnull dereferenceable(8) %call14.3, i32 1) #9
  %inc.3 = or i32 %i.0112, 4
  %11 = load %class.ChiVertex*, %class.ChiVertex** %vertex, align 8, !tbaa !26
  %call14.4 = tail call %class.Edge* @_ZN9ChiVertexIiiE10getOutEdgeEi(%class.ChiVertex* nonnull dereferenceable(32) %11, i32 %inc.3) #9
  tail call void @_ZN4EdgeIiE8setValueEi(%class.Edge* nonnull dereferenceable(8) %call14.4, i32 1) #9
  %inc.4 = or i32 %i.0112, 5
  %12 = load %class.ChiVertex*, %class.ChiVertex** %vertex, align 8, !tbaa !26
  %call14.5 = tail call %class.Edge* @_ZN9ChiVertexIiiE10getOutEdgeEi(%class.ChiVertex* nonnull dereferenceable(32) %12, i32 %inc.4) #9
  tail call void @_ZN4EdgeIiE8setValueEi(%class.Edge* nonnull dereferenceable(8) %call14.5, i32 1) #9
  %inc.5 = or i32 %i.0112, 6
  %13 = load %class.ChiVertex*, %class.ChiVertex** %vertex, align 8, !tbaa !26
  %call14.6 = tail call %class.Edge* @_ZN9ChiVertexIiiE10getOutEdgeEi(%class.ChiVertex* nonnull dereferenceable(32) %13, i32 %inc.5) #9
  tail call void @_ZN4EdgeIiE8setValueEi(%class.Edge* nonnull dereferenceable(8) %call14.6, i32 1) #9
  %inc.6 = or i32 %i.0112, 7
  %14 = load %class.ChiVertex*, %class.ChiVertex** %vertex, align 8, !tbaa !26
  %call14.7 = tail call %class.Edge* @_ZN9ChiVertexIiiE10getOutEdgeEi(%class.ChiVertex* nonnull dereferenceable(32) %14, i32 %inc.6) #9
  tail call void @_ZN4EdgeIiE8setValueEi(%class.Edge* nonnull dereferenceable(8) %call14.7, i32 1) #9
  %inc.7 = add nuw nsw i32 %i.0112, 8
  %niter.nsub.7 = add i32 %niter, -8
  %niter.ncmp.7 = icmp eq i32 %niter.nsub.7, 0
  br i1 %niter.ncmp.7, label %if.end65.loopexit.unr-lcssa, label %for.body

if.else:                                          ; preds = %if.then
  %idxprom15 = sext i32 %add to i64
  %arrayidx16 = getelementptr inbounds %class.ChiVertex*, %class.ChiVertex** %vertex, i64 %idxprom15
  %15 = load %class.ChiVertex*, %class.ChiVertex** %arrayidx16, align 8, !tbaa !26
  %call17 = tail call i32 @_ZN9ChiVertexIiiE8getValueEv(%class.ChiVertex* nonnull dereferenceable(32) %15) #9
  %16 = load %class.ChiVertex*, %class.ChiVertex** %arrayidx16, align 8, !tbaa !26
  %call20 = tail call i32 @_ZN9ChiVertexIiiE10numInEdgesEv(%class.ChiVertex* nonnull dereferenceable(32) %16) #9
  %cmp23115 = icmp sgt i32 %call20, 0
  br i1 %cmp23115, label %for.body25.preheader, label %for.cond.cleanup24

for.body25.preheader:                             ; preds = %if.else
  %17 = add i32 %call20, -1
  %xtraiter128 = and i32 %call20, 7
  %18 = icmp ult i32 %17, 7
  br i1 %18, label %for.cond.cleanup24.loopexit.unr-lcssa, label %for.body25.preheader.new

for.body25.preheader.new:                         ; preds = %for.body25.preheader
  %unroll_iter132 = and i32 %call20, -8
  br label %for.body25

for.cond.cleanup24.loopexit.unr-lcssa:            ; preds = %for.body25, %for.body25.preheader
  %min.i.i.lcssa.ph = phi i32 [ undef, %for.body25.preheader ], [ %min.i.i.7, %for.body25 ]
  %curmin.0117.unr = phi i32 [ %call17, %for.body25.preheader ], [ %min.i.i.7, %for.body25 ]
  %i21.0116.unr = phi i32 [ 0, %for.body25.preheader ], [ %inc32.7, %for.body25 ]
  %lcmp.mod130.not = icmp eq i32 %xtraiter128, 0
  br i1 %lcmp.mod130.not, label %for.cond.cleanup24, label %for.body25.epil

for.body25.epil:                                  ; preds = %for.cond.cleanup24.loopexit.unr-lcssa, %for.body25.epil
  %curmin.0117.epil = phi i32 [ %min.i.i.epil, %for.body25.epil ], [ %curmin.0117.unr, %for.cond.cleanup24.loopexit.unr-lcssa ]
  %i21.0116.epil = phi i32 [ %inc32.epil, %for.body25.epil ], [ %i21.0116.unr, %for.cond.cleanup24.loopexit.unr-lcssa ]
  %epil.iter129 = phi i32 [ %epil.iter129.sub, %for.body25.epil ], [ %xtraiter128, %for.cond.cleanup24.loopexit.unr-lcssa ]
  %19 = load %class.ChiVertex*, %class.ChiVertex** %arrayidx16, align 8, !tbaa !26
  %call28.epil = tail call %class.Edge* @_ZN9ChiVertexIiiE9getInEdgeEi(%class.ChiVertex* nonnull dereferenceable(32) %19, i32 %i21.0116.epil) #9
  %call29.epil = tail call i32 @_ZN4EdgeIiE8getValueEv(%class.Edge* nonnull dereferenceable(8) %call28.epil) #9
  %min.cond.not.i.i.epil = icmp sgt i32 %curmin.0117.epil, %call29.epil
  %min.i.i.epil = select i1 %min.cond.not.i.i.epil, i32 %call29.epil, i32 %curmin.0117.epil
  %inc32.epil = add nuw nsw i32 %i21.0116.epil, 1
  %epil.iter129.sub = add i32 %epil.iter129, -1
  %epil.iter129.cmp.not = icmp eq i32 %epil.iter129.sub, 0
  br i1 %epil.iter129.cmp.not, label %for.cond.cleanup24, label %for.body25.epil, !llvm.loop !32

for.cond.cleanup24:                               ; preds = %for.cond.cleanup24.loopexit.unr-lcssa, %for.body25.epil, %if.else
  %curmin.0.lcssa = phi i32 [ %call17, %if.else ], [ %min.i.i.lcssa.ph, %for.cond.cleanup24.loopexit.unr-lcssa ], [ %min.i.i.epil, %for.body25.epil ]
  %20 = load %class.ChiVertex*, %class.ChiVertex** %arrayidx16, align 8, !tbaa !26
  %call36 = tail call i32 @_ZN9ChiVertexIiiE8getValueEv(%class.ChiVertex* nonnull dereferenceable(32) %20) #9
  %cmp37 = icmp slt i32 %curmin.0.lcssa, %call36
  br i1 %cmp37, label %if.then38, label %if.end65

for.body25:                                       ; preds = %for.body25, %for.body25.preheader.new
  %curmin.0117 = phi i32 [ %call17, %for.body25.preheader.new ], [ %min.i.i.7, %for.body25 ]
  %i21.0116 = phi i32 [ 0, %for.body25.preheader.new ], [ %inc32.7, %for.body25 ]
  %niter133 = phi i32 [ %unroll_iter132, %for.body25.preheader.new ], [ %niter133.nsub.7, %for.body25 ]
  %21 = load %class.ChiVertex*, %class.ChiVertex** %arrayidx16, align 8, !tbaa !26
  %call28 = tail call %class.Edge* @_ZN9ChiVertexIiiE9getInEdgeEi(%class.ChiVertex* nonnull dereferenceable(32) %21, i32 %i21.0116) #9
  %call29 = tail call i32 @_ZN4EdgeIiE8getValueEv(%class.Edge* nonnull dereferenceable(8) %call28) #9
  %min.cond.not.i.i = icmp sgt i32 %curmin.0117, %call29
  %min.i.i = select i1 %min.cond.not.i.i, i32 %call29, i32 %curmin.0117
  %inc32 = or i32 %i21.0116, 1
  %22 = load %class.ChiVertex*, %class.ChiVertex** %arrayidx16, align 8, !tbaa !26
  %call28.1 = tail call %class.Edge* @_ZN9ChiVertexIiiE9getInEdgeEi(%class.ChiVertex* nonnull dereferenceable(32) %22, i32 %inc32) #9
  %call29.1 = tail call i32 @_ZN4EdgeIiE8getValueEv(%class.Edge* nonnull dereferenceable(8) %call28.1) #9
  %min.cond.not.i.i.1 = icmp sgt i32 %min.i.i, %call29.1
  %min.i.i.1 = select i1 %min.cond.not.i.i.1, i32 %call29.1, i32 %min.i.i
  %inc32.1 = or i32 %i21.0116, 2
  %23 = load %class.ChiVertex*, %class.ChiVertex** %arrayidx16, align 8, !tbaa !26
  %call28.2 = tail call %class.Edge* @_ZN9ChiVertexIiiE9getInEdgeEi(%class.ChiVertex* nonnull dereferenceable(32) %23, i32 %inc32.1) #9
  %call29.2 = tail call i32 @_ZN4EdgeIiE8getValueEv(%class.Edge* nonnull dereferenceable(8) %call28.2) #9
  %min.cond.not.i.i.2 = icmp sgt i32 %min.i.i.1, %call29.2
  %min.i.i.2 = select i1 %min.cond.not.i.i.2, i32 %call29.2, i32 %min.i.i.1
  %inc32.2 = or i32 %i21.0116, 3
  %24 = load %class.ChiVertex*, %class.ChiVertex** %arrayidx16, align 8, !tbaa !26
  %call28.3 = tail call %class.Edge* @_ZN9ChiVertexIiiE9getInEdgeEi(%class.ChiVertex* nonnull dereferenceable(32) %24, i32 %inc32.2) #9
  %call29.3 = tail call i32 @_ZN4EdgeIiE8getValueEv(%class.Edge* nonnull dereferenceable(8) %call28.3) #9
  %min.cond.not.i.i.3 = icmp sgt i32 %min.i.i.2, %call29.3
  %min.i.i.3 = select i1 %min.cond.not.i.i.3, i32 %call29.3, i32 %min.i.i.2
  %inc32.3 = or i32 %i21.0116, 4
  %25 = load %class.ChiVertex*, %class.ChiVertex** %arrayidx16, align 8, !tbaa !26
  %call28.4 = tail call %class.Edge* @_ZN9ChiVertexIiiE9getInEdgeEi(%class.ChiVertex* nonnull dereferenceable(32) %25, i32 %inc32.3) #9
  %call29.4 = tail call i32 @_ZN4EdgeIiE8getValueEv(%class.Edge* nonnull dereferenceable(8) %call28.4) #9
  %min.cond.not.i.i.4 = icmp sgt i32 %min.i.i.3, %call29.4
  %min.i.i.4 = select i1 %min.cond.not.i.i.4, i32 %call29.4, i32 %min.i.i.3
  %inc32.4 = or i32 %i21.0116, 5
  %26 = load %class.ChiVertex*, %class.ChiVertex** %arrayidx16, align 8, !tbaa !26
  %call28.5 = tail call %class.Edge* @_ZN9ChiVertexIiiE9getInEdgeEi(%class.ChiVertex* nonnull dereferenceable(32) %26, i32 %inc32.4) #9
  %call29.5 = tail call i32 @_ZN4EdgeIiE8getValueEv(%class.Edge* nonnull dereferenceable(8) %call28.5) #9
  %min.cond.not.i.i.5 = icmp sgt i32 %min.i.i.4, %call29.5
  %min.i.i.5 = select i1 %min.cond.not.i.i.5, i32 %call29.5, i32 %min.i.i.4
  %inc32.5 = or i32 %i21.0116, 6
  %27 = load %class.ChiVertex*, %class.ChiVertex** %arrayidx16, align 8, !tbaa !26
  %call28.6 = tail call %class.Edge* @_ZN9ChiVertexIiiE9getInEdgeEi(%class.ChiVertex* nonnull dereferenceable(32) %27, i32 %inc32.5) #9
  %call29.6 = tail call i32 @_ZN4EdgeIiE8getValueEv(%class.Edge* nonnull dereferenceable(8) %call28.6) #9
  %min.cond.not.i.i.6 = icmp sgt i32 %min.i.i.5, %call29.6
  %min.i.i.6 = select i1 %min.cond.not.i.i.6, i32 %call29.6, i32 %min.i.i.5
  %inc32.6 = or i32 %i21.0116, 7
  %28 = load %class.ChiVertex*, %class.ChiVertex** %arrayidx16, align 8, !tbaa !26
  %call28.7 = tail call %class.Edge* @_ZN9ChiVertexIiiE9getInEdgeEi(%class.ChiVertex* nonnull dereferenceable(32) %28, i32 %inc32.6) #9
  %call29.7 = tail call i32 @_ZN4EdgeIiE8getValueEv(%class.Edge* nonnull dereferenceable(8) %call28.7) #9
  %min.cond.not.i.i.7 = icmp sgt i32 %min.i.i.6, %call29.7
  %min.i.i.7 = select i1 %min.cond.not.i.i.7, i32 %call29.7, i32 %min.i.i.6
  %inc32.7 = add nuw nsw i32 %i21.0116, 8
  %niter133.nsub.7 = add i32 %niter133, -8
  %niter133.ncmp.7 = icmp eq i32 %niter133.nsub.7, 0
  br i1 %niter133.ncmp.7, label %for.cond.cleanup24.loopexit.unr-lcssa, label %for.body25

if.then38:                                        ; preds = %for.cond.cleanup24
  %29 = load %class.ChiVertex*, %class.ChiVertex** %arrayidx16, align 8, !tbaa !26
  tail call void @_ZN9ChiVertexIiiE8setValueEi(%class.ChiVertex* nonnull dereferenceable(32) %29, i32 %curmin.0.lcssa) #9
  %30 = load %class.ChiVertex*, %class.ChiVertex** %arrayidx16, align 8, !tbaa !26
  %call44 = tail call i32 @_ZN9ChiVertexIiiE11numOutEdgesEv(%class.ChiVertex* nonnull dereferenceable(32) %30) #9
  %cmp47113 = icmp sgt i32 %call44, 0
  br i1 %cmp47113, label %for.body49.lr.ph, label %if.end65

for.body49.lr.ph:                                 ; preds = %if.then38
  %add55 = add nsw i32 %curmin.0.lcssa, 1
  %31 = add i32 %call44, -1
  %xtraiter123 = and i32 %call44, 3
  %32 = icmp ult i32 %31, 3
  br i1 %32, label %if.end65.loopexit122.unr-lcssa, label %for.body49.lr.ph.new

for.body49.lr.ph.new:                             ; preds = %for.body49.lr.ph
  %unroll_iter126 = and i32 %call44, -4
  br label %for.body49

for.body49:                                       ; preds = %if.end59.3, %for.body49.lr.ph.new
  %i45.0114 = phi i32 [ 0, %for.body49.lr.ph.new ], [ %inc61.3, %if.end59.3 ]
  %niter127 = phi i32 [ %unroll_iter126, %for.body49.lr.ph.new ], [ %niter127.nsub.3, %if.end59.3 ]
  %33 = load %class.ChiVertex*, %class.ChiVertex** %arrayidx16, align 8, !tbaa !26
  %call53 = tail call %class.Edge* @_ZN9ChiVertexIiiE10getOutEdgeEi(%class.ChiVertex* nonnull dereferenceable(32) %33, i32 %i45.0114) #9
  %call54 = tail call i32 @_ZN4EdgeIiE8getValueEv(%class.Edge* nonnull dereferenceable(8) %call53) #9
  %cmp56 = icmp sgt i32 %call54, %add55
  br i1 %cmp56, label %if.then57, label %if.end59

if.then57:                                        ; preds = %for.body49
  tail call void @_ZN4EdgeIiE8setValueEi(%class.Edge* nonnull dereferenceable(8) %call53, i32 %add55) #9
  br label %if.end59

if.end59:                                         ; preds = %if.then57, %for.body49
  %inc61 = or i32 %i45.0114, 1
  %34 = load %class.ChiVertex*, %class.ChiVertex** %arrayidx16, align 8, !tbaa !26
  %call53.1 = tail call %class.Edge* @_ZN9ChiVertexIiiE10getOutEdgeEi(%class.ChiVertex* nonnull dereferenceable(32) %34, i32 %inc61) #9
  %call54.1 = tail call i32 @_ZN4EdgeIiE8getValueEv(%class.Edge* nonnull dereferenceable(8) %call53.1) #9
  %cmp56.1 = icmp sgt i32 %call54.1, %add55
  br i1 %cmp56.1, label %if.then57.1, label %if.end59.1

if.end65.loopexit.unr-lcssa:                      ; preds = %for.body, %for.body.preheader
  %i.0112.unr = phi i32 [ 0, %for.body.preheader ], [ %inc.7, %for.body ]
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %if.end65, label %for.body.epil

for.body.epil:                                    ; preds = %if.end65.loopexit.unr-lcssa, %for.body.epil
  %i.0112.epil = phi i32 [ %inc.epil, %for.body.epil ], [ %i.0112.unr, %if.end65.loopexit.unr-lcssa ]
  %epil.iter = phi i32 [ %epil.iter.sub, %for.body.epil ], [ %xtraiter, %if.end65.loopexit.unr-lcssa ]
  %35 = load %class.ChiVertex*, %class.ChiVertex** %vertex, align 8, !tbaa !26
  %call14.epil = tail call %class.Edge* @_ZN9ChiVertexIiiE10getOutEdgeEi(%class.ChiVertex* nonnull dereferenceable(32) %35, i32 %i.0112.epil) #9
  tail call void @_ZN4EdgeIiE8setValueEi(%class.Edge* nonnull dereferenceable(8) %call14.epil, i32 1) #9
  %inc.epil = add nuw nsw i32 %i.0112.epil, 1
  %epil.iter.sub = add i32 %epil.iter, -1
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.sub, 0
  br i1 %epil.iter.cmp.not, label %if.end65, label %for.body.epil, !llvm.loop !34

if.end65.loopexit122.unr-lcssa:                   ; preds = %if.end59.3, %for.body49.lr.ph
  %i45.0114.unr = phi i32 [ 0, %for.body49.lr.ph ], [ %inc61.3, %if.end59.3 ]
  %lcmp.mod125.not = icmp eq i32 %xtraiter123, 0
  br i1 %lcmp.mod125.not, label %if.end65, label %for.body49.epil

for.body49.epil:                                  ; preds = %if.end65.loopexit122.unr-lcssa, %if.end59.epil
  %i45.0114.epil = phi i32 [ %inc61.epil, %if.end59.epil ], [ %i45.0114.unr, %if.end65.loopexit122.unr-lcssa ]
  %epil.iter124 = phi i32 [ %epil.iter124.sub, %if.end59.epil ], [ %xtraiter123, %if.end65.loopexit122.unr-lcssa ]
  %36 = load %class.ChiVertex*, %class.ChiVertex** %arrayidx16, align 8, !tbaa !26
  %call53.epil = tail call %class.Edge* @_ZN9ChiVertexIiiE10getOutEdgeEi(%class.ChiVertex* nonnull dereferenceable(32) %36, i32 %i45.0114.epil) #9
  %call54.epil = tail call i32 @_ZN4EdgeIiE8getValueEv(%class.Edge* nonnull dereferenceable(8) %call53.epil) #9
  %cmp56.epil = icmp sgt i32 %call54.epil, %add55
  br i1 %cmp56.epil, label %if.then57.epil, label %if.end59.epil

if.then57.epil:                                   ; preds = %for.body49.epil
  tail call void @_ZN4EdgeIiE8setValueEi(%class.Edge* nonnull dereferenceable(8) %call53.epil, i32 %add55) #9
  br label %if.end59.epil

if.end59.epil:                                    ; preds = %if.then57.epil, %for.body49.epil
  %inc61.epil = add nuw nsw i32 %i45.0114.epil, 1
  %epil.iter124.sub = add i32 %epil.iter124, -1
  %epil.iter124.cmp.not = icmp eq i32 %epil.iter124.sub, 0
  br i1 %epil.iter124.cmp.not, label %if.end65, label %for.body49.epil, !llvm.loop !35

if.end65:                                         ; preds = %if.end65.loopexit122.unr-lcssa, %if.end59.epil, %if.end65.loopexit.unr-lcssa, %for.body.epil, %if.then38, %if.then7, %for.cond.cleanup24, %if.then5, %entry
  ret void

if.then57.1:                                      ; preds = %if.end59
  tail call void @_ZN4EdgeIiE8setValueEi(%class.Edge* nonnull dereferenceable(8) %call53.1, i32 %add55) #9
  br label %if.end59.1

if.end59.1:                                       ; preds = %if.then57.1, %if.end59
  %inc61.1 = or i32 %i45.0114, 2
  %37 = load %class.ChiVertex*, %class.ChiVertex** %arrayidx16, align 8, !tbaa !26
  %call53.2 = tail call %class.Edge* @_ZN9ChiVertexIiiE10getOutEdgeEi(%class.ChiVertex* nonnull dereferenceable(32) %37, i32 %inc61.1) #9
  %call54.2 = tail call i32 @_ZN4EdgeIiE8getValueEv(%class.Edge* nonnull dereferenceable(8) %call53.2) #9
  %cmp56.2 = icmp sgt i32 %call54.2, %add55
  br i1 %cmp56.2, label %if.then57.2, label %if.end59.2

if.then57.2:                                      ; preds = %if.end59.1
  tail call void @_ZN4EdgeIiE8setValueEi(%class.Edge* nonnull dereferenceable(8) %call53.2, i32 %add55) #9
  br label %if.end59.2

if.end59.2:                                       ; preds = %if.then57.2, %if.end59.1
  %inc61.2 = or i32 %i45.0114, 3
  %38 = load %class.ChiVertex*, %class.ChiVertex** %arrayidx16, align 8, !tbaa !26
  %call53.3 = tail call %class.Edge* @_ZN9ChiVertexIiiE10getOutEdgeEi(%class.ChiVertex* nonnull dereferenceable(32) %38, i32 %inc61.2) #9
  %call54.3 = tail call i32 @_ZN4EdgeIiE8getValueEv(%class.Edge* nonnull dereferenceable(8) %call53.3) #9
  %cmp56.3 = icmp sgt i32 %call54.3, %add55
  br i1 %cmp56.3, label %if.then57.3, label %if.end59.3

if.then57.3:                                      ; preds = %if.end59.2
  tail call void @_ZN4EdgeIiE8setValueEi(%class.Edge* nonnull dereferenceable(8) %call53.3, i32 %add55) #9
  br label %if.end59.3

if.end59.3:                                       ; preds = %if.then57.3, %if.end59.2
  %inc61.3 = add nuw nsw i32 %i45.0114, 4
  %niter127.nsub.3 = add i32 %niter127, -4
  %niter127.ncmp.3 = icmp eq i32 %niter127.nsub.3, 0
  br i1 %niter127.ncmp.3, label %if.end65.loopexit122.unr-lcssa, label %for.body49
}

; Function Attrs: noinline nounwind willreturn
define linkonce_odr hidden i32 @_ZN9ChiVertexIiiE11numOutEdgesEv(%class.ChiVertex* nonnull dereferenceable(32) %this) local_unnamed_addr #2 comdat align 2 {
entry:
  %nOutedges = getelementptr inbounds %class.ChiVertex, %class.ChiVertex* %this, i64 0, i32 2
  %0 = load i32, i32* %nOutedges, align 8, !tbaa !36
  ret i32 %0
}

; Function Attrs: noinline nounwind willreturn
define linkonce_odr hidden %class.Edge* @_ZN9ChiVertexIiiE10getOutEdgeEi(%class.ChiVertex* nonnull dereferenceable(32) %this, i32 %i) local_unnamed_addr #2 comdat align 2 {
entry:
  %outEdgeDataArray = getelementptr inbounds %class.ChiVertex, %class.ChiVertex* %this, i64 0, i32 5
  %0 = load %class.Edge**, %class.Edge*** %outEdgeDataArray, align 8, !tbaa !31
  %idxprom = sext i32 %i to i64
  %arrayidx = getelementptr inbounds %class.Edge*, %class.Edge** %0, i64 %idxprom
  %1 = load %class.Edge*, %class.Edge** %arrayidx, align 8, !tbaa !26
  ret %class.Edge* %1
}

; Function Attrs: noinline nounwind willreturn
define linkonce_odr hidden void @_ZN4EdgeIiE8setValueEi(%class.Edge* nonnull dereferenceable(8) %this, i32 %x) local_unnamed_addr #2 comdat align 2 {
entry:
  %edgeValue = getelementptr inbounds %class.Edge, %class.Edge* %this, i64 0, i32 0
  store i32 %x, i32* %edgeValue, align 4, !tbaa !37
  ret void
}

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
  %0 = load i32, i32* %nInedges, align 4, !tbaa !39
  ret i32 %0
}

; Function Attrs: noinline nounwind willreturn
define linkonce_odr hidden %class.Edge* @_ZN9ChiVertexIiiE9getInEdgeEi(%class.ChiVertex* nonnull dereferenceable(32) %this, i32 %i) local_unnamed_addr #2 comdat align 2 {
entry:
  %inEdgeDataArray = getelementptr inbounds %class.ChiVertex, %class.ChiVertex* %this, i64 0, i32 4
  %0 = load %class.Edge**, %class.Edge*** %inEdgeDataArray, align 8, !tbaa !30
  %idxprom = sext i32 %i to i64
  %arrayidx = getelementptr inbounds %class.Edge*, %class.Edge** %0, i64 %idxprom
  %1 = load %class.Edge*, %class.Edge** %arrayidx, align 8, !tbaa !26
  ret %class.Edge* %1
}

; Function Attrs: noinline nounwind willreturn
define linkonce_odr hidden i32 @_ZN4EdgeIiE8getValueEv(%class.Edge* nonnull dereferenceable(8) %this) local_unnamed_addr #2 comdat align 2 {
entry:
  %edgeValue = getelementptr inbounds %class.Edge, %class.Edge* %this, i64 0, i32 0
  %0 = load i32, i32* %edgeValue, align 4, !tbaa !37
  ret i32 %0
}

; Function Attrs: convergent norecurse nounwind willreturn
define hidden void @_Z8copyBackPP9ChiVertexIiiEP15GraphChiContextPi(%class.ChiVertex** nocapture readonly %vertex, %class.GraphChiContext* nonnull %context, i32* nocapture %index) local_unnamed_addr #1 {
entry:
  %0 = tail call i32 @llvm.nvvm.read.ptx.sreg.ntid.x() #9, !range !15
  %1 = tail call i32 @llvm.nvvm.read.ptx.sreg.ctaid.x() #9, !range !16
  %mul = mul i32 %1, %0
  %2 = tail call i32 @llvm.nvvm.read.ptx.sreg.tid.x() #9, !range !17
  %add = add i32 %mul, %2
  %call3 = tail call i32 @_ZN15GraphChiContext14getNumVerticesEv(%class.GraphChiContext* nonnull dereferenceable(12) %context) #9
  %cmp = icmp slt i32 %add, %call3
  %idxprom = sext i32 %add to i64
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %arrayidx6 = getelementptr inbounds i32, i32* %index, i64 %idxprom
  %arrayidx = getelementptr inbounds %class.ChiVertex*, %class.ChiVertex** %vertex, i64 %idxprom
  %3 = load %class.ChiVertex*, %class.ChiVertex** %arrayidx, align 8, !tbaa !26
  %call4 = tail call i32 @_ZN9ChiVertexIiiE8getValueEv(%class.ChiVertex* nonnull dereferenceable(32) %3) #9
  store i32 %call4, i32* %arrayidx6, align 4, !tbaa !25
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @llvm.nvvm.read.ptx.sreg.ntid.x() #6

; Function Attrs: nounwind readnone
declare i32 @llvm.nvvm.read.ptx.sreg.ctaid.x() #6

; Function Attrs: nounwind readnone
declare i32 @llvm.nvvm.read.ptx.sreg.tid.x() #6

; Function Attrs: convergent nounwind
declare dso_local noalias i8* @malloc(i64) local_unnamed_addr #7

; Function Attrs: convergent noinline nounwind
define linkonce_odr hidden void @_ZN9ChiVertexIiiEC2Eiii(%class.ChiVertex* nonnull dereferenceable(32) %this, i32 %id, i32 %inDegree, i32 %outDegree) unnamed_addr #4 comdat align 2 {
entry:
  %id2 = getelementptr inbounds %class.ChiVertex, %class.ChiVertex* %this, i64 0, i32 0
  store i32 %id, i32* %id2, align 8, !tbaa !40
  %nInedges = getelementptr inbounds %class.ChiVertex, %class.ChiVertex* %this, i64 0, i32 1
  store i32 %inDegree, i32* %nInedges, align 4, !tbaa !39
  %nOutedges = getelementptr inbounds %class.ChiVertex, %class.ChiVertex* %this, i64 0, i32 2
  store i32 %outDegree, i32* %nOutedges, align 8, !tbaa !36
  %conv = sext i32 %inDegree to i64
  %mul = shl nsw i64 %conv, 3
  %call = tail call noalias i8* @malloc(i64 %mul) #10
  %inEdgeDataArray = getelementptr inbounds %class.ChiVertex, %class.ChiVertex* %this, i64 0, i32 4
  %0 = bitcast %class.Edge*** %inEdgeDataArray to i8**
  store i8* %call, i8** %0, align 8, !tbaa !30
  %conv3 = sext i32 %outDegree to i64
  %mul4 = shl nsw i64 %conv3, 3
  %call5 = tail call noalias i8* @malloc(i64 %mul4) #10
  %outEdgeDataArray = getelementptr inbounds %class.ChiVertex, %class.ChiVertex* %this, i64 0, i32 5
  %1 = bitcast %class.Edge*** %outEdgeDataArray to i8**
  store i8* %call5, i8** %1, align 8, !tbaa !31
  ret void
}

; Function Attrs: convergent noinline nounwind willreturn
define linkonce_odr hidden void @_ZN4EdgeIiEC1Eii(%class.Edge* nonnull dereferenceable(8) %this, i32 %id, i32 %value) unnamed_addr #8 comdat align 2 {
entry:
  tail call void @_ZN4EdgeIiEC2Eii(%class.Edge* nonnull dereferenceable(8) %this, i32 %id, i32 %value) #9
  ret void
}

; Function Attrs: noinline nounwind willreturn
define linkonce_odr hidden void @_ZN4EdgeIiEC2Eii(%class.Edge* nonnull dereferenceable(8) %this, i32 %id, i32 %value) unnamed_addr #2 comdat align 2 {
entry:
  %vertexId = getelementptr inbounds %class.Edge, %class.Edge* %this, i64 0, i32 1
  store i32 %id, i32* %vertexId, align 4, !tbaa !41
  %edgeValue = getelementptr inbounds %class.Edge, %class.Edge* %this, i64 0, i32 0
  store i32 %value, i32* %edgeValue, align 4, !tbaa !37
  ret void
}

; Function Attrs: noinline nounwind willreturn
define linkonce_odr hidden i32 @_ZN4EdgeIiE11getVertexIdEv(%class.Edge* nonnull dereferenceable(8) %this) local_unnamed_addr #2 comdat align 2 {
entry:
  %vertexId = getelementptr inbounds %class.Edge, %class.Edge* %this, i64 0, i32 1
  %0 = load i32, i32* %vertexId, align 4, !tbaa !41
  ret i32 %0
}

attributes #0 = { nounwind willreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="sm_70" "target-features"="+ptx70,+sm_70" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { convergent norecurse nounwind willreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="sm_70" "target-features"="+ptx70,+sm_70" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noinline nounwind willreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="sm_70" "target-features"="+ptx70,+sm_70" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { convergent norecurse nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="sm_70" "target-features"="+ptx70,+sm_70" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { convergent noinline nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="sm_70" "target-features"="+ptx70,+sm_70" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { convergent norecurse nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="sm_70" "target-features"="+ptx70,+sm_70" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone }
attributes #7 = { convergent nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="sm_70" "target-features"="+ptx70,+sm_70" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { convergent noinline nounwind willreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="sm_70" "target-features"="+ptx70,+sm_70" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { nounwind }
attributes #10 = { convergent nounwind }

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
!31 = !{!29, !27, i64 24}
!32 = distinct !{!32, !33}
!33 = !{!"llvm.loop.unroll.disable"}
!34 = distinct !{!34, !33}
!35 = distinct !{!35, !33}
!36 = !{!29, !20, i64 8}
!37 = !{!38, !20, i64 0}
!38 = !{!"_ZTS4EdgeIiE", !20, i64 0, !20, i64 4}
!39 = !{!29, !20, i64 4}
!40 = !{!29, !20, i64 0}
!41 = !{!38, !20, i64 4}
