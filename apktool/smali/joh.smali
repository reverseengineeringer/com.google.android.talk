.class public final Ljoh;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljoh;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 581
    invoke-direct {p0}, Llyb;-><init>()V

    .line 1586
    iput-object v0, p0, Ljoh;->a:Ljava/lang/String;

    .line 1587
    iput-object v0, p0, Ljoh;->b:Ljava/lang/String;

    .line 1588
    iput-object v0, p0, Ljoh;->eD:Llyd;

    .line 1589
    const/4 v0, -0x1

    iput v0, p0, Ljoh;->eE:I

    .line 583
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 1624
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1625
    sparse-switch v0, :sswitch_data_0

    .line 1629
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1630
    :sswitch_0
    return-object p0

    .line 1635
    :sswitch_1
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljoh;->a:Ljava/lang/String;

    goto :goto_0

    .line 1639
    :sswitch_2
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljoh;->b:Ljava/lang/String;

    goto :goto_0

    .line 1625
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 596
    iget-object v0, p0, Ljoh;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 597
    const/4 v0, 0x1

    iget-object v1, p0, Ljoh;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 599
    :cond_0
    iget-object v0, p0, Ljoh;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 600
    const/4 v0, 0x2

    iget-object v1, p0, Ljoh;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 602
    :cond_1
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 603
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 607
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 608
    iget-object v1, p0, Ljoh;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 609
    const/4 v1, 0x1

    iget-object v2, p0, Ljoh;->a:Ljava/lang/String;

    .line 610
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 612
    :cond_0
    iget-object v1, p0, Ljoh;->b:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 613
    const/4 v1, 0x2

    iget-object v2, p0, Ljoh;->b:Ljava/lang/String;

    .line 614
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 616
    :cond_1
    return v0
.end method
