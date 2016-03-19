.class public final Lmfj;
.super Llvy;
.source "SourceFile"

# interfaces
.implements Llwr;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llvy",
        "<",
        "Lmfj;",
        "Llwa;",
        ">;",
        "Llwr;"
    }
.end annotation


# static fields
.field public static final d:Lmfj;

.field private static volatile q:Llwt;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Llwt",
            "<",
            "Lmfj;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J


# instance fields
.field private e:I

.field private f:Ljava/lang/String;

.field private g:D

.field private h:I

.field private i:Ljava/lang/String;

.field private j:I

.field private k:J

.field private l:D

.field private m:Lmdr;

.field private n:Z

.field private o:Llwj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Llwj",
            "<",
            "Lmfk;",
            ">;"
        }
    .end annotation
.end field

.field private p:B


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 2344
    new-instance v0, Lmfj;

    sget-object v1, Llwg;->e:Llvp;

    .line 13069
    sget-object v2, Llvt;->a:Llvt;

    .line 2348
    invoke-direct {v0, v1, v2}, Lmfj;-><init>(Llvp;Llvt;)V

    sput-object v0, Lmfj;->d:Lmfj;

    .line 2349
    return-void
.end method

.method private constructor <init>(Llvp;Llvt;)V
    .locals 8

    .prologue
    const/4 v3, 0x1

    const-wide/16 v6, 0x0

    const/4 v0, 0x0

    .line 679
    invoke-direct {p0}, Llvy;-><init>()V

    .line 2227
    const/4 v1, -0x1

    iput-byte v1, p0, Lmfj;->p:B

    .line 680
    const-string v1, ""

    iput-object v1, p0, Lmfj;->f:Ljava/lang/String;

    .line 681
    iput-wide v6, p0, Lmfj;->g:D

    .line 682
    iput v0, p0, Lmfj;->h:I

    .line 683
    const-string v1, ""

    iput-object v1, p0, Lmfj;->i:Ljava/lang/String;

    .line 684
    iput v0, p0, Lmfj;->j:I

    .line 685
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lmfj;->k:J

    .line 686
    iput-wide v6, p0, Lmfj;->l:D

    .line 687
    iput-boolean v0, p0, Lmfj;->n:Z

    .line 4020
    sget-object v1, Llwu;->b:Llwu;

    .line 688
    iput-object v1, p0, Lmfj;->o:Llwj;

    move v2, v0

    .line 691
    :cond_0
    :goto_0
    if-nez v2, :cond_4

    .line 692
    :try_start_0
    invoke-virtual {p1}, Llvp;->a()I

    move-result v0

    .line 693
    sparse-switch v0, :sswitch_data_0

    .line 698
    invoke-virtual {p0, v0, p1}, Lmfj;->a(ILlvp;)Z

    move-result v0

    if-nez v0, :cond_0

    move v2, v3

    .line 699
    goto :goto_0

    :sswitch_0
    move v2, v3

    .line 696
    goto :goto_0

    .line 704
    :sswitch_1
    iget v0, p0, Lmfj;->e:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lmfj;->e:I

    .line 705
    invoke-virtual {p1}, Llvp;->b()D

    move-result-wide v0

    iput-wide v0, p0, Lmfj;->g:D
    :try_end_0
    .catch Llwk; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 769
    :catch_0
    move-exception v0

    .line 770
    :try_start_1
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0, p0}, Llwk;->a(Llwp;)Llwk;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 776
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lmfj;->o:Llwj;

    invoke-interface {v1}, Llwj;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 777
    iget-object v1, p0, Lmfj;->o:Llwj;

    invoke-interface {v1}, Llwj;->b()V

    .line 779
    :cond_1
    invoke-virtual {p0}, Lmfj;->e()V

    throw v0

    .line 709
    :sswitch_2
    :try_start_2
    invoke-virtual {p1}, Llvp;->j()Ljava/lang/String;

    move-result-object v0

    .line 710
    iget v1, p0, Lmfj;->e:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lmfj;->e:I

    .line 711
    iput-object v0, p0, Lmfj;->i:Ljava/lang/String;
    :try_end_2
    .catch Llwk; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 771
    :catch_1
    move-exception v0

    .line 772
    :try_start_3
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Llwk;

    .line 774
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Llwk;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Llwk;->a(Llwp;)Llwk;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 715
    :sswitch_3
    :try_start_4
    iget v0, p0, Lmfj;->e:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lmfj;->e:I

    .line 716
    invoke-virtual {p1}, Llvp;->f()I

    move-result v0

    iput v0, p0, Lmfj;->j:I

    goto :goto_0

    .line 720
    :sswitch_4
    iget v0, p0, Lmfj;->e:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lmfj;->e:I

    .line 721
    invoke-virtual {p1}, Llvp;->e()J

    move-result-wide v0

    iput-wide v0, p0, Lmfj;->k:J

    goto :goto_0

    .line 725
    :sswitch_5
    iget v0, p0, Lmfj;->e:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lmfj;->e:I

    .line 726
    invoke-virtual {p1}, Llvp;->b()D

    move-result-wide v0

    iput-wide v0, p0, Lmfj;->l:D

    goto/16 :goto_0

    .line 730
    :sswitch_6
    const/4 v0, 0x0

    .line 731
    iget v1, p0, Lmfj;->e:I

    and-int/lit16 v1, v1, 0x80

    const/16 v4, 0x80

    if-ne v1, v4, :cond_6

    .line 732
    iget-object v0, p0, Lmfj;->m:Lmdr;

    invoke-virtual {v0}, Lmdr;->g()Llwa;

    move-result-object v0

    check-cast v0, Llwb;

    move-object v1, v0

    .line 4214
    :goto_1
    sget-object v0, Lmdr;->e:Lmdr;

    .line 734
    invoke-virtual {p1, v0, p2}, Llvp;->a(Llvy;Llvt;)Llvy;

    move-result-object v0

    check-cast v0, Lmdr;

    iput-object v0, p0, Lmfj;->m:Lmdr;

    .line 736
    if-eqz v1, :cond_2

    .line 737
    iget-object v0, p0, Lmfj;->m:Lmdr;

    invoke-virtual {v1, v0}, Llwb;->a(Llvy;)Llwa;

    .line 738
    invoke-virtual {v1}, Llwb;->l()Llwc;

    move-result-object v0

    check-cast v0, Lmdr;

    iput-object v0, p0, Lmfj;->m:Lmdr;

    .line 740
    :cond_2
    iget v0, p0, Lmfj;->e:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lmfj;->e:I

    goto/16 :goto_0

    .line 744
    :sswitch_7
    iget-object v0, p0, Lmfj;->o:Llwj;

    invoke-interface {v0}, Llwj;->a()Z

    move-result v0

    if-nez v0, :cond_3

    .line 4295
    new-instance v0, Llwu;

    invoke-direct {v0}, Llwu;-><init>()V

    .line 745
    iput-object v0, p0, Lmfj;->o:Llwj;

    .line 747
    :cond_3
    iget-object v0, p0, Lmfj;->o:Llwj;

    const/16 v1, 0x19

    .line 5199
    sget-object v4, Lmfk;->d:Lmfk;

    .line 747
    invoke-virtual {p1, v1, v4, p2}, Llvp;->a(ILlvy;Llvt;)Llvy;

    move-result-object v1

    invoke-interface {v0, v1}, Llwj;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 752
    :sswitch_8
    invoke-virtual {p1}, Llvp;->j()Ljava/lang/String;

    move-result-object v0

    .line 753
    iget v1, p0, Lmfj;->e:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lmfj;->e:I

    .line 754
    iput-object v0, p0, Lmfj;->f:Ljava/lang/String;

    goto/16 :goto_0

    .line 758
    :sswitch_9
    iget v0, p0, Lmfj;->e:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lmfj;->e:I

    .line 759
    invoke-virtual {p1}, Llvp;->i()Z

    move-result v0

    iput-boolean v0, p0, Lmfj;->n:Z

    goto/16 :goto_0

    .line 763
    :sswitch_a
    iget v0, p0, Lmfj;->e:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lmfj;->e:I

    .line 764
    invoke-virtual {p1}, Llvp;->f()I

    move-result v0

    iput v0, p0, Lmfj;->h:I
    :try_end_4
    .catch Llwk; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 776
    :cond_4
    iget-object v0, p0, Lmfj;->o:Llwj;

    invoke-interface {v0}, Llwj;->a()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 777
    iget-object v0, p0, Lmfj;->o:Llwj;

    invoke-interface {v0}, Llwj;->b()V

    .line 779
    :cond_5
    invoke-virtual {p0}, Lmfj;->e()V

    .line 780
    return-void

    :cond_6
    move-object v1, v0

    goto :goto_1

    .line 693
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x61 -> :sswitch_1
        0x6a -> :sswitch_2
        0xa8 -> :sswitch_3
        0xb0 -> :sswitch_4
        0xb9 -> :sswitch_5
        0xc2 -> :sswitch_6
        0xcb -> :sswitch_7
        0xda -> :sswitch_8
        0xf0 -> :sswitch_9
        0x128 -> :sswitch_a
    .end sparse-switch
