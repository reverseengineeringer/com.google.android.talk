.class public Lbvr;
.super Ldyx;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lbcl;
.implements Lbcn;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lbvr;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Landroid/content/Context;

.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;

.field private final g:Lbkq;

.field private final h:I

.field private final i:Ljava/lang/String;

.field private final j:Z

.field private final k:Ljava/lang/String;

.field private final l:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 572
    new-instance v0, Lbvs;

    invoke-direct {v0}, Lbvs;-><init>()V

    sput-object v0, Lbvr;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lbfd;Ljava/lang/String;Ljava/lang/String;Lbkq;ILjava/lang/String;ZLjava/lang/String;J)V
    .locals 2

    .prologue
    .line 90
    invoke-direct {p0, p2}, Ldyx;-><init>(Lbfd;)V

    .line 91
    iput-object p1, p0, Lbvr;->a:Landroid/content/Context;

    .line 92
    iput-object p3, p0, Lbvr;->e:Ljava/lang/String;

    .line 93
    invoke-static {p4}, Laal;->y(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbvr;->f:Ljava/lang/String;

    .line 94
    iput-object p5, p0, Lbvr;->g:Lbkq;

    .line 95
    const/4 v0, 0x0

    iput v0, p0, Lbvr;->h:I

    .line 96
    iput-object p7, p0, Lbvr;->i:Ljava/lang/String;

    .line 97
    iput-boolean p8, p0, Lbvr;->j:Z

    .line 98
    iput-object p9, p0, Lbvr;->k:Ljava/lang/String;

    .line 99
    iput-wide p10, p0, Lbvr;->l:J

    .line 100
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    .line 557
    invoke-direct {p0, p1}, Ldyx;-><init>(Landroid/os/Parcel;)V

    .line 558
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbvr;->e:Ljava/lang/String;

    .line 559
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbvr;->f:Ljava/lang/String;

    .line 560
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    .line 561
    const-class v0, Lbkq;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lbkq;

    iput-object v0, p0, Lbvr;->g:Lbkq;

    .line 565
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lbvr;->h:I

    .line 566
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbvr;->i:Ljava/lang/String;

    .line 567
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lbvr;->j:Z

    .line 568
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbvr;->k:Ljava/lang/String;

    .line 569
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lbvr;->l:J

    .line 570
    return-void

    .line 563
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lbvr;->g:Lbkq;

    goto :goto_0

    .line 567
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private a(Lbfz;ILjava/lang/String;)Z
    .locals 38

    .prologue
    .line 5123
    move-object/from16 v0, p0

    iget-object v2, v0, Ldyx;->b:Ldvb;

    iget v0, v2, Ldvb;->a:I

    move/from16 v33, v0

    .line 5219
    new-instance v2, Lcsn;

    .line 6040
    invoke-direct {v2}, Lcsn;-><init>()V

    .line 230
    move-object/from16 v0, p0

    iget-object v3, v0, Lbvr;->k:Ljava/lang/String;

    .line 231
    invoke-virtual {v2, v3}, Lcsn;->b(Ljava/lang/String;)Lcsn;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lbvr;->e:Ljava/lang/String;

    .line 232
    invoke-virtual {v2, v3}, Lcsn;->a(Ljava/lang/String;)Lcsn;

    move-result-object v34

    .line 233
    invoke-virtual/range {p1 .. p1}, Lbfz;->a()V

    .line 234
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const/16 v4, 0xa

    const/16 v5, 0x65

    .line 236
    move-object/from16 v0, v34

    invoke-virtual {v0, v5}, Lcsn;->a(I)Lcsn;

    move-result-object v5

    .line 234
    move/from16 v0, v33

    invoke-static {v0, v2, v3, v4, v5}, Laen;->a(IJILcsn;)V

    .line 239
    move-object/from16 v0, p0

    iget-object v8, v0, Lbvr;->e:Ljava/lang/String;

    .line 241
    :try_start_0
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Lbfz;->f(Ljava/lang/String;)Lbgd;

    move-result-object v7

    .line 242
    if-nez v7, :cond_2

    .line 246
    invoke-static {v8}, Lbfz;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 247
    invoke-static {v8}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 248
    if-eqz v2, :cond_0

    .line 250
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lbfz;->f(Ljava/lang/String;)Lbgd;

    move-result-object v7

    move-object v8, v2

    .line 259
    :cond_0
    if-nez v7, :cond_2

    .line 260
    const-string v3, "Babel"

    const-string v4, "Failed to find conversation: "

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v2, v4}, Lezi;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 261
    invoke-virtual/range {p1 .. p1}, Lbfz;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 272
    invoke-virtual/range {p1 .. p1}, Lbfz;->c()V

    const/4 v2, 0x0

    .line 280
    :goto_1
    return v2

    .line 260
    :cond_1
    :try_start_1
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 272
    :catchall_0
    move-exception v2

    invoke-virtual/range {p1 .. p1}, Lbfz;->c()V

    throw v2

    .line 266
    :cond_2
    :try_start_2
    iget-wide v2, v7, Lbgd;->q:J

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lbfz;->b(JI)J

    move-result-wide v10

    .line 6335
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lbvr;->a(Lbgd;)Z

    move-result v4

    .line 6336
    move-object/from16 v0, p0

    iget-object v2, v0, Lbvr;->g:Lbkq;

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Lbvr;->a(ILbkq;)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v5, p2

    move-object/from16 v6, p3

    .line 6338
    invoke-virtual/range {v2 .. v9}, Lbvr;->a(Lbfz;ZILjava/lang/String;Lbgd;Ljava/lang/String;Ljava/lang/String;)V

    .line 6349
    invoke-static {v9}, Laal;->h(Ljava/lang/String;)Ljava/util/List;

    move-result-object v13

    .line 6350
    invoke-virtual/range {p0 .. p0}, Lbvr;->a()Ljava/util/List;

    move-result-object v15

    .line 6353
    new-instance v7, Ledn;

    .line 7127
    move-object/from16 v0, p0

    iget-object v2, v0, Ldyx;->b:Ldvb;

    iget-object v2, v2, Ldvb;->b:Lbfd;

    .line 6356
    invoke-virtual {v2}, Lbfd;->b()Lczb;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v12, v0, Lbvr;->k:Ljava/lang/String;

    const/4 v14, 0x0

    sget-object v17, Lemc;->c:Lemc;

    const/16 v18, 0x0

    const/16 v21, 0x0

    const-wide/16 v22, 0x0

    const/16 v24, 0x0

    const-wide/16 v25, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x6

    const/16 v29, 0x0

    const/16 v30, 0x0

    move-object/from16 v0, p0

    iget-wide v2, v0, Lbvr;->l:J

    const-wide/16 v36, 0x3e8

    mul-long v31, v2, v36

    move/from16 v16, v4

    move/from16 v19, p2

    move-object/from16 v20, p3

    invoke-direct/range {v7 .. v32}, Ledn;-><init>(Ljava/lang/String;Lczb;JLjava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/List;ZLemc;IILjava/lang/String;Ljava/lang/String;JIJLjava/lang/String;ILjava/lang/String;IJ)V

    .line 7134
    move-object/from16 v0, p0

    iget-object v2, v0, Ldyx;->c:Ldyy;

    .line 6380
    move-object/from16 v0, p1

    invoke-virtual {v7, v0, v2}, Ledn;->a(Lbfz;Ldyy;)V

    .line 6381
    invoke-virtual {v7}, Ledn;->a()J

    move-result-wide v2

    .line 6340
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 270
    invoke-virtual/range {p1 .. p1}, Lbfz;->b()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 272
    invoke-virtual/range {p1 .. p1}, Lbfz;->c()V

    .line 275
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const/16 v3, 0xa

    const/16 v6, 0x66

    .line 277
    move-object/from16 v0, v34

    invoke-virtual {v0, v6}, Lcsn;->a(I)Lcsn;

    move-result-object v6

    .line 275
    move/from16 v0, v33

    invoke-static {v0, v4, v5, v3, v6}, Laen;->a(IJILcsn;)V

    .line 279
    move-object/from16 v0, p1

    invoke-static {v0, v8}, Lbft;->d(Lbfz;Ljava/lang/String;)V

    .line 280
    if-eqz v2, :cond_3

    const/4 v2, 0x1

    goto/16 :goto_1

    :cond_3
    const/4 v2, 0x0

    goto/16 :goto_1
