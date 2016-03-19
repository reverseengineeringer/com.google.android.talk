.class public final Llza;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Llza;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile c:[Llza;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Lmsu;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1016
    invoke-direct {p0}, Llyb;-><init>()V

    .line 2021
    iput-object v0, p0, Llza;->a:Ljava/lang/String;

    .line 2022
    iput-object v0, p0, Llza;->b:Lmsu;

    .line 2023
    iput-object v0, p0, Llza;->eD:Llyd;

    .line 2024
    const/4 v0, -0x1

    iput v0, p0, Llza;->eE:I

    .line 1018
    return-void
.end method

.method public static d()[Llza;
    .locals 2

    .prologue
    .line 997
    sget-object v0, Llza;->c:[Llza;

    if-nez v0, :cond_1

    .line 998
    sget-object v1, Llyf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 1000
    :try_start_0
    sget-object v0, Llza;->c:[Llza;

    if-nez v0, :cond_0

    .line 1001
    const/4 v0, 0x0

    new-array v0, v0, [Llza;

    sput-object v0, Llza;->c:[Llza;

    .line 1003
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1005
    :cond_1
    sget-object v0, Llza;->c:[Llza;

    return-object v0

    .line 1003
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
    .line 2059
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 2060
    sparse-switch v0, :sswitch_data_0

    .line 2064
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2065
    :sswitch_0
    return-object p0

    .line 2070
    :sswitch_1
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Llza;->a:Ljava/lang/String;

    goto :goto_0

    .line 2074
    :sswitch_2
    iget-object v0, p0, Llza;->b:Lmsu;

    if-nez v0, :cond_1

    .line 2075
    new-instance v0, Lmsu;

    invoke-direct {v0}, Lmsu;-><init>()V

    iput-object v0, p0, Llza;->b:Lmsu;

    .line 2077
    :cond_1
    iget-object v0, p0, Llza;->b:Lmsu;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 2060
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 1031
    iget-object v0, p0, Llza;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1032
    const/4 v0, 0x1

    iget-object v1, p0, Llza;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 1034
    :cond_0
    iget-object v0, p0, Llza;->b:Lmsu;

    if-eqz v0, :cond_1

    .line 1035
    const/4 v0, 0x2

    iget-object v1, p0, Llza;->b:Lmsu;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 1037
    :cond_1
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 1038
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 1042
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 1043
    iget-object v1, p0, Llza;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1044
    const/4 v1, 0x1

    iget-object v2, p0, Llza;->a:Ljava/lang/String;

    .line 1045
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1047
    :cond_0
    iget-object v1, p0, Llza;->b:Lmsu;

    if-eqz v1, :cond_1

    .line 1048
    const/4 v1, 0x2

    iget-object v2, p0, Llza;->b:Lmsu;

    .line 1049
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1051
    :cond_1
    return v0
.end method
