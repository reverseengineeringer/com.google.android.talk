.class public final Lmgj;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lmgj;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile b:[Lmgj;


# instance fields
.field public a:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 827
    invoke-direct {p0}, Llyb;-><init>()V

    .line 1832
    iput-object v0, p0, Lmgj;->a:Ljava/lang/Integer;

    .line 1833
    iput-object v0, p0, Lmgj;->eD:Llyd;

    .line 1834
    const/4 v0, -0x1

    iput v0, p0, Lmgj;->eE:I

    .line 829
    return-void
.end method

.method public static d()[Lmgj;
    .locals 2

    .prologue
    .line 811
    sget-object v0, Lmgj;->b:[Lmgj;

    if-nez v0, :cond_1

    .line 812
    sget-object v1, Llyf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 814
    :try_start_0
    sget-object v0, Lmgj;->b:[Lmgj;

    if-nez v0, :cond_0

    .line 815
    const/4 v0, 0x0

    new-array v0, v0, [Lmgj;

    sput-object v0, Lmgj;->b:[Lmgj;

    .line 817
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 819
    :cond_1
    sget-object v0, Lmgj;->b:[Lmgj;

    return-object v0

    .line 817
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
    .line 1862
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1863
    sparse-switch v0, :sswitch_data_0

    .line 1867
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1868
    :sswitch_0
    return-object p0

    .line 1873
    :sswitch_1
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 1874
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1878
    :pswitch_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lmgj;->a:Ljava/lang/Integer;

    goto :goto_0

    .line 1863
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
    .end sparse-switch

    .line 1874
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 841
    iget-object v0, p0, Lmgj;->a:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 842
    const/4 v0, 0x1

    iget-object v1, p0, Lmgj;->a:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 844
    :cond_0
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 845
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 849
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 850
    iget-object v1, p0, Lmgj;->a:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 851
    const/4 v1, 0x1

    iget-object v2, p0, Lmgj;->a:Ljava/lang/Integer;

    .line 852
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 854
    :cond_0
    return v0
.end method
