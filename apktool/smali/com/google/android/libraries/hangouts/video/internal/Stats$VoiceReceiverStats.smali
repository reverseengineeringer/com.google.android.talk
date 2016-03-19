.class public Lcom/google/android/libraries/hangouts/video/internal/Stats$VoiceReceiverStats;
.super Lcom/google/android/libraries/hangouts/video/internal/Stats;
.source "SourceFile"


# annotations
.annotation build Lcom/google/android/apps/common/proguard/UsedByNative;
.end annotation


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:F

.field public final f:I

.field public final g:I

.field public final h:I

.field public final i:I

.field public final j:I

.field public final k:I

.field public final l:F

.field public final m:F

.field public final n:F

.field public final o:F

.field public final p:F

.field public final q:I

.field public final r:I

.field public final s:I

.field public final t:I

.field public final u:I

.field public final v:I


# direct methods
.method public constructor <init>(IIIIFIIIIIIFFFFFIIIIII)V
    .locals 1
    .annotation build Lcom/google/android/apps/common/proguard/UsedByNative;
    .end annotation

    .prologue
    .line 201
    invoke-direct {p0}, Lcom/google/android/libraries/hangouts/video/internal/Stats;-><init>()V

    .line 202
    iput p1, p0, Lcom/google/android/libraries/hangouts/video/internal/Stats$VoiceReceiverStats;->a:I

    .line 203
    iput p2, p0, Lcom/google/android/libraries/hangouts/video/internal/Stats$VoiceReceiverStats;->b:I

    .line 204
    iput p3, p0, Lcom/google/android/libraries/hangouts/video/internal/Stats$VoiceReceiverStats;->c:I

    .line 205
    iput p4, p0, Lcom/google/android/libraries/hangouts/video/internal/Stats$VoiceReceiverStats;->d:I

    .line 206
    iput p5, p0, Lcom/google/android/libraries/hangouts/video/internal/Stats$VoiceReceiverStats;->e:F

    .line 207
    iput p6, p0, Lcom/google/android/libraries/hangouts/video/internal/Stats$VoiceReceiverStats;->f:I

    .line 208
    iput p7, p0, Lcom/google/android/libraries/hangouts/video/internal/Stats$VoiceReceiverStats;->g:I

    .line 209
    iput p8, p0, Lcom/google/android/libraries/hangouts/video/internal/Stats$VoiceReceiverStats;->h:I

    .line 210
    iput p9, p0, Lcom/google/android/libraries/hangouts/video/internal/Stats$VoiceReceiverStats;->i:I

    .line 211
    iput p10, p0, Lcom/google/android/libraries/hangouts/video/internal/Stats$VoiceReceiverStats;->j:I

    .line 212
    iput p11, p0, Lcom/google/android/libraries/hangouts/video/internal/Stats$VoiceReceiverStats;->k:I

    .line 213
    iput p12, p0, Lcom/google/android/libraries/hangouts/video/internal/Stats$VoiceReceiverStats;->l:F

    .line 214
    iput p13, p0, Lcom/google/android/libraries/hangouts/video/internal/Stats$VoiceReceiverStats;->m:F

    .line 215
    iput p14, p0, Lcom/google/android/libraries/hangouts/video/internal/Stats$VoiceReceiverStats;->n:F

    .line 216
    move/from16 v0, p15

    iput v0, p0, Lcom/google/android/libraries/hangouts/video/internal/Stats$VoiceReceiverStats;->o:F

    .line 217
    move/from16 v0, p16

    iput v0, p0, Lcom/google/android/libraries/hangouts/video/internal/Stats$VoiceReceiverStats;->p:F

    .line 218
    move/from16 v0, p17

    iput v0, p0, Lcom/google/android/libraries/hangouts/video/internal/Stats$VoiceReceiverStats;->q:I

    .line 219
    move/from16 v0, p18

    iput v0, p0, Lcom/google/android/libraries/hangouts/video/internal/Stats$VoiceReceiverStats;->r:I

    .line 220
    move/from16 v0, p19

    iput v0, p0, Lcom/google/android/libraries/hangouts/video/internal/Stats$VoiceReceiverStats;->s:I

    .line 221
    move/from16 v0, p20

    iput v0, p0, Lcom/google/android/libraries/hangouts/video/internal/Stats$VoiceReceiverStats;->t:I

    .line 222
    move/from16 v0, p21

    iput v0, p0, Lcom/google/android/libraries/hangouts/video/internal/Stats$VoiceReceiverStats;->u:I

    .line 223
    move/from16 v0, p22

    iput v0, p0, Lcom/google/android/libraries/hangouts/video/internal/Stats$VoiceReceiverStats;->v:I

    .line 224
    return-void
