.class public final Lkav;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lkav;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/Boolean;

.field public b:[B

.field public c:[Lkau;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 27673
    invoke-direct {p0}, Llyb;-><init>()V

    .line 28678
    iput-object v1, p0, Lkav;->a:Ljava/lang/Boolean;

    .line 28679
    iput-object v1, p0, Lkav;->b:[B

    .line 28680
    invoke-static {}, Lkau;->d()[Lkau;

    move-result-object v0

    iput-object v0, p0, Lkav;->c:[Lkau;

    .line 28681
    iput-object v1, p0, Lkav;->eD:Llyd;

    .line 28682
    const/4 v0, -0x1

    iput v0, p0, Lkav;->eE:I

    .line 27675
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 29734
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 29735
    sparse-switch v0, :sswitch_data_0

    .line 29739
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 29740
    :sswitch_0
    return-object p0

    .line 29745
    :sswitch_1
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lkav;->a:Ljava/lang/Boolean;

    goto :goto_0

    .line 29749
    :sswitch_2
    invoke-virtual {p1}, Llxy;->k()[B

    move-result-object v0

    iput-object v0, p0, Lkav;->b:[B

    goto :goto_0

    .line 29753
    :sswitch_3
    const/16 v0, 0x1a

    .line 29754
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 29755
    iget-object v0, p0, Lkav;->c:[Lkau;

    if-nez v0, :cond_2

    move v0, v1

    .line 29756
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lkau;

    .line 29758
    if-eqz v0, :cond_1

    .line 29759
    iget-object v3, p0, Lkav;->c:[Lkau;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 29761
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 29762
    new-instance v3, Lkau;

    invoke-direct {v3}, Lkau;-><init>()V

    aput-object v3, v2, v0

    .line 29763
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 29764
    invoke-virtual {p1}, Llxy;->a()I

    .line 29761
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 29755
    :cond_2
    iget-object v0, p0, Lkav;->c:[Lkau;

    array-length v0, v0

    goto :goto_1

    .line 29767
    :cond_3
    new-instance v3, Lkau;

    invoke-direct {v3}, Lkau;-><init>()V

    aput-object v3, v2, v0

    .line 29768
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 29769
    iput-object v2, p0, Lkav;->c:[Lkau;

    goto :goto_0

    .line 29735
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 3

    .prologue
    .line 27689
    iget-object v0, p0, Lkav;->a:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 27690
    const/4 v0, 0x1

    iget-object v1, p0, Lkav;->a:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 27692
    :cond_0
    iget-object v0, p0, Lkav;->b:[B

    if-eqz v0, :cond_1

    .line 27693
    const/4 v0, 0x2

    iget-object v1, p0, Lkav;->b:[B

    invoke-virtual {p1, v0, v1}, Llxz;->a(I[B)V

    .line 27695
    :cond_1
    iget-object v0, p0, Lkav;->c:[Lkau;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lkav;->c:[Lkau;

    array-length v0, v0

    if-lez v0, :cond_3

    .line 27696
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lkav;->c:[Lkau;

    array-length v1, v1

    if-ge v0, v1, :cond_3

    .line 27697
    iget-object v1, p0, Lkav;->c:[Lkau;

    aget-object v1, v1, v0

    .line 27698
    if-eqz v1, :cond_2

    .line 27699
    const/4 v2, 0x3

    invoke-virtual {p1, v2, v1}, Llxz;->b(ILlyi;)V

    .line 27696
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 27703
    :cond_3
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 27704
    return-void
.end method

.method protected b()I
    .locals 5

    .prologue
    .line 27708
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 27709
    iget-object v1, p0, Lkav;->a:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    .line 27710
    const/4 v1, 0x1

    iget-object v2, p0, Lkav;->a:Ljava/lang/Boolean;

    .line 27711
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 29620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 27711
    add-int/2addr v0, v1

    .line 27713
    :cond_0
    iget-object v1, p0, Lkav;->b:[B

    if-eqz v1, :cond_1

    .line 27714
    const/4 v1, 0x2

    iget-object v2, p0, Lkav;->b:[B

    .line 27715
    invoke-static {v1, v2}, Llxz;->b(I[B)I

    move-result v1

    add-int/2addr v0, v1

    .line 27717
    :cond_1
    iget-object v1, p0, Lkav;->c:[Lkau;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lkav;->c:[Lkau;

    array-length v1, v1

    if-lez v1, :cond_4

    .line 27718
    const/4 v1, 0x0

    move v4, v1

    move v1, v0

    move v0, v4

    :goto_0
    iget-object v2, p0, Lkav;->c:[Lkau;

    array-length v2, v2

    if-ge v0, v2, :cond_3

    .line 27719
    iget-object v2, p0, Lkav;->c:[Lkau;

    aget-object v2, v2, v0

    .line 27720
    if-eqz v2, :cond_2

    .line 27721
    const/4 v3, 0x3

    .line 27722
    invoke-static {v3, v2}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v1, v2

    .line 27718
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    move v0, v1

    .line 27726
    :cond_4
    return v0
.end method
