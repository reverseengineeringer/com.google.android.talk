.class public final Llzd;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Llzd;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile c:[Llzd;


# instance fields
.field public a:Ljava/lang/Integer;

.field public b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 898
    invoke-direct {p0}, Llyb;-><init>()V

    .line 1903
    iput-object v0, p0, Llzd;->a:Ljava/lang/Integer;

    .line 1904
    iput-object v0, p0, Llzd;->b:Ljava/lang/String;

    .line 1905
    iput-object v0, p0, Llzd;->eD:Llyd;

    .line 1906
    const/4 v0, -0x1

    iput v0, p0, Llzd;->eE:I

    .line 900
    return-void
.end method

.method public static d()[Llzd;
    .locals 2

    .prologue
    .line 879
    sget-object v0, Llzd;->c:[Llzd;

    if-nez v0, :cond_1

    .line 880
    sget-object v1, Llyf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 882
    :try_start_0
    sget-object v0, Llzd;->c:[Llzd;

    if-nez v0, :cond_0

    .line 883
    const/4 v0, 0x0

    new-array v0, v0, [Llzd;

    sput-object v0, Llzd;->c:[Llzd;

    .line 885
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 887
    :cond_1
    sget-object v0, Llzd;->c:[Llzd;

    return-object v0

    .line 885
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
    .line 1941
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1942
    sparse-switch v0, :sswitch_data_0

    .line 1946
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1947
    :sswitch_0
    return-object p0

    .line 1952
    :sswitch_1
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 1953
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1966
    :pswitch_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Llzd;->a:Ljava/lang/Integer;

    goto :goto_0

    .line 1972
    :sswitch_2
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Llzd;->b:Ljava/lang/String;

    goto :goto_0

    .line 1942
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch

    .line 1953
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
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
    .line 913
    iget-object v0, p0, Llzd;->a:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 914
    const/4 v0, 0x1

    iget-object v1, p0, Llzd;->a:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 916
    :cond_0
    iget-object v0, p0, Llzd;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 917
    const/4 v0, 0x2

    iget-object v1, p0, Llzd;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 919
    :cond_1
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 920
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 924
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 925
    iget-object v1, p0, Llzd;->a:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 926
    const/4 v1, 0x1

    iget-object v2, p0, Llzd;->a:Ljava/lang/Integer;

    .line 927
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 929
    :cond_0
    iget-object v1, p0, Llzd;->b:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 930
    const/4 v1, 0x2

    iget-object v2, p0, Llzd;->b:Ljava/lang/String;

    .line 931
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 933
    :cond_1
    return v0
.end method
