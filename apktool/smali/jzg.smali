.class public final Ljzg;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljzg;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/Integer;

.field public b:Ljava/lang/Integer;

.field public c:[Ljava/lang/String;

.field public d:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 34631
    invoke-direct {p0}, Llyb;-><init>()V

    .line 35636
    iput-object v1, p0, Ljzg;->a:Ljava/lang/Integer;

    .line 35637
    iput-object v1, p0, Ljzg;->b:Ljava/lang/Integer;

    .line 35638
    sget-object v0, Llyo;->f:[Ljava/lang/String;

    iput-object v0, p0, Ljzg;->c:[Ljava/lang/String;

    .line 35639
    iput-object v1, p0, Ljzg;->d:Ljava/lang/Integer;

    .line 35640
    iput-object v1, p0, Ljzg;->eD:Llyd;

    .line 35641
    const/4 v0, -0x1

    iput v0, p0, Ljzg;->eE:I

    .line 34633
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 35705
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 35706
    sparse-switch v0, :sswitch_data_0

    .line 35710
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 35711
    :sswitch_0
    return-object p0

    .line 35716
    :sswitch_1
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Ljzg;->a:Ljava/lang/Integer;

    goto :goto_0

    .line 35720
    :sswitch_2
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Ljzg;->b:Ljava/lang/Integer;

    goto :goto_0

    .line 35724
    :sswitch_3
    const/16 v0, 0x1a

    .line 35725
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 35726
    iget-object v0, p0, Ljzg;->c:[Ljava/lang/String;

    if-nez v0, :cond_2

    move v0, v1

    .line 35727
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Ljava/lang/String;

    .line 35728
    if-eqz v0, :cond_1

    .line 35729
    iget-object v3, p0, Ljzg;->c:[Ljava/lang/String;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 35731
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 35732
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 35733
    invoke-virtual {p1}, Llxy;->a()I

    .line 35731
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 35726
    :cond_2
    iget-object v0, p0, Ljzg;->c:[Ljava/lang/String;

    array-length v0, v0

    goto :goto_1

    .line 35736
    :cond_3
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 35737
    iput-object v2, p0, Ljzg;->c:[Ljava/lang/String;

    goto :goto_0

    .line 35741
    :sswitch_4
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 35742
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 35747
    :pswitch_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Ljzg;->d:Ljava/lang/Integer;

    goto :goto_0

    .line 35706
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
        0x20 -> :sswitch_4
    .end sparse-switch

    .line 35742
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public a(Llxz;)V
    .locals 3

    .prologue
    .line 34648
    iget-object v0, p0, Ljzg;->a:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 34649
    const/4 v0, 0x1

    iget-object v1, p0, Ljzg;->a:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 34651
    :cond_0
    iget-object v0, p0, Ljzg;->b:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 34652
    const/4 v0, 0x2

    iget-object v1, p0, Ljzg;->b:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 34654
    :cond_1
    iget-object v0, p0, Ljzg;->c:[Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Ljzg;->c:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_3

    .line 34655
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Ljzg;->c:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_3

    .line 34656
    iget-object v1, p0, Ljzg;->c:[Ljava/lang/String;

    aget-object v1, v1, v0

    .line 34657
    if-eqz v1, :cond_2

    .line 34658
    const/4 v2, 0x3

    invoke-virtual {p1, v2, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 34655
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 34662
    :cond_3
    iget-object v0, p0, Ljzg;->d:Ljava/lang/Integer;

    if-eqz v0, :cond_4

    .line 34663
    const/4 v0, 0x4

    iget-object v1, p0, Ljzg;->d:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 34665
    :cond_4
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 34666
    return-void
.end method

.method protected b()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 34670
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 34671
    iget-object v2, p0, Ljzg;->a:Ljava/lang/Integer;

    if-eqz v2, :cond_0

    .line 34672
    const/4 v2, 0x1

    iget-object v3, p0, Ljzg;->a:Ljava/lang/Integer;

    .line 34673
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v2, v3}, Llxz;->e(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 34675
    :cond_0
    iget-object v2, p0, Ljzg;->b:Ljava/lang/Integer;

    if-eqz v2, :cond_1

    .line 34676
    const/4 v2, 0x2

    iget-object v3, p0, Ljzg;->b:Ljava/lang/Integer;

    .line 34677
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v2, v3}, Llxz;->e(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 34679
    :cond_1
    iget-object v2, p0, Ljzg;->c:[Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, p0, Ljzg;->c:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_4

    move v2, v1

    move v3, v1

    .line 34682
    :goto_0
    iget-object v4, p0, Ljzg;->c:[Ljava/lang/String;

    array-length v4, v4

    if-ge v1, v4, :cond_3

    .line 34683
    iget-object v4, p0, Ljzg;->c:[Ljava/lang/String;

    aget-object v4, v4, v1

    .line 34684
    if-eqz v4, :cond_2

    .line 34685
    add-int/lit8 v3, v3, 0x1

    .line 34687
    invoke-static {v4}, Llxz;->a(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v2, v4

    .line 34682
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 34690
    :cond_3
    add-int/2addr v0, v2

    .line 34691
    mul-int/lit8 v1, v3, 0x1

    add-int/2addr v0, v1

    .line 34693
    :cond_4
    iget-object v1, p0, Ljzg;->d:Ljava/lang/Integer;

    if-eqz v1, :cond_5

    .line 34694
    const/4 v1, 0x4

    iget-object v2, p0, Ljzg;->d:Ljava/lang/Integer;

    .line 34695
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 34697
    :cond_5
    return v0
.end method
