.class public final Llnr;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Llnr;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/Boolean;

.field public c:Ljava/lang/Long;

.field public d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2448
    invoke-direct {p0}, Llyb;-><init>()V

    .line 3453
    iput-object v0, p0, Llnr;->a:Ljava/lang/String;

    .line 3454
    iput-object v0, p0, Llnr;->b:Ljava/lang/Boolean;

    .line 3455
    iput-object v0, p0, Llnr;->c:Ljava/lang/Long;

    .line 3456
    iput-object v0, p0, Llnr;->d:Ljava/lang/String;

    .line 3457
    iput-object v0, p0, Llnr;->eD:Llyd;

    .line 3458
    const/4 v0, -0x1

    iput v0, p0, Llnr;->eE:I

    .line 2450
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 2

    .prologue
    .line 4507
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 4508
    sparse-switch v0, :sswitch_data_0

    .line 4512
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4513
    :sswitch_0
    return-object p0

    .line 4518
    :sswitch_1
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Llnr;->a:Ljava/lang/String;

    goto :goto_0

    .line 4522
    :sswitch_2
    invoke-virtual {p1}, Llxy;->e()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Llnr;->c:Ljava/lang/Long;

    goto :goto_0

    .line 4526
    :sswitch_3
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Llnr;->d:Ljava/lang/String;

    goto :goto_0

    .line 4530
    :sswitch_4
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Llnr;->b:Ljava/lang/Boolean;

    goto :goto_0

    .line 4508
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
        0x20 -> :sswitch_4
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 4

    .prologue
    .line 2465
    iget-object v0, p0, Llnr;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2466
    const/4 v0, 0x1

    iget-object v1, p0, Llnr;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 2468
    :cond_0
    iget-object v0, p0, Llnr;->c:Ljava/lang/Long;

    if-eqz v0, :cond_1

    .line 2469
    const/4 v0, 0x2

    iget-object v1, p0, Llnr;->c:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Llxz;->b(IJ)V

    .line 2471
    :cond_1
    iget-object v0, p0, Llnr;->d:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 2472
    const/4 v0, 0x3

    iget-object v1, p0, Llnr;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 2474
    :cond_2
    iget-object v0, p0, Llnr;->b:Ljava/lang/Boolean;

    if-eqz v0, :cond_3

    .line 2475
    const/4 v0, 0x4

    iget-object v1, p0, Llnr;->b:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 2477
    :cond_3
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 2478
    return-void
.end method

.method protected b()I
    .locals 4

    .prologue
    .line 2482
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 2483
    iget-object v1, p0, Llnr;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2484
    const/4 v1, 0x1

    iget-object v2, p0, Llnr;->a:Ljava/lang/String;

    .line 2485
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2487
    :cond_0
    iget-object v1, p0, Llnr;->c:Ljava/lang/Long;

    if-eqz v1, :cond_1

    .line 2488
    const/4 v1, 0x2

    iget-object v2, p0, Llnr;->c:Ljava/lang/Long;

    .line 2489
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Llxz;->e(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 2491
    :cond_1
    iget-object v1, p0, Llnr;->d:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 2492
    const/4 v1, 0x3

    iget-object v2, p0, Llnr;->d:Ljava/lang/String;

    .line 2493
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2495
    :cond_2
    iget-object v1, p0, Llnr;->b:Ljava/lang/Boolean;

    if-eqz v1, :cond_3

    .line 2496
    const/4 v1, 0x4

    iget-object v2, p0, Llnr;->b:Ljava/lang/Boolean;

    .line 2497
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 3620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 2497
    add-int/2addr v0, v1

    .line 2499
    :cond_3
    return v0
.end method
