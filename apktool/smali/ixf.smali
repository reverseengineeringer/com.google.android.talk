.class public final Lixf;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lixf;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile f:[Lixf;


# instance fields
.field public a:Lixc;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/Boolean;

.field public d:Ljava/lang/String;

.field public e:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3772
    invoke-direct {p0}, Llyb;-><init>()V

    .line 4777
    iput-object v1, p0, Lixf;->a:Lixc;

    .line 4778
    iput-object v1, p0, Lixf;->b:Ljava/lang/String;

    .line 4779
    iput-object v1, p0, Lixf;->c:Ljava/lang/Boolean;

    .line 4780
    iput-object v1, p0, Lixf;->d:Ljava/lang/String;

    .line 4781
    sget-object v0, Llyo;->f:[Ljava/lang/String;

    iput-object v0, p0, Lixf;->e:[Ljava/lang/String;

    .line 4782
    iput-object v1, p0, Lixf;->eD:Llyd;

    .line 4783
    const/4 v0, -0x1

    iput v0, p0, Lixf;->eE:I

    .line 3774
    return-void
.end method

.method public static d()[Lixf;
    .locals 2

    .prologue
    .line 3744
    sget-object v0, Lixf;->f:[Lixf;

    if-nez v0, :cond_1

    .line 3745
    sget-object v1, Llyf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 3747
    :try_start_0
    sget-object v0, Lixf;->f:[Lixf;

    if-nez v0, :cond_0

    .line 3748
    const/4 v0, 0x0

    new-array v0, v0, [Lixf;

    sput-object v0, Lixf;->f:[Lixf;

    .line 3750
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3752
    :cond_1
    sget-object v0, Lixf;->f:[Lixf;

    return-object v0

    .line 3750
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 5854
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 5855
    sparse-switch v0, :sswitch_data_0

    .line 5859
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5860
    :sswitch_0
    return-object p0

    .line 5865
    :sswitch_1
    iget-object v0, p0, Lixf;->a:Lixc;

    if-nez v0, :cond_1

    .line 5866
    new-instance v0, Lixc;

    invoke-direct {v0}, Lixc;-><init>()V

    iput-object v0, p0, Lixf;->a:Lixc;

    .line 5868
    :cond_1
    iget-object v0, p0, Lixf;->a:Lixc;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 5872
    :sswitch_2
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lixf;->b:Ljava/lang/String;

    goto :goto_0

    .line 5876
    :sswitch_3
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lixf;->c:Ljava/lang/Boolean;

    goto :goto_0

    .line 5880
    :sswitch_4
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lixf;->d:Ljava/lang/String;

    goto :goto_0

    .line 5884
    :sswitch_5
    const/16 v0, 0x2a

    .line 5885
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 5886
    iget-object v0, p0, Lixf;->e:[Ljava/lang/String;

    if-nez v0, :cond_3

    move v0, v1

    .line 5887
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Ljava/lang/String;

    .line 5888
    if-eqz v0, :cond_2

    .line 5889
    iget-object v3, p0, Lixf;->e:[Ljava/lang/String;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5891
    :cond_2
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_4

    .line 5892
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 5893
    invoke-virtual {p1}, Llxy;->a()I

    .line 5891
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 5886
    :cond_3
    iget-object v0, p0, Lixf;->e:[Ljava/lang/String;

    array-length v0, v0

    goto :goto_1

    .line 5896
    :cond_4
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 5897
    iput-object v2, p0, Lixf;->e:[Ljava/lang/String;

    goto :goto_0

    .line 5855
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 3

    .prologue
    .line 3790
    iget-object v0, p0, Lixf;->a:Lixc;

    if-eqz v0, :cond_0

    .line 3791
    const/4 v0, 0x1

    iget-object v1, p0, Lixf;->a:Lixc;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 3793
    :cond_0
    iget-object v0, p0, Lixf;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 3794
    const/4 v0, 0x2

    iget-object v1, p0, Lixf;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 3796
    :cond_1
    iget-object v0, p0, Lixf;->c:Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    .line 3797
    const/4 v0, 0x3

    iget-object v1, p0, Lixf;->c:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 3799
    :cond_2
    iget-object v0, p0, Lixf;->d:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 3800
    const/4 v0, 0x4

    iget-object v1, p0, Lixf;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 3802
    :cond_3
    iget-object v0, p0, Lixf;->e:[Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lixf;->e:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_5

    .line 3803
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lixf;->e:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_5

    .line 3804
    iget-object v1, p0, Lixf;->e:[Ljava/lang/String;

    aget-object v1, v1, v0

    .line 3805
    if-eqz v1, :cond_4

    .line 3806
    const/4 v2, 0x5

    invoke-virtual {p1, v2, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 3803
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3810
    :cond_5
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 3811
    return-void
.end method

.method protected b()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 3815
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 3816
    iget-object v2, p0, Lixf;->a:Lixc;

    if-eqz v2, :cond_0

    .line 3817
    const/4 v2, 0x1

    iget-object v3, p0, Lixf;->a:Lixc;

    .line 3818
    invoke-static {v2, v3}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v0, v2

    .line 3820
    :cond_0
    iget-object v2, p0, Lixf;->b:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 3821
    const/4 v2, 0x2

    iget-object v3, p0, Lixf;->b:Ljava/lang/String;

    .line 3822
    invoke-static {v2, v3}, Llxz;->b(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 3824
    :cond_1
    iget-object v2, p0, Lixf;->c:Ljava/lang/Boolean;

    if-eqz v2, :cond_2

    .line 3825
    const/4 v2, 0x3

    iget-object v3, p0, Lixf;->c:Ljava/lang/Boolean;

    .line 3826
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 5620
    invoke-static {v2}, Llxz;->f(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    .line 3826
    add-int/2addr v0, v2

    .line 3828
    :cond_2
    iget-object v2, p0, Lixf;->d:Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 3829
    const/4 v2, 0x4

    iget-object v3, p0, Lixf;->d:Ljava/lang/String;

    .line 3830
    invoke-static {v2, v3}, Llxz;->b(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 3832
    :cond_3
    iget-object v2, p0, Lixf;->e:[Ljava/lang/String;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lixf;->e:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_6

    move v2, v1

    move v3, v1

    .line 3835
    :goto_0
    iget-object v4, p0, Lixf;->e:[Ljava/lang/String;

    array-length v4, v4

    if-ge v1, v4, :cond_5

    .line 3836
    iget-object v4, p0, Lixf;->e:[Ljava/lang/String;

    aget-object v4, v4, v1

    .line 3837
    if-eqz v4, :cond_4

    .line 3838
    add-int/lit8 v3, v3, 0x1

    .line 3840
    invoke-static {v4}, Llxz;->a(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v2, v4

    .line 3835
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3843
    :cond_5
    add-int/2addr v0, v2

    .line 3844
    mul-int/lit8 v1, v3, 0x1

    add-int/2addr v0, v1

    .line 3846
    :cond_6
    return v0
.end method
