.class public Ldra;
.super Ldqf;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x4L


# instance fields
.field private final g:[B

.field private final h:[Lcyx;


# direct methods
.method private constructor <init>(Lkah;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 3158
    iget-object v0, p1, Lkah;->responseHeader:Lkdp;

    const-wide/16 v2, -0x1

    invoke-direct {p0, v0, v2, v3}, Ldqf;-><init>(Lkdp;J)V

    .line 3160
    iget-object v0, p1, Lkah;->b:Ljyc;

    if-eqz v0, :cond_2

    .line 3161
    iget-object v0, p1, Lkah;->b:Ljyc;

    invoke-static {v0}, Ljyc;->a(Llyi;)[B

    move-result-object v0

    :goto_0
    iput-object v0, p0, Ldra;->g:[B

    .line 3164
    iget-object v0, p1, Lkah;->b:Ljyc;

    if-eqz v0, :cond_0

    .line 3165
    const/4 v0, 0x1

    new-array v1, v0, [Ljyc;

    .line 3166
    const/4 v0, 0x0

    iget-object v2, p1, Lkah;->b:Ljyc;

    aput-object v2, v1, v0

    .line 3168
    :cond_0
    iget-object v0, p1, Lkah;->e:[Ljzh;

    invoke-static {v0, v1}, Ldra;->a([Ljzh;[Ljyc;)[Lcyx;

    move-result-object v0

    iput-object v0, p0, Ldra;->h:[Lcyx;

    .line 4232
    sget-boolean v0, Ldqf;->a:Z

    .line 3170
    if-eqz v0, :cond_1

    .line 3171
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1d

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "GetConversationResponse from:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3173
    :cond_1
    return-void

    :cond_2
    move-object v0, v1

    .line 3161
    goto :goto_0
.end method

.method public static parseFrom([B)Ldqf;
    .locals 2

    .prologue
    .line 3177
    new-instance v0, Lkah;

    invoke-direct {v0}, Lkah;-><init>()V

    .line 5131
    array-length v1, p0

    invoke-static {v0, p0, v1}, Llyi;->b(Llyi;[BI)Llyi;

    move-result-object v0

    .line 3178
    check-cast v0, Lkah;

    .line 3179
    iget-object v1, v0, Lkah;->responseHeader:Lkdp;

    invoke-static {v1}, Ldra;->a(Lkdp;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3180
    new-instance v1, Ldqs;

    iget-object v0, v0, Lkah;->responseHeader:Lkdp;

    invoke-direct {v1, v0}, Ldqs;-><init>(Lkdp;)V

    move-object v0, v1

    .line 3182
    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ldra;

    invoke-direct {v1, v0}, Ldra;-><init>(Lkah;)V

    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public a(Lbfz;Ldyy;)V
    .locals 28

    .prologue
    .line 3217
    invoke-super/range {p0 .. p2}, Ldqf;->a(Lbfz;Ldyy;)V

    .line 3219
    const-string v5, ""

    .line 3220
    const/4 v4, 0x0

    .line 3221
    move-object/from16 v0, p0

    iget-object v6, v0, Ldra;->g:[B

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Ldra;->c:Ldsf;

    iget-wide v8, v8, Ldsf;->d:J

    invoke-static {v6, v7, v8, v9}, Ldmp;->a([BZJ)Ldmp;

    move-result-object v24

    .line 3228
    if-eqz v24, :cond_1

    move-object/from16 v0, v24

    iget-object v6, v0, Ldmp;->b:Lega;

    if-eqz v6, :cond_1

    .line 3229
    invoke-virtual/range {p1 .. p1}, Lbfz;->g()Lbfd;

    move-result-object v6

    move-object/from16 v0, v24

    iget-object v7, v0, Ldmp;->b:Lega;

    invoke-static {v6, v7}, Lbft;->a(Lbfd;Lega;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 3231
    invoke-virtual/range {p1 .. p1}, Lbfz;->g()Lbfd;

    move-result-object v4

    const/16 v5, 0x72f

    .line 3230
    invoke-static {v4, v5}, Laal;->a(Lbfd;I)V

    .line 3500
    :cond_0
    :goto_0
    return-void

    .line 3236
    :cond_1
    if-eqz v24, :cond_2b

    .line 3237
    move-object/from16 v0, v24

    iget-object v5, v0, Ldmp;->a:Ljava/lang/String;

    .line 3238
    move-object/from16 v0, v24

    iget-object v4, v0, Ldmp;->c:Ljava/util/List;

    move-object v15, v5

    move-object v5, v4

    .line 3241
    :goto_1
    move-object/from16 v0, p0

    iget-object v4, v0, Ldra;->b:Leff;

    move-object v14, v4

    check-cast v14, Ldoz;

    .line 3242
    iget-object v7, v14, Ldoz;->r:Ldos;

    .line 3243
    iget-boolean v0, v14, Ldoz;->b:Z

    move/from16 v25, v0

    .line 3244
    iget-object v4, v14, Ldoz;->k:[B

    if-nez v4, :cond_a

    iget-wide v8, v14, Ldoz;->l:J

    const-wide/16 v10, 0x0

    cmp-long v4, v8, v10

    if-nez v4, :cond_a

    const/4 v4, 0x1

    move/from16 v16, v4

    .line 3246
    :goto_2
    iget-object v4, v14, Ldoz;->m:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_b

    const/4 v4, 0x1

    move/from16 v23, v4

    .line 3248
    :goto_3
    if-nez v25, :cond_2

    if-eqz v5, :cond_2

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 3249
    const-string v4, "Events were not requested, eventList should be empty"

    invoke-static {v4}, Lhbs;->a(Ljava/lang/String;)V

    .line 3253
    :cond_2
    iget-object v4, v14, Ldoz;->p:Legf;

    if-eqz v4, :cond_2a

    .line 5232
    sget-boolean v4, Ldqf;->a:Z

    .line 3254
    if-eqz v4, :cond_3

    .line 3255
    iget-object v4, v14, Ldoz;->p:Legf;

    .line 3257
    invoke-virtual {v4}, Legf;->j()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iget-object v6, v14, Ldoz;->p:Legf;

    .line 3258
    invoke-virtual {v6}, Legf;->c()J

    move-result-wide v8

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, 0x5c

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    add-int/2addr v10, v11

    invoke-direct {v6, v10}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v10, "Adding saved pushEvent to GetConversationResponse "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v10, " eventId: "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " timestamp: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 3262
    :cond_3
    const/4 v4, 0x0

    .line 3263
    if-eqz v5, :cond_4

    .line 3264
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    .line 3266
    :cond_4
    new-instance v6, Ljava/util/ArrayList;

    add-int/lit8 v8, v4, 0x1

    invoke-direct {v6, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 3267
    if-eqz v4, :cond_5

    .line 3268
    invoke-interface {v6, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 3270
    :cond_5
    iget-object v4, v14, Ldoz;->p:Legf;

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v17, v6

    .line 3274
    :goto_4
    const-string v4, "Babel"

    const/4 v5, 0x3

    invoke-static {v4, v5}, Lezi;->a(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 3275
    if-eqz v24, :cond_e

    .line 3277
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_c

    .line 3278
    const/4 v4, 0x0

    move-object/from16 v0, v17

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Legf;

    invoke-virtual {v4}, Legf;->c()J

    move-result-wide v8

    .line 3279
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, v17

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Legf;

    invoke-virtual {v4}, Legf;->c()J

    move-result-wide v4

    new-instance v6, Ljava/lang/StringBuilder;

    const/16 v10, 0x3c

    invoke-direct {v6, v10}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v10, " earliest: "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " latest: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3283
    :goto_5
    const-string v6, "Babel"

    const-string v5, "processGetConversationResponse conversationId: "

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 3286
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v9

    move-object/from16 v0, v24

    iget-object v5, v0, Ldmp;->e:[B

    .line 3287
    invoke-static {v5}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, v24

    iget-wide v12, v0, Ldmp;->f:J

    move-object/from16 v0, p0

    iget-object v5, v0, Ldra;->h:[Lcyx;

    if-nez v5, :cond_d

    .line 3289
    const/4 v5, 0x0

    :goto_6
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    move/from16 v0, v18

    add-int/lit16 v0, v0, 0x8e

    move/from16 v18, v0

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v19

    add-int v18, v18, v19

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v19

    add-int v18, v18, v19

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v19

    add-int v18, v18, v19

    move/from16 v0, v18

    invoke-direct {v11, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v11, " requestedEvents: "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v25

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v11, " eventCount: "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, " continuationToken: "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, " continuationEventTimestamp: "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, " num entities: "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    .line 3283
    invoke-static {v6, v4, v5}, Lezi;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3299
    :cond_6
    :goto_7
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_26

    .line 3300
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_f

    .line 3301
    const/4 v4, 0x0

    move-object/from16 v0, v17

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Legf;

    invoke-virtual {v4}, Legf;->c()J

    move-result-wide v4

    move-wide/from16 v18, v4

    .line 3303
    :goto_8
    const/16 v21, 0x0

    .line 3304
    const/4 v4, 0x0

    .line 3305
    const/16 v20, 0x0

    .line 3307
    invoke-virtual/range {p0 .. p0}, Ldra;->j()Lcqr;

    move-result-object v5

    if-eqz v5, :cond_7

    .line 3308
    invoke-virtual/range {p0 .. p0}, Ldra;->j()Lcqr;

    move-result-object v5

    const-string v6, "get_conversation_response"

    invoke-interface {v5, v6}, Lcqr;->a(Ljava/lang/String;)V

    .line 3310
    :cond_7
    invoke-virtual/range {p1 .. p1}, Lbfz;->a()V

    .line 3311
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    mul-long v12, v8, v10

    .line 3314
    if-eqz v7, :cond_8

    iget-object v5, v7, Ldos;->k:Ljava/lang/String;

    .line 3315
    invoke-static {v5}, Laen;->c(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_8

    .line 3317
    invoke-virtual/range {p1 .. p1}, Lbfz;->g()Lbfd;

    move-result-object v5

    const/16 v6, 0x9df

    .line 3316
    invoke-static {v5, v6}, Laal;->a(Lbfd;I)V

    .line 3321
    :cond_8
    :try_start_0
    move-object/from16 v0, p0

    iget-object v5, v0, Ldra;->h:[Lcyx;

    if-eqz v5, :cond_10

    .line 3324
    move-object/from16 v0, p0

    iget-object v6, v0, Ldra;->h:[Lcyx;

    array-length v8, v6

    const/4 v5, 0x0

    :goto_9
    if-ge v5, v8, :cond_10

    aget-object v9, v6, v5

    .line 3326
    if-eqz v9, :cond_9

    .line 3327
    const/4 v10, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v9, v10}, Lbfz;->a(Lcyx;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3324
    :cond_9
    add-int/lit8 v5, v5, 0x1

    goto :goto_9

    .line 3244
    :cond_a
    const/4 v4, 0x0

    move/from16 v16, v4

    goto/16 :goto_2

    .line 3246
    :cond_b
    const/4 v4, 0x0

    move/from16 v23, v4

    goto/16 :goto_3

    .line 3281
    :cond_c
    const-string v4, ""

    goto/16 :goto_5

    .line 3289
    :cond_d
    move-object/from16 v0, p0

    iget-object v5, v0, Ldra;->h:[Lcyx;

    array-length v5, v5

    goto/16 :goto_6

    .line 3292
    :cond_e
    const-string v4, "Babel"

    const-string v5, "processGetConversationResponse requestedEvents: "

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, 0x5

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v25

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lezi;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_7

    .line 3301
    :cond_f
    const-wide/16 v4, 0x0

    move-wide/from16 v18, v4

    goto/16 :goto_8

    .line 3336
    :cond_10
    :try_start_1
    move-object/from16 v0, v24

    iget-object v5, v0, Ldmp;->b:Lega;

    if-eqz v5, :cond_29

    .line 3338
    if-eqz v7, :cond_13

    .line 3339
    iget-object v8, v7, Ldos;->j:Ljava/lang/String;

    .line 3343
    :goto_a
    move-object/from16 v0, v24

    iget-object v5, v0, Ldmp;->b:Lega;

    move-object/from16 v0, v24

    iget-wide v6, v0, Ldmp;->h:J

    const/4 v10, 0x0

    iget-object v4, v14, Ldoz;->r:Ldos;

    if-eqz v4, :cond_14

    const/4 v11, 0x1

    :goto_b
    move-object/from16 v4, p1

    move-object/from16 v9, p2

    invoke-static/range {v4 .. v11}, Lbft;->a(Lbfz;Lega;JLjava/lang/String;Ldyy;Lbfy;Z)Z

    move-result v4

    .line 3348
    move-object/from16 v0, v24

    iget-object v5, v0, Ldmp;->b:Lega;

    invoke-virtual {v5}, Lega;->m()Z

    move-result v5

    if-nez v5, :cond_11

    .line 3349
    const/4 v5, 0x0

    move-object/from16 v0, v24

    iget-object v6, v0, Ldmp;->a:Ljava/lang/String;

    .line 3351
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Lbfz;->M(Ljava/lang/String;)J

    move-result-wide v6

    move-object/from16 v0, v24

    iget-object v8, v0, Ldmp;->a:Ljava/lang/String;

    .line 3349
    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6, v7, v8}, Lbfz;->a(IJLjava/lang/String;)V

    :cond_11
    move/from16 v22, v4

    .line 3356
    :goto_c
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_28

    .line 3357
    const-wide/16 v6, 0x0

    const/4 v9, 0x0

    move-object/from16 v4, p1

    move-object v5, v15

    move-object/from16 v8, p2

    invoke-static/range {v4 .. v9}, Lbft;->a(Lbfz;Ljava/lang/String;JLdyy;Legf;)Z

    .line 3359
    new-instance v26, Ljava/util/ArrayList;

    invoke-direct/range {v26 .. v26}, Ljava/util/ArrayList;-><init>()V

    .line 3360
    const/4 v4, 0x0

    move/from16 v5, v21

    move/from16 v27, v20

    move/from16 v20, v4

    move/from16 v4, v27

    :goto_d
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v6

    move/from16 v0, v20

    if-ge v0, v6, :cond_19

    .line 3361
    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Legf;

    .line 3365
    invoke-virtual {v6}, Legf;->f()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_12

    .line 3366
    invoke-virtual {v6}, Legf;->f()Ljava/util/List;

    move-result-object v4

    move-object/from16 v0, v26

    invoke-interface {v0, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 3368
    :cond_12
    instance-of v4, v6, Legj;

    if-eqz v4, :cond_15

    .line 3369
    const/4 v5, 0x1

    move v4, v5

    .line 3386
    :goto_e
    const/16 v21, 0x1

    .line 3388
    invoke-virtual/range {p0 .. p0}, Ldra;->h()J

    move-result-wide v8

    invoke-virtual/range {p0 .. p0}, Ldra;->i()J

    move-result-wide v10

    move-object/from16 v5, p1

    move-object/from16 v7, p2

    .line 3387
    invoke-static/range {v5 .. v13}, Lbft;->a(Lbfz;Legf;Ldyy;JJJ)V

    .line 3360
    add-int/lit8 v5, v20, 0x1

    move/from16 v20, v5

    move v5, v4

    move/from16 v4, v21

    goto :goto_d

    .line 3341
    :cond_13
    const/4 v8, 0x0

    goto/16 :goto_a

    .line 3343
    :cond_14
    const/4 v11, 0x0

    goto/16 :goto_b

    .line 3370
    :cond_15
    instance-of v4, v6, Lefr;

    if-eqz v4, :cond_18

    .line 3371
    if-eqz v25, :cond_18

    .line 3372
    iget-object v4, v14, Ldoz;->k:[B

    if-eqz v4, :cond_16

    .line 3373
    move-object v0, v6

    check-cast v0, Lefr;

    move-object v4, v0

    const/4 v7, 0x4

    invoke-virtual {v4, v7}, Lefr;->a(I)V

    move v4, v5

    goto :goto_e

    .line 3375
    :cond_16
    if-eqz v23, :cond_17

    .line 3376
    invoke-virtual/range {p1 .. p1}, Lbfz;->g()Lbfd;

    move-result-object v7

    iget-object v8, v14, Ldoz;->m:Ljava/lang/String;

    move-object v0, v6

    check-cast v0, Lefr;

    move-object v4, v0

    invoke-static {v7, v8, v4}, Ldra;->a(Lbfd;Ljava/lang/String;Lefr;)V

    .line 3378
    move-object v0, v6

    check-cast v0, Lefr;

    move-object v4, v0

    const/4 v7, 0x2

    invoke-virtual {v4, v7}, Lefr;->a(I)V

    move v4, v5

    goto :goto_e

    .line 3381
    :cond_17
    move-object v0, v6

    check-cast v0, Lefr;

    move-object v4, v0

    const/4 v7, 0x5

    invoke-virtual {v4, v7}, Lefr;->a(I)V

    :cond_18
    move v4, v5

    goto :goto_e

    .line 6036
    :cond_19
    sget-object v6, Laal;->oJ:Landroid/content/Context;

    .line 3390
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    move-object/from16 v2, v26

    invoke-virtual {v0, v6, v1, v15, v2}, Ldyy;->a(Landroid/content/Context;Lbfz;Ljava/lang/String;Ljava/util/List;)V

    move v11, v5

    .line 3396
    :goto_f
    if-eqz v25, :cond_1c

    if-eqz v16, :cond_1c

    .line 7036
    sget-object v5, Laal;->oJ:Landroid/content/Context;

    .line 3398
    invoke-virtual/range {p1 .. p1}, Lbfz;->g()Lbfd;

    move-result-object v6

    invoke-virtual {v6}, Lbfd;->g()I

    move-result v6

    const-string v7, "last_successful_sync_time"

    const-wide/16 v8, 0x0

    .line 3397
    invoke-static {v5, v6, v7, v8, v9}, Lbff;->a(Landroid/content/Context;ILjava/lang/String;J)J

    move-result-wide v6

    .line 3402
    sget-boolean v5, Lbft;->a:Z

    if-nez v5, :cond_1a

    .line 7232
    sget-boolean v5, Ldqf;->a:Z

    .line 3402
    if-eqz v5, :cond_1b

    .line 3403
    :cond_1a
    new-instance v5, Ljava/lang/StringBuilder;

    const/16 v8, 0x56

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v8, "lastSuccessfulSyncTime "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " oldestEventInListTime "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v18

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 3407
    :cond_1b
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_1c

    cmp-long v5, v18, v6

    if-lez v5, :cond_1c

    .line 3411
    const-string v5, "Babel"

    const-string v6, "getting rid of older messages"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lezi;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3413
    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 3412
    move-object/from16 v0, p1

    invoke-virtual {v0, v15, v5}, Lbfz;->a(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3417
    :cond_1c
    if-eqz v23, :cond_1e

    .line 3418
    sget-boolean v5, Lbft;->a:Z

    if-eqz v5, :cond_1d

    .line 3419
    const-string v5, "conversation is now synced:"

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_24

    invoke-virtual {v5, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 3423
    :cond_1d
    :goto_10
    invoke-virtual/range {p1 .. p1}, Lbfz;->g()Lbfd;

    move-result-object v5

    invoke-virtual {v5}, Lbfd;->g()I

    move-result v5

    invoke-static {v5}, Lebo;->b(I)Lebo;

    move-result-object v5

    .line 3425
    iget-object v6, v14, Ldoz;->m:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lebo;->b(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1e

    .line 3427
    sget-boolean v5, Lbft;->a:Z

    .line 3430
    invoke-virtual/range {p1 .. p1}, Lbfz;->g()Lbfd;

    move-result-object v5

    invoke-virtual {v5}, Lbfd;->g()I

    move-result v5

    .line 8036
    sget-object v6, Laal;->oJ:Landroid/content/Context;

    .line 3432
    const-string v7, "in_progress_sync_time"

    const-wide/16 v8, 0x0

    invoke-static {v6, v5, v7, v8, v9}, Lbff;->a(Landroid/content/Context;ILjava/lang/String;J)J

    move-result-wide v8

    .line 3434
    const-string v7, "last_successful_sync_time"

    invoke-static {v6, v5, v7, v8, v9}, Lbff;->b(Landroid/content/Context;ILjava/lang/String;J)V

    .line 3438
    const-string v7, "in_progress_sync_time"

    invoke-static {v6, v5, v7, v8, v9}, Lbff;->b(Landroid/content/Context;ILjava/lang/String;J)V

    .line 3446
    :cond_1e
    if-eqz v25, :cond_1f

    .line 3447
    move-object/from16 v0, v24

    iget-object v5, v0, Ldmp;->e:[B

    move-object/from16 v0, v24

    iget-wide v6, v0, Ldmp;->f:J

    move-object/from16 v0, p1

    invoke-static {v0, v15, v5, v6, v7}, Lbft;->a(Lbfz;Ljava/lang/String;[BJ)V

    .line 3451
    :cond_1f
    invoke-virtual/range {p1 .. p1}, Lbfz;->b()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3453
    invoke-virtual/range {p1 .. p1}, Lbfz;->c()V

    .line 3454
    invoke-virtual/range {p0 .. p0}, Ldra;->j()Lcqr;

    move-result-object v5

    if-eqz v5, :cond_20

    .line 3455
    invoke-virtual/range {p0 .. p0}, Ldra;->j()Lcqr;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lbfz;->g()Lbfd;

    move-result-object v6

    invoke-virtual {v6}, Lbfd;->g()I

    move-result v6

    const-string v7, "get_conversation_response"

    .line 3457
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    const/4 v10, 0x4

    .line 3455
    invoke-interface/range {v5 .. v10}, Lcqr;->a(ILjava/lang/String;JI)V

    .line 3461
    :cond_20
    if-eqz v22, :cond_21

    .line 3462
    invoke-static/range {p1 .. p1}, Lbft;->d(Lbfz;)V

    .line 3464
    :cond_21
    if-eqz v4, :cond_22

    .line 3465
    move-object/from16 v0, p1

    invoke-static {v0, v15}, Lbft;->d(Lbfz;Ljava/lang/String;)V

    .line 3467
    :cond_22
    if-eqz v11, :cond_23

    .line 3468
    move-object/from16 v0, p1

    invoke-static {v0, v15}, Lbft;->c(Lbfz;Ljava/lang/String;)V

    .line 3486
    :cond_23
    :goto_11
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    if-eqz v24, :cond_0

    move-object/from16 v0, v24

    iget-object v4, v0, Ldmp;->b:Lega;

    if-eqz v4, :cond_0

    iget-wide v4, v14, Ldoz;->o:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_0

    .line 3489
    iget-wide v4, v14, Ldoz;->o:J

    move-object/from16 v0, v24

    iget-object v6, v0, Ldmp;->b:Lega;

    invoke-virtual {v6}, Lega;->w()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-eqz v4, :cond_0

    .line 3490
    iget-wide v4, v14, Ldoz;->o:J

    move-object/from16 v0, v24

    iget-object v6, v0, Ldmp;->b:Lega;

    .line 3491
    invoke-virtual {v6}, Lega;->w()J

    move-result-wide v6

    new-instance v8, Ljava/lang/StringBuilder;

    const/16 v9, 0x5e

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v9, "SortTimestamp mismatched ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " != "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") forcing immediate SANE"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3495
    invoke-virtual/range {p1 .. p1}, Lbfz;->g()Lbfd;

    move-result-object v4

    invoke-virtual {v4}, Lbfd;->g()I

    move-result v4

    const/4 v5, 0x1

    sget-object v6, Lebq;->a:Lebq;

    .line 3494
    invoke-static {v4, v5, v6}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(IZLebq;)V

    goto/16 :goto_0

    .line 3419
    :cond_24
    :try_start_2
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_10

    .line 3453
    :catchall_0
    move-exception v4

    invoke-virtual/range {p1 .. p1}, Lbfz;->c()V

    .line 3454
    invoke-virtual/range {p0 .. p0}, Ldra;->j()Lcqr;

    move-result-object v5

    if-eqz v5, :cond_25

    .line 3455
    invoke-virtual/range {p0 .. p0}, Ldra;->j()Lcqr;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lbfz;->g()Lbfd;

    move-result-object v6

    invoke-virtual {v6}, Lbfd;->g()I

    move-result v6

    const-string v7, "get_conversation_response"

    .line 3457
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    const/4 v10, 0x4

    .line 3455
    invoke-interface/range {v5 .. v10}, Lcqr;->a(ILjava/lang/String;JI)V

    :cond_25
    throw v4

    .line 3473
    :cond_26
    if-eqz v7, :cond_23

    .line 3478
    iget-object v4, v7, Ldos;->k:Ljava/lang/String;

    invoke-static {v4}, Laen;->c(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_27

    .line 3480
    invoke-virtual/range {p1 .. p1}, Lbfz;->g()Lbfd;

    move-result-object v4

    const/16 v5, 0x9e0

    .line 3479
    invoke-static {v4, v5}, Laal;->a(Lbfd;I)V

    .line 3482
    :cond_27
    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Ldyy;->a(Leff;)V

    goto/16 :goto_11

    :cond_28
    move/from16 v4, v20

    move/from16 v11, v21

    goto/16 :goto_f

    :cond_29
    move/from16 v22, v4

    goto/16 :goto_c

    :cond_2a
    move-object/from16 v17, v5

    goto/16 :goto_4

    :cond_2b
    move-object v15, v5

    move-object v5, v4

    goto/16 :goto_1
.end method
