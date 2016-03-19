.class public final Liwr;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Liwr;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile d:[Liwr;


# instance fields
.field public a:Lixc;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 5992
    invoke-direct {p0}, Llyb;-><init>()V

    .line 6997
    iput-object v0, p0, Liwr;->a:Lixc;

    .line 6998
    iput-object v0, p0, Liwr;->b:Ljava/lang/String;

    .line 6999
    iput-object v0, p0, Liwr;->c:Ljava/lang/Boolean;

    .line 7000
    iput-object v0, p0, Liwr;->eD:Llyd;

    .line 7001
    const/4 v0, -0x1

    iput v0, p0, Liwr;->eE:I

    .line 5994
    return-void
.end method

.method public static d()[Liwr;
    .locals 2

    .prologue
    .line 5970
    sget-object v0, Liwr;->d:[Liwr;

    if-nez v0, :cond_1

    .line 5971
    sget-object v1, Llyf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 5973
    :try_start_0
    sget-object v0, Liwr;->d:[Liwr;

    if-nez v0, :cond_0

    .line 5974
    const/4 v0, 0x0

    new-array v0, v0, [Liwr;

    sput-object v0, Liwr;->d:[Liwr;

    .line 5976
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5978
    :cond_1
    sget-object v0, Liwr;->d:[Liwr;

    return-object v0

    .line 5976
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
    .line 8043
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 8044
    sparse-switch v0, :sswitch_data_0

    .line 8048
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 8049
    :sswitch_0
    return-object p0

    .line 8054
    :sswitch_1
    iget-object v0, p0, Liwr;->a:Lixc;

    if-nez v0, :cond_1

    .line 8055
    new-instance v0, Lixc;

    invoke-direct {v0}, Lixc;-><init>()V

    iput-object v0, p0, Liwr;->a:Lixc;

    .line 8057
    :cond_1
    iget-object v0, p0, Liwr;->a:Lixc;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 8061
    :sswitch_2
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Liwr;->b:Ljava/lang/String;

    goto :goto_0

    .line 8065
    :sswitch_3
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Liwr;->c:Ljava/lang/Boolean;

    goto :goto_0

    .line 8044
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 6008
    iget-object v0, p0, Liwr;->a:Lixc;

    if-eqz v0, :cond_0

    .line 6009
    const/4 v0, 0x1

    iget-object v1, p0, Liwr;->a:Lixc;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 6011
    :cond_0
    iget-object v0, p0, Liwr;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 6012
    const/4 v0, 0x2

    iget-object v1, p0, Liwr;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 6014
    :cond_1
    iget-object v0, p0, Liwr;->c:Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    .line 6015
    const/4 v0, 0x3

    iget-object v1, p0, Liwr;->c:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 6017
    :cond_2
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 6018
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 6022
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 6023
    iget-object v1, p0, Liwr;->a:Lixc;

    if-eqz v1, :cond_0

    .line 6024
    const/4 v1, 0x1

    iget-object v2, p0, Liwr;->a:Lixc;

    .line 6025
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 6027
    :cond_0
    iget-object v1, p0, Liwr;->b:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 6028
    const/4 v1, 0x2

    iget-object v2, p0, Liwr;->b:Ljava/lang/String;

    .line 6029
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 6031
    :cond_1
    iget-object v1, p0, Liwr;->c:Ljava/lang/Boolean;

    if-eqz v1, :cond_2

    .line 6032
    const/4 v1, 0x3

    iget-object v2, p0, Liwr;->c:Ljava/lang/Boolean;

    .line 6033
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 7620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 6033
    add-int/2addr v0, v1

    .line 6035
    :cond_2
    return v0
.end method
