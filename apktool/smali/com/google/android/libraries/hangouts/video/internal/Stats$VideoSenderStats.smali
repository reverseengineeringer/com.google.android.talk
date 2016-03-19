.class public Lcom/google/android/libraries/hangouts/video/internal/Stats$VideoSenderStats;
.super Lcom/google/android/libraries/hangouts/video/internal/Stats;
.source "SourceFile"


# annotations
.annotation build Lcom/google/android/apps/common/proguard/UsedByNative;
.end annotation


# instance fields
.field public final a:I

.field public final b:[Lcom/google/android/libraries/hangouts/video/internal/Stats$VideoSenderStats$SsrcGroup;

.field public final c:Ljava/lang/String;

.field public final d:I

.field public final e:I

.field public final f:I

.field public final g:F

.field public final h:I

.field public final i:I

.field public final j:I

.field public final k:I

.field public final l:I

.field public final m:I

.field public final n:I

.field public final o:I

.field public final p:I


# direct methods
.method public constructor <init>(I[Lcom/google/android/libraries/hangouts/video/internal/Stats$VideoSenderStats$SsrcGroup;Ljava/lang/String;IIIFIIIIIIIII)V
    .locals 1
    .annotation build Lcom/google/android/apps/common/proguard/UsedByNative;
    .end annotation

    .prologue
    .line 308
    invoke-direct {p0}, Lcom/google/android/libraries/hangouts/video/internal/Stats;-><init>()V

    .line 309
    iput p1, p0, Lcom/google/android/libraries/hangouts/video/internal/Stats$VideoSenderStats;->a:I

    .line 310
    iput-object p2, p0, Lcom/google/android/libraries/hangouts/video/internal/Stats$VideoSenderStats;->b:[Lcom/google/android/libraries/hangouts/video/internal/Stats$VideoSenderStats$SsrcGroup;

    .line 311
    iput-object p3, p0, Lcom/google/android/libraries/hangouts/video/internal/Stats$VideoSenderStats;->c:Ljava/lang/String;

    .line 312
    iput p4, p0, Lcom/google/android/libraries/hangouts/video/internal/Stats$VideoSenderStats;->d:I

    .line 313
    iput p5, p0, Lcom/google/android/libraries/hangouts/video/internal/Stats$VideoSenderStats;->e:I

    .line 314
    iput p6, p0, Lcom/google/android/libraries/hangouts/video/internal/Stats$VideoSenderStats;->f:I

    .line 315
    iput p7, p0, Lcom/google/android/libraries/hangouts/video/internal/Stats$VideoSenderStats;->g:F

    .line 316
    iput p8, p0, Lcom/google/android/libraries/hangouts/video/internal/Stats$VideoSenderStats;->h:I

    .line 317
    iput p9, p0, Lcom/google/android/libraries/hangouts/video/internal/Stats$VideoSenderStats;->i:I

    .line 318
    iput p10, p0, Lcom/google/android/libraries/hangouts/video/internal/Stats$VideoSenderStats;->j:I

    .line 319
    iput p11, p0, Lcom/google/android/libraries/hangouts/video/internal/Stats$VideoSenderStats;->k:I

    .line 320
    iput p12, p0, Lcom/google/android/libraries/hangouts/video/internal/Stats$VideoSenderStats;->l:I

    .line 321
    iput p13, p0, Lcom/google/android/libraries/hangouts/video/internal/Stats$VideoSenderStats;->m:I

    .line 322
    iput p14, p0, Lcom/google/android/libraries/hangouts/video/internal/Stats$VideoSenderStats;->n:I

    .line 323
    move/from16 v0, p15

    iput v0, p0, Lcom/google/android/libraries/hangouts/video/internal/Stats$VideoSenderStats;->o:I

    .line 324
    move/from16 v0, p16

    iput v0, p0, Lcom/google/android/libraries/hangouts/video/internal/Stats$VideoSenderStats;->p:I

    .line 325
    return-void
.end method

.method public static printLegend(Ljava/io/PrintWriter;)V
    .locals 1
    .annotation build Lcom/google/android/apps/common/proguard/UsedByNative;
    .end annotation

    .prologue
    .line 366
    const-string v0, "  VideoSender -- ssrc, codec, sent, lost, rcvd, rtt, size, in, sent, rate"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 368
    return-void
.end method


# virtual methods
.method public addTo(Ljuk;)V
    .locals 8
    .annotation build Lcom/google/android/apps/common/proguard/UsedByNative;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 330
    const/4 v1, 0x2

    invoke-static {v1}, Lcom/google/android/libraries/hangouts/video/internal/Stats;->a(I)Ljun;

    move-result-object v2

    .line 331
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v2, Ljun;->k:Ljava/lang/Integer;

    .line 332
    iget v1, p0, Lcom/google/android/libraries/hangouts/video/internal/Stats$VideoSenderStats;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v2, Ljun;->l:Ljava/lang/Integer;

    .line 333
    iget-object v1, p0, Lcom/google/android/libraries/hangouts/video/internal/Stats$VideoSenderStats;->c:Ljava/lang/String;

    iput-object v1, v2, Ljun;->F:Ljava/lang/String;

    .line 334
    iget v1, p0, Lcom/google/android/libraries/hangouts/video/internal/Stats$VideoSenderStats;->d:I

    int-to-long v4, v1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v2, Ljun;->g:Ljava/lang/Long;

    .line 335
    iget v1, p0, Lcom/google/android/libraries/hangouts/video/internal/Stats$VideoSenderStats;->e:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v2, Ljun;->h:Ljava/lang/Integer;

    .line 336
    iget v1, p0, Lcom/google/android/libraries/hangouts/video/internal/Stats$VideoSenderStats;->f:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v2, Ljun;->c:Ljava/lang/Integer;

    .line 337
    iget v1, p0, Lcom/google/android/libraries/hangouts/video/internal/Stats$VideoSenderStats;->g:F

    const/high16 v3, 0x42c80000    # 100.0f

    mul-float/2addr v1, v3

    float-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v2, Ljun;->b:Ljava/lang/Integer;

    .line 338
    iget v1, p0, Lcom/google/android/libraries/hangouts/video/internal/Stats$VideoSenderStats;->h:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v2, Ljun;->n:Ljava/lang/Integer;

    .line 339
    iget v1, p0, Lcom/google/android/libraries/hangouts/video/internal/Stats$VideoSenderStats;->i:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v2, Ljun;->o:Ljava/lang/Integer;

    .line 340
    iget v1, p0, Lcom/google/android/libraries/hangouts/video/internal/Stats$VideoSenderStats;->j:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v2, Ljun;->f:Ljava/lang/Integer;

    .line 341
    iget v1, p0, Lcom/google/android/libraries/hangouts/video/internal/Stats$VideoSenderStats;->k:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v2, Ljun;->O:Ljava/lang/Integer;

    .line 342
    iget v1, p0, Lcom/google/android/libraries/hangouts/video/internal/Stats$VideoSenderStats;->l:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v2, Ljun;->P:Ljava/lang/Integer;

    .line 343
    iget v1, p0, Lcom/google/android/libraries/hangouts/video/internal/Stats$VideoSenderStats;->m:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v2, Ljun;->p:Ljava/lang/Integer;

    .line 344
    iget v1, p0, Lcom/google/android/libraries/hangouts/video/internal/Stats$VideoSenderStats;->n:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v2, Ljun;->q:Ljava/lang/Integer;

    .line 345
    iget v1, p0, Lcom/google/android/libraries/hangouts/video/internal/Stats$VideoSenderStats;->p:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v2, Ljun;->z:Ljava/lang/Integer;

    .line 346
    iget v1, p0, Lcom/google/android/libraries/hangouts/video/internal/Stats$VideoSenderStats;->o:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v2, Ljun;->B:Ljava/lang/Integer;

    .line 348
    iget-object v1, p0, Lcom/google/android/libraries/hangouts/video/internal/Stats$VideoSenderStats;->b:[Lcom/google/android/libraries/hangouts/video/internal/Stats$VideoSenderStats$SsrcGroup;

    if-eqz v1, :cond_1

    .line 349
    new-instance v3, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/libraries/hangouts/video/internal/Stats$VideoSenderStats;->b:[Lcom/google/android/libraries/hangouts/video/internal/Stats$VideoSenderStats$SsrcGroup;

    array-length v1, v1

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 350
    iget-object v4, p0, Lcom/google/android/libraries/hangouts/video/internal/Stats$VideoSenderStats;->b:[Lcom/google/android/libraries/hangouts/video/internal/Stats$VideoSenderStats$SsrcGroup;

    array-length v5, v4

    move v1, v0

    :goto_0
    if-ge v1, v5, :cond_0

    aget-object v0, v4, v1

    .line 351
    new-instance v6, Ljuo;

    invoke-direct {v6}, Ljuo;-><init>()V

    .line 352
    iget-object v7, v0, Lcom/google/android/libraries/hangouts/video/internal/Stats$VideoSenderStats$SsrcGroup;->a:Ljava/lang/String;

    iput-object v7, v6, Ljuo;->a:Ljava/lang/String;

    .line 353
    iget-object v0, v0, Lcom/google/android/libraries/hangouts/video/internal/Stats$VideoSenderStats$SsrcGroup;->b:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, v6, Ljuo;->b:[I

    .line 354
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 350
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 356
    :cond_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljuo;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljuo;

    iput-object v0, v2, Ljun;->N:[Ljuo;

    .line 359
    :cond_1
    iget-object v0, p1, Ljuk;->d:[Ljun;

    array-length v1, v0

    .line 360
    iget-object v0, p1, Ljuk;->d:[Ljun;

    add-int/lit8 v3, v1, 0x1

    invoke-static {v0, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljun;

    iput-object v0, p1, Ljuk;->d:[Ljun;

    .line 361
    iget-object v0, p1, Ljuk;->d:[Ljun;

    aput-object v2, v0, v1

    .line 362
    return-void
.end method

.method public print(Ljava/io/PrintWriter;Lcom/google/android/libraries/hangouts/video/internal/Stats$AggregatePrintStats;)V
    .locals 18
    .annotation build Lcom/google/android/apps/common/proguard/UsedByNative;
    .end annotation

    .prologue
    .line 1032
    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/google/android/libraries/hangouts/video/internal/Stats$AggregatePrintStats;->a:Ljava/util/ArrayList;

    .line 373
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/libraries/hangouts/video/internal/Stats$VideoSenderStats;->n:I

    int-to-float v2, v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 374
    move-object/from16 v0, p0

    iget v1, v0, Lcom/google/android/libraries/hangouts/video/internal/Stats$VideoSenderStats;->a:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/libraries/hangouts/video/internal/Stats$VideoSenderStats;->c:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/libraries/hangouts/video/internal/Stats$VideoSenderStats;->e:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/libraries/hangouts/video/internal/Stats$VideoSenderStats;->d:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/google/android/libraries/hangouts/video/internal/Stats$VideoSenderStats;->f:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/google/android/libraries/hangouts/video/internal/Stats$VideoSenderStats;->g:F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/google/android/libraries/hangouts/video/internal/Stats$VideoSenderStats;->h:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/google/android/libraries/hangouts/video/internal/Stats$VideoSenderStats;->i:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/google/android/libraries/hangouts/video/internal/Stats$VideoSenderStats;->j:I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/google/android/libraries/hangouts/video/internal/Stats$VideoSenderStats;->k:I

    move-object/from16 v0, p0

    iget v11, v0, Lcom/google/android/libraries/hangouts/video/internal/Stats$VideoSenderStats;->l:I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/google/android/libraries/hangouts/video/internal/Stats$VideoSenderStats;->m:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/google/android/libraries/hangouts/video/internal/Stats$VideoSenderStats;->n:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/google/android/libraries/hangouts/video/internal/Stats$VideoSenderStats;->o:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/google/android/libraries/hangouts/video/internal/Stats$VideoSenderStats;->p:I

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    move/from16 v0, v17

    add-int/lit16 v0, v0, 0xd0

    move/from16 v17, v0

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v17, " -- VideoSender -- "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v16, ", "

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "), "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "), "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "), "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 385
    return-void
.end method
