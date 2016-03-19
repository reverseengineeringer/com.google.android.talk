.class public final Lkbh;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lkbh;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile g:[Lkbh;


# instance fields
.field public a:Lkbi;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/Integer;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2885
    invoke-direct {p0}, Llyb;-><init>()V

    .line 3890
    iput-object v0, p0, Lkbh;->a:Lkbi;

    .line 3891
    iput-object v0, p0, Lkbh;->b:Ljava/lang/String;

    .line 3892
    iput-object v0, p0, Lkbh;->c:Ljava/lang/Integer;

    .line 3893
    iput-object v0, p0, Lkbh;->d:Ljava/lang/String;

    .line 3894
    iput-object v0, p0, Lkbh;->e:Ljava/lang/String;

    .line 3895
    iput-object v0, p0, Lkbh;->f:[B

    .line 3896
    iput-object v0, p0, Lkbh;->eD:Llyd;

    .line 3897
    const/4 v0, -0x1

    iput v0, p0, Lkbh;->eE:I

    .line 2887
    return-void
.end method

.method public static d()[Lkbh;
    .locals 2

    .prologue
    .line 2854
    sget-object v0, Lkbh;->g:[Lkbh;

    if-nez v0, :cond_1

    .line 2855
    sget-object v1, Llyf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 2857
    :try_start_0
    sget-object v0, Lkbh;->g:[Lkbh;

    if-nez v0, :cond_0

    .line 2858
    const/4 v0, 0x0

    new-array v0, v0, [Lkbh;

    sput-object v0, Lkbh;->g:[Lkbh;

    .line 2860
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2862
    :cond_1
    sget-object v0, Lkbh;->g:[Lkbh;

    return-object v0

    .line 2860
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
    .line 3960
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 3961
    sparse-switch v0, :sswitch_data_0

    .line 3965
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3966
    :sswitch_0
    return-object p0

    .line 3971
    :sswitch_1
    iget-object v0, p0, Lkbh;->a:Lkbi;

    if-nez v0, :cond_1

    .line 3972
    new-instance v0, Lkbi;

    invoke-direct {v0}, Lkbi;-><init>()V

    iput-object v0, p0, Lkbh;->a:Lkbi;

    .line 3974
    :cond_1
    iget-object v0, p0, Lkbh;->a:Lkbi;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 3978
    :sswitch_2
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lkbh;->d:Ljava/lang/String;

    goto :goto_0

    .line 3982
    :sswitch_3
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lkbh;->e:Ljava/lang/String;

    goto :goto_0

    .line 3986
    :sswitch_4
    invoke-virtual {p1}, Llxy;->k()[B

    move-result-object v0

    iput-object v0, p0, Lkbh;->f:[B

    goto :goto_0

    .line 3990
    :sswitch_5
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lkbh;->b:Ljava/lang/String;

    goto :goto_0

    .line 3994
    :sswitch_6
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 3995
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 4001
    :pswitch_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lkbh;->c:Ljava/lang/Integer;

    goto :goto_0

    .line 3961
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x30 -> :sswitch_6
    .end sparse-switch

    .line 3995
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 2904
    iget-object v0, p0, Lkbh;->a:Lkbi;

    if-eqz v0, :cond_0

    .line 2905
    const/4 v0, 0x1

    iget-object v1, p0, Lkbh;->a:Lkbi;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 2907
    :cond_0
    iget-object v0, p0, Lkbh;->d:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 2908
    const/4 v0, 0x2

    iget-object v1, p0, Lkbh;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 2910
    :cond_1
    iget-object v0, p0, Lkbh;->e:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 2911
    const/4 v0, 0x3

    iget-object v1, p0, Lkbh;->e:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 2913
    :cond_2
    iget-object v0, p0, Lkbh;->f:[B

    if-eqz v0, :cond_3

    .line 2914
    const/4 v0, 0x4

    iget-object v1, p0, Lkbh;->f:[B

    invoke-virtual {p1, v0, v1}, Llxz;->a(I[B)V

    .line 2916
    :cond_3
    iget-object v0, p0, Lkbh;->b:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 2917
    const/4 v0, 0x5

    iget-object v1, p0, Lkbh;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 2919
    :cond_4
    iget-object v0, p0, Lkbh;->c:Ljava/lang/Integer;

    if-eqz v0, :cond_5

    .line 2920
    const/4 v0, 0x6

    iget-object v1, p0, Lkbh;->c:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 2922
    :cond_5
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 2923
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 2927
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 2928
    iget-object v1, p0, Lkbh;->a:Lkbi;

    if-eqz v1, :cond_0

    .line 2929
    const/4 v1, 0x1

    iget-object v2, p0, Lkbh;->a:Lkbi;

    .line 2930
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2932
    :cond_0
    iget-object v1, p0, Lkbh;->d:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 2933
    const/4 v1, 0x2

    iget-object v2, p0, Lkbh;->d:Ljava/lang/String;

    .line 2934
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2936
    :cond_1
    iget-object v1, p0, Lkbh;->e:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 2937
    const/4 v1, 0x3

    iget-object v2, p0, Lkbh;->e:Ljava/lang/String;

    .line 2938
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2940
    :cond_2
    iget-object v1, p0, Lkbh;->f:[B

    if-eqz v1, :cond_3

    .line 2941
    const/4 v1, 0x4

    iget-object v2, p0, Lkbh;->f:[B

    .line 2942
    invoke-static {v1, v2}, Llxz;->b(I[B)I

    move-result v1

    add-int/2addr v0, v1

    .line 2944
    :cond_3
    iget-object v1, p0, Lkbh;->b:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 2945
    const/4 v1, 0x5

    iget-object v2, p0, Lkbh;->b:Ljava/lang/String;

    .line 2946
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2948
    :cond_4
    iget-object v1, p0, Lkbh;->c:Ljava/lang/Integer;

    if-eqz v1, :cond_5

    .line 2949
    const/4 v1, 0x6

    iget-object v2, p0, Lkbh;->c:Ljava/lang/Integer;

    .line 2950
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2952
    :cond_5
    return v0
.end method
