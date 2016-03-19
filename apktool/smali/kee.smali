.class public final Lkee;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lkee;",
        ">;"
    }
.end annotation


# instance fields
.field public a:[Ljxn;

.field public b:Ljys;

.field public c:Ljava/lang/Boolean;

.field public d:Ljava/lang/Integer;

.field public requestHeader:Lkdo;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 32790
    invoke-direct {p0}, Llyb;-><init>()V

    .line 33795
    iput-object v1, p0, Lkee;->requestHeader:Lkdo;

    .line 33796
    invoke-static {}, Ljxn;->d()[Ljxn;

    move-result-object v0

    iput-object v0, p0, Lkee;->a:[Ljxn;

    .line 33797
    iput-object v1, p0, Lkee;->b:Ljys;

    .line 33798
    iput-object v1, p0, Lkee;->c:Ljava/lang/Boolean;

    .line 33799
    iput-object v1, p0, Lkee;->d:Ljava/lang/Integer;

    .line 33800
    iput-object v1, p0, Lkee;->eD:Llyd;

    .line 33801
    const/4 v0, -0x1

    iput v0, p0, Lkee;->eE:I

    .line 32792
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 34867
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 34868
    sparse-switch v0, :sswitch_data_0

    .line 34872
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 34873
    :sswitch_0
    return-object p0

    .line 34878
    :sswitch_1
    iget-object v0, p0, Lkee;->requestHeader:Lkdo;

    if-nez v0, :cond_1

    .line 34879
    new-instance v0, Lkdo;

    invoke-direct {v0}, Lkdo;-><init>()V

    iput-object v0, p0, Lkee;->requestHeader:Lkdo;

    .line 34881
    :cond_1
    iget-object v0, p0, Lkee;->requestHeader:Lkdo;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 34885
    :sswitch_2
    const/16 v0, 0x12

    .line 34886
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 34887
    iget-object v0, p0, Lkee;->a:[Ljxn;

    if-nez v0, :cond_3

    move v0, v1

    .line 34888
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Ljxn;

    .line 34890
    if-eqz v0, :cond_2

    .line 34891
    iget-object v3, p0, Lkee;->a:[Ljxn;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 34893
    :cond_2
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_4

    .line 34894
    new-instance v3, Ljxn;

    invoke-direct {v3}, Ljxn;-><init>()V

    aput-object v3, v2, v0

    .line 34895
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 34896
    invoke-virtual {p1}, Llxy;->a()I

    .line 34893
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 34887
    :cond_3
    iget-object v0, p0, Lkee;->a:[Ljxn;

    array-length v0, v0

    goto :goto_1

    .line 34899
    :cond_4
    new-instance v3, Ljxn;

    invoke-direct {v3}, Ljxn;-><init>()V

    aput-object v3, v2, v0

    .line 34900
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 34901
    iput-object v2, p0, Lkee;->a:[Ljxn;

    goto :goto_0

    .line 34905
    :sswitch_3
    iget-object v0, p0, Lkee;->b:Ljys;

    if-nez v0, :cond_5

    .line 34906
    new-instance v0, Ljys;

    invoke-direct {v0}, Ljys;-><init>()V

    iput-object v0, p0, Lkee;->b:Ljys;

    .line 34908
    :cond_5
    iget-object v0, p0, Lkee;->b:Ljys;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 34912
    :sswitch_4
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lkee;->c:Ljava/lang/Boolean;

    goto :goto_0

    .line 34916
    :sswitch_5
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 34917
    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 34921
    :pswitch_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lkee;->d:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 34868
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
    .end sparse-switch

    .line 34917
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public a(Llxz;)V
    .locals 3

    .prologue
    .line 32808
    iget-object v0, p0, Lkee;->requestHeader:Lkdo;

    if-eqz v0, :cond_0

    .line 32809
    const/4 v0, 0x1

    iget-object v1, p0, Lkee;->requestHeader:Lkdo;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 32811
    :cond_0
    iget-object v0, p0, Lkee;->a:[Ljxn;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lkee;->a:[Ljxn;

    array-length v0, v0

    if-lez v0, :cond_2

    .line 32812
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lkee;->a:[Ljxn;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 32813
    iget-object v1, p0, Lkee;->a:[Ljxn;

    aget-object v1, v1, v0

    .line 32814
    if-eqz v1, :cond_1

    .line 32815
    const/4 v2, 0x2

    invoke-virtual {p1, v2, v1}, Llxz;->b(ILlyi;)V

    .line 32812
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 32819
    :cond_2
    iget-object v0, p0, Lkee;->b:Ljys;

    if-eqz v0, :cond_3

    .line 32820
    const/4 v0, 0x3

    iget-object v1, p0, Lkee;->b:Ljys;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 32822
    :cond_3
    iget-object v0, p0, Lkee;->c:Ljava/lang/Boolean;

    if-eqz v0, :cond_4

    .line 32823
    const/4 v0, 0x4

    iget-object v1, p0, Lkee;->c:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 32825
    :cond_4
    iget-object v0, p0, Lkee;->d:Ljava/lang/Integer;

    if-eqz v0, :cond_5

    .line 32826
    const/4 v0, 0x5

    iget-object v1, p0, Lkee;->d:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 32828
    :cond_5
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 32829
    return-void
.end method

.method protected b()I
    .locals 5

    .prologue
    .line 32833
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 32834
    iget-object v1, p0, Lkee;->requestHeader:Lkdo;

    if-eqz v1, :cond_0

    .line 32835
    const/4 v1, 0x1

    iget-object v2, p0, Lkee;->requestHeader:Lkdo;

    .line 32836
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 32838
    :cond_0
    iget-object v1, p0, Lkee;->a:[Ljxn;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lkee;->a:[Ljxn;

    array-length v1, v1

    if-lez v1, :cond_3

    .line 32839
    const/4 v1, 0x0

    move v4, v1

    move v1, v0

    move v0, v4

    :goto_0
    iget-object v2, p0, Lkee;->a:[Ljxn;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 32840
    iget-object v2, p0, Lkee;->a:[Ljxn;

    aget-object v2, v2, v0

    .line 32841
    if-eqz v2, :cond_1

    .line 32842
    const/4 v3, 0x2

    .line 32843
    invoke-static {v3, v2}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v1, v2

    .line 32839
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 32847
    :cond_3
    iget-object v1, p0, Lkee;->b:Ljys;

    if-eqz v1, :cond_4

    .line 32848
    const/4 v1, 0x3

    iget-object v2, p0, Lkee;->b:Ljys;

    .line 32849
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 32851
    :cond_4
    iget-object v1, p0, Lkee;->c:Ljava/lang/Boolean;

    if-eqz v1, :cond_5

    .line 32852
    const/4 v1, 0x4

    iget-object v2, p0, Lkee;->c:Ljava/lang/Boolean;

    .line 32853
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 34620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 32853
    add-int/2addr v0, v1

    .line 32855
    :cond_5
    iget-object v1, p0, Lkee;->d:Ljava/lang/Integer;

    if-eqz v1, :cond_6

    .line 32856
    const/4 v1, 0x5

    iget-object v2, p0, Lkee;->d:Ljava/lang/Integer;

    .line 32857
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 32859
    :cond_6
    return v0
.end method
