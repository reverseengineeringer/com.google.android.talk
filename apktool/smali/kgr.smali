.class public final Lkgr;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lkgr;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Lkii;

.field public requestHeader:Lkdo;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2602
    invoke-direct {p0}, Llyb;-><init>()V

    .line 3607
    iput-object v0, p0, Lkgr;->requestHeader:Lkdo;

    .line 3608
    iput-object v0, p0, Lkgr;->a:Ljava/lang/String;

    .line 3609
    iput-object v0, p0, Lkgr;->b:Ljava/lang/String;

    .line 3610
    iput-object v0, p0, Lkgr;->c:Lkii;

    .line 3611
    iput-object v0, p0, Lkgr;->eD:Llyd;

    .line 3612
    const/4 v0, -0x1

    iput v0, p0, Lkgr;->eE:I

    .line 2604
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 3661
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 3662
    sparse-switch v0, :sswitch_data_0

    .line 3666
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3667
    :sswitch_0
    return-object p0

    .line 3672
    :sswitch_1
    iget-object v0, p0, Lkgr;->requestHeader:Lkdo;

    if-nez v0, :cond_1

    .line 3673
    new-instance v0, Lkdo;

    invoke-direct {v0}, Lkdo;-><init>()V

    iput-object v0, p0, Lkgr;->requestHeader:Lkdo;

    .line 3675
    :cond_1
    iget-object v0, p0, Lkgr;->requestHeader:Lkdo;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 3679
    :sswitch_2
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lkgr;->a:Ljava/lang/String;

    goto :goto_0

    .line 3683
    :sswitch_3
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lkgr;->b:Ljava/lang/String;

    goto :goto_0

    .line 3687
    :sswitch_4
    iget-object v0, p0, Lkgr;->c:Lkii;

    if-nez v0, :cond_2

    .line 3688
    new-instance v0, Lkii;

    invoke-direct {v0}, Lkii;-><init>()V

    iput-object v0, p0, Lkgr;->c:Lkii;

    .line 3690
    :cond_2
    iget-object v0, p0, Lkgr;->c:Lkii;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 3662
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 2619
    iget-object v0, p0, Lkgr;->requestHeader:Lkdo;

    if-eqz v0, :cond_0

    .line 2620
    const/4 v0, 0x1

    iget-object v1, p0, Lkgr;->requestHeader:Lkdo;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 2622
    :cond_0
    iget-object v0, p0, Lkgr;->a:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 2623
    const/4 v0, 0x2

    iget-object v1, p0, Lkgr;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 2625
    :cond_1
    iget-object v0, p0, Lkgr;->b:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 2626
    const/4 v0, 0x3

    iget-object v1, p0, Lkgr;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 2628
    :cond_2
    iget-object v0, p0, Lkgr;->c:Lkii;

    if-eqz v0, :cond_3

    .line 2629
    const/4 v0, 0x4

    iget-object v1, p0, Lkgr;->c:Lkii;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 2631
    :cond_3
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 2632
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 2636
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 2637
    iget-object v1, p0, Lkgr;->requestHeader:Lkdo;

    if-eqz v1, :cond_0

    .line 2638
    const/4 v1, 0x1

    iget-object v2, p0, Lkgr;->requestHeader:Lkdo;

    .line 2639
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2641
    :cond_0
    iget-object v1, p0, Lkgr;->a:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 2642
    const/4 v1, 0x2

    iget-object v2, p0, Lkgr;->a:Ljava/lang/String;

    .line 2643
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2645
    :cond_1
    iget-object v1, p0, Lkgr;->b:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 2646
    const/4 v1, 0x3

    iget-object v2, p0, Lkgr;->b:Ljava/lang/String;

    .line 2647
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2649
    :cond_2
    iget-object v1, p0, Lkgr;->c:Lkii;

    if-eqz v1, :cond_3

    .line 2650
    const/4 v1, 0x4

    iget-object v2, p0, Lkgr;->c:Lkii;

    .line 2651
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2653
    :cond_3
    return v0
.end method
