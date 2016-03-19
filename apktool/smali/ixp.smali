.class public final Lixp;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lixp;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile c:[Lixp;


# instance fields
.field public a:Lixc;

.field public b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 3941
    invoke-direct {p0}, Llyb;-><init>()V

    .line 4946
    iput-object v0, p0, Lixp;->a:Lixc;

    .line 4947
    iput-object v0, p0, Lixp;->b:Ljava/lang/String;

    .line 4948
    iput-object v0, p0, Lixp;->eD:Llyd;

    .line 4949
    const/4 v0, -0x1

    iput v0, p0, Lixp;->eE:I

    .line 3943
    return-void
.end method

.method public static d()[Lixp;
    .locals 2

    .prologue
    .line 3922
    sget-object v0, Lixp;->c:[Lixp;

    if-nez v0, :cond_1

    .line 3923
    sget-object v1, Llyf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 3925
    :try_start_0
    sget-object v0, Lixp;->c:[Lixp;

    if-nez v0, :cond_0

    .line 3926
    const/4 v0, 0x0

    new-array v0, v0, [Lixp;

    sput-object v0, Lixp;->c:[Lixp;

    .line 3928
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3930
    :cond_1
    sget-object v0, Lixp;->c:[Lixp;

    return-object v0

    .line 3928
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
    .line 4984
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 4985
    sparse-switch v0, :sswitch_data_0

    .line 4989
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4990
    :sswitch_0
    return-object p0

    .line 4995
    :sswitch_1
    iget-object v0, p0, Lixp;->a:Lixc;

    if-nez v0, :cond_1

    .line 4996
    new-instance v0, Lixc;

    invoke-direct {v0}, Lixc;-><init>()V

    iput-object v0, p0, Lixp;->a:Lixc;

    .line 4998
    :cond_1
    iget-object v0, p0, Lixp;->a:Lixc;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 5002
    :sswitch_2
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lixp;->b:Ljava/lang/String;

    goto :goto_0

    .line 4985
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
    .line 3956
    iget-object v0, p0, Lixp;->a:Lixc;

    if-eqz v0, :cond_0

    .line 3957
    const/4 v0, 0x1

    iget-object v1, p0, Lixp;->a:Lixc;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 3959
    :cond_0
    iget-object v0, p0, Lixp;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 3960
    const/4 v0, 0x2

    iget-object v1, p0, Lixp;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 3962
    :cond_1
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 3963
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 3967
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 3968
    iget-object v1, p0, Lixp;->a:Lixc;

    if-eqz v1, :cond_0

    .line 3969
    const/4 v1, 0x1

    iget-object v2, p0, Lixp;->a:Lixc;

    .line 3970
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3972
    :cond_0
    iget-object v1, p0, Lixp;->b:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 3973
    const/4 v1, 0x2

    iget-object v2, p0, Lixp;->b:Ljava/lang/String;

    .line 3974
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3976
    :cond_1
    return v0
.end method