.end method

.method private j()Z
    .locals 2

    .prologue
    .line 1267
    iget v0, p0, Lmfj;->e:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private k()Z
    .locals 2

    .prologue
    .line 1463
    iget v0, p0, Lmfj;->e:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private l()Lmdr;
    .locals 1

    .prologue
    .line 1469
    iget-object v0, p0, Lmfj;->m:Lmdr;

    if-nez v0, :cond_0

    .line 5214
    sget-object v0, Lmdr;->e:Lmdr;

    .line 1469
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lmfj;->m:Lmdr;

    goto :goto_0
.end method


# virtual methods
.method protected final a(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 2231
    sget-object v0, Lmfg;->a:[I

    add-int/lit8 v1, p1, -0x1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 2337
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 2233
    :pswitch_0
    new-instance p0, Lmfj;

    check-cast p2, Llvp;

    check-cast p3, Llvt;

    invoke-direct {p0, p2, p3}, Lmfj;-><init>(Llvp;Llvt;)V

    .line 2334
    :cond_0
    :goto_0
    return-object p0

    .line 2237
    :pswitch_1
    new-instance p0, Lmfj;

    sget-object v0, Llwg;->e:Llvp;

    .line 8069
    sget-object v1, Llvt;->a:Llvt;

    .line 2240
    invoke-direct {p0, v0, v1}, Lmfj;-><init>(Llvp;Llvt;)V

    goto :goto_0

    .line 2243
    :pswitch_2
    iget-byte v0, p0, Lmfj;->p:B

    .line 2244
    if-ne v0, v4, :cond_1

    sget-object p0, Lmfj;->d:Lmfj;

    goto :goto_0

    .line 2245
    :cond_1
    if-nez v0, :cond_2

    move-object p0, v3

    goto :goto_0

    .line 2247
    :cond_2
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    .line 2248
    invoke-direct {p0}, Lmfj;->j()Z

    move-result v0

    if-nez v0, :cond_4

    .line 2249
    if-eqz v5, :cond_3

    .line 2250
    iput-byte v2, p0, Lmfj;->p:B

    :cond_3
    move-object p0, v3

    .line 2252
    goto :goto_0

    .line 2254
    :cond_4
    invoke-direct {p0}, Lmfj;->k()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2255
    invoke-direct {p0}, Lmfj;->l()Lmdr;

    move-result-object v0

    invoke-virtual {v0}, Lmdr;->f()Z

    move-result v0

    if-nez v0, :cond_6

    .line 2256
    if-eqz v5, :cond_5

    .line 2257
    iput-byte v2, p0, Lmfj;->p:B

    :cond_5
    move-object p0, v3

    .line 2259
    goto :goto_0

    :cond_6
    move v1, v2

    .line 8557
    :goto_1
    iget-object v0, p0, Lmfj;->o:Llwj;

    invoke-interface {v0}, Llwj;->size()I

    move-result v0

    .line 2262
    if-ge v1, v0, :cond_9

    .line 8563
    iget-object v0, p0, Lmfj;->o:Llwj;

    invoke-interface {v0, v1}, Llwj;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmfk;

    .line 2263
    invoke-virtual {v0}, Lmfk;->f()Z

    move-result v0

    if-nez v0, :cond_8

    .line 2264
    if-eqz v5, :cond_7

    .line 2265
    iput-byte v2, p0, Lmfj;->p:B

    :cond_7
    move-object p0, v3

    .line 2267
    goto :goto_0

    .line 2262
    :cond_8
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 2270
    :cond_9
    if-eqz v5, :cond_a

    iput-byte v4, p0, Lmfj;->p:B

    .line 2271
    :cond_a
    sget-object p0, Lmfj;->d:Lmfj;

    goto :goto_0

    .line 2275
    :pswitch_3
    iget-object v0, p0, Lmfj;->o:Llwj;

    invoke-interface {v0}, Llwj;->b()V

    move-object p0, v3

    .line 2276
    goto :goto_0

    .line 2279
    :pswitch_4
    new-instance p0, Llwa;

    .line 8806
    invoke-direct {p0, v2}, Llwa;-><init>(B)V

    goto :goto_0

    .line 9352
    :pswitch_5
    sget-object v0, Lmfj;->d:Lmfj;

    .line 2282
    if-eq p2, v0, :cond_0

    .line 2283
    check-cast p2, Lmfj;

    .line 10216
    iget v0, p2, Lmfj;->e:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v4, :cond_16

    move v0, v4

    .line 2284
    :goto_2
    if-eqz v0, :cond_b

    .line 2285
    iget v0, p0, Lmfj;->e:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lmfj;->e:I

    .line 2286
    iget-object v0, p2, Lmfj;->f:Ljava/lang/String;

    iput-object v0, p0, Lmfj;->f:Ljava/lang/String;

    .line 2288
    :cond_b
    invoke-direct {p2}, Lmfj;->j()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 10273
    iget-wide v0, p2, Lmfj;->g:D

    .line 10279
    iget v3, p0, Lmfj;->e:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p0, Lmfj;->e:I

    .line 10280
    iput-wide v0, p0, Lmfj;->g:D

    .line 10296
    :cond_c
    iget v0, p2, Lmfj;->e:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_17

    move v0, v4

    .line 2291
    :goto_3
    if-eqz v0, :cond_d

    .line 10302
    iget v0, p2, Lmfj;->h:I

    .line 10308
    iget v1, p0, Lmfj;->e:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lmfj;->e:I

    .line 10309
    iput v0, p0, Lmfj;->h:I

    .line 10325
    :cond_d
    iget v0, p2, Lmfj;->e:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_18

    move v0, v4

    .line 2294
    :goto_4
    if-eqz v0, :cond_e

    .line 2295
    iget v0, p0, Lmfj;->e:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lmfj;->e:I

    .line 2296
    iget-object v0, p2, Lmfj;->i:Ljava/lang/String;

    iput-object v0, p0, Lmfj;->i:Ljava/lang/String;

    .line 10376
    :cond_e
    iget v0, p2, Lmfj;->e:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_19

    move v0, v4

    .line 2298
    :goto_5
    if-eqz v0, :cond_f

    .line 10382
    iget v0, p2, Lmfj;->j:I

    .line 10388
    iget v1, p0, Lmfj;->e:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Lmfj;->e:I

    .line 10389
    iput v0, p0, Lmfj;->j:I

    .line 10405
    :cond_f
    iget v0, p2, Lmfj;->e:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_1a

    move v0, v4

    .line 2301
    :goto_6
    if-eqz v0, :cond_10

    .line 10411
    iget-wide v0, p2, Lmfj;->k:J

    .line 10417
    iget v3, p0, Lmfj;->e:I

    or-int/lit8 v3, v3, 0x20

    iput v3, p0, Lmfj;->e:I

    .line 10418
    iput-wide v0, p0, Lmfj;->k:J

    .line 10434
    :cond_10
    iget v0, p2, Lmfj;->e:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_1b

    move v0, v4

    .line 2304
    :goto_7
    if-eqz v0, :cond_11

    .line 10440
    iget-wide v0, p2, Lmfj;->l:D

    .line 10446
    iget v3, p0, Lmfj;->e:I

    or-int/lit8 v3, v3, 0x40

    iput v3, p0, Lmfj;->e:I

    .line 10447
    iput-wide v0, p0, Lmfj;->l:D

    .line 2307
    :cond_11
    invoke-direct {p2}, Lmfj;->k()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 2308
    invoke-direct {p2}, Lmfj;->l()Lmdr;

    move-result-object v1

    .line 10493
    iget-object v0, p0, Lmfj;->m:Lmdr;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lmfj;->m:Lmdr;

    .line 11214
    sget-object v3, Lmdr;->e:Lmdr;

    .line 10494
    if-eq v0, v3, :cond_1c

    .line 10495
    iget-object v3, p0, Lmfj;->m:Lmdr;

    .line 12123
    sget-object v0, Lmdr;->e:Lmdr;

    invoke-virtual {v0}, Lmdr;->g()Llwa;

    move-result-object v0

    check-cast v0, Llwb;

    invoke-virtual {v0, v3}, Llwb;->a(Llvy;)Llwa;

    move-result-object v0

    check-cast v0, Llwb;

    .line 10496
    invoke-virtual {v0, v1}, Llwb;->a(Llvy;)Llwa;

    move-result-object v0

    check-cast v0, Llwb;

    invoke-virtual {v0}, Llwb;->l()Llwc;

    move-result-object v0

    check-cast v0, Lmdr;

    iput-object v0, p0, Lmfj;->m:Lmdr;

    .line 10500
    :goto_8
    iget v0, p0, Lmfj;->e:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lmfj;->e:I

    .line 12515
    :cond_12
    iget v0, p2, Lmfj;->e:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_13

    move v2, v4

    .line 2310
    :cond_13
    if-eqz v2, :cond_14

    .line 12521
    iget-boolean v0, p2, Lmfj;->n:Z

    .line 12527
    iget v1, p0, Lmfj;->e:I

    or-int/lit16 v1, v1, 0x100

    iput v1, p0, Lmfj;->e:I

    .line 12528
    iput-boolean v0, p0, Lmfj;->n:Z

    .line 2313
    :cond_14
    iget-object v0, p2, Lmfj;->o:Llwj;

    invoke-interface {v0}, Llwj;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_15

    .line 2314
    iget-object v0, p0, Lmfj;->o:Llwj;

    invoke-interface {v0}, Llwj;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 2315
    iget-object v0, p2, Lmfj;->o:Llwj;

    iput-object v0, p0, Lmfj;->o:Llwj;

    .line 2321
    :cond_15
    :goto_9
    iget-object v0, p2, Lmfj;->b:Llxf;

    invoke-virtual {p0, v0}, Lmfj;->a(Llxf;)V

    goto/16 :goto_0

    :cond_16
    move v0, v2

    .line 10216
    goto/16 :goto_2

    :cond_17
    move v0, v2

    .line 10296
    goto/16 :goto_3

    :cond_18
    move v0, v2

    .line 10325
    goto/16 :goto_4

    :cond_19
    move v0, v2

    .line 10376
    goto/16 :goto_5

    :cond_1a
    move v0, v2

    .line 10405
    goto/16 :goto_6

    :cond_1b
    move v0, v2

    .line 10434
    goto/16 :goto_7

    .line 10498
    :cond_1c
    iput-object v1, p0, Lmfj;->m:Lmdr;

    goto :goto_8

    .line 12573
    :cond_1d
    iget-object v0, p0, Lmfj;->o:Llwj;

    invoke-interface {v0}, Llwj;->a()Z

    move-result v0

    if-nez v0, :cond_1e

    .line 12574
    iget-object v0, p0, Lmfj;->o:Llwj;

    invoke-static {v0}, Lmfj;->a(Ljava/util/List;)Llwj;

    move-result-object v0

    iput-object v0, p0, Lmfj;->o:Llwj;

    .line 2318
    :cond_1e
    iget-object v0, p0, Lmfj;->o:Llwj;

    iget-object v1, p2, Lmfj;->o:Llwj;

    invoke-interface {v0, v1}, Llwj;->addAll(Ljava/util/Collection;)Z

    goto :goto_9

    .line 2325
    :pswitch_6
    sget-object p0, Lmfj;->d:Lmfj;

    goto/16 :goto_0

    .line 2328
    :pswitch_7
    sget-object v0, Lmfj;->q:Llwt;

    if-nez v0, :cond_20

    const-class v1, Lmfj;

    monitor-enter v1

    .line 2329
    :try_start_0
    sget-object v0, Lmfj;->q:Llwt;

    if-nez v0, :cond_1f

    .line 2330
    new-instance v0, Llvi;

    sget-object v2, Lmfj;->d:Lmfj;

    invoke-direct {v0, v2}, Llvi;-><init>(Llvy;)V

    sput-object v0, Lmfj;->q:Llwt;

    .line 2332
    :cond_1f
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2334
    :cond_20
    sget-object p0, Lmfj;->q:Llwt;

    goto/16 :goto_0

    .line 2332
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 2231
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public a(Llvq;)V
    .locals 4

    .prologue
    .line 1659
    iget v0, p0, Lmfj;->e:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1660
    const/16 v0, 0xc

    iget-wide v2, p0, Lmfj;->g:D

    invoke-virtual {p1, v0, v2, v3}, Llvq;->a(ID)V

    .line 1662
    :cond_0
    iget v0, p0, Lmfj;->e:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    .line 1663
    const/16 v0, 0xd

    .line 5331
    iget-object v1, p0, Lmfj;->i:Ljava/lang/String;

    .line 1663
    invoke-virtual {p1, v0, v1}, Llvq;->a(ILjava/lang/String;)V

    .line 1665
    :cond_1
    iget v0, p0, Lmfj;->e:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_2

    .line 1666
    const/16 v0, 0x15

    iget v1, p0, Lmfj;->j:I

    invoke-virtual {p1, v0, v1}, Llvq;->b(II)V

    .line 1668
    :cond_2
    iget v0, p0, Lmfj;->e:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_3

    .line 1669
    const/16 v0, 0x16

    iget-wide v2, p0, Lmfj;->k:J

    invoke-virtual {p1, v0, v2, v3}, Llvq;->a(IJ)V

    .line 1671
    :cond_3
    iget v0, p0, Lmfj;->e:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_4

    .line 1672
    const/16 v0, 0x17

    iget-wide v2, p0, Lmfj;->l:D

    invoke-virtual {p1, v0, v2, v3}, Llvq;->a(ID)V

    .line 1674
    :cond_4
    iget v0, p0, Lmfj;->e:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_5

    .line 1675
    const/16 v0, 0x18

    invoke-direct {p0}, Lmfj;->l()Lmdr;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Llvq;->a(ILlwp;)V

    .line 1677
    :cond_5
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lmfj;->o:Llwj;

    invoke-interface {v0}, Llwj;->size()I

    move-result v0

    if-ge v1, v0, :cond_6

    .line 1678
    const/16 v2, 0x19

    iget-object v0, p0, Lmfj;->o:Llwj;

    invoke-interface {v0, v1}, Llwj;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llwp;

    invoke-virtual {p1, v2, v0}, Llvq;->e(ILlwp;)V

    .line 1677
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1680
    :cond_6
    iget v0, p0, Lmfj;->e:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_7

    .line 1681
    const/16 v0, 0x1b

    .line 6222
    iget-object v1, p0, Lmfj;->f:Ljava/lang/String;

    .line 1681
    invoke-virtual {p1, v0, v1}, Llvq;->a(ILjava/lang/String;)V

    .line 1683
    :cond_7
    iget v0, p0, Lmfj;->e:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_8

    .line 1684
    const/16 v0, 0x1e

    iget-boolean v1, p0, Lmfj;->n:Z

    invoke-virtual {p1, v0, v1}, Llvq;->a(IZ)V

    .line 1686
    :cond_8
    iget v0, p0, Lmfj;->e:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_9

    .line 1687
    const/16 v0, 0x25

    iget v1, p0, Lmfj;->h:I

    invoke-virtual {p1, v0, v1}, Llvq;->b(II)V

    .line 1689
    :cond_9
    iget-object v0, p0, Lmfj;->b:Llxf;

    invoke-virtual {v0, p1}, Llxf;->a(Llvq;)V

    .line 1690
    return-void
.end method

.method public m()I
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 1693
    iget v0, p0, Lmfj;->c:I

    .line 1694
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 1739
    :goto_0
    return v0

    .line 1697
    :cond_0
    iget v0, p0, Lmfj;->e:I

    and-int/lit8 v0, v0, 0x2

    const/4 v2, 0x2

    if-ne v0, v2, :cond_a

    .line 1698
    const/16 v0, 0xc

    .line 1699
    invoke-static {v0}, Llvq;->j(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 1701
    :goto_1
    iget v2, p0, Lmfj;->e:I

    and-int/lit8 v2, v2, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_1

    .line 1702
    const/16 v2, 0xd

    .line 6331
    iget-object v3, p0, Lmfj;->i:Ljava/lang/String;

    .line 1703
    invoke-static {v2, v3}, Llvq;->b(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1705
    :cond_1
    iget v2, p0, Lmfj;->e:I

    and-int/lit8 v2, v2, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_2

    .line 1706
    const/16 v2, 0x15

    iget v3, p0, Lmfj;->j:I

    .line 1707
    invoke-static {v2, v3}, Llvq;->d(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 1709
    :cond_2
    iget v2, p0, Lmfj;->e:I

    and-int/lit8 v2, v2, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_3

    .line 1710
    const/16 v2, 0x16

    iget-wide v4, p0, Lmfj;->k:J

    .line 1711
    invoke-static {v2, v4, v5}, Llvq;->d(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 1713
    :cond_3
    iget v2, p0, Lmfj;->e:I

    and-int/lit8 v2, v2, 0x40

    const/16 v3, 0x40

    if-ne v2, v3, :cond_4

    .line 1714
    const/16 v2, 0x17

    .line 1715
    invoke-static {v2}, Llvq;->j(I)I

    move-result v2

    add-int/2addr v0, v2

    .line 1717
    :cond_4
    iget v2, p0, Lmfj;->e:I

    and-int/lit16 v2, v2, 0x80

    const/16 v3, 0x80

    if-ne v2, v3, :cond_5

    .line 1718
    const/16 v2, 0x18

    .line 1719
    invoke-direct {p0}, Lmfj;->l()Lmdr;

    move-result-object v3

    invoke-static {v2, v3}, Llvq;->c(ILlwp;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_5
    move v2, v0

    .line 1721
    :goto_2
    iget-object v0, p0, Lmfj;->o:Llwj;

    invoke-interface {v0}, Llwj;->size()I

    move-result v0

    if-ge v1, v0, :cond_6

    .line 1722
    const/16 v3, 0x19

    iget-object v0, p0, Lmfj;->o:Llwj;

    .line 1723
    invoke-interface {v0, v1}, Llwj;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llwp;

    invoke-static {v3, v0}, Llvq;->f(ILlwp;)I

    move-result v0

    add-int/2addr v0, v2

    .line 1721
    add-int/lit8 v1, v1, 0x1

    move v2, v0

    goto :goto_2

    .line 1725
    :cond_6
    iget v0, p0, Lmfj;->e:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_7

    .line 1726
    const/16 v0, 0x1b

    .line 7222
    iget-object v1, p0, Lmfj;->f:Ljava/lang/String;

    .line 1727
    invoke-static {v0, v1}, Llvq;->b(ILjava/lang/String;)I

    move-result v0

    add-int/2addr v2, v0

    .line 1729
    :cond_7
    iget v0, p0, Lmfj;->e:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_8

    .line 1730
    const/16 v0, 0x1e

    .line 1731
    invoke-static {v0}, Llvq;->k(I)I

    move-result v0

    add-int/2addr v2, v0

    .line 1733
    :cond_8
    iget v0, p0, Lmfj;->e:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_9

    .line 1734
    const/16 v0, 0x25

    iget v1, p0, Lmfj;->h:I

    .line 1735
    invoke-static {v0, v1}, Llvq;->d(II)I

    move-result v0

    add-int/2addr v2, v0

    .line 1737
    :cond_9
    iget-object v0, p0, Lmfj;->b:Llxf;

    invoke-virtual {v0}, Llxf;->b()I

    move-result v0

    add-int/2addr v0, v2

    .line 1738
    iput v0, p0, Lmfj;->c:I

    goto/16 :goto_0

    :cond_a
    move v0, v1

    goto/16 :goto_1
.end method
