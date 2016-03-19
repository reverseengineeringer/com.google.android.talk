.class public final Lmfv;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lmfv;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile r:[Lmfv;


# instance fields
.field public a:Ljava/lang/Long;

.field public b:Lmfn;

.field public c:Ljava/lang/Boolean;

.field public d:Lmfm;

.field public e:[B

.field public f:Lmfa;

.field public g:Ljava/lang/String;

.field public h:[Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/String;

.field public k:[Lmfy;

.field public l:Llyj;

.field public m:Ljava/lang/Long;

.field public n:Lmfw;

.field public o:Lmft;

.field public p:Lmff;

.field public q:Lmfb;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 79
    invoke-direct {p0}, Llyb;-><init>()V

    .line 80
    iput-object v1, p0, Lmfv;->a:Ljava/lang/Long;

    .line 81
    iput-object v1, p0, Lmfv;->b:Lmfn;

    .line 82
    iput-object v1, p0, Lmfv;->c:Ljava/lang/Boolean;

    .line 83
    iput-object v1, p0, Lmfv;->d:Lmfm;

    .line 84
    iput-object v1, p0, Lmfv;->e:[B

    .line 85
    iput-object v1, p0, Lmfv;->f:Lmfa;

    .line 86
    iput-object v1, p0, Lmfv;->g:Ljava/lang/String;

    .line 87
    sget-object v0, Llyo;->f:[Ljava/lang/String;

    iput-object v0, p0, Lmfv;->h:[Ljava/lang/String;

    .line 88
    iput-object v1, p0, Lmfv;->i:Ljava/lang/String;

    .line 89
    iput-object v1, p0, Lmfv;->j:Ljava/lang/String;

    .line 90
    invoke-static {}, Lmfy;->d()[Lmfy;

    move-result-object v0

    iput-object v0, p0, Lmfv;->k:[Lmfy;

    .line 91
    iput-object v1, p0, Lmfv;->l:Llyj;

    .line 92
    iput-object v1, p0, Lmfv;->m:Ljava/lang/Long;

    .line 93
    iput-object v1, p0, Lmfv;->n:Lmfw;

    .line 94
    iput-object v1, p0, Lmfv;->o:Lmft;

    .line 95
    iput-object v1, p0, Lmfv;->p:Lmff;

    .line 96
    iput-object v1, p0, Lmfv;->q:Lmfb;

    .line 97
    iput-object v1, p0, Lmfv;->eD:Llyd;

    .line 98
    const/4 v0, -0x1

    iput v0, p0, Lmfv;->eE:I

    .line 99
    return-void
.end method

.method public static d()[Lmfv;
    .locals 2

    .prologue
    .line 15
    sget-object v0, Lmfv;->r:[Lmfv;

    if-nez v0, :cond_1

    .line 16
    sget-object v1, Llyf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 18
    :try_start_0
    sget-object v0, Lmfv;->r:[Lmfv;

    if-nez v0, :cond_0

    .line 19
    const/4 v0, 0x0

    new-array v0, v0, [Lmfv;

    sput-object v0, Lmfv;->r:[Lmfv;

    .line 21
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    :cond_1
    sget-object v0, Lmfv;->r:[Lmfv;

    return-object v0

    .line 21
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 2262
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 2263
    sparse-switch v0, :sswitch_data_0

    .line 2267
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2268
    :sswitch_0
    return-object p0

    .line 2273
    :sswitch_1
    invoke-virtual {p1}, Llxy;->k()[B

    move-result-object v0

    iput-object v0, p0, Lmfv;->e:[B

    goto :goto_0

    .line 2277
    :sswitch_2
    iget-object v0, p0, Lmfv;->f:Lmfa;

    if-nez v0, :cond_1

    .line 2278
    new-instance v0, Lmfa;

    invoke-direct {v0}, Lmfa;-><init>()V

    iput-object v0, p0, Lmfv;->f:Lmfa;

    .line 2280
    :cond_1
    iget-object v0, p0, Lmfv;->f:Lmfa;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 2284
    :sswitch_3
    const/16 v0, 0x1a

    .line 2285
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 2286
    iget-object v0, p0, Lmfv;->h:[Ljava/lang/String;

    if-nez v0, :cond_3

    move v0, v1

    .line 2287
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Ljava/lang/String;

    .line 2288
    if-eqz v0, :cond_2

    .line 2289
    iget-object v3, p0, Lmfv;->h:[Ljava/lang/String;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2291
    :cond_2
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_4

    .line 2292
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 2293
    invoke-virtual {p1}, Llxy;->a()I

    .line 2291
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2286
    :cond_3
    iget-object v0, p0, Lmfv;->h:[Ljava/lang/String;

    array-length v0, v0

    goto :goto_1

    .line 2296
    :cond_4
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 2297
    iput-object v2, p0, Lmfv;->h:[Ljava/lang/String;

    goto :goto_0

    .line 2301
    :sswitch_4
    const/16 v0, 0x22

    .line 2302
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 2303
    iget-object v0, p0, Lmfv;->k:[Lmfy;

    if-nez v0, :cond_6

    move v0, v1

    .line 2304
    :goto_3
    add-int/2addr v2, v0

    new-array v2, v2, [Lmfy;

    .line 2306
    if-eqz v0, :cond_5

    .line 2307
    iget-object v3, p0, Lmfv;->k:[Lmfy;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2309
    :cond_5
    :goto_4
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_7

    .line 2310
    new-instance v3, Lmfy;

    invoke-direct {v3}, Lmfy;-><init>()V

    aput-object v3, v2, v0

    .line 2311
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 2312
    invoke-virtual {p1}, Llxy;->a()I

    .line 2309
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 2303
    :cond_6
    iget-object v0, p0, Lmfv;->k:[Lmfy;

    array-length v0, v0

    goto :goto_3

    .line 2315
    :cond_7
    new-instance v3, Lmfy;

    invoke-direct {v3}, Lmfy;-><init>()V

    aput-object v3, v2, v0

    .line 2316
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 2317
    iput-object v2, p0, Lmfv;->k:[Lmfy;

    goto/16 :goto_0

    .line 2321
    :sswitch_5
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmfv;->i:Ljava/lang/String;

    goto/16 :goto_0

    .line 2325
    :sswitch_6
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmfv;->g:Ljava/lang/String;

    goto/16 :goto_0

    .line 2329
    :sswitch_7
    invoke-virtual {p1}, Llxy;->e()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lmfv;->m:Ljava/lang/Long;

    goto/16 :goto_0

    .line 2333
    :sswitch_8
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmfv;->j:Ljava/lang/String;

    goto/16 :goto_0

    .line 2337
    :sswitch_9
    iget-object v0, p0, Lmfv;->n:Lmfw;

    if-nez v0, :cond_8

    .line 2338
    new-instance v0, Lmfw;

    invoke-direct {v0}, Lmfw;-><init>()V

    iput-object v0, p0, Lmfv;->n:Lmfw;

    .line 2340
    :cond_8
    iget-object v0, p0, Lmfv;->n:Lmfw;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto/16 :goto_0

    .line 2344
    :sswitch_a
    iget-object v0, p0, Lmfv;->o:Lmft;

    if-nez v0, :cond_9

    .line 2345
    new-instance v0, Lmft;

    invoke-direct {v0}, Lmft;-><init>()V

    iput-object v0, p0, Lmfv;->o:Lmft;

    .line 2347
    :cond_9
    iget-object v0, p0, Lmfv;->o:Lmft;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto/16 :goto_0

    .line 2351
    :sswitch_b
    invoke-virtual {p1}, Llxy;->e()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lmfv;->a:Ljava/lang/Long;

    goto/16 :goto_0

    .line 2355
    :sswitch_c
    iget-object v0, p0, Lmfv;->p:Lmff;

    if-nez v0, :cond_a

    .line 2356
    new-instance v0, Lmff;

    invoke-direct {v0}, Lmff;-><init>()V

    iput-object v0, p0, Lmfv;->p:Lmff;

    .line 2358
    :cond_a
    iget-object v0, p0, Lmfv;->p:Lmff;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto/16 :goto_0

    .line 2362
    :sswitch_d
    iget-object v0, p0, Lmfv;->q:Lmfb;

    if-nez v0, :cond_b

    .line 2363
    new-instance v0, Lmfb;

    invoke-direct {v0}, Lmfb;-><init>()V

    iput-object v0, p0, Lmfv;->q:Lmfb;

    .line 2365
    :cond_b
    iget-object v0, p0, Lmfv;->q:Lmfb;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto/16 :goto_0

    .line 2369
    :sswitch_e
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lmfv;->c:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 2373
    :sswitch_f
    iget-object v0, p0, Lmfv;->l:Llyj;

    if-nez v0, :cond_c

    .line 2374
    new-instance v0, Llyj;

    invoke-direct {v0}, Llyj;-><init>()V

    iput-object v0, p0, Lmfv;->l:Llyj;

    .line 2376
    :cond_c
    iget-object v0, p0, Lmfv;->l:Llyj;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto/16 :goto_0

    .line 2380
    :sswitch_10
    iget-object v0, p0, Lmfv;->b:Lmfn;

    if-nez v0, :cond_d

    .line 2381
    new-instance v0, Lmfn;

    invoke-direct {v0}, Lmfn;-><init>()V

    iput-object v0, p0, Lmfv;->b:Lmfn;

    .line 2383
    :cond_d
    iget-object v0, p0, Lmfv;->b:Lmfn;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto/16 :goto_0

    .line 2387
    :sswitch_11
    iget-object v0, p0, Lmfv;->d:Lmfm;

    if-nez v0, :cond_e

    .line 2388
    new-instance v0, Lmfm;

    invoke-direct {v0}, Lmfm;-><init>()V

    iput-object v0, p0, Lmfv;->d:Lmfm;

    .line 2390
    :cond_e
    iget-object v0, p0, Lmfv;->d:Lmfm;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto/16 :goto_0

    .line 2263
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x32 -> :sswitch_5
        0x3a -> :sswitch_6
        0x40 -> :sswitch_7
        0x4a -> :sswitch_8
        0x52 -> :sswitch_9
        0x5a -> :sswitch_a
        0x60 -> :sswitch_b
        0x6a -> :sswitch_c
        0x72 -> :sswitch_d
        0x80 -> :sswitch_e
        0x8a -> :sswitch_f
        0x92 -> :sswitch_10
        0x9a -> :sswitch_11
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 104
    iget-object v0, p0, Lmfv;->e:[B

    if-eqz v0, :cond_0

    .line 105
    const/4 v0, 0x1

    iget-object v2, p0, Lmfv;->e:[B

    invoke-virtual {p1, v0, v2}, Llxz;->a(I[B)V

    .line 107
    :cond_0
    iget-object v0, p0, Lmfv;->f:Lmfa;

    if-eqz v0, :cond_1

    .line 108
    const/4 v0, 0x2

    iget-object v2, p0, Lmfv;->f:Lmfa;

    invoke-virtual {p1, v0, v2}, Llxz;->b(ILlyi;)V

    .line 110
    :cond_1
    iget-object v0, p0, Lmfv;->h:[Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lmfv;->h:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_3

    move v0, v1

    .line 111
    :goto_0
    iget-object v2, p0, Lmfv;->h:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_3

    .line 112
    iget-object v2, p0, Lmfv;->h:[Ljava/lang/String;

    aget-object v2, v2, v0

    .line 113
    if-eqz v2, :cond_2

    .line 114
    const/4 v3, 0x3

    invoke-virtual {p1, v3, v2}, Llxz;->a(ILjava/lang/String;)V

    .line 111
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 118
    :cond_3
    iget-object v0, p0, Lmfv;->k:[Lmfy;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lmfv;->k:[Lmfy;

    array-length v0, v0

    if-lez v0, :cond_5

    .line 119
    :goto_1
    iget-object v0, p0, Lmfv;->k:[Lmfy;

    array-length v0, v0

    if-ge v1, v0, :cond_5

    .line 120
    iget-object v0, p0, Lmfv;->k:[Lmfy;

    aget-object v0, v0, v1

    .line 121
    if-eqz v0, :cond_4

    .line 122
    const/4 v2, 0x4

    invoke-virtual {p1, v2, v0}, Llxz;->b(ILlyi;)V

    .line 119
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 126
    :cond_5
    iget-object v0, p0, Lmfv;->i:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 127
    const/4 v0, 0x6

    iget-object v1, p0, Lmfv;->i:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 129
    :cond_6
    iget-object v0, p0, Lmfv;->g:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 130
    const/4 v0, 0x7

    iget-object v1, p0, Lmfv;->g:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 132
    :cond_7
    iget-object v0, p0, Lmfv;->m:Ljava/lang/Long;

    if-eqz v0, :cond_8

    .line 133
    const/16 v0, 0x8

    iget-object v1, p0, Lmfv;->m:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Llxz;->b(IJ)V

    .line 135
    :cond_8
    iget-object v0, p0, Lmfv;->j:Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 136
    const/16 v0, 0x9

    iget-object v1, p0, Lmfv;->j:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 138
    :cond_9
    iget-object v0, p0, Lmfv;->n:Lmfw;

    if-eqz v0, :cond_a

    .line 139
    const/16 v0, 0xa

    iget-object v1, p0, Lmfv;->n:Lmfw;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 141
    :cond_a
    iget-object v0, p0, Lmfv;->o:Lmft;

    if-eqz v0, :cond_b

    .line 142
    const/16 v0, 0xb

    iget-object v1, p0, Lmfv;->o:Lmft;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 144
    :cond_b
    iget-object v0, p0, Lmfv;->a:Ljava/lang/Long;

    if-eqz v0, :cond_c

    .line 145
    const/16 v0, 0xc

    iget-object v1, p0, Lmfv;->a:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Llxz;->b(IJ)V

    .line 147
    :cond_c
    iget-object v0, p0, Lmfv;->p:Lmff;

    if-eqz v0, :cond_d

    .line 148
    const/16 v0, 0xd

    iget-object v1, p0, Lmfv;->p:Lmff;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 150
    :cond_d
    iget-object v0, p0, Lmfv;->q:Lmfb;

    if-eqz v0, :cond_e

    .line 151
    const/16 v0, 0xe

    iget-object v1, p0, Lmfv;->q:Lmfb;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 153
    :cond_e
    iget-object v0, p0, Lmfv;->c:Ljava/lang/Boolean;

    if-eqz v0, :cond_f

    .line 154
    const/16 v0, 0x10

    iget-object v1, p0, Lmfv;->c:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 156
    :cond_f
    iget-object v0, p0, Lmfv;->l:Llyj;

    if-eqz v0, :cond_10

    .line 157
    const/16 v0, 0x11

    iget-object v1, p0, Lmfv;->l:Llyj;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 159
    :cond_10
    iget-object v0, p0, Lmfv;->b:Lmfn;

    if-eqz v0, :cond_11

    .line 160
    const/16 v0, 0x12

    iget-object v1, p0, Lmfv;->b:Lmfn;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 162
    :cond_11
    iget-object v0, p0, Lmfv;->d:Lmfm;

    if-eqz v0, :cond_12

    .line 163
    const/16 v0, 0x13

    iget-object v1, p0, Lmfv;->d:Lmfm;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 165
    :cond_12
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 166
    return-void
.end method

.method protected b()I
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 170
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 171
    iget-object v1, p0, Lmfv;->e:[B

    if-eqz v1, :cond_0

    .line 172
    const/4 v1, 0x1

    iget-object v3, p0, Lmfv;->e:[B

    .line 173
    invoke-static {v1, v3}, Llxz;->b(I[B)I

    move-result v1

    add-int/2addr v0, v1

    .line 175
    :cond_0
    iget-object v1, p0, Lmfv;->f:Lmfa;

    if-eqz v1, :cond_1

    .line 176
    const/4 v1, 0x2

    iget-object v3, p0, Lmfv;->f:Lmfa;

    .line 177
    invoke-static {v1, v3}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 179
    :cond_1
    iget-object v1, p0, Lmfv;->h:[Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lmfv;->h:[Ljava/lang/String;

    array-length v1, v1

    if-lez v1, :cond_4

    move v1, v2

    move v3, v2

    move v4, v2

    .line 182
    :goto_0
    iget-object v5, p0, Lmfv;->h:[Ljava/lang/String;

    array-length v5, v5

    if-ge v1, v5, :cond_3

    .line 183
    iget-object v5, p0, Lmfv;->h:[Ljava/lang/String;

    aget-object v5, v5, v1

    .line 184
    if-eqz v5, :cond_2

    .line 185
    add-int/lit8 v4, v4, 0x1

    .line 187
    invoke-static {v5}, Llxz;->a(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v3, v5

    .line 182
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 190
    :cond_3
    add-int/2addr v0, v3

    .line 191
    mul-int/lit8 v1, v4, 0x1

    add-int/2addr v0, v1

    .line 193
    :cond_4
    iget-object v1, p0, Lmfv;->k:[Lmfy;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lmfv;->k:[Lmfy;

    array-length v1, v1

    if-lez v1, :cond_6

    .line 194
    :goto_1
    iget-object v1, p0, Lmfv;->k:[Lmfy;

    array-length v1, v1

    if-ge v2, v1, :cond_6

    .line 195
    iget-object v1, p0, Lmfv;->k:[Lmfy;

    aget-object v1, v1, v2

    .line 196
    if-eqz v1, :cond_5

    .line 197
    const/4 v3, 0x4

    .line 198
    invoke-static {v3, v1}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 194
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 202
    :cond_6
    iget-object v1, p0, Lmfv;->i:Ljava/lang/String;

    if-eqz v1, :cond_7

    .line 203
    const/4 v1, 0x6

    iget-object v2, p0, Lmfv;->i:Ljava/lang/String;

    .line 204
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 206
    :cond_7
    iget-object v1, p0, Lmfv;->g:Ljava/lang/String;

    if-eqz v1, :cond_8

    .line 207
    const/4 v1, 0x7

    iget-object v2, p0, Lmfv;->g:Ljava/lang/String;

    .line 208
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 210
    :cond_8
    iget-object v1, p0, Lmfv;->m:Ljava/lang/Long;

    if-eqz v1, :cond_9

    .line 211
    const/16 v1, 0x8

    iget-object v2, p0, Lmfv;->m:Ljava/lang/Long;

    .line 212
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Llxz;->e(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 214
    :cond_9
    iget-object v1, p0, Lmfv;->j:Ljava/lang/String;

    if-eqz v1, :cond_a

    .line 215
    const/16 v1, 0x9

    iget-object v2, p0, Lmfv;->j:Ljava/lang/String;

    .line 216
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 218
    :cond_a
    iget-object v1, p0, Lmfv;->n:Lmfw;

    if-eqz v1, :cond_b

    .line 219
    const/16 v1, 0xa

    iget-object v2, p0, Lmfv;->n:Lmfw;

    .line 220
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 222
    :cond_b
    iget-object v1, p0, Lmfv;->o:Lmft;

    if-eqz v1, :cond_c

    .line 223
    const/16 v1, 0xb

    iget-object v2, p0, Lmfv;->o:Lmft;

    .line 224
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 226
    :cond_c
    iget-object v1, p0, Lmfv;->a:Ljava/lang/Long;

    if-eqz v1, :cond_d

    .line 227
    const/16 v1, 0xc

    iget-object v2, p0, Lmfv;->a:Ljava/lang/Long;

    .line 228
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Llxz;->e(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 230
    :cond_d
    iget-object v1, p0, Lmfv;->p:Lmff;

    if-eqz v1, :cond_e

    .line 231
    const/16 v1, 0xd

    iget-object v2, p0, Lmfv;->p:Lmff;

    .line 232
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 234
    :cond_e
    iget-object v1, p0, Lmfv;->q:Lmfb;

    if-eqz v1, :cond_f

    .line 235
    const/16 v1, 0xe

    iget-object v2, p0, Lmfv;->q:Lmfb;

    .line 236
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 238
    :cond_f
    iget-object v1, p0, Lmfv;->c:Ljava/lang/Boolean;

    if-eqz v1, :cond_10

    .line 239
    const/16 v1, 0x10

    iget-object v2, p0, Lmfv;->c:Ljava/lang/Boolean;

    .line 240
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 240
    add-int/2addr v0, v1

    .line 242
    :cond_10
    iget-object v1, p0, Lmfv;->l:Llyj;

    if-eqz v1, :cond_11

    .line 243
    const/16 v1, 0x11

    iget-object v2, p0, Lmfv;->l:Llyj;

    .line 244
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 246
    :cond_11
    iget-object v1, p0, Lmfv;->b:Lmfn;

    if-eqz v1, :cond_12

    .line 247
    const/16 v1, 0x12

    iget-object v2, p0, Lmfv;->b:Lmfn;

    .line 248
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 250
    :cond_12
    iget-object v1, p0, Lmfv;->d:Lmfm;

    if-eqz v1, :cond_13

    .line 251
    const/16 v1, 0x13

    iget-object v2, p0, Lmfv;->d:Lmfm;

    .line 252
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 254
    :cond_13
    return v0
.end method
