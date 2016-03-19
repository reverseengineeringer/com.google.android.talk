.class public final Lcsp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhax;


# static fields
.field private static final c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Lcso;

.field private final b:Lkls;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .prologue
    const/4 v13, 0x3

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x6

    const/4 v9, 0x0

    .line 59
    const/16 v0, 0x7e2

    .line 60
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x7e3

    .line 61
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x793

    .line 62
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x78e

    .line 63
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v4, 0x9d6

    .line 64
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v5, 0x9d7

    .line 65
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-array v6, v10, [Ljava/lang/Integer;

    const/16 v7, 0x8b8

    .line 66
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    const/16 v7, 0x8b9

    .line 67
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v11

    const/16 v7, 0xa76

    .line 68
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v12

    const/16 v7, 0xb5a

    .line 69
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v13

    const/4 v7, 0x4

    const/16 v8, 0xa89

    .line 70
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x5

    const/16 v8, 0x5f4

    .line 71
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    .line 3109
    const/16 v7, 0xc

    new-array v7, v7, [Ljava/lang/Object;

    .line 3110
    aput-object v0, v7, v9

    .line 3111
    aput-object v1, v7, v11

    .line 3112
    aput-object v2, v7, v12

    .line 3113
    aput-object v3, v7, v13

    .line 3114
    const/4 v0, 0x4

    aput-object v4, v7, v0

    .line 3115
    const/4 v0, 0x5

    aput-object v5, v7, v0

    .line 3116
    invoke-static {v6, v9, v7, v10, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3117
    const/16 v0, 0xc

    invoke-static {v0, v7}, Lkth;->a(I[Ljava/lang/Object;)Lkth;

    move-result-object v0

    .line 59
    sput-object v0, Lcsp;->c:Ljava/util/Set;

    return-void
.end method

.method constructor <init>(Lcso;I)V
    .locals 5

    .prologue
    const/4 v1, 0x2

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-object p1, p0, Lcsp;->a:Lcso;

    .line 85
    new-instance v0, Lkls;

    invoke-direct {v0}, Lkls;-><init>()V

    iput-object v0, p0, Lcsp;->b:Lkls;

    .line 86
    iget-object v2, p0, Lcsp;->b:Lkls;

    invoke-virtual {p1}, Lcso;->c()Landroid/content/Context;

    move-result-object v3

    .line 1279
    iget-object v0, v2, Lkls;->e:Lmdx;

    if-nez v0, :cond_0

    .line 1280
    new-instance v0, Lmdx;

    invoke-direct {v0}, Lmdx;-><init>()V

    iput-object v0, v2, Lkls;->e:Lmdx;

    .line 1319
    :cond_0
    invoke-static {}, Lcfc;->a()Lcfc;

    move-result-object v0

    invoke-virtual {v0}, Lcfc;->r()Lcgw;

    move-result-object v0

    .line 1283
    iget-object v4, v2, Lkls;->e:Lmdx;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcgw;->k()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1284
    :cond_1
    const/16 v0, 0x197

    .line 1283
    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v4, Lmdx;->b:Ljava/lang/Integer;

    .line 1285
    iget-object v0, v2, Lkls;->e:Lmdx;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, v0, Lmdx;->c:Ljava/lang/Integer;

    .line 1286
    iget-object v2, v2, Lkls;->e:Lmdx;

    invoke-static {v3}, Laal;->N(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1287
    const/4 v0, 0x3

    .line 1286
    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v2, Lmdx;->a:Ljava/lang/Integer;

    .line 88
    iget-object v0, p0, Lcsp;->b:Lkls;

    iget-object v0, v0, Lkls;->a:Lkli;

    if-nez v0, :cond_2

    .line 89
    iget-object v0, p0, Lcsp;->b:Lkls;

    new-instance v1, Lkli;

    invoke-direct {v1}, Lkli;-><init>()V

    iput-object v1, v0, Lkls;->a:Lkli;

    .line 91
    :cond_2
    iget-object v0, p0, Lcsp;->b:Lkls;

    iget-object v0, v0, Lkls;->a:Lkli;

    new-instance v1, Lklj;

    invoke-direct {v1}, Lklj;-><init>()V

    iput-object v1, v0, Lkli;->j:Lklj;

    .line 92
    iget-object v0, p0, Lcsp;->b:Lkls;

    iget-object v0, v0, Lkls;->a:Lkli;

    iget-object v0, v0, Lkli;->j:Lklj;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lklj;->a:Ljava/lang/Integer;

    .line 93
    return-void

    .line 1284
    :cond_3
    const/16 v0, 0x198

    goto :goto_0

    :cond_4
    move v0, v1

    .line 1287
    goto :goto_1
.end method

.method private e()I
    .locals 2

    .prologue
    .line 362
    iget-object v0, p0, Lcsp;->b:Lkls;

    iget-object v0, v0, Lkls;->a:Lkli;

    iget-object v0, v0, Lkli;->j:Lklj;

    iget-object v0, v0, Lklj;->a:Ljava/lang/Integer;

    .line 3043
    const/4 v1, 0x0

    invoke-static {v0, v1}, Laal;->a(Ljava/lang/Integer;I)I

    move-result v0

    .line 362
    return v0
.end method


# virtual methods
.method public a()Lhax;
    .locals 4

    .prologue
    .line 99
    invoke-static {}, Laal;->w()V

    .line 2296
    iget-object v0, p0, Lcsp;->b:Lkls;

    .line 2319
    invoke-static {}, Lcfc;->a()Lcfc;

    move-result-object v1

    invoke-virtual {v1}, Lcfc;->r()Lcgw;

    move-result-object v1

    .line 2298
    if-eqz v1, :cond_3

    .line 2301
    iget-object v2, v0, Lkls;->a:Lkli;

    if-nez v2, :cond_0

    .line 2302
    new-instance v2, Lkli;

    invoke-direct {v2}, Lkli;-><init>()V

    iput-object v2, v0, Lkls;->a:Lkli;

    .line 2304
    :cond_0
    iget-object v2, v0, Lkls;->a:Lkli;

    iget-object v2, v2, Lkli;->a:Lklh;

    if-nez v2, :cond_1

    .line 2305
    iget-object v2, v0, Lkls;->a:Lkli;

    new-instance v3, Lklh;

    invoke-direct {v3}, Lklh;-><init>()V

    iput-object v3, v2, Lkli;->a:Lklh;

    .line 2307
    :cond_1
    iget-object v2, v0, Lkls;->a:Lkli;

    iget-object v2, v2, Lkli;->a:Lklh;

    invoke-virtual {v1, v2}, Lcgw;->a(Lklh;)V

    .line 2308
    invoke-static {}, Lcfc;->a()Lcfc;

    move-result-object v1

    invoke-virtual {v1}, Lcfc;->d()Lhkx;

    move-result-object v1

    .line 2309
    if-eqz v1, :cond_2

    .line 2310
    iget-object v0, v0, Lkls;->a:Lkli;

    iget-object v0, v0, Lkli;->a:Lklh;

    invoke-virtual {v1}, Lhkx;->a()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lklh;->d:Ljava/lang/String;

    .line 2312
    :cond_2
    invoke-static {}, Lcfc;->a()Lcfc;

    move-result-object v0

    invoke-virtual {v0}, Lcfc;->g()Lhkv;

    move-result-object v0

    .line 2313
    if-eqz v0, :cond_3

    .line 2314
    invoke-virtual {v0}, Lhkv;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcsp;->e(Ljava/lang/String;)Lhax;

    .line 101
    :cond_3
    return-object p0
.end method

.method public a(I)Lhax;
    .locals 2

    .prologue
    .line 185
    iget-object v0, p0, Lcsp;->b:Lkls;

    iget-object v0, v0, Lkls;->a:Lkli;

    iget-object v0, v0, Lkli;->j:Lklj;

    iget-object v0, v0, Lklj;->c:Lklk;

    if-nez v0, :cond_0

    .line 186
    iget-object v0, p0, Lcsp;->b:Lkls;

    iget-object v0, v0, Lkls;->a:Lkli;

    iget-object v0, v0, Lkli;->j:Lklj;

    new-instance v1, Lklk;

    invoke-direct {v1}, Lklk;-><init>()V

    iput-object v1, v0, Lklj;->c:Lklk;

    .line 188
    :cond_0
    iget-object v0, p0, Lcsp;->b:Lkls;

    iget-object v0, v0, Lkls;->a:Lkli;

    iget-object v0, v0, Lkli;->j:Lklj;

    iget-object v0, v0, Lklj;->c:Lklk;

    iget-object v0, v0, Lklk;->d:Lkll;

    if-nez v0, :cond_1

    .line 189
    iget-object v0, p0, Lcsp;->b:Lkls;

    iget-object v0, v0, Lkls;->a:Lkli;

    iget-object v0, v0, Lkli;->j:Lklj;

    iget-object v0, v0, Lklj;->c:Lklk;

    new-instance v1, Lkll;

    invoke-direct {v1}, Lkll;-><init>()V

    iput-object v1, v0, Lklk;->d:Lkll;

    .line 192
    :cond_1
    iget-object v0, p0, Lcsp;->b:Lkls;

    iget-object v0, v0, Lkls;->a:Lkli;

    iget-object v0, v0, Lkli;->j:Lklj;

    iget-object v0, v0, Lklj;->c:Lklk;

    iget-object v0, v0, Lklk;->d:Lkll;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lkll;->a:Ljava/lang/Integer;

    .line 193
    return-object p0
.end method

.method public a(Ljava/lang/Integer;)Lhax;
    .locals 2

    .prologue
    .line 147
    iget-object v0, p0, Lcsp;->b:Lkls;

    iget-object v0, v0, Lkls;->a:Lkli;

    iget-object v0, v0, Lkli;->j:Lklj;

    iget-object v0, v0, Lklj;->c:Lklk;

    if-nez v0, :cond_0

    .line 148
    iget-object v0, p0, Lcsp;->b:Lkls;

    iget-object v0, v0, Lkls;->a:Lkli;

    iget-object v0, v0, Lkli;->j:Lklj;

    new-instance v1, Lklk;

    invoke-direct {v1}, Lklk;-><init>()V

    iput-object v1, v0, Lklj;->c:Lklk;

    .line 150
    :cond_0
    iget-object v0, p0, Lcsp;->b:Lkls;

    iget-object v0, v0, Lkls;->a:Lkli;

    iget-object v0, v0, Lkli;->j:Lklj;

    iget-object v0, v0, Lklj;->c:Lklk;

    iput-object p1, v0, Lklk;->b:Ljava/lang/Integer;

    .line 151
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lhax;
    .locals 3

    .prologue
    .line 134
    sget-object v0, Lcsp;->c:Ljava/util/Set;

    invoke-direct {p0}, Lcsp;->e()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 135
    iget-object v0, p0, Lcsp;->b:Lkls;

    iget-object v0, v0, Lkls;->a:Lkli;

    iget-object v0, v0, Lkli;->j:Lklj;

    iget-object v0, v0, Lklj;->c:Lklk;

    if-nez v0, :cond_0

    .line 136
    iget-object v0, p0, Lcsp;->b:Lkls;

    iget-object v0, v0, Lkls;->a:Lkli;

    iget-object v0, v0, Lkli;->j:Lklj;

    new-instance v1, Lklk;

    invoke-direct {v1}, Lklk;-><init>()V

    iput-object v1, v0, Lklj;->c:Lklk;

    .line 138
    :cond_0
    iget-object v0, p0, Lcsp;->b:Lkls;

    iget-object v0, v0, Lkls;->a:Lkli;

    iget-object v0, v0, Lkli;->j:Lklj;

    iget-object v0, v0, Lklj;->c:Lklk;

    iput-object p1, v0, Lklk;->a:Ljava/lang/String;

    .line 142
    :goto_0
    return-object p0

    .line 140
    :cond_1
    invoke-direct {p0}, Lcsp;->e()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x3f

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Impression "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " is not permitted to transmit extra data."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lhbs;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Lklc;)Lhax;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcsp;->b:Lkls;

    iget-object v0, v0, Lkls;->a:Lkli;

    iget-object v0, v0, Lkli;->j:Lklj;

    iput-object p1, v0, Lklj;->d:Lklc;

    .line 157
    return-object p0
.end method

.method public a(Lkld;)Lhax;
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcsp;->b:Lkls;

    iget-object v0, v0, Lkls;->a:Lkli;

    iget-object v0, v0, Lkli;->j:Lklj;

    iput-object p1, v0, Lklj;->f:Lkld;

    .line 207
    return-object p0
.end method

.method public a(Lkle;)Lhax;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcsp;->b:Lkls;

    iget-object v0, v0, Lkls;->a:Lkli;

    iget-object v0, v0, Lkli;->j:Lklj;

    iput-object p1, v0, Lklj;->e:Lkle;

    .line 163
    return-object p0
.end method

.method public a(Lklf;)Lhax;
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcsp;->b:Lkls;

    iget-object v0, v0, Lkls;->a:Lkli;

    iget-object v0, v0, Lkli;->j:Lklj;

    iput-object p1, v0, Lklj;->h:Lklf;

    .line 219
    return-object p0
.end method

.method public a(Lkln;)Lhax;
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcsp;->b:Lkls;

    iget-object v0, v0, Lkls;->a:Lkli;

    iget-object v0, v0, Lkli;->j:Lklj;

    iput-object p1, v0, Lklj;->g:Lkln;

    .line 213
    return-object p0
.end method

.method public a(Ljava/util/concurrent/TimeUnit;)V
    .locals 6

    .prologue
    .line 267
    iget-object v0, p0, Lcsp;->a:Lcso;

    invoke-virtual {v0}, Lcso;->c()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lekh;

    invoke-static {v0, v1}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lekh;

    .line 268
    iget-object v1, p0, Lcsp;->a:Lcso;

    invoke-virtual {v1}, Lcso;->b()I

    move-result v1

    invoke-direct {p0}, Lcsp;->e()I

    move-result v2

    const-wide/16 v4, 0x1

    .line 269
    invoke-virtual {p1, v4, v5}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v4

    .line 268
    invoke-virtual {v0, v1, v2, v4, v5}, Lekh;->a(IIJ)Z

    move-result v0

    .line 270
    if-eqz v0, :cond_0

    .line 271
    invoke-virtual {p0}, Lcsp;->d()V

    .line 273
    :cond_0
    return-void
.end method

.method public b()Lhax;
    .locals 6

    .prologue
    .line 106
    iget-object v0, p0, Lcsp;->b:Lkls;

    iget-object v1, p0, Lcsp;->a:Lcso;

    invoke-virtual {v1}, Lcso;->d()J

    move-result-wide v2

    .line 2326
    iget-object v1, v0, Lkls;->a:Lkli;

    if-nez v1, :cond_0

    .line 2327
    new-instance v1, Lkli;

    invoke-direct {v1}, Lkli;-><init>()V

    iput-object v1, v0, Lkls;->a:Lkli;

    .line 2329
    :cond_0
    iget-object v1, v0, Lkls;->a:Lkli;

    iget-object v1, v1, Lkli;->k:Lklg;

    if-nez v1, :cond_1

    .line 2330
    iget-object v1, v0, Lkls;->a:Lkli;

    new-instance v4, Lklg;

    invoke-direct {v4}, Lklg;-><init>()V

    iput-object v4, v1, Lkli;->k:Lklg;

    .line 2332
    :cond_1
    iget-object v0, v0, Lkls;->a:Lkli;

    iget-object v0, v0, Lkli;->k:Lklg;

    .line 2333
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long v2, v4, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lklg;->a:Ljava/lang/Long;

    .line 107
    return-object p0
.end method

.method public b(I)Lhax;
    .locals 2

    .prologue
    .line 197
    iget-object v0, p0, Lcsp;->b:Lkls;

    iget-object v0, v0, Lkls;->a:Lkli;

    iget-object v0, v0, Lkli;->j:Lklj;

    iget-object v0, v0, Lklj;->c:Lklk;

    if-nez v0, :cond_0

    .line 198
    iget-object v0, p0, Lcsp;->b:Lkls;

    iget-object v0, v0, Lkls;->a:Lkli;

    iget-object v0, v0, Lkli;->j:Lklj;

    new-instance v1, Lklk;

    invoke-direct {v1}, Lklk;-><init>()V

    iput-object v1, v0, Lklj;->c:Lklk;

    .line 200
    :cond_0
    iget-object v0, p0, Lcsp;->b:Lkls;

    iget-object v0, v0, Lkls;->a:Lkli;

    iget-object v0, v0, Lkli;->j:Lklj;

    iget-object v0, v0, Lklj;->c:Lklk;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lklk;->e:Ljava/lang/Integer;

    .line 201
    return-object p0
.end method

.method public b(Ljava/lang/String;)Lhax;
    .locals 2

    .prologue
    .line 168
    iget-object v0, p0, Lcsp;->b:Lkls;

    iget-object v0, v0, Lkls;->a:Lkli;

    iget-object v0, v0, Lkli;->a:Lklh;

    if-nez v0, :cond_0

    .line 169
    iget-object v0, p0, Lcsp;->b:Lkls;

    iget-object v0, v0, Lkls;->a:Lkli;

    new-instance v1, Lklh;

    invoke-direct {v1}, Lklh;-><init>()V

    iput-object v1, v0, Lkli;->a:Lklh;

    .line 171
    :cond_0
    iget-object v0, p0, Lcsp;->b:Lkls;

    iget-object v0, v0, Lkls;->a:Lkli;

    iget-object v0, v0, Lkli;->a:Lklh;

    iput-object p1, v0, Lklh;->i:Ljava/lang/String;

    .line 172
    return-object p0
.end method

.method public c()Lhax;
    .locals 3

    .prologue
    .line 113
    iget-object v0, p0, Lcsp;->a:Lcso;

    invoke-virtual {v0}, Lcso;->b()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 129
    :cond_0
    :goto_0
    return-object p0

    .line 117
    :cond_1
    iget-object v0, p0, Lcsp;->a:Lcso;

    invoke-virtual {v0}, Lcso;->b()I

    move-result v0

    invoke-static {v0}, Ldvp;->c(I)[Ljava/lang/String;

    move-result-object v0

    .line 118
    array-length v1, v0

    if-eqz v1, :cond_0

    .line 122
    iget-object v1, p0, Lcsp;->b:Lkls;

    iget-object v1, v1, Lkls;->a:Lkli;

    if-nez v1, :cond_2

    .line 123
    iget-object v1, p0, Lcsp;->b:Lkls;

    new-instance v2, Lkli;

    invoke-direct {v2}, Lkli;-><init>()V

    iput-object v2, v1, Lkls;->a:Lkli;

    .line 125
    :cond_2
    iget-object v1, p0, Lcsp;->b:Lkls;

    iget-object v1, v1, Lkls;->a:Lkli;

    iget-object v1, v1, Lkli;->k:Lklg;

    if-nez v1, :cond_3

    .line 126
    iget-object v1, p0, Lcsp;->b:Lkls;

    iget-object v1, v1, Lkls;->a:Lkli;

    new-instance v2, Lklg;

    invoke-direct {v2}, Lklg;-><init>()V

    iput-object v2, v1, Lkli;->k:Lklg;

    .line 128
    :cond_3
    iget-object v1, p0, Lcsp;->b:Lkls;

    iget-object v1, v1, Lkls;->a:Lkli;

    iget-object v1, v1, Lkli;->k:Lklg;

    iput-object v0, v1, Lklg;->b:[Ljava/lang/String;

    goto :goto_0
.end method

.method public c(Ljava/lang/String;)Lhax;
    .locals 2

    .prologue
    .line 177
    iget-object v0, p0, Lcsp;->b:Lkls;

    iget-object v0, v0, Lkls;->a:Lkli;

    iget-object v0, v0, Lkli;->a:Lklh;

    if-nez v0, :cond_0

    .line 178
    iget-object v0, p0, Lcsp;->b:Lkls;

    iget-object v0, v0, Lkls;->a:Lkli;

    new-instance v1, Lklh;

    invoke-direct {v1}, Lklh;-><init>()V

    iput-object v1, v0, Lkli;->a:Lklh;

    .line 180
    :cond_0
    iget-object v0, p0, Lcsp;->b:Lkls;

    iget-object v0, v0, Lkls;->a:Lkli;

    iget-object v0, v0, Lkli;->a:Lklh;

    iput-object p1, v0, Lklh;->j:Ljava/lang/String;

    .line 181
    return-object p0
.end method

.method public d(Ljava/lang/String;)Lhax;
    .locals 2

    .prologue
    .line 224
    iget-object v0, p0, Lcsp;->b:Lkls;

    iget-object v0, v0, Lkls;->a:Lkli;

    if-nez v0, :cond_0

    .line 225
    iget-object v0, p0, Lcsp;->b:Lkls;

    new-instance v1, Lkli;

    invoke-direct {v1}, Lkli;-><init>()V

    iput-object v1, v0, Lkls;->a:Lkli;

    .line 227
    :cond_0
    iget-object v0, p0, Lcsp;->b:Lkls;

    iget-object v0, v0, Lkls;->a:Lkli;

    iget-object v0, v0, Lkli;->a:Lklh;

    if-nez v0, :cond_1

    .line 228
    iget-object v0, p0, Lcsp;->b:Lkls;

    iget-object v0, v0, Lkls;->a:Lkli;

    new-instance v1, Lklh;

    invoke-direct {v1}, Lklh;-><init>()V

    iput-object v1, v0, Lkli;->a:Lklh;

    .line 230
    :cond_1
    iget-object v0, p0, Lcsp;->b:Lkls;

    iget-object v0, v0, Lkls;->a:Lkli;

    iget-object v0, v0, Lkli;->a:Lklh;

    iput-object p1, v0, Lklh;->h:Ljava/lang/String;

    .line 231
    return-object p0
.end method

.method public d()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 251
    iget-object v0, p0, Lcsp;->b:Lkls;

    iget-object v0, v0, Lkls;->a:Lkli;

    iget-object v2, v0, Lkli;->j:Lklj;

    iget-object v0, p0, Lcsp;->a:Lcso;

    invoke-virtual {v0}, Lcso;->c()Landroid/content/Context;

    move-result-object v0

    .line 2343
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 2344
    packed-switch v0, :pswitch_data_0

    move v0, v1

    .line 2353
    :goto_0
    if-eqz v0, :cond_1

    .line 2354
    iget-object v3, v2, Lklj;->c:Lklk;

    if-nez v3, :cond_0

    .line 2355
    new-instance v3, Lklk;

    invoke-direct {v3}, Lklk;-><init>()V

    iput-object v3, v2, Lklj;->c:Lklk;

    .line 2357
    :cond_0
    iget-object v2, v2, Lklj;->c:Lklk;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v2, Lklk;->c:Ljava/lang/Integer;

    .line 252
    :cond_1
    iget-object v0, p0, Lcsp;->a:Lcso;

    iget-object v2, p0, Lcsp;->b:Lkls;

    invoke-virtual {v0, v2}, Lcso;->a(Lkls;)V

    .line 253
    const-string v0, "Babel_RtcImpressions"

    const/4 v2, 0x3

    invoke-static {v0, v2}, Lezi;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 254
    const-string v0, "Babel_RtcImpressions"

    iget-object v2, p0, Lcsp;->b:Lkls;

    invoke-virtual {v2}, Lkls;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lezi;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 259
    const-string v0, "Babel_RtcImpressions"

    iget-object v2, p0, Lcsp;->b:Lkls;

    iget-object v2, v2, Lkls;->a:Lkli;

    iget-object v2, v2, Lkli;->j:Lklj;

    iget-object v2, v2, Lklj;->a:Ljava/lang/Integer;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x6

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lezi;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 261
    :cond_2
    return-void

    .line 2346
    :pswitch_0
    const/4 v0, 0x1

    .line 2347
    goto :goto_0

    .line 2349
    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 2344
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public e(Ljava/lang/String;)Lhax;
    .locals 2

    .prologue
    .line 236
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 246
    :goto_0
    return-object p0

    .line 239
    :cond_0
    iget-object v0, p0, Lcsp;->b:Lkls;

    iget-object v0, v0, Lkls;->a:Lkli;

    if-nez v0, :cond_1

    .line 240
    iget-object v0, p0, Lcsp;->b:Lkls;

    new-instance v1, Lkli;

    invoke-direct {v1}, Lkli;-><init>()V

    iput-object v1, v0, Lkls;->a:Lkli;

    .line 242
    :cond_1
    iget-object v0, p0, Lcsp;->b:Lkls;

    iget-object v0, v0, Lkls;->a:Lkli;

    iget-object v0, v0, Lkli;->a:Lklh;

    if-nez v0, :cond_2

    .line 243
    iget-object v0, p0, Lcsp;->b:Lkls;

    iget-object v0, v0, Lkls;->a:Lkli;

    new-instance v1, Lklh;

    invoke-direct {v1}, Lklh;-><init>()V

    iput-object v1, v0, Lkli;->a:Lklh;

    .line 245
    :cond_2
    iget-object v0, p0, Lcsp;->b:Lkls;

    iget-object v0, v0, Lkls;->a:Lkli;

    iget-object v0, v0, Lkli;->a:Lklh;

    iput-object p1, v0, Lklh;->e:Ljava/lang/String;

    goto :goto_0
.end method