.end method


# virtual methods
.method public a(Landroid/content/Context;Lbcg;)I
    .locals 14

    .prologue
    .line 104
    iput-object p1, p0, Lbvr;->a:Landroid/content/Context;

    .line 1123
    iget-object v0, p0, Ldyx;->b:Ldvb;

    iget v0, v0, Ldvb;->a:I

    .line 1219
    new-instance v1, Lcsn;

    .line 2040
    invoke-direct {v1}, Lcsn;-><init>()V

    .line 107
    iget-object v2, p0, Lbvr;->k:Ljava/lang/String;

    .line 108
    invoke-virtual {v1, v2}, Lcsn;->b(Ljava/lang/String;)Lcsn;

    move-result-object v1

    iget-object v2, p0, Lbvr;->e:Ljava/lang/String;

    .line 109
    invoke-virtual {v1, v2}, Lcsn;->a(Ljava/lang/String;)Lcsn;

    move-result-object v1

    .line 110
    iget-wide v2, p0, Lbvr;->l:J

    const/16 v4, 0xb

    const/4 v5, 0x0

    .line 111
    invoke-virtual {v1, v5}, Lcsn;->a(I)Lcsn;

    move-result-object v5

    .line 110
    invoke-static {v0, v2, v3, v4, v5}, Laen;->a(IJILcsn;)V

    .line 113
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const/16 v4, 0xa

    const/16 v5, 0xc9

    .line 115
    invoke-virtual {v1, v5}, Lcsn;->a(I)Lcsn;

    move-result-object v1

    .line 113
    invoke-static {v0, v2, v3, v4, v1}, Laen;->a(IJILcsn;)V

    .line 117
    new-instance v1, Lbfz;

    invoke-direct {v1, p1, v0}, Lbfz;-><init>(Landroid/content/Context;I)V

    .line 118
    iget-object v0, p0, Lbvr;->e:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lbfz;->g(Ljava/lang/String;)I

    move-result v2

    .line 119
    iget-object v0, p0, Lbvr;->e:Ljava/lang/String;

    .line 120
    invoke-virtual {v1, v0}, Lbfz;->g(Ljava/lang/String;)I

    move-result v0

    .line 119
    invoke-static {v0}, Laal;->e(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2217
    iget-object v0, p0, Lbvr;->g:Lbkq;

    invoke-virtual {p0, v0}, Lbvr;->a(Lbkq;)Lbvu;

    move-result-object v12

    .line 2218
    iget-object v0, p0, Lbvr;->a:Landroid/content/Context;

    const-class v1, Lefk;

    invoke-static {v0, v1}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lefk;

    .line 3127
    iget-object v1, p0, Ldyx;->b:Ldvb;

    iget-object v1, v1, Ldvb;->b:Lbfd;

    .line 2219
    iget-object v2, p0, Lbvr;->e:Ljava/lang/String;

    iget-object v3, p0, Lbvr;->f:Ljava/lang/String;

    iget-object v4, v12, Lbvu;->a:Ljava/lang/String;

    iget v5, v12, Lbvu;->b:I

    iget-object v6, v12, Lbvu;->c:Ljava/lang/String;

    iget v7, v12, Lbvu;->d:I

    iget v8, v12, Lbvu;->e:I

    iget-object v9, v12, Lbvu;->f:Ljava/lang/String;

    iget-object v10, p0, Lbvr;->i:Ljava/lang/String;

    iget-boolean v11, p0, Lbvr;->j:Z

    iget-object v12, v12, Lbvu;->g:Lgeo;

    iget v13, p0, Lbvr;->h:I

    invoke-interface/range {v0 .. v13}, Lefk;->a(Lbfd;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;ZLgeo;I)Ljava/lang/String;

    .line 126
    :goto_0
    sget v0, Lbco;->a:I

    return v0

    .line 3134
    :cond_0
    packed-switch v2, :pswitch_data_0

    .line 3140
    const/4 v0, 0x0

    .line 124
    :goto_1
    invoke-direct {p0, v1, v2, v0}, Lbvr;->a(Lbfz;ILjava/lang/String;)Z

    goto :goto_0

    .line 4127
    :pswitch_0
    iget-object v0, p0, Ldyx;->b:Ldvb;

    iget-object v0, v0, Ldvb;->b:Lbfd;

    .line 3136
    invoke-virtual {v0}, Lbfd;->v()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 3134
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method a(Lbkq;)Lbvu;
    .locals 9

    .prologue
    const/4 v6, 0x0

    const/4 v1, 0x0

    .line 188
    if-eqz p1, :cond_0

    .line 189
    sget-object v0, Lbvt;->a:[I

    iget-object v2, p1, Lbkq;->c:Lbkr;

    invoke-virtual {v2}, Lbkr;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    :cond_0
    move-object v8, v1

    move-object v7, v1

    move v5, v6

    move-object v4, v1

    move v3, v6

    move-object v2, v1

    .line 213
    :goto_0
    new-instance v0, Lbvu;

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Lbvu;-><init>(Lbvr;Ljava/lang/String;ILjava/lang/String;IILjava/lang/String;Lgeo;)V

    return-object v0

    .line 191
    :pswitch_0
    check-cast p1, Lbkz;

    .line 192
    const-string v7, "hangouts/location"

    .line 193
    iget-object v8, p1, Lbkz;->e:Lgeo;

    move v5, v6

    move-object v4, v1

    move v3, v6

    move-object v2, v1

    .line 194
    goto :goto_0

    :pswitch_1
    move-object v0, p1

    .line 196
    check-cast v0, Lblb;

    .line 197
    iget-object v7, v0, Lblb;->d:Ljava/lang/String;

    .line 198
    iget-object v2, p1, Lbkq;->a:Ljava/lang/String;

    .line 199
    iget v5, v0, Lblb;->f:I

    .line 200
    iget v6, v0, Lblb;->e:I

    .line 201
    iget v3, v0, Lblb;->g:I

    move-object v8, v1

    move-object v4, v1

    .line 202
    goto :goto_0

    :pswitch_2
    move-object v0, p1

    .line 204
    check-cast v0, Lblj;

    .line 205
    iget-object v7, v0, Lblj;->d:Ljava/lang/String;

    .line 206
    iget-object v2, p1, Lbkq;->a:Ljava/lang/String;

    .line 207
    iget-object v4, v0, Lblj;->e:Ljava/lang/String;

    move-object v8, v1

    move v5, v6

    move v3, v6

    goto :goto_0

    .line 189
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method a(ILbkq;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 306
    if-eqz p2, :cond_0

    iget-object v0, p2, Lbkq;->c:Lbkr;

    sget-object v1, Lbkr;->e:Lbkr;

    if-eq v0, v1, :cond_1

    .line 307
    :cond_0
    iget-object v0, p0, Lbvr;->f:Ljava/lang/String;

    .line 327
    :goto_0
    return-object v0

    .line 309
    :cond_1
    invoke-virtual {p0, p2}, Lbvr;->a(Lbkq;)Lbvu;

    move-result-object v0

    iget-object v1, v0, Lbvu;->g:Lgeo;

    .line 310
    if-eqz v1, :cond_4

    invoke-static {p1}, Laal;->f(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 311
    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v0, p0, Lbvr;->f:Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 312
    iget-object v0, p0, Lbvr;->a:Landroid/content/Context;

    const-class v3, Lcrv;

    invoke-static {v0, v3}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcrv;

    .line 313
    invoke-interface {v0, v1}, Lcrv;->b(Lgeo;)Ljava/lang/String;

    move-result-object v0

    .line 314
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_2

    .line 315
    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    :cond_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    const-string v0, "\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    invoke-interface {v1}, Lgeo;->c()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 320
    invoke-interface {v1}, Lgeo;->b()Ljava/lang/CharSequence;

    move-result-object v0

    .line 321
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 322
    const-string v1, "\n"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 325
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 327
    :cond_4
    iget-object v0, p0, Lbvr;->f:Ljava/lang/String;

    goto :goto_0
.end method

.method a()Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Left;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 389
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 391
    iget-object v0, p0, Lbvr;->g:Lbkq;

    if-nez v0, :cond_0

    move-object v0, v11

    .line 439
    :goto_0
    return-object v0

    .line 395
    :cond_0
    iget-object v0, p0, Lbvr;->g:Lbkq;

    invoke-virtual {p0, v0}, Lbvr;->a(Lbkq;)Lbvu;

    move-result-object v7

    .line 397
    iget-object v0, p0, Lbvr;->g:Lbkq;

    iget-object v0, v0, Lbkq;->c:Lbkr;

    sget-object v1, Lbkr;->e:Lbkr;

    if-ne v0, v1, :cond_2

    .line 398
    iget-object v10, v7, Lbvu;->g:Lgeo;

    .line 401
    iget-object v0, p0, Lbvr;->a:Landroid/content/Context;

    const-class v1, Lcrv;

    invoke-static {v0, v1}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcrv;

    .line 403
    new-instance v1, Lefv;

    new-array v2, v2, [I

    aput v3, v2, v3

    .line 407
    invoke-interface {v10}, Lgeo;->c()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 408
    invoke-interface {v10}, Lgeo;->d()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v4

    iget-wide v4, v4, Lcom/google/android/gms/maps/model/LatLng;->a:D

    .line 409
    invoke-interface {v10}, Lgeo;->d()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v6

    iget-wide v6, v6, Lcom/google/android/gms/maps/model/LatLng;->b:D

    .line 410
    invoke-interface {v10}, Lgeo;->b()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    .line 411
    invoke-interface {v0, v10}, Lcrv;->a(Lgeo;)Ljava/lang/String;

    move-result-object v9

    .line 412
    invoke-interface {v0, v10}, Lcrv;->b(Lgeo;)Ljava/lang/String;

    move-result-object v10

    invoke-direct/range {v1 .. v10}, Lefv;-><init>([ILjava/lang/String;DDLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    invoke-interface {v11, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    move-object v0, v11

    .line 439
    goto :goto_0

    .line 413
    :cond_2
    iget-object v0, v7, Lbvu;->c:Ljava/lang/String;

    if-nez v0, :cond_3

    iget-object v0, v7, Lbvu;->a:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 414
    :cond_3
    iget-object v6, v7, Lbvu;->f:Ljava/lang/String;

    .line 415
    if-nez v6, :cond_4

    .line 416
    iget-object v0, p0, Lbvr;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, v7, Lbvu;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v6

    .line 417
    if-nez v6, :cond_4

    .line 419
    const-string v6, "image/jpg"

    .line 422
    :cond_4
    new-instance v0, Lefw;

    new-array v1, v2, [I

    aput v3, v1, v3

    iget-object v2, v7, Lbvu;->c:Ljava/lang/String;

    iget-object v3, v7, Lbvu;->a:Ljava/lang/String;

    iget v4, v7, Lbvu;->d:I

    iget v5, v7, Lbvu;->e:I

    iget v7, v7, Lbvu;->b:I

    invoke-direct/range {v0 .. v7}, Lefw;-><init>([ILjava/lang/String;Ljava/lang/String;IILjava/lang/String;I)V

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method a(Lbfz;ZILjava/lang/String;Lbgd;Ljava/lang/String;Ljava/lang/String;)V
    .locals 12

    .prologue
    .line 7138
    iget-object v2, p0, Ldyx;->b:Ldvb;

    iget-object v3, v2, Ldvb;->c:Ldvm;

    .line 447
    invoke-static/range {p6 .. p6}, Lbfz;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    move-object/from16 v0, p5

    iget v2, v0, Lbgd;->i:I

    if-nez v2, :cond_4

    .line 449
    move-object/from16 v0, p6

    invoke-virtual {p1, v0}, Lbfz;->X(Ljava/lang/String;)Z

    move-result v2

    .line 451
    if-eqz v2, :cond_1

    .line 454
    invoke-virtual {p1}, Lbfz;->g()Lbfd;

    move-result-object v2

    const/4 v4, 0x5

    .line 453
    move-object/from16 v0, p6

    invoke-static {v2, v0, v4}, Lbft;->a(Lbfd;Ljava/lang/String;I)V

    .line 456
    new-instance v2, Ldoz;

    new-instance v4, Ldos;

    iget-object v5, p0, Lbvr;->k:Ljava/lang/String;

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 461
    invoke-virtual {p1}, Lbfz;->g()Lbfd;

    move-result-object v8

    .line 460
    move-object/from16 v0, p6

    invoke-static {v8, v0}, Lbft;->a(Lbfd;Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    invoke-direct {v4, v5, v6, v7, v8}, Ldos;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/List;)V

    move-object/from16 v0, p6

    invoke-direct {v2, v4, v0}, Ldoz;-><init>(Ldos;Ljava/lang/String;)V

    .line 464
    invoke-static {}, Lebi;->b()Lebi;

    move-result-object v4

    invoke-virtual {v4}, Lebi;->a()I

    move-result v4

    .line 456
    invoke-virtual {v3, v2, v4}, Ldvm;->a(Leff;I)V

    .line 533
    :cond_0
    :goto_0
    return-void

    .line 473
    :cond_1
    move-object/from16 v0, p6

    invoke-virtual {p1, v0}, Lbfz;->k(Ljava/lang/String;)J

    move-result-wide v4

    .line 475
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 476
    iget-object v2, p0, Lbvr;->g:Lbkq;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lbvr;->g:Lbkq;

    iget-object v2, v2, Lbkq;->c:Lbkr;

    sget-object v7, Lbkr;->d:Lbkr;

    if-ne v2, v7, :cond_2

    .line 477
    iget-object v2, p0, Lbvr;->g:Lbkq;

    check-cast v2, Lblj;

    .line 478
    iget-object v2, v2, Lblj;->e:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lbfz;->af(Ljava/lang/String;)Ldrp;

    move-result-object v2

    .line 479
    if-eqz v2, :cond_2

    .line 480
    iget-object v2, p0, Lbvr;->a:Landroid/content/Context;

    const-string v7, "babel_stickers_account_id"

    const-string v8, "108618507921641169817"

    invoke-static {v2, v7, v8}, Laal;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 484
    :cond_2
    invoke-static/range {p7 .. p7}, Laal;->h(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 485
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 486
    iget-object v8, p0, Lbvr;->g:Lbkq;

    if-eqz v8, :cond_3

    .line 487
    iget-object v8, p0, Lbvr;->g:Lbkq;

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 490
    :cond_3
    new-instance v8, Lbvy;

    iget-object v9, p0, Lbvr;->k:Ljava/lang/String;

    move-object/from16 v0, p6

    invoke-direct {v8, v9, v0}, Lbvy;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    move-object/from16 v0, p6

    invoke-virtual {p1, v0}, Lbfz;->S(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lbvy;->a(Ljava/lang/String;)Lbvy;

    move-result-object v8

    const-wide/16 v10, 0x1

    add-long/2addr v10, v4

    .line 493
    invoke-virtual {v8, v4, v5}, Lbvy;->a(J)Lbvy;

    move-result-object v4

    .line 494
    invoke-virtual {v4, p2}, Lbvy;->a(Z)Lbvy;

    move-result-object v4

    .line 495
    invoke-virtual {v4}, Lbvy;->b()Lbvy;

    move-result-object v4

    .line 496
    move-object/from16 v0, p4

    invoke-virtual {v4, v0}, Lbvy;->b(Ljava/lang/String;)Lbvy;

    move-result-object v4

    .line 497
    invoke-virtual {v4, p3}, Lbvy;->a(I)Lbvy;

    move-result-object v4

    .line 498
    invoke-virtual {v4}, Lbvy;->c()Lbvy;

    move-result-object v4

    .line 499
    invoke-virtual {v4, v2}, Lbvy;->a(Ljava/util/List;)Lbvy;

    move-result-object v2

    .line 500
    invoke-virtual {v2, v7}, Lbvy;->b(Ljava/util/List;)Lbvy;

    move-result-object v2

    .line 501
    invoke-virtual {v2, v6}, Lbvy;->c(Ljava/util/List;)Lbvy;

    move-result-object v2

    .line 502
    invoke-virtual {v2}, Lbvy;->a()Lbvx;

    move-result-object v2

    .line 503
    invoke-static {}, Lebi;->b()Lebi;

    move-result-object v4

    invoke-virtual {v4}, Lebi;->a()I

    move-result v4

    .line 490
    invoke-virtual {v3, v2, v4}, Ldvm;->a(Leff;I)V

    .line 504
    move-object/from16 v0, p6

    invoke-virtual {p1, v0, v10, v11}, Lbfz;->b(Ljava/lang/String;J)V

    goto/16 :goto_0

    .line 506
    :cond_4
    move-object/from16 v0, p5

    iget v2, v0, Lbgd;->i:I

    const/4 v4, 0x2

    if-eq v2, v4, :cond_5

    move-object/from16 v0, p5

    iget v2, v0, Lbgd;->k:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_6

    .line 525
    :cond_5
    new-instance v2, Ldpm;

    move-object/from16 v0, p6

    invoke-direct {v2, v0}, Ldpm;-><init>(Ljava/lang/String;)V

    .line 527
    invoke-static {}, Lebi;->b()Lebi;

    move-result-object v4

    invoke-virtual {v4}, Lebi;->a()I

    move-result v4

    .line 525
    invoke-virtual {v3, v2, v4}, Ldvm;->a(Leff;I)V

    goto/16 :goto_0

    .line 528
    :cond_6
    move-object/from16 v0, p5

    iget v2, v0, Lbgd;->i:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    .line 8127
    iget-object v2, p0, Ldyx;->b:Ldvb;

    iget-object v2, v2, Ldvb;->b:Lbfd;

    .line 531
    move-object/from16 v0, p6

    invoke-static {v2, v0}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->h(Lbfd;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method a(Lbgd;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 286
    iget v2, p0, Lbvr;->h:I

    packed-switch v2, :pswitch_data_0

    .line 294
    iget v2, p1, Lbgd;->l:I

    if-ne v2, v0, :cond_0

    .line 297
    :goto_0
    :pswitch_0
    return v0

    :pswitch_1
    move v0, v1

    .line 292
    goto :goto_0

    :cond_0
    move v0, v1

    .line 297
    goto :goto_0

    .line 286
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lbvr;->e:Ljava/lang/String;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 537
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 542
    invoke-super {p0, p1, p2}, Ldyx;->a(Landroid/os/Parcel;I)V

    .line 543
    iget-object v0, p0, Lbvr;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 544
    iget-object v0, p0, Lbvr;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 545
    iget-object v0, p0, Lbvr;->g:Lbkq;

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 546
    iget-object v0, p0, Lbvr;->g:Lbkq;

    if-eqz v0, :cond_0

    .line 547
    iget-object v0, p0, Lbvr;->g:Lbkq;

    invoke-virtual {v0, p1, p2}, Lbkq;->writeToParcel(Landroid/os/Parcel;I)V

    .line 549
    :cond_0
    iget v0, p0, Lbvr;->h:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 550
    iget-object v0, p0, Lbvr;->i:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 551
    iget-boolean v0, p0, Lbvr;->j:Z

    if-eqz v0, :cond_2

    :goto_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 552
    iget-object v0, p0, Lbvr;->k:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 553
    iget-wide v0, p0, Lbvr;->l:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 554
    return-void

    :cond_1
    move v0, v2

    .line 545
    goto :goto_0

    :cond_2
    move v1, v2

    .line 551
    goto :goto_1
.end method
