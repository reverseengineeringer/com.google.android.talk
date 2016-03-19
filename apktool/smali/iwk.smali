.class public final Liwk;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Liwk;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile e:[Liwk;


# instance fields
.field public a:Lixc;

.field public b:Ljava/lang/Integer;

.field public c:Ljava/lang/Integer;

.field public d:Liwl;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 9887
    invoke-direct {p0}, Llyb;-><init>()V

    .line 10892
    iput-object v0, p0, Liwk;->a:Lixc;

    .line 10893
    iput-object v0, p0, Liwk;->b:Ljava/lang/Integer;

    .line 10894
    iput-object v0, p0, Liwk;->c:Ljava/lang/Integer;

    .line 10895
    iput-object v0, p0, Liwk;->d:Liwl;

    .line 10896
    iput-object v0, p0, Liwk;->eD:Llyd;

    .line 10897
    const/4 v0, -0x1

    iput v0, p0, Liwk;->eE:I

    .line 9889
    return-void
.end method

.method public static d()[Liwk;
    .locals 2

    .prologue
    .line 9862
    sget-object v0, Liwk;->e:[Liwk;

    if-nez v0, :cond_1

    .line 9863
    sget-object v1, Llyf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 9865
    :try_start_0
    sget-object v0, Liwk;->e:[Liwk;

    if-nez v0, :cond_0

    .line 9866
    const/4 v0, 0x0

    new-array v0, v0, [Liwk;

    sput-object v0, Liwk;->e:[Liwk;

    .line 9868
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9870
    :cond_1
    sget-object v0, Liwk;->e:[Liwk;

    return-object v0

    .line 9868
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
    .locals 1

    .prologue
    .line 10946
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 10947
    sparse-switch v0, :sswitch_data_0

    .line 10951
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 10952
    :sswitch_0
    return-object p0

    .line 10957
    :sswitch_1
    iget-object v0, p0, Liwk;->a:Lixc;

    if-nez v0, :cond_1

    .line 10958
    new-instance v0, Lixc;

    invoke-direct {v0}, Lixc;-><init>()V

    iput-object v0, p0, Liwk;->a:Lixc;

    .line 10960
    :cond_1
    iget-object v0, p0, Liwk;->a:Lixc;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 10964
    :sswitch_2
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 10965
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 10971
    :pswitch_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Liwk;->b:Ljava/lang/Integer;

    goto :goto_0

    .line 10977
    :sswitch_3
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 10978
    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 10982
    :pswitch_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Liwk;->c:Ljava/lang/Integer;

    goto :goto_0

    .line 10988
    :sswitch_4
    iget-object v0, p0, Liwk;->d:Liwl;

    if-nez v0, :cond_2

    .line 10989
    new-instance v0, Liwl;

    invoke-direct {v0}, Liwl;-><init>()V

    iput-object v0, p0, Liwk;->d:Liwl;

    .line 10991
    :cond_2
    iget-object v0, p0, Liwk;->d:Liwl;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 10947
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x22 -> :sswitch_4
    .end sparse-switch

    .line 10965
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 10978
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 9904
    iget-object v0, p0, Liwk;->a:Lixc;

    if-eqz v0, :cond_0

    .line 9905
    const/4 v0, 0x1

    iget-object v1, p0, Liwk;->a:Lixc;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 9907
    :cond_0
    iget-object v0, p0, Liwk;->b:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 9908
    const/4 v0, 0x2

    iget-object v1, p0, Liwk;->b:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 9910
    :cond_1
    iget-object v0, p0, Liwk;->c:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 9911
    const/4 v0, 0x3

    iget-object v1, p0, Liwk;->c:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 9913
    :cond_2
    iget-object v0, p0, Liwk;->d:Liwl;

    if-eqz v0, :cond_3

    .line 9914
    const/4 v0, 0x4

    iget-object v1, p0, Liwk;->d:Liwl;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 9916
    :cond_3
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 9917
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 9921
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 9922
    iget-object v1, p0, Liwk;->a:Lixc;

    if-eqz v1, :cond_0

    .line 9923
    const/4 v1, 0x1

    iget-object v2, p0, Liwk;->a:Lixc;

    .line 9924
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 9926
    :cond_0
    iget-object v1, p0, Liwk;->b:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 9927
    const/4 v1, 0x2

    iget-object v2, p0, Liwk;->b:Ljava/lang/Integer;

    .line 9928
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 9930
    :cond_1
    iget-object v1, p0, Liwk;->c:Ljava/lang/Integer;

    if-eqz v1, :cond_2

    .line 9931
    const/4 v1, 0x3

    iget-object v2, p0, Liwk;->c:Ljava/lang/Integer;

    .line 9932
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 9934
    :cond_2
    iget-object v1, p0, Liwk;->d:Liwl;

    if-eqz v1, :cond_3

    .line 9935
    const/4 v1, 0x4

    iget-object v2, p0, Liwk;->d:Liwl;

    .line 9936
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 9938
    :cond_3
    return v0
.end method
