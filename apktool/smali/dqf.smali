.class public Ldqf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field static final a:Z

.field private static final g:Ldsf;

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public b:Leff;

.field public final c:Ldsf;

.field public final d:J

.field public final e:J

.field public f:Z

.field private h:J

.field private i:J

.field private j:J

.field private k:J

.field private l:J

.field private m:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 234
    sget-object v0, Lezi;->l:Limx;

    const/4 v0, 0x0

    sput-boolean v0, Ldqf;->a:Z

    .line 237
    new-instance v0, Ldsf;

    invoke-direct {v0}, Ldsf;-><init>()V

    sput-object v0, Ldqf;->g:Ldsf;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 313
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 314
    sget-object v0, Ldqf;->g:Ldsf;

    iput-object v0, p0, Ldqf;->c:Ldsf;

    .line 315
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Ldqf;->d:J

    .line 316
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ldqf;->e:J

    .line 317
    return-void
.end method

.method public constructor <init>(Liye;)V
    .locals 6

    .prologue
    const-wide/16 v0, -0x1

    const-wide/16 v2, 0x0

    const/4 v5, 0x0

    .line 322
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 323
    if-eqz p1, :cond_2

    .line 324
    new-instance v4, Ldsf;

    invoke-direct {v4, p1}, Ldsf;-><init>(Liye;)V

    iput-object v4, p0, Ldqf;->c:Ldsf;

    .line 325
    iget-object v4, p1, Liye;->b:Lmhm;

    if-eqz v4, :cond_0

    iget-object v4, p1, Liye;->b:Lmhm;

    iget-object v4, v4, Lmhm;->a:[Lmhn;

    if-eqz v4, :cond_0

    iget-object v4, p1, Liye;->b:Lmhm;

    iget-object v4, v4, Lmhm;->a:[Lmhn;

    array-length v4, v4

    if-lez v4, :cond_0

    iget-object v4, p1, Liye;->b:Lmhm;

    iget-object v4, v4, Lmhm;->a:[Lmhn;

    aget-object v4, v4, v5

    iget-object v4, v4, Lmhn;->a:Ljava/lang/Long;

    if-eqz v4, :cond_0

    .line 329
    iget-object v0, p1, Liye;->b:Lmhm;

    iget-object v0, v0, Lmhm;->a:[Lmhn;

    aget-object v0, v0, v5

    iget-object v0, v0, Lmhn;->a:Ljava/lang/Long;

    .line 6051
    invoke-static {v0, v2, v3}, Laal;->a(Ljava/lang/Long;J)J

    move-result-wide v0

    .line 330
    :cond_0
    iput-wide v0, p0, Ldqf;->d:J

    .line 331
    iget-object v0, p1, Liye;->d:Lmre;

    if-eqz v0, :cond_1

    iget-object v0, p1, Liye;->d:Lmre;

    iget-object v0, v0, Lmre;->a:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 333
    iget-object v0, p1, Liye;->d:Lmre;

    iget-object v0, v0, Lmre;->a:Ljava/lang/Integer;

    .line 7043
    invoke-static {v0, v5}, Laal;->a(Ljava/lang/Integer;I)I

    move-result v0

    .line 333
    int-to-long v0, v0

    :goto_0
    iput-wide v0, p0, Ldqf;->e:J

    .line 339
    :goto_1
    return-void

    :cond_1
    move-wide v0, v2

    .line 333
    goto :goto_0

    .line 335
    :cond_2
    sget-object v4, Ldqf;->g:Ldsf;

    iput-object v4, p0, Ldqf;->c:Ldsf;

    .line 336
    iput-wide v0, p0, Ldqf;->d:J

    .line 337
    iput-wide v2, p0, Ldqf;->e:J

    goto :goto_1
.end method

.method public constructor <init>(Lkdp;J)V
    .locals 4

    .prologue
    .line 344
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 345
    new-instance v0, Ldsf;

    invoke-direct {v0, p1}, Ldsf;-><init>(Lkdp;)V

    iput-object v0, p0, Ldqf;->c:Ldsf;

    .line 346
    iput-wide p2, p0, Ldqf;->d:J

    .line 347
    iget-object v0, p1, Lkdp;->f:Ljava/lang/Long;

    .line 7051
    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Laal;->a(Ljava/lang/Long;J)J

    move-result-wide v0

    .line 347
    iput-wide v0, p0, Ldqf;->e:J

    .line 348
    return-void
.end method

.method public constructor <init>(Lkdp;Ljxc;)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const-wide/16 v2, -0x1

    .line 355
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 356
    new-instance v0, Ldsf;

    invoke-direct {v0, p1}, Ldsf;-><init>(Lkdp;)V

    iput-object v0, p0, Ldqf;->c:Ldsf;

    .line 357
    iput-wide v2, p0, Ldqf;->d:J

    .line 358
    iget-object v0, p1, Lkdp;->f:Ljava/lang/Long;

    .line 8051
    invoke-static {v0, v4, v5}, Laal;->a(Ljava/lang/Long;J)J

    move-result-wide v0

    .line 358
    iput-wide v0, p0, Ldqf;->e:J

    .line 360
    if-eqz p2, :cond_0

    iget-object v0, p2, Ljxc;->c:Ljava/lang/Long;

    if-eqz v0, :cond_0

    iget-object v0, p2, Ljxc;->d:Ljava/lang/Long;

    if-eqz v0, :cond_0

    .line 362
    iget-object v0, p2, Ljxc;->c:Ljava/lang/Long;

    .line 9051
    invoke-static {v0, v4, v5}, Laal;->a(Ljava/lang/Long;J)J

    move-result-wide v0

    .line 362
    iput-wide v0, p0, Ldqf;->k:J

    .line 363
    iget-object v0, p2, Ljxc;->d:Ljava/lang/Long;

    .line 10051
    invoke-static {v0, v4, v5}, Laal;->a(Ljava/lang/Long;J)J

    move-result-wide v0

    .line 363
    iput-wide v0, p0, Ldqf;->l:J

    .line 368
    :goto_0
    return-void

    .line 365
    :cond_0
    iput-wide v2, p0, Ldqf;->k:J

    .line 366
    iput-wide v2, p0, Ldqf;->l:J

    goto :goto_0
.end method

.method public static a(ILdqf;)V
    .locals 8

    .prologue
    const-wide/16 v6, -0x1

    .line 5141
    invoke-virtual {p1}, Ldqf;->d()J

    move-result-wide v2

    .line 5142
    invoke-virtual {p1}, Ldqf;->e()J

    move-result-wide v4

    .line 16257
    sget-object v0, Ldvp;->o:Ldml;

    invoke-virtual {v0, p0}, Ldml;->b(I)Z

    move-result v0

    .line 5144
    if-eqz v0, :cond_0

    cmp-long v0, v2, v6

    if-eqz v0, :cond_0

    cmp-long v0, v4, v6

    if-eqz v0, :cond_0

    .line 5147
    new-instance v0, Lduu;

    .line 17036
    sget-object v1, Laal;->oJ:Landroid/content/Context;

    .line 5147
    invoke-direct {v0, v1}, Lduu;-><init>(Landroid/content/Context;)V

    move v1, p0

    .line 5148
    invoke-virtual/range {v0 .. v5}, Lduu;->a(IJJ)V

    .line 5150
    :cond_0
    return-void
.end method

.method public static a(Lbfd;Ldsf;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 275
    if-eqz p0, :cond_0

    .line 276
    invoke-virtual {p0}, Lbfd;->g()I

    move-result v0

    .line 5257
    sget-object v1, Ldvp;->o:Ldml;

    invoke-virtual {v1, v0}, Ldml;->b(I)Z

    move-result v0

    .line 276
    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 303
    :cond_0
    :goto_0
    return-void

    .line 281
    :cond_1
    iget v0, p1, Ldsf;->e:I

    sget v1, Ldsg;->b:I

    if-ne v0, v1, :cond_3

    .line 283
    const-string v1, "Babel"

    const-string v2, "Perform warm sync based on ClientSyncHint from the server for account "

    .line 284
    invoke-virtual {p0}, Lbfd;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lezi;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    new-array v2, v4, [Ljava/lang/Object;

    .line 283
    invoke-static {v1, v0, v2}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 287
    invoke-virtual {p0}, Lbfd;->g()I

    move-result v0

    sget-object v1, Lebq;->c:Lebq;

    iget-wide v2, p1, Ldsf;->f:J

    .line 286
    invoke-static {v0, v4, v1, v2, v3}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(IZLebq;J)V

    .line 291
    const/16 v0, 0x904

    invoke-static {p0, v0}, Laal;->a(Lbfd;I)V

    goto :goto_0

    .line 284
    :cond_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 293
    :cond_3
    iget v0, p1, Ldsf;->e:I

    sget v1, Ldsg;->d:I

    if-ne v0, v1, :cond_0

    .line 296
    const-string v1, "Babel"

    const-string v2, "Clear all the local hash state based on the server request for account "

    .line 297
    invoke-virtual {p0}, Lbfd;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lezi;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    new-array v2, v4, [Ljava/lang/Object;

    .line 296
    invoke-static {v1, v0, v2}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 298
    new-instance v0, Lduu;

    .line 6036
    sget-object v1, Laal;->oJ:Landroid/content/Context;

    .line 298
    invoke-direct {v0, v1}, Lduu;-><init>(Landroid/content/Context;)V

    .line 299
    invoke-virtual {p0}, Lbfd;->g()I

    move-result v1

    invoke-virtual {v0, v1}, Lduu;->c(I)V

    .line 300
    const/16 v0, 0x907

    invoke-static {p0, v0}, Laal;->a(Lbfd;I)V

    goto :goto_0

    .line 297
    :cond_4
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_2
.end method

.method protected static a(Lbfd;Ljava/lang/String;Lefr;)V
    .locals 6

    .prologue
    .line 421
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 422
    const-string v0, "from_hash_sync:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    .line 425
    if-eqz v0, :cond_1

    .line 426
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lefr;->b(I)V

    .line 427
    const/16 v0, 0x90d

    invoke-static {p0, v0}, Laal;->a(Lbfd;I)V

    .line 435
    :goto_0
    invoke-virtual {p0}, Lbfd;->g()I

    move-result v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const/16 v1, 0xa

    .line 11219
    new-instance v4, Lcsn;

    .line 12040
    invoke-direct {v4}, Lcsn;-><init>()V

    .line 437
    const/16 v5, 0x1e1

    .line 438
    invoke-virtual {v4, v5}, Lcsn;->a(I)Lcsn;

    move-result-object v4

    .line 439
    invoke-virtual {p2}, Lefr;->j()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcsn;->c(Ljava/lang/String;)Lcsn;

    move-result-object v4

    .line 440
    invoke-virtual {p2}, Lefr;->n()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcsn;->b(Ljava/lang/String;)Lcsn;

    move-result-object v4

    .line 441
    invoke-virtual {p2}, Lefr;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcsn;->a(Ljava/lang/String;)Lcsn;

    move-result-object v4

    .line 435
    invoke-static {v0, v2, v3, v1, v4}, Laen;->a(IJILcsn;)V

    .line 443
    :cond_0
    return-void

    .line 430
    :cond_1
    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Lefr;->b(I)V

    goto :goto_0
.end method

.method public static a(Liye;)Z
    .locals 1

    .prologue
    .line 402
    if-eqz p0, :cond_0

    iget-object v0, p0, Liye;->a:Lmhl;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Lkdp;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 395
    iget-object v2, p0, Lkdp;->a:Ljava/lang/Integer;

    .line 11043
    invoke-static {v2, v1}, Laal;->a(Ljava/lang/Integer;I)I

    move-result v2

    .line 396
    if-eq v2, v0, :cond_0

    if-eqz v2, :cond_0

    const/4 v3, 0x6

    if-eq v2, v3, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method protected static a([Ljzh;[Ljyc;)[Lcyx;
    .locals 11

    .prologue
    const/4 v10, 0x3

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v1, 0x0

    .line 3070
    if-nez p0, :cond_0

    move-object v0, v5

    .line 3148
    :goto_0
    return-object v0

    :cond_0
    move v0, v1

    move v2, v1

    .line 3081
    :goto_1
    array-length v3, p0

    if-ge v0, v3, :cond_b

    .line 3082
    aget-object v3, p0, v0

    iget-object v3, v3, Ljzh;->g:Ljava/lang/Boolean;

    if-eqz v3, :cond_1

    aget-object v3, p0, v0

    iget-object v3, v3, Ljzh;->g:Ljava/lang/Boolean;

    .line 14015
    invoke-static {v3, v1}, Laal;->a(Ljava/lang/Boolean;Z)Z

    move-result v3

    .line 3083
    if-nez v3, :cond_8

    .line 3091
    :cond_1
    aget-object v3, p0, v0

    iget-object v3, v3, Ljzh;->a:Ljava/lang/Integer;

    if-eqz v3, :cond_7

    aget-object v3, p0, v0

    iget-object v3, v3, Ljzh;->a:Ljava/lang/Integer;

    .line 14043
    invoke-static {v3, v1}, Laal;->a(Ljava/lang/Integer;I)I

    move-result v3

    .line 3092
    if-ne v3, v10, :cond_7

    .line 3095
    if-eqz p1, :cond_8

    move v3, v1

    .line 3096
    :goto_2
    array-length v4, p1

    if-ge v3, v4, :cond_8

    .line 3097
    aget-object v4, p1, v3

    if-eqz v4, :cond_4

    .line 3098
    aget-object v4, p1, v3

    iget-object v4, v4, Ljyc;->c:Ljxr;

    .line 3099
    :goto_3
    if-eqz v4, :cond_5

    .line 3100
    iget-object v4, v4, Ljxr;->l:[Ljxy;

    move-object v7, v4

    .line 3101
    :goto_4
    if-eqz v7, :cond_6

    move v4, v1

    .line 3102
    :goto_5
    array-length v8, v7

    if-ge v4, v8, :cond_6

    .line 3103
    aget-object v8, v7, v4

    iget-object v8, v8, Ljxy;->a:Lkcr;

    iget-object v8, v8, Lkcr;->b:Ljava/lang/String;

    aget-object v9, p0, v0

    iget-object v9, v9, Ljzh;->c:Lkcr;

    iget-object v9, v9, Lkcr;->b:Ljava/lang/String;

    invoke-static {v8, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_3

    aget-object v8, v7, v4

    iget-object v8, v8, Ljxy;->e:Llcf;

    if-eqz v8, :cond_3

    .line 3105
    aget-object v8, p0, v0

    iget-object v8, v8, Ljzh;->d:Ljzj;

    if-nez v8, :cond_2

    .line 3106
    aget-object v8, p0, v0

    new-instance v9, Ljzj;

    invoke-direct {v9}, Ljzj;-><init>()V

    iput-object v9, v8, Ljzh;->d:Ljzj;

    .line 3108
    :cond_2
    aget-object v8, p0, v0

    iget-object v8, v8, Ljzh;->d:Ljzj;

    new-array v9, v6, [Ljava/lang/String;

    iput-object v9, v8, Ljzj;->g:[Ljava/lang/String;

    .line 3109
    aget-object v8, p0, v0

    iget-object v8, v8, Ljzh;->d:Ljzj;

    iget-object v8, v8, Ljzj;->g:[Ljava/lang/String;

    aget-object v9, v7, v4

    iget-object v9, v9, Ljxy;->e:Llcf;

    iget-object v9, v9, Llcf;->a:Ljava/lang/String;

    aput-object v9, v8, v1

    .line 3102
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_4
    move-object v4, v5

    .line 3098
    goto :goto_3

    :cond_5
    move-object v7, v5

    .line 3100
    goto :goto_4

    .line 3096
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_7
    move v3, v1

    .line 3118
    :goto_6
    array-length v4, p0

    if-ge v3, v4, :cond_8

    .line 3119
    if-eq v3, v0, :cond_a

    aget-object v4, p0, v3

    if-eqz v4, :cond_a

    .line 3122
    aget-object v4, p0, v3

    iget-object v4, v4, Ljzh;->a:Ljava/lang/Integer;

    if-eqz v4, :cond_9

    aget-object v4, p0, v3

    iget-object v4, v4, Ljzh;->a:Ljava/lang/Integer;

    .line 15043
    invoke-static {v4, v1}, Laal;->a(Ljava/lang/Integer;I)I

    move-result v4

    .line 3123
    if-ne v4, v10, :cond_9

    move v4, v6

    .line 3125
    :goto_7
    if-eqz v4, :cond_a

    aget-object v4, p0, v0

    iget-object v4, v4, Ljzh;->c:Lkcr;

    iget-object v4, v4, Lkcr;->b:Ljava/lang/String;

    aget-object v7, p0, v3

    iget-object v7, v7, Ljzh;->c:Lkcr;

    iget-object v7, v7, Lkcr;->b:Ljava/lang/String;

    invoke-static {v4, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 3127
    aput-object v5, p0, v0

    .line 3128
    add-int/lit8 v2, v2, 0x1

    .line 3081
    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    :cond_9
    move v4, v1

    .line 3123
    goto :goto_7

    .line 3118
    :cond_a
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 3135
    :cond_b
    if-lez v2, :cond_e

    .line 3136
    array-length v0, p0

    sub-int/2addr v0, v2

    new-array v2, v0, [Ljzh;

    move v0, v1

    .line 3137
    :goto_8
    array-length v3, p0

    if-ge v0, v3, :cond_d

    .line 3138
    aget-object v3, p0, v0

    if-eqz v3, :cond_c

    .line 3139
    aget-object v3, p0, v0

    aput-object v3, v2, v1

    .line 3140
    add-int/lit8 v1, v1, 0x1

    .line 3137
    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_d
    move-object p0, v2

    .line 3147
    :cond_e
    invoke-static {p0, v5}, Laal;->a([Ljzh;Ldtt;)[Lcyx;

    move-result-object v0

    goto/16 :goto_0
.end method


# virtual methods
.method public a()Ldsf;
    .locals 1

    .prologue
    .line 306
    iget-object v0, p0, Ldqf;->c:Ldsf;

    return-object v0
.end method

.method public a(J)V
    .locals 1

    .prologue
    .line 5112
    iput-wide p1, p0, Ldqf;->h:J

    .line 5113
    return-void
.end method

.method public a(Lbfd;)V
    .locals 0

    .prologue
    .line 417
    return-void
.end method

.method public a(Lbfz;Ldyy;)V
    .locals 2

    .prologue
    .line 267
    const/4 v0, 0x1

    iput-boolean v0, p0, Ldqf;->f:Z

    .line 270
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lbfz;->g()Lbfd;

    move-result-object v0

    .line 271
    :goto_0
    iget-object v1, p0, Ldqf;->c:Ldsf;

    invoke-static {v0, v1}, Ldqf;->a(Lbfd;Ldsf;)V

    .line 272
    return-void

    .line 270
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Leff;)V
    .locals 0

    .prologue
    .line 406
    iput-object p1, p0, Ldqf;->b:Leff;

    .line 407
    return-void
.end method

.method public b()I
    .locals 1

    .prologue
    .line 371
    iget-object v0, p0, Ldqf;->b:Leff;

    invoke-interface {v0}, Leff;->c()I

    move-result v0

    return v0
.end method

.method public b(J)V
    .locals 1

    .prologue
    .line 5120
    iput-wide p1, p0, Ldqf;->i:J

    .line 5121
    return-void
.end method

.method public c()Leff;
    .locals 1

    .prologue
    .line 375
    iget-object v0, p0, Ldqf;->b:Leff;

    return-object v0
.end method

.method public c(J)V
    .locals 1

    .prologue
    .line 5128
    iput-wide p1, p0, Ldqf;->j:J

    .line 5129
    return-void
.end method

.method public d()J
    .locals 2

    .prologue
    .line 379
    iget-wide v0, p0, Ldqf;->k:J

    return-wide v0
.end method

.method public e()J
    .locals 2

    .prologue
    .line 383
    iget-wide v0, p0, Ldqf;->l:J

    return-wide v0
.end method

.method public f()[B
    .locals 1

    .prologue
    .line 388
    iget-object v0, p0, Ldqf;->m:[B

    if-nez v0, :cond_0

    .line 389
    invoke-static {p0}, Lefc;->a(Ldqf;)[B

    move-result-object v0

    iput-object v0, p0, Ldqf;->m:[B

    .line 391
    :cond_0
    iget-object v0, p0, Ldqf;->m:[B

    return-object v0
.end method

.method protected g()J
    .locals 4

    .prologue
    .line 13036
    sget-object v0, Laal;->oJ:Landroid/content/Context;

    .line 447
    const-class v1, Lbdp;

    .line 446
    invoke-static {v0, v1}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbdp;

    const-string v1, "babel_yieldtime"

    const-wide/16 v2, 0x7d0

    .line 447
    invoke-interface {v0, v1, v2, v3}, Lbdp;->a(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public h()J
    .locals 2

    .prologue
    .line 5116
    iget-wide v0, p0, Ldqf;->i:J

    return-wide v0
.end method

.method public i()J
    .locals 2

    .prologue
    .line 5124
    iget-wide v0, p0, Ldqf;->j:J

    return-wide v0
.end method

.method protected j()Lcqr;
    .locals 2

    .prologue
    .line 16036
    sget-object v0, Laal;->oJ:Landroid/content/Context;

    .line 5132
    const-class v1, Lcqs;

    invoke-static {v0, v1}, Lilh;->b(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcqs;

    .line 5134
    if-eqz v0, :cond_0

    .line 5135
    const/16 v1, 0x12

    invoke-interface {v0, v1}, Lcqs;->a(I)Lcqr;

    move-result-object v0

    .line 5136
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
