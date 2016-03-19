.class public final Llul;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Llul;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/Float;

.field public c:Ljava/lang/Float;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/Integer;

.field public f:Ljava/lang/Integer;

.field public g:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 5693
    invoke-direct {p0}, Llyb;-><init>()V

    .line 6698
    iput-object v0, p0, Llul;->a:Ljava/lang/String;

    .line 6699
    iput-object v0, p0, Llul;->b:Ljava/lang/Float;

    .line 6700
    iput-object v0, p0, Llul;->c:Ljava/lang/Float;

    .line 6701
    iput-object v0, p0, Llul;->d:Ljava/lang/String;

    .line 6702
    iput-object v0, p0, Llul;->e:Ljava/lang/Integer;

    .line 6703
    iput-object v0, p0, Llul;->f:Ljava/lang/Integer;

    .line 6704
    iput-object v0, p0, Llul;->g:Ljava/lang/String;

    .line 6705
    iput-object v0, p0, Llul;->eD:Llyd;

    .line 6706
    const/4 v0, -0x1

    iput v0, p0, Llul;->eE:I

    .line 5695
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 8776
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 8777
    sparse-switch v0, :sswitch_data_0

    .line 8781
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 8782
    :sswitch_0
    return-object p0

    .line 8787
    :sswitch_1
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Llul;->a:Ljava/lang/String;

    goto :goto_0

    .line 8791
    :sswitch_2
    invoke-virtual {p1}, Llxy;->c()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Llul;->b:Ljava/lang/Float;

    goto :goto_0

    .line 8795
    :sswitch_3
    invoke-virtual {p1}, Llxy;->c()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Llul;->c:Ljava/lang/Float;

    goto :goto_0

    .line 8799
    :sswitch_4
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Llul;->d:Ljava/lang/String;

    goto :goto_0

    .line 8803
    :sswitch_5
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Llul;->e:Ljava/lang/Integer;

    goto :goto_0

    .line 8807
    :sswitch_6
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Llul;->f:Ljava/lang/Integer;

    goto :goto_0

    .line 8811
    :sswitch_7
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Llul;->g:Ljava/lang/String;

    goto :goto_0

    .line 8777
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x15 -> :sswitch_2
        0x1d -> :sswitch_3
        0x22 -> :sswitch_4
        0x28 -> :sswitch_5
        0x30 -> :sswitch_6
        0x3a -> :sswitch_7
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 5713
    iget-object v0, p0, Llul;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 5714
    const/4 v0, 0x1

    iget-object v1, p0, Llul;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 5716
    :cond_0
    iget-object v0, p0, Llul;->b:Ljava/lang/Float;

    if-eqz v0, :cond_1

    .line 5717
    const/4 v0, 0x2

    iget-object v1, p0, Llul;->b:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IF)V

    .line 5719
    :cond_1
    iget-object v0, p0, Llul;->c:Ljava/lang/Float;

    if-eqz v0, :cond_2

    .line 5720
    const/4 v0, 0x3

    iget-object v1, p0, Llul;->c:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IF)V

    .line 5722
    :cond_2
    iget-object v0, p0, Llul;->d:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 5723
    const/4 v0, 0x4

    iget-object v1, p0, Llul;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 5725
    :cond_3
    iget-object v0, p0, Llul;->e:Ljava/lang/Integer;

    if-eqz v0, :cond_4

    .line 5726
    const/4 v0, 0x5

    iget-object v1, p0, Llul;->e:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 5728
    :cond_4
    iget-object v0, p0, Llul;->f:Ljava/lang/Integer;

    if-eqz v0, :cond_5

    .line 5729
    const/4 v0, 0x6

    iget-object v1, p0, Llul;->f:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 5731
    :cond_5
    iget-object v0, p0, Llul;->g:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 5732
    const/4 v0, 0x7

    iget-object v1, p0, Llul;->g:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 5734
    :cond_6
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 5735
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 5739
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 5740
    iget-object v1, p0, Llul;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 5741
    const/4 v1, 0x1

    iget-object v2, p0, Llul;->a:Ljava/lang/String;

    .line 5742
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5744
    :cond_0
    iget-object v1, p0, Llul;->b:Ljava/lang/Float;

    if-eqz v1, :cond_1

    .line 5745
    const/4 v1, 0x2

    iget-object v2, p0, Llul;->b:Ljava/lang/Float;

    .line 5746
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 7569
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    .line 5746
    add-int/2addr v0, v1

    .line 5748
    :cond_1
    iget-object v1, p0, Llul;->c:Ljava/lang/Float;

    if-eqz v1, :cond_2

    .line 5749
    const/4 v1, 0x3

    iget-object v2, p0, Llul;->c:Ljava/lang/Float;

    .line 5750
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 8569
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    .line 5750
    add-int/2addr v0, v1

    .line 5752
    :cond_2
    iget-object v1, p0, Llul;->d:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 5753
    const/4 v1, 0x4

    iget-object v2, p0, Llul;->d:Ljava/lang/String;

    .line 5754
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5756
    :cond_3
    iget-object v1, p0, Llul;->e:Ljava/lang/Integer;

    if-eqz v1, :cond_4

    .line 5757
    const/4 v1, 0x5

    iget-object v2, p0, Llul;->e:Ljava/lang/Integer;

    .line 5758
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 5760
    :cond_4
    iget-object v1, p0, Llul;->f:Ljava/lang/Integer;

    if-eqz v1, :cond_5

    .line 5761
    const/4 v1, 0x6

    iget-object v2, p0, Llul;->f:Ljava/lang/Integer;

    .line 5762
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 5764
    :cond_5
    iget-object v1, p0, Llul;->g:Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 5765
    const/4 v1, 0x7

    iget-object v2, p0, Llul;->g:Ljava/lang/String;

    .line 5766
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5768
    :cond_6
    return v0
.end method