.end method

.method public static printLegend(Ljava/io/PrintWriter;)V
    .locals 1
    .annotation build Lcom/google/android/apps/common/proguard/UsedByNative;
    .end annotation

    .prologue
    .line 265
    const-string v0, "  VoiceReceiver -- ssrc, rcvd, lost, seq, jitter, jbuf, delay, level, expand"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 267
    return-void
.end method


# virtual methods
.method public addTo(Ljuk;)V
    .locals 5
    .annotation build Lcom/google/android/apps/common/proguard/UsedByNative;
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v4, -0x1

    .line 229
    invoke-static {v0}, Lcom/google/android/libraries/hangouts/video/internal/Stats;->a(I)Ljun;

    move-result-object v1

    .line 230
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v1, Ljun;->k:Ljava/lang/Integer;

    .line 231
    iget v0, p0, Lcom/google/android/libraries/hangouts/video/internal/Stats$VoiceReceiverStats;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v1, Ljun;->l:Ljava/lang/Integer;

    .line 232
    iget v0, p0, Lcom/google/android/libraries/hangouts/video/internal/Stats$VoiceReceiverStats;->b:I

    int-to-long v2, v0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v1, Ljun;->i:Ljava/lang/Long;

    .line 233
    iget v0, p0, Lcom/google/android/libraries/hangouts/video/internal/Stats$VoiceReceiverStats;->c:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v1, Ljun;->j:Ljava/lang/Integer;

    .line 234
    iget v0, p0, Lcom/google/android/libraries/hangouts/video/internal/Stats$VoiceReceiverStats;->d:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v1, Ljun;->c:Ljava/lang/Integer;

    .line 235
    iget v0, p0, Lcom/google/android/libraries/hangouts/video/internal/Stats$VoiceReceiverStats;->e:F

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v0, v2

    float-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v1, Ljun;->b:Ljava/lang/Integer;

    .line 236
    iget v0, p0, Lcom/google/android/libraries/hangouts/video/internal/Stats$VoiceReceiverStats;->f:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v1, Ljun;->d:Ljava/lang/Integer;

    .line 237
    iget v0, p0, Lcom/google/android/libraries/hangouts/video/internal/Stats$VoiceReceiverStats;->g:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v1, Ljun;->e:Ljava/lang/Integer;

    .line 238
    iget v0, p0, Lcom/google/android/libraries/hangouts/video/internal/Stats$VoiceReceiverStats;->h:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v1, Ljun;->w:Ljava/lang/Integer;

    .line 239
    iget v0, p0, Lcom/google/android/libraries/hangouts/video/internal/Stats$VoiceReceiverStats;->l:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, v1, Ljun;->Z:Ljava/lang/Float;

    .line 240
    iget v0, p0, Lcom/google/android/libraries/hangouts/video/internal/Stats$VoiceReceiverStats;->m:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, v1, Ljun;->aa:Ljava/lang/Float;

    .line 241
    iget v0, p0, Lcom/google/android/libraries/hangouts/video/internal/Stats$VoiceReceiverStats;->p:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, v1, Ljun;->ab:Ljava/lang/Float;

    .line 242
    iget v0, p0, Lcom/google/android/libraries/hangouts/video/internal/Stats$VoiceReceiverStats;->o:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, v1, Ljun;->ac:Ljava/lang/Float;

    .line 243
    iget v0, p0, Lcom/google/android/libraries/hangouts/video/internal/Stats$VoiceReceiverStats;->n:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, v1, Ljun;->ad:Ljava/lang/Float;

    .line 244
    iget v0, p0, Lcom/google/android/libraries/hangouts/video/internal/Stats$VoiceReceiverStats;->q:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v1, Ljun;->ai:Ljava/lang/Integer;

    .line 245
    iget v0, p0, Lcom/google/android/libraries/hangouts/video/internal/Stats$VoiceReceiverStats;->r:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v1, Ljun;->aj:Ljava/lang/Integer;

    .line 246
    iget v0, p0, Lcom/google/android/libraries/hangouts/video/internal/Stats$VoiceReceiverStats;->s:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v1, Ljun;->ak:Ljava/lang/Integer;

    .line 247
    iget v0, p0, Lcom/google/android/libraries/hangouts/video/internal/Stats$VoiceReceiverStats;->t:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v1, Ljun;->al:Ljava/lang/Integer;

    .line 248
    iget v0, p0, Lcom/google/android/libraries/hangouts/video/internal/Stats$VoiceReceiverStats;->u:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v1, Ljun;->am:Ljava/lang/Integer;

    .line 249
    iget v0, p0, Lcom/google/android/libraries/hangouts/video/internal/Stats$VoiceReceiverStats;->v:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v1, Ljun;->an:Ljava/lang/Integer;

    .line 251
    iget v0, p0, Lcom/google/android/libraries/hangouts/video/internal/Stats$VoiceReceiverStats;->j:I

    if-eq v0, v4, :cond_0

    .line 252
    iget v0, p0, Lcom/google/android/libraries/hangouts/video/internal/Stats$VoiceReceiverStats;->j:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v1, Ljun;->y:Ljava/lang/Integer;

    .line 254
    :cond_0
    iget v0, p0, Lcom/google/android/libraries/hangouts/video/internal/Stats$VoiceReceiverStats;->k:I

    if-eq v0, v4, :cond_1

    .line 255
    iget v0, p0, Lcom/google/android/libraries/hangouts/video/internal/Stats$VoiceReceiverStats;->k:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v1, Ljun;->m:Ljava/lang/Integer;

    .line 258
    :cond_1
    iget-object v0, p1, Ljuk;->d:[Ljun;

    array-length v2, v0

    .line 259
    iget-object v0, p1, Ljuk;->d:[Ljun;

    add-int/lit8 v3, v2, 0x1

    invoke-static {v0, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljun;

    iput-object v0, p1, Ljuk;->d:[Ljun;

    .line 260
    iget-object v0, p1, Ljuk;->d:[Ljun;

    aput-object v1, v0, v2

    .line 261
    return-void
.end method

.method public print(Ljava/io/PrintWriter;Lcom/google/android/libraries/hangouts/video/internal/Stats$AggregatePrintStats;)V
    .locals 17
    .annotation build Lcom/google/android/apps/common/proguard/UsedByNative;
    .end annotation

    .prologue
    .line 272
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/libraries/hangouts/video/internal/Stats$VoiceReceiverStats;->a:I

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/libraries/hangouts/video/internal/Stats$VoiceReceiverStats;->c:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/google/android/libraries/hangouts/video/internal/Stats$VoiceReceiverStats;->b:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/google/android/libraries/hangouts/video/internal/Stats$VoiceReceiverStats;->d:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/google/android/libraries/hangouts/video/internal/Stats$VoiceReceiverStats;->e:F

    move-object/from16 v0, p0

    iget v8, v0, Lcom/google/android/libraries/hangouts/video/internal/Stats$VoiceReceiverStats;->f:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/google/android/libraries/hangouts/video/internal/Stats$VoiceReceiverStats;->g:I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/google/android/libraries/hangouts/video/internal/Stats$VoiceReceiverStats;->h:I

    move-object/from16 v0, p0

    iget v11, v0, Lcom/google/android/libraries/hangouts/video/internal/Stats$VoiceReceiverStats;->i:I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/google/android/libraries/hangouts/video/internal/Stats$VoiceReceiverStats;->j:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/google/android/libraries/hangouts/video/internal/Stats$VoiceReceiverStats;->k:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/google/android/libraries/hangouts/video/internal/Stats$VoiceReceiverStats;->l:F

    new-instance v15, Ljava/lang/StringBuilder;

    const/16 v16, 0xc3

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v16, " -- VoiceReceiver -- "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "), "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "), "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "), "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 282
    return-void
.end method
