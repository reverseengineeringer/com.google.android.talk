.class public Ledm;
.super Ledk;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:I

.field public final d:I

.field public final e:J

.field public final f:Ljava/lang/String;

.field public final g:Lczb;

.field public final h:J

.field public i:J

.field public final j:[Lkfg;

.field public k:Lemc;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lczb;JJLjava/lang/String;Ljava/lang/String;IIJLemc;[B)V
    .locals 7

    .prologue
    .line 131
    invoke-direct {p0}, Ledk;-><init>()V

    .line 133
    iput-object p1, p0, Ledm;->f:Ljava/lang/String;

    .line 134
    iput-object p2, p0, Ledm;->g:Lczb;

    .line 135
    iput-wide p3, p0, Ledm;->h:J

    .line 136
    iput-wide p5, p0, Ledm;->i:J

    .line 137
    iput-object p7, p0, Ledm;->a:Ljava/lang/String;

    .line 138
    iput-object p8, p0, Ledm;->b:Ljava/lang/String;

    .line 139
    move/from16 v0, p9

    iput v0, p0, Ledm;->c:I

    .line 140
    move/from16 v0, p10

    iput v0, p0, Ledm;->d:I

    .line 141
    move-wide/from16 v0, p11

    iput-wide v0, p0, Ledm;->e:J

    .line 142
    move-object/from16 v0, p13

    iput-object v0, p0, Ledm;->k:Lemc;

    .line 144
    const/4 v3, 0x0

    .line 146
    if-eqz p14, :cond_0

    .line 147
    :try_start_0
    new-instance v2, Lkfi;

    invoke-direct {v2}, Lkfi;-><init>()V

    .line 1131
    move-object/from16 v0, p14

    array-length v4, v0

    move-object/from16 v0, p14

    invoke-static {v2, v0, v4}, Llyi;->b(Llyi;[BI)Llyi;

    move-result-object v2

    .line 147
    check-cast v2, Lkfi;

    iget-object v2, v2, Lkfi;->a:[Lkfg;
    :try_end_0
    .catch Llyg; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    move-object v3, v2

    .line 155
    :goto_1
    iput-object v3, p0, Ledm;->j:[Lkfg;

    .line 156
    return-void

    .line 151
    :catch_0
    move-exception v2

    const-string v2, "Babel"

    const-string v4, "Invalid protobuf set in Event and failed to process in EventProcessor."

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2, v4, v5}, Lezi;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    move-object v2, v3

    goto :goto_0
.end method

.method public static a([Lkfg;Ljava/lang/String;Ljava/lang/String;JLbfz;)V
    .locals 23

    .prologue
    .line 170
    if-nez p0, :cond_1

    .line 191
    :cond_0
    return-void

    .line 3036
    :cond_1
    sget-object v2, Laal;->oJ:Landroid/content/Context;

    .line 175
    const-class v3, Lecw;

    invoke-static {v2, v3}, Lilh;->c(Landroid/content/Context;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v20

    .line 176
    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v21, v0

    const/4 v2, 0x0

    move/from16 v19, v2

    :goto_0
    move/from16 v0, v19

    move/from16 v1, v21

    if-ge v0, v1, :cond_0

    aget-object v3, p0, v19

    .line 177
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_1

    .line 180
    :cond_2
    iget-object v2, v3, Lkfg;->c:Ljava/lang/Integer;

    .line 3043
    const/4 v4, 0x0

    invoke-static {v2, v4}, Laal;->a(Ljava/lang/Integer;I)I

    move-result v2

    .line 180
    sparse-switch v2, :sswitch_data_0

    .line 176
    :cond_3
    :goto_2
    add-int/lit8 v2, v19, 0x1

    move/from16 v19, v2

    goto :goto_0

    .line 4214
    :sswitch_0
    new-instance v4, Lbgh;

    invoke-direct {v4}, Lbgh;-><init>()V

    .line 4215
    move-object/from16 v0, p1

    iput-object v0, v4, Lbgh;->a:Ljava/lang/String;

    .line 4216
    move-object/from16 v0, p2

    iput-object v0, v4, Lbgh;->b:Ljava/lang/String;

    .line 4217
    iget-object v2, v3, Lkfg;->a:Ljava/lang/String;

    iput-object v2, v4, Lbgh;->c:Ljava/lang/String;

    .line 4218
    move-wide/from16 v0, p3

    iput-wide v0, v4, Lbgh;->d:J

    .line 4219
    iget-object v2, v3, Lkfg;->b:Ljava/lang/Long;

    .line 5051
    const-wide/16 v6, 0x0

    invoke-static {v2, v6, v7}, Laal;->a(Ljava/lang/Long;J)J

    move-result-wide v6

    .line 4219
    iput-wide v6, v4, Lbgh;->e:J

    .line 4220
    iget-object v2, v3, Lkfg;->c:Ljava/lang/Integer;

    .line 6043
    const/4 v5, 0x0

    invoke-static {v2, v5}, Laal;->a(Ljava/lang/Integer;I)I

    move-result v2

    .line 4220
    iput v2, v4, Lbgh;->f:I

    .line 4221
    iget-object v2, v3, Lkfg;->f:Ljava/lang/String;

    iput-object v2, v4, Lbgh;->i:Ljava/lang/String;

    .line 3230
    iget v2, v4, Lbgh;->f:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v5, 0x11

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v2, v5}, Lhbs;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 7036
    sget-object v2, Laal;->oJ:Landroid/content/Context;

    .line 3232
    const-string v5, "babel_disable_nlp_stickers"

    const/4 v6, 0x0

    invoke-static {v2, v5, v6}, Laal;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_3

    .line 8033
    const-string v2, "armeabi-v7a"

    invoke-static {v2}, Laal;->t(Ljava/lang/String;)Z

    move-result v2

    .line 3239
    if-nez v2, :cond_4

    .line 8037
    const-string v2, "arm64-v8a"

    invoke-static {v2}, Laal;->t(Ljava/lang/String;)Z

    move-result v2

    .line 3239
    if-nez v2, :cond_4

    .line 3240
    const-string v2, "Babel"

    const-string v3, "Skipping NLP sticker suggestion due to incompatible device."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 3244
    :cond_4
    invoke-virtual/range {p5 .. p5}, Lbfz;->g()Lbfd;

    move-result-object v2

    const/16 v5, 0x7e2

    iget-object v6, v3, Lkfg;->f:Ljava/lang/String;

    invoke-static {v2, v5, v6}, Laal;->a(Lbfd;ILjava/lang/String;)V

    .line 3250
    iget-object v2, v3, Lkfg;->e:Ljzg;

    if-eqz v2, :cond_6

    .line 3251
    iget-object v2, v3, Lkfg;->e:Ljzg;

    iget-object v2, v2, Ljzg;->d:Ljava/lang/Integer;

    if-eqz v2, :cond_7

    .line 3253
    iget-object v2, v3, Lkfg;->e:Ljzg;

    iget-object v2, v2, Ljzg;->d:Ljava/lang/Integer;

    .line 8043
    const/4 v5, 0x0

    invoke-static {v2, v5}, Laal;->a(Ljava/lang/Integer;I)I

    move-result v2

    .line 3254
    :goto_3
    iput v2, v4, Lbgh;->h:I

    .line 3256
    iget-object v2, v3, Lkfg;->e:Ljzg;

    iget-object v2, v2, Ljzg;->c:[Ljava/lang/String;

    if-eqz v2, :cond_6

    iget-object v2, v3, Lkfg;->e:Ljzg;

    iget-object v2, v2, Ljzg;->c:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_6

    .line 3258
    iget-object v2, v3, Lkfg;->e:Ljzg;

    iget-object v2, v2, Ljzg;->c:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    .line 3261
    const-string v3, "\\."

    invoke-static {v2, v3}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 3262
    array-length v5, v3

    if-nez v5, :cond_5

    .line 3263
    const-string v5, "Babel"

    const-string v6, "Malformed unsuffixed URL has been passed as a GEM suggestion asset. unsuffixedUrl: "

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_8

    invoke-virtual {v6, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_4
    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v5, v2, v6}, Lezi;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 9036
    :cond_5
    sget-object v2, Laal;->oJ:Landroid/content/Context;

    .line 3268
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 3269
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 3270
    const/16 v5, 0xa0

    if-gt v2, v5, :cond_9

    .line 3271
    const-string v2, "_mdpi"

    .line 3280
    :goto_5
    array-length v5, v3

    add-int/lit8 v5, v5, -0x2

    aget-object v5, v3, v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_c

    invoke-virtual {v5, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3281
    :goto_6
    array-length v5, v3

    add-int/lit8 v5, v5, -0x2

    aput-object v2, v3, v5

    .line 3283
    const-string v5, "https:"

    const-string v2, "."

    invoke-static {v2, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_d

    invoke-virtual {v5, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_7
    iput-object v2, v4, Lbgh;->g:Ljava/lang/String;

    .line 3288
    :cond_6
    move-object/from16 v0, p5

    invoke-virtual {v0, v4}, Lbfz;->a(Lbgh;)J

    goto/16 :goto_2

    .line 3254
    :cond_7
    const/4 v2, 0x1

    goto/16 :goto_3

    .line 3263
    :cond_8
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_4

    .line 3272
    :cond_9
    const/16 v5, 0xf0

    if-gt v2, v5, :cond_a

    .line 3273
    const-string v2, "_hdpi"

    goto :goto_5

    .line 3274
    :cond_a
    const/16 v5, 0x140

    if-gt v2, v5, :cond_b

    .line 3275
    const-string v2, "_xhdpi"

    goto :goto_5

    .line 3277
    :cond_b
    const-string v2, "_xxhdpi"

    goto :goto_5

    .line 3280
    :cond_c
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_6

    .line 3283
    :cond_d
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_7

    .line 9294
    :sswitch_1
    const-string v2, "Requires location sharing suggestion. WHERE_AM_I or WHERE_YOU_AT."

    const/4 v4, 0x3

    .line 9295
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v5, 0x13

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 10069
    const/4 v6, 0x2

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v4, v7, v8

    const/4 v4, 0x1

    aput-object v5, v7, v4

    invoke-static {v6, v7}, Lkth;->a(I[Ljava/lang/Object;)Lkth;

    move-result-object v4

    .line 9295
    iget-object v5, v3, Lkfg;->c:Ljava/lang/Integer;

    .line 11043
    const/4 v6, 0x0

    invoke-static {v5, v6}, Laal;->a(Ljava/lang/Integer;I)I

    move-result v5

    .line 9296
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lkth;->contains(Ljava/lang/Object;)Z

    move-result v4

    .line 9294
    invoke-static {v2, v4}, Lhbs;->a(Ljava/lang/String;Z)V

    .line 9298
    iget-object v2, v3, Lkfg;->c:Ljava/lang/Integer;

    const/16 v4, 0x13

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 12036
    sget-object v2, Laal;->oJ:Landroid/content/Context;

    .line 9300
    const-string v4, "babel_location_request_suggestions_enabled"

    const/4 v5, 0x1

    invoke-static {v2, v4, v5}, Laal;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 9306
    invoke-virtual/range {p5 .. p5}, Lbfz;->g()Lbfd;

    move-result-object v2

    sget-object v4, Lbhh;->a:Lbhh;

    invoke-static {v2, v4}, Laal;->a(Lbfd;Lbhh;)Z

    move-result v2

    if-nez v2, :cond_e

    .line 9307
    const-string v2, "Babel"

    const-string v3, "Location sharing disallowed. Ignoring location request suggestion"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 9311
    :cond_e
    invoke-virtual/range {p5 .. p5}, Lbfz;->g()Lbfd;

    move-result-object v4

    if-eqz v7, :cond_f

    .line 9312
    const/16 v2, 0x9d6

    .line 9313
    :goto_8
    iget-object v5, v3, Lkfg;->f:Ljava/lang/String;

    .line 9311
    invoke-static {v4, v2, v5}, Laal;->a(Lbfd;ILjava/lang/String;)V

    .line 9318
    sget-object v2, Lemd;->a:Lemd;

    move-object/from16 v0, p5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Lbfz;->a(Ljava/lang/String;Lemd;)I

    .line 9319
    sget-object v2, Lemd;->r:Lemd;

    move-object/from16 v0, p5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Lbfz;->a(Ljava/lang/String;Lemd;)I

    .line 9321
    sget-object v2, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x1

    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    move-result-wide v4

    add-long v10, p3, v4

    .line 13036
    sget-object v2, Laal;->oJ:Landroid/content/Context;

    .line 9322
    const-string v4, "babel_location_request_suggestion_duration"

    const/16 v5, 0x2d

    invoke-static {v2, v4, v5}, Laal;->a(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    .line 9325
    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long v8, v2

    invoke-virtual {v4, v8, v9}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    move-result-wide v4

    add-long v12, p3, v4

    .line 9327
    const-string v2, "Babel"

    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0xa3

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Adding location request system message with timestamp "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p3

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " expiration timestamp "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " deleteAfterRead timestamp "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2, v4, v5}, Lezi;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14036
    sget-object v2, Laal;->oJ:Landroid/content/Context;

    .line 9332
    const-string v4, "babel_location_request_suggestion_timestamp_offset"

    const-wide/16 v8, 0x1

    invoke-static {v2, v4, v8, v9}, Laal;->a(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v4

    .line 9335
    add-long v8, p3, v4

    .line 9340
    invoke-static {}, Lbfz;->i()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lemc;->g:Lemc;

    .line 9341
    invoke-virtual/range {p5 .. p5}, Lbfz;->g()Lbfd;

    move-result-object v2

    invoke-virtual {v2}, Lbfd;->b()Lczb;

    move-result-object v6

    if-eqz v7, :cond_10

    .line 9342
    sget-object v7, Lemd;->r:Lemd;

    :goto_9
    const/16 v14, 0xa

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    iget-object v0, v3, Lkfg;->f:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v2, p5

    move-object/from16 v3, p1

    .line 9340
    invoke-virtual/range {v2 .. v18}, Lbfz;->a(Ljava/lang/String;Ljava/lang/String;Lemc;Lczb;Lemd;JJJILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)J

    goto/16 :goto_2

    .line 9313
    :cond_f
    const/16 v2, 0x793

    goto/16 :goto_8

    .line 9342
    :cond_10
    sget-object v7, Lemd;->a:Lemd;

    goto :goto_9

    .line 180
    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_1
        0x11 -> :sswitch_0
        0x13 -> :sswitch_1
    .end sparse-switch
.end method


# virtual methods
.method protected final a(Lbfz;)V
    .locals 7

    .prologue
    .line 163
    iget-object v1, p0, Ledm;->j:[Lkfg;

    iget-object v2, p0, Ledm;->f:Ljava/lang/String;

    iget-object v3, p0, Ledm;->a:Ljava/lang/String;

    iget-wide v4, p0, Ledm;->h:J

    move-object v6, p1

    invoke-static/range {v1 .. v6}, Ledm;->a([Lkfg;Ljava/lang/String;Ljava/lang/String;JLbfz;)V

    .line 1194
    iget-object v0, p0, Ledm;->g:Lczb;

    if-eqz v0, :cond_0

    .line 1198
    iget-object v0, p0, Ledm;->g:Lczb;

    iget-object v1, v0, Lczb;->a:Ljava/lang/String;

    .line 1199
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1203
    invoke-virtual {p1}, Lbfz;->g()Lbfd;

    move-result-object v2

    .line 1204
    invoke-virtual {v2}, Lbfd;->b()Lczb;

    move-result-object v0

    iget-object v0, v0, Lczb;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1205
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v4, p0, Ledm;->h:J

    invoke-virtual {v0, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    .line 2036
    sget-object v0, Laal;->oJ:Landroid/content/Context;

    .line 1206
    const-class v3, Ldll;

    invoke-static {v0, v3}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldll;

    .line 1207
    invoke-virtual {v2}, Lbfd;->g()I

    move-result v2

    sget-object v3, Ldnv;->f:Ldnv;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 1206
    invoke-virtual {v0, v2, v1, v3, v4}, Ldll;->a(ILjava/lang/String;Ldnv;Ljava/lang/Object;)V

    .line 165
    :cond_0
    return-void
.end method
