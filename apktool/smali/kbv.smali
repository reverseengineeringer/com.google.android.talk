.class public final Lkbv;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lkbv;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile c:[Lkbv;


# instance fields
.field public a:Ljxw;

.field public b:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 38796
    invoke-direct {p0}, Llyb;-><init>()V

    .line 39801
    iput-object v1, p0, Lkbv;->a:Ljxw;

    .line 39802
    sget-object v0, Llyo;->f:[Ljava/lang/String;

    iput-object v0, p0, Lkbv;->b:[Ljava/lang/String;

    .line 39803
    iput-object v1, p0, Lkbv;->eD:Llyd;

    .line 39804
    const/4 v0, -0x1

    iput v0, p0, Lkbv;->eE:I

    .line 38798
    return-void
.end method

.method public static d()[Lkbv;
    .locals 2

    .prologue
    .line 38777
    sget-object v0, Lkbv;->c:[Lkbv;

    if-nez v0, :cond_1

    .line 38778
    sget-object v1, Llyf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 38780
    :try_start_0
    sget-object v0, Lkbv;->c:[Lkbv;

    if-nez v0, :cond_0

    .line 38781
    const/4 v0, 0x0

    new-array v0, v0, [Lkbv;

    sput-object v0, Lkbv;->c:[Lkbv;

    .line 38783
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38785
    :cond_1
    sget-object v0, Lkbv;->c:[Lkbv;

    return-object v0

    .line 38783
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

    .line 39854
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 39855
    sparse-switch v0, :sswitch_data_0

    .line 39859
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 39860
    :sswitch_0
    return-object p0

    .line 39865
    :sswitch_1
    iget-object v0, p0, Lkbv;->a:Ljxw;

    if-nez v0, :cond_1

    .line 39866
    new-instance v0, Ljxw;

    invoke-direct {v0}, Ljxw;-><init>()V

    iput-object v0, p0, Lkbv;->a:Ljxw;

    .line 39868
    :cond_1
    iget-object v0, p0, Lkbv;->a:Ljxw;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 39872
    :sswitch_2
    const/16 v0, 0x12

    .line 39873
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 39874
    iget-object v0, p0, Lkbv;->b:[Ljava/lang/String;

    if-nez v0, :cond_3

    move v0, v1

    .line 39875
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Ljava/lang/String;

    .line 39876
    if-eqz v0, :cond_2

    .line 39877
    iget-object v3, p0, Lkbv;->b:[Ljava/lang/String;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 39879
    :cond_2
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_4

    .line 39880
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 39881
    invoke-virtual {p1}, Llxy;->a()I

    .line 39879
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 39874
    :cond_3
    iget-object v0, p0, Lkbv;->b:[Ljava/lang/String;

    array-length v0, v0

    goto :goto_1

    .line 39884
    :cond_4
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 39885
    iput-object v2, p0, Lkbv;->b:[Ljava/lang/String;

    goto :goto_0

    .line 39855
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 3

    .prologue
    .line 38811
    iget-object v0, p0, Lkbv;->a:Ljxw;

    if-eqz v0, :cond_0

    .line 38812
    const/4 v0, 0x1

    iget-object v1, p0, Lkbv;->a:Ljxw;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 38814
    :cond_0
    iget-object v0, p0, Lkbv;->b:[Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lkbv;->b:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_2

    .line 38815
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lkbv;->b:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 38816
    iget-object v1, p0, Lkbv;->b:[Ljava/lang/String;

    aget-object v1, v1, v0

    .line 38817
    if-eqz v1, :cond_1

    .line 38818
    const/4 v2, 0x2

    invoke-virtual {p1, v2, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 38815
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 38822
    :cond_2
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 38823
    return-void
.end method

.method protected b()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 38827
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 38828
    iget-object v2, p0, Lkbv;->a:Ljxw;

    if-eqz v2, :cond_0

    .line 38829
    const/4 v2, 0x1

    iget-object v3, p0, Lkbv;->a:Ljxw;

    .line 38830
    invoke-static {v2, v3}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v0, v2

    .line 38832
    :cond_0
    iget-object v2, p0, Lkbv;->b:[Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lkbv;->b:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_3

    move v2, v1

    move v3, v1

    .line 38835
    :goto_0
    iget-object v4, p0, Lkbv;->b:[Ljava/lang/String;

    array-length v4, v4

    if-ge v1, v4, :cond_2

    .line 38836
    iget-object v4, p0, Lkbv;->b:[Ljava/lang/String;

    aget-object v4, v4, v1

    .line 38837
    if-eqz v4, :cond_1

    .line 38838
    add-int/lit8 v3, v3, 0x1

    .line 38840
    invoke-static {v4}, Llxz;->a(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v2, v4

    .line 38835
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 38843
    :cond_2
    add-int/2addr v0, v2

    .line 38844
    mul-int/lit8 v1, v3, 0x1

    add-int/2addr v0, v1

    .line 38846
    :cond_3
    return v0
.end method
