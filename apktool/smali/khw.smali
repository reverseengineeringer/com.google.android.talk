.class public final Lkhw;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lkhw;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lkhf;

.field public b:Lkii;

.field public responseHeader:Lkdp;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2570
    invoke-direct {p0}, Llyb;-><init>()V

    .line 3575
    iput-object v0, p0, Lkhw;->responseHeader:Lkdp;

    .line 3576
    iput-object v0, p0, Lkhw;->a:Lkhf;

    .line 3577
    iput-object v0, p0, Lkhw;->b:Lkii;

    .line 3578
    iput-object v0, p0, Lkhw;->eD:Llyd;

    .line 3579
    const/4 v0, -0x1

    iput v0, p0, Lkhw;->eE:I

    .line 2572
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 3621
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 3622
    sparse-switch v0, :sswitch_data_0

    .line 3626
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3627
    :sswitch_0
    return-object p0

    .line 3632
    :sswitch_1
    iget-object v0, p0, Lkhw;->responseHeader:Lkdp;

    if-nez v0, :cond_1

    .line 3633
    new-instance v0, Lkdp;

    invoke-direct {v0}, Lkdp;-><init>()V

    iput-object v0, p0, Lkhw;->responseHeader:Lkdp;

    .line 3635
    :cond_1
    iget-object v0, p0, Lkhw;->responseHeader:Lkdp;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 3639
    :sswitch_2
    iget-object v0, p0, Lkhw;->a:Lkhf;

    if-nez v0, :cond_2

    .line 3640
    new-instance v0, Lkhf;

    invoke-direct {v0}, Lkhf;-><init>()V

    iput-object v0, p0, Lkhw;->a:Lkhf;

    .line 3642
    :cond_2
    iget-object v0, p0, Lkhw;->a:Lkhf;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 3646
    :sswitch_3
    iget-object v0, p0, Lkhw;->b:Lkii;

    if-nez v0, :cond_3

    .line 3647
    new-instance v0, Lkii;

    invoke-direct {v0}, Lkii;-><init>()V

    iput-object v0, p0, Lkhw;->b:Lkii;

    .line 3649
    :cond_3
    iget-object v0, p0, Lkhw;->b:Lkii;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 3622
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 2586
    iget-object v0, p0, Lkhw;->responseHeader:Lkdp;

    if-eqz v0, :cond_0

    .line 2587
    const/4 v0, 0x1

    iget-object v1, p0, Lkhw;->responseHeader:Lkdp;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 2589
    :cond_0
    iget-object v0, p0, Lkhw;->a:Lkhf;

    if-eqz v0, :cond_1

    .line 2590
    const/4 v0, 0x2

    iget-object v1, p0, Lkhw;->a:Lkhf;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 2592
    :cond_1
    iget-object v0, p0, Lkhw;->b:Lkii;

    if-eqz v0, :cond_2

    .line 2593
    const/4 v0, 0x3

    iget-object v1, p0, Lkhw;->b:Lkii;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 2595
    :cond_2
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 2596
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 2600
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 2601
    iget-object v1, p0, Lkhw;->responseHeader:Lkdp;

    if-eqz v1, :cond_0

    .line 2602
    const/4 v1, 0x1

    iget-object v2, p0, Lkhw;->responseHeader:Lkdp;

    .line 2603
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2605
    :cond_0
    iget-object v1, p0, Lkhw;->a:Lkhf;

    if-eqz v1, :cond_1

    .line 2606
    const/4 v1, 0x2

    iget-object v2, p0, Lkhw;->a:Lkhf;

    .line 2607
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2609
    :cond_1
    iget-object v1, p0, Lkhw;->b:Lkii;

    if-eqz v1, :cond_2

    .line 2610
    const/4 v1, 0x3

    iget-object v2, p0, Lkhw;->b:Lkii;

    .line 2611
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2613
    :cond_2
    return v0
.end method
