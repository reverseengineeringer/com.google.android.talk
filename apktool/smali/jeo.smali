.class public final Ljeo;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljeo;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljef;

.field public b:Ljava/lang/Long;

.field public c:Ljava/lang/Integer;

.field public d:Ljava/lang/Integer;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 4607
    invoke-direct {p0}, Llyb;-><init>()V

    .line 5612
    iput-object v0, p0, Ljeo;->a:Ljef;

    .line 5613
    iput-object v0, p0, Ljeo;->b:Ljava/lang/Long;

    .line 5614
    iput-object v0, p0, Ljeo;->c:Ljava/lang/Integer;

    .line 5615
    iput-object v0, p0, Ljeo;->d:Ljava/lang/Integer;

    .line 5616
    iput-object v0, p0, Ljeo;->e:Ljava/lang/String;

    .line 5617
    iput-object v0, p0, Ljeo;->f:Ljava/lang/String;

    .line 5618
    iput-object v0, p0, Ljeo;->eD:Llyd;

    .line 5619
    const/4 v0, -0x1

    iput v0, p0, Ljeo;->eE:I

    .line 4609
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 2

    .prologue
    .line 5678
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 5679
    sparse-switch v0, :sswitch_data_0

    .line 5683
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5684
    :sswitch_0
    return-object p0

    .line 5689
    :sswitch_1
    iget-object v0, p0, Ljeo;->a:Ljef;

    if-nez v0, :cond_1

    .line 5690
    new-instance v0, Ljef;

    invoke-direct {v0}, Ljef;-><init>()V

    iput-object v0, p0, Ljeo;->a:Ljef;

    .line 5692
    :cond_1
    iget-object v0, p0, Ljeo;->a:Ljef;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 5696
    :sswitch_2
    invoke-virtual {p1}, Llxy;->e()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Ljeo;->b:Ljava/lang/Long;

    goto :goto_0

    .line 5700
    :sswitch_3
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Ljeo;->c:Ljava/lang/Integer;

    goto :goto_0

    .line 5704
    :sswitch_4
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Ljeo;->d:Ljava/lang/Integer;

    goto :goto_0

    .line 5708
    :sswitch_5
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljeo;->e:Ljava/lang/String;

    goto :goto_0

    .line 5712
    :sswitch_6
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljeo;->f:Ljava/lang/String;

    goto :goto_0

    .line 5679
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 4

    .prologue
    .line 4626
    iget-object v0, p0, Ljeo;->a:Ljef;

    if-eqz v0, :cond_0

    .line 4627
    const/4 v0, 0x1

    iget-object v1, p0, Ljeo;->a:Ljef;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 4629
    :cond_0
    const/4 v0, 0x2

    iget-object v1, p0, Ljeo;->b:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Llxz;->b(IJ)V

    .line 4630
    iget-object v0, p0, Ljeo;->c:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 4631
    const/4 v0, 0x3

    iget-object v1, p0, Ljeo;->c:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 4633
    :cond_1
    iget-object v0, p0, Ljeo;->d:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 4634
    const/4 v0, 0x4

    iget-object v1, p0, Ljeo;->d:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 4636
    :cond_2
    iget-object v0, p0, Ljeo;->e:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 4637
    const/4 v0, 0x5

    iget-object v1, p0, Ljeo;->e:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 4639
    :cond_3
    iget-object v0, p0, Ljeo;->f:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 4640
    const/4 v0, 0x6

    iget-object v1, p0, Ljeo;->f:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 4642
    :cond_4
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 4643
    return-void
.end method

.method protected b()I
    .locals 4

    .prologue
    .line 4647
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 4648
    iget-object v1, p0, Ljeo;->a:Ljef;

    if-eqz v1, :cond_0

    .line 4649
    const/4 v1, 0x1

    iget-object v2, p0, Ljeo;->a:Ljef;

    .line 4650
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4652
    :cond_0
    const/4 v1, 0x2

    iget-object v2, p0, Ljeo;->b:Ljava/lang/Long;

    .line 4653
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Llxz;->e(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 4654
    iget-object v1, p0, Ljeo;->c:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 4655
    const/4 v1, 0x3

    iget-object v2, p0, Ljeo;->c:Ljava/lang/Integer;

    .line 4656
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 4658
    :cond_1
    iget-object v1, p0, Ljeo;->d:Ljava/lang/Integer;

    if-eqz v1, :cond_2

    .line 4659
    const/4 v1, 0x4

    iget-object v2, p0, Ljeo;->d:Ljava/lang/Integer;

    .line 4660
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 4662
    :cond_2
    iget-object v1, p0, Ljeo;->e:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 4663
    const/4 v1, 0x5

    iget-object v2, p0, Ljeo;->e:Ljava/lang/String;

    .line 4664
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4666
    :cond_3
    iget-object v1, p0, Ljeo;->f:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 4667
    const/4 v1, 0x6

    iget-object v2, p0, Ljeo;->f:Ljava/lang/String;

    .line 4668
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4670
    :cond_4
    return v0
.end method
