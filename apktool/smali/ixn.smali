.class public final Lixn;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lixn;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:[Livm;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 7735
    invoke-direct {p0}, Llyb;-><init>()V

    .line 8740
    iput-object v1, p0, Lixn;->a:Ljava/lang/String;

    .line 8741
    iput-object v1, p0, Lixn;->b:Ljava/lang/String;

    .line 8742
    iput-object v1, p0, Lixn;->c:Ljava/lang/String;

    .line 8743
    invoke-static {}, Livm;->d()[Livm;

    move-result-object v0

    iput-object v0, p0, Lixn;->d:[Livm;

    .line 8744
    iput-object v1, p0, Lixn;->eD:Llyd;

    .line 8745
    const/4 v0, -0x1

    iput v0, p0, Lixn;->eE:I

    .line 7737
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 8804
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 8805
    sparse-switch v0, :sswitch_data_0

    .line 8809
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 8810
    :sswitch_0
    return-object p0

    .line 8815
    :sswitch_1
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lixn;->a:Ljava/lang/String;

    goto :goto_0

    .line 8819
    :sswitch_2
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lixn;->b:Ljava/lang/String;

    goto :goto_0

    .line 8823
    :sswitch_3
    const/16 v0, 0x1a

    .line 8824
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 8825
    iget-object v0, p0, Lixn;->d:[Livm;

    if-nez v0, :cond_2

    move v0, v1

    .line 8826
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Livm;

    .line 8828
    if-eqz v0, :cond_1

    .line 8829
    iget-object v3, p0, Lixn;->d:[Livm;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8831
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 8832
    new-instance v3, Livm;

    invoke-direct {v3}, Livm;-><init>()V

    aput-object v3, v2, v0

    .line 8833
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 8834
    invoke-virtual {p1}, Llxy;->a()I

    .line 8831
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 8825
    :cond_2
    iget-object v0, p0, Lixn;->d:[Livm;

    array-length v0, v0

    goto :goto_1

    .line 8837
    :cond_3
    new-instance v3, Livm;

    invoke-direct {v3}, Livm;-><init>()V

    aput-object v3, v2, v0

    .line 8838
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 8839
    iput-object v2, p0, Lixn;->d:[Livm;

    goto :goto_0

    .line 8843
    :sswitch_4
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lixn;->c:Ljava/lang/String;

    goto :goto_0

    .line 8805
    nop

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
    .locals 3

    .prologue
    .line 7752
    iget-object v0, p0, Lixn;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 7753
    const/4 v0, 0x1

    iget-object v1, p0, Lixn;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 7755
    :cond_0
    iget-object v0, p0, Lixn;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 7756
    const/4 v0, 0x2

    iget-object v1, p0, Lixn;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 7758
    :cond_1
    iget-object v0, p0, Lixn;->d:[Livm;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lixn;->d:[Livm;

    array-length v0, v0

    if-lez v0, :cond_3

    .line 7759
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lixn;->d:[Livm;

    array-length v1, v1

    if-ge v0, v1, :cond_3

    .line 7760
    iget-object v1, p0, Lixn;->d:[Livm;

    aget-object v1, v1, v0

    .line 7761
    if-eqz v1, :cond_2

    .line 7762
    const/4 v2, 0x3

    invoke-virtual {p1, v2, v1}, Llxz;->b(ILlyi;)V

    .line 7759
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 7766
    :cond_3
    iget-object v0, p0, Lixn;->c:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 7767
    const/4 v0, 0x4

    iget-object v1, p0, Lixn;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 7769
    :cond_4
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 7770
    return-void
.end method

.method protected b()I
    .locals 5

    .prologue
    .line 7774
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 7775
    iget-object v1, p0, Lixn;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 7776
    const/4 v1, 0x1

    iget-object v2, p0, Lixn;->a:Ljava/lang/String;

    .line 7777
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 7779
    :cond_0
    iget-object v1, p0, Lixn;->b:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 7780
    const/4 v1, 0x2

    iget-object v2, p0, Lixn;->b:Ljava/lang/String;

    .line 7781
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 7783
    :cond_1
    iget-object v1, p0, Lixn;->d:[Livm;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lixn;->d:[Livm;

    array-length v1, v1

    if-lez v1, :cond_4

    .line 7784
    const/4 v1, 0x0

    move v4, v1

    move v1, v0

    move v0, v4

    :goto_0
    iget-object v2, p0, Lixn;->d:[Livm;

    array-length v2, v2

    if-ge v0, v2, :cond_3

    .line 7785
    iget-object v2, p0, Lixn;->d:[Livm;

    aget-object v2, v2, v0

    .line 7786
    if-eqz v2, :cond_2

    .line 7787
    const/4 v3, 0x3

    .line 7788
    invoke-static {v3, v2}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v1, v2

    .line 7784
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    move v0, v1

    .line 7792
    :cond_4
    iget-object v1, p0, Lixn;->c:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 7793
    const/4 v1, 0x4

    iget-object v2, p0, Lixn;->c:Ljava/lang/String;

    .line 7794
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 7796
    :cond_5
    return v0
.end method
