.class public final Lixy;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lixy;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Lixz;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 618
    invoke-direct {p0}, Llyb;-><init>()V

    .line 1623
    iput-object v0, p0, Lixy;->a:Ljava/lang/String;

    .line 1624
    iput-object v0, p0, Lixy;->b:Lixz;

    .line 1625
    iput-object v0, p0, Lixy;->eD:Llyd;

    .line 1626
    const/4 v0, -0x1

    iput v0, p0, Lixy;->eE:I

    .line 620
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 1661
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1662
    sparse-switch v0, :sswitch_data_0

    .line 1666
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1667
    :sswitch_0
    return-object p0

    .line 1672
    :sswitch_1
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lixy;->a:Ljava/lang/String;

    goto :goto_0

    .line 1676
    :sswitch_2
    iget-object v0, p0, Lixy;->b:Lixz;

    if-nez v0, :cond_1

    .line 1677
    new-instance v0, Lixz;

    invoke-direct {v0}, Lixz;-><init>()V

    iput-object v0, p0, Lixy;->b:Lixz;

    .line 1679
    :cond_1
    iget-object v0, p0, Lixy;->b:Lixz;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1662
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
    .line 633
    iget-object v0, p0, Lixy;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 634
    const/4 v0, 0x1

    iget-object v1, p0, Lixy;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 636
    :cond_0
    iget-object v0, p0, Lixy;->b:Lixz;

    if-eqz v0, :cond_1

    .line 637
    const/4 v0, 0x2

    iget-object v1, p0, Lixy;->b:Lixz;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 639
    :cond_1
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 640
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 644
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 645
    iget-object v1, p0, Lixy;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 646
    const/4 v1, 0x1

    iget-object v2, p0, Lixy;->a:Ljava/lang/String;

    .line 647
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 649
    :cond_0
    iget-object v1, p0, Lixy;->b:Lixz;

    if-eqz v1, :cond_1

    .line 650
    const/4 v1, 0x2

    iget-object v2, p0, Lixy;->b:Lixz;

    .line 651
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 653
    :cond_1
    return v0
.end method
