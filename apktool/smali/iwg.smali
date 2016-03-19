.class public final Liwg;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Liwg;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile c:[Liwg;


# instance fields
.field public a:Lixc;

.field public b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 8067
    invoke-direct {p0}, Llyb;-><init>()V

    .line 9072
    iput-object v0, p0, Liwg;->a:Lixc;

    .line 9073
    iput-object v0, p0, Liwg;->b:Ljava/lang/String;

    .line 9074
    iput-object v0, p0, Liwg;->eD:Llyd;

    .line 9075
    const/4 v0, -0x1

    iput v0, p0, Liwg;->eE:I

    .line 8069
    return-void
.end method

.method public static d()[Liwg;
    .locals 2

    .prologue
    .line 8048
    sget-object v0, Liwg;->c:[Liwg;

    if-nez v0, :cond_1

    .line 8049
    sget-object v1, Llyf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 8051
    :try_start_0
    sget-object v0, Liwg;->c:[Liwg;

    if-nez v0, :cond_0

    .line 8052
    const/4 v0, 0x0

    new-array v0, v0, [Liwg;

    sput-object v0, Liwg;->c:[Liwg;

    .line 8054
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8056
    :cond_1
    sget-object v0, Liwg;->c:[Liwg;

    return-object v0

    .line 8054
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
    .line 9110
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 9111
    sparse-switch v0, :sswitch_data_0

    .line 9115
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 9116
    :sswitch_0
    return-object p0

    .line 9121
    :sswitch_1
    iget-object v0, p0, Liwg;->a:Lixc;

    if-nez v0, :cond_1

    .line 9122
    new-instance v0, Lixc;

    invoke-direct {v0}, Lixc;-><init>()V

    iput-object v0, p0, Liwg;->a:Lixc;

    .line 9124
    :cond_1
    iget-object v0, p0, Liwg;->a:Lixc;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 9128
    :sswitch_2
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Liwg;->b:Ljava/lang/String;

    goto :goto_0

    .line 9111
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
    .line 8082
    iget-object v0, p0, Liwg;->a:Lixc;

    if-eqz v0, :cond_0

    .line 8083
    const/4 v0, 0x1

    iget-object v1, p0, Liwg;->a:Lixc;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 8085
    :cond_0
    iget-object v0, p0, Liwg;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 8086
    const/4 v0, 0x2

    iget-object v1, p0, Liwg;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 8088
    :cond_1
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 8089
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 8093
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 8094
    iget-object v1, p0, Liwg;->a:Lixc;

    if-eqz v1, :cond_0

    .line 8095
    const/4 v1, 0x1

    iget-object v2, p0, Liwg;->a:Lixc;

    .line 8096
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 8098
    :cond_0
    iget-object v1, p0, Liwg;->b:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 8099
    const/4 v1, 0x2

    iget-object v2, p0, Liwg;->b:Ljava/lang/String;

    .line 8100
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 8102
    :cond_1
    return v0
.end method
