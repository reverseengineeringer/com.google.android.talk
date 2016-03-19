.class public final Livu;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Livu;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile d:[Livu;


# instance fields
.field public a:Lixc;

.field public b:Livv;

.field public c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 4971
    invoke-direct {p0}, Llyb;-><init>()V

    .line 5976
    iput-object v0, p0, Livu;->a:Lixc;

    .line 5977
    iput-object v0, p0, Livu;->b:Livv;

    .line 5978
    iput-object v0, p0, Livu;->c:Ljava/lang/String;

    .line 5979
    iput-object v0, p0, Livu;->eD:Llyd;

    .line 5980
    const/4 v0, -0x1

    iput v0, p0, Livu;->eE:I

    .line 4973
    return-void
.end method

.method public static d()[Livu;
    .locals 2

    .prologue
    .line 4949
    sget-object v0, Livu;->d:[Livu;

    if-nez v0, :cond_1

    .line 4950
    sget-object v1, Llyf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 4952
    :try_start_0
    sget-object v0, Livu;->d:[Livu;

    if-nez v0, :cond_0

    .line 4953
    const/4 v0, 0x0

    new-array v0, v0, [Livu;

    sput-object v0, Livu;->d:[Livu;

    .line 4955
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4957
    :cond_1
    sget-object v0, Livu;->d:[Livu;

    return-object v0

    .line 4955
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
    .line 6022
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 6023
    sparse-switch v0, :sswitch_data_0

    .line 6027
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 6028
    :sswitch_0
    return-object p0

    .line 6033
    :sswitch_1
    iget-object v0, p0, Livu;->a:Lixc;

    if-nez v0, :cond_1

    .line 6034
    new-instance v0, Lixc;

    invoke-direct {v0}, Lixc;-><init>()V

    iput-object v0, p0, Livu;->a:Lixc;

    .line 6036
    :cond_1
    iget-object v0, p0, Livu;->a:Lixc;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 6040
    :sswitch_2
    iget-object v0, p0, Livu;->b:Livv;

    if-nez v0, :cond_2

    .line 6041
    new-instance v0, Livv;

    invoke-direct {v0}, Livv;-><init>()V

    iput-object v0, p0, Livu;->b:Livv;

    .line 6043
    :cond_2
    iget-object v0, p0, Livu;->b:Livv;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 6047
    :sswitch_3
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Livu;->c:Ljava/lang/String;

    goto :goto_0

    .line 6023
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 4987
    iget-object v0, p0, Livu;->a:Lixc;

    if-eqz v0, :cond_0

    .line 4988
    const/4 v0, 0x1

    iget-object v1, p0, Livu;->a:Lixc;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 4990
    :cond_0
    iget-object v0, p0, Livu;->b:Livv;

    if-eqz v0, :cond_1

    .line 4991
    const/4 v0, 0x2

    iget-object v1, p0, Livu;->b:Livv;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 4993
    :cond_1
    iget-object v0, p0, Livu;->c:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 4994
    const/4 v0, 0x3

    iget-object v1, p0, Livu;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 4996
    :cond_2
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 4997
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 5001
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 5002
    iget-object v1, p0, Livu;->a:Lixc;

    if-eqz v1, :cond_0

    .line 5003
    const/4 v1, 0x1

    iget-object v2, p0, Livu;->a:Lixc;

    .line 5004
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5006
    :cond_0
    iget-object v1, p0, Livu;->b:Livv;

    if-eqz v1, :cond_1

    .line 5007
    const/4 v1, 0x2

    iget-object v2, p0, Livu;->b:Livv;

    .line 5008
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5010
    :cond_1
    iget-object v1, p0, Livu;->c:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 5011
    const/4 v1, 0x3

    iget-object v2, p0, Livu;->c:Ljava/lang/String;

    .line 5012
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5014
    :cond_2
    return v0
.end method
