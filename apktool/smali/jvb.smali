.class public final Ljvb;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljvb;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/Boolean;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 5548
    invoke-direct {p0}, Llyb;-><init>()V

    .line 6553
    iput-object v0, p0, Ljvb;->a:Ljava/lang/String;

    .line 6554
    iput-object v0, p0, Ljvb;->b:Ljava/lang/String;

    .line 6555
    iput-object v0, p0, Ljvb;->c:Ljava/lang/Boolean;

    .line 6556
    iput-object v0, p0, Ljvb;->d:Ljava/lang/String;

    .line 6557
    iput-object v0, p0, Ljvb;->e:Ljava/lang/String;

    .line 6558
    iput-object v0, p0, Ljvb;->f:Ljava/lang/String;

    .line 6559
    iput-object v0, p0, Ljvb;->g:Ljava/lang/Integer;

    .line 6560
    iput-object v0, p0, Ljvb;->eD:Llyd;

    .line 6561
    const/4 v0, -0x1

    iput v0, p0, Ljvb;->eE:I

    .line 5550
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 6631
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 6632
    sparse-switch v0, :sswitch_data_0

    .line 6636
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 6637
    :sswitch_0
    return-object p0

    .line 6642
    :sswitch_1
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljvb;->a:Ljava/lang/String;

    goto :goto_0

    .line 6646
    :sswitch_2
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljvb;->b:Ljava/lang/String;

    goto :goto_0

    .line 6650
    :sswitch_3
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Ljvb;->c:Ljava/lang/Boolean;

    goto :goto_0

    .line 6654
    :sswitch_4
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljvb;->d:Ljava/lang/String;

    goto :goto_0

    .line 6658
    :sswitch_5
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljvb;->e:Ljava/lang/String;

    goto :goto_0

    .line 6662
    :sswitch_6
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljvb;->f:Ljava/lang/String;

    goto :goto_0

    .line 6666
    :sswitch_7
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 6667
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 6672
    :pswitch_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Ljvb;->g:Ljava/lang/Integer;

    goto :goto_0

    .line 6632
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x38 -> :sswitch_7
    .end sparse-switch

    .line 6667
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 5568
    iget-object v0, p0, Ljvb;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 5569
    const/4 v0, 0x1

    iget-object v1, p0, Ljvb;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 5571
    :cond_0
    iget-object v0, p0, Ljvb;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 5572
    const/4 v0, 0x2

    iget-object v1, p0, Ljvb;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 5574
    :cond_1
    iget-object v0, p0, Ljvb;->c:Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    .line 5575
    const/4 v0, 0x3

    iget-object v1, p0, Ljvb;->c:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 5577
    :cond_2
    iget-object v0, p0, Ljvb;->d:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 5578
    const/4 v0, 0x4

    iget-object v1, p0, Ljvb;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 5580
    :cond_3
    iget-object v0, p0, Ljvb;->e:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 5581
    const/4 v0, 0x5

    iget-object v1, p0, Ljvb;->e:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 5583
    :cond_4
    iget-object v0, p0, Ljvb;->f:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 5584
    const/4 v0, 0x6

    iget-object v1, p0, Ljvb;->f:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 5586
    :cond_5
    iget-object v0, p0, Ljvb;->g:Ljava/lang/Integer;

    if-eqz v0, :cond_6

    .line 5587
    const/4 v0, 0x7

    iget-object v1, p0, Ljvb;->g:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 5589
    :cond_6
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 5590
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 5594
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 5595
    iget-object v1, p0, Ljvb;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 5596
    const/4 v1, 0x1

    iget-object v2, p0, Ljvb;->a:Ljava/lang/String;

    .line 5597
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5599
    :cond_0
    iget-object v1, p0, Ljvb;->b:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 5600
    const/4 v1, 0x2

    iget-object v2, p0, Ljvb;->b:Ljava/lang/String;

    .line 5601
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5603
    :cond_1
    iget-object v1, p0, Ljvb;->c:Ljava/lang/Boolean;

    if-eqz v1, :cond_2

    .line 5604
    const/4 v1, 0x3

    iget-object v2, p0, Ljvb;->c:Ljava/lang/Boolean;

    .line 5605
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 6620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 5605
    add-int/2addr v0, v1

    .line 5607
    :cond_2
    iget-object v1, p0, Ljvb;->d:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 5608
    const/4 v1, 0x4

    iget-object v2, p0, Ljvb;->d:Ljava/lang/String;

    .line 5609
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5611
    :cond_3
    iget-object v1, p0, Ljvb;->e:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 5612
    const/4 v1, 0x5

    iget-object v2, p0, Ljvb;->e:Ljava/lang/String;

    .line 5613
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5615
    :cond_4
    iget-object v1, p0, Ljvb;->f:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 5616
    const/4 v1, 0x6

    iget-object v2, p0, Ljvb;->f:Ljava/lang/String;

    .line 5617
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5619
    :cond_5
    iget-object v1, p0, Ljvb;->g:Ljava/lang/Integer;

    if-eqz v1, :cond_6

    .line 5620
    const/4 v1, 0x7

    iget-object v2, p0, Ljvb;->g:Ljava/lang/Integer;

    .line 5621
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 5623
    :cond_6
    return v0
.end method
