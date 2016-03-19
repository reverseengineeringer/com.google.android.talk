.class public final Liwv;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Liwv;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile c:[Liwv;


# instance fields
.field public a:Lixc;

.field public b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 7054
    invoke-direct {p0}, Llyb;-><init>()V

    .line 8059
    iput-object v0, p0, Liwv;->a:Lixc;

    .line 8060
    iput-object v0, p0, Liwv;->b:Ljava/lang/String;

    .line 8061
    iput-object v0, p0, Liwv;->eD:Llyd;

    .line 8062
    const/4 v0, -0x1

    iput v0, p0, Liwv;->eE:I

    .line 7056
    return-void
.end method

.method public static d()[Liwv;
    .locals 2

    .prologue
    .line 7035
    sget-object v0, Liwv;->c:[Liwv;

    if-nez v0, :cond_1

    .line 7036
    sget-object v1, Llyf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 7038
    :try_start_0
    sget-object v0, Liwv;->c:[Liwv;

    if-nez v0, :cond_0

    .line 7039
    const/4 v0, 0x0

    new-array v0, v0, [Liwv;

    sput-object v0, Liwv;->c:[Liwv;

    .line 7041
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7043
    :cond_1
    sget-object v0, Liwv;->c:[Liwv;

    return-object v0

    .line 7041
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
    .line 8097
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 8098
    sparse-switch v0, :sswitch_data_0

    .line 8102
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 8103
    :sswitch_0
    return-object p0

    .line 8108
    :sswitch_1
    iget-object v0, p0, Liwv;->a:Lixc;

    if-nez v0, :cond_1

    .line 8109
    new-instance v0, Lixc;

    invoke-direct {v0}, Lixc;-><init>()V

    iput-object v0, p0, Liwv;->a:Lixc;

    .line 8111
    :cond_1
    iget-object v0, p0, Liwv;->a:Lixc;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 8115
    :sswitch_2
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Liwv;->b:Ljava/lang/String;

    goto :goto_0

    .line 8098
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
    .line 7069
    iget-object v0, p0, Liwv;->a:Lixc;

    if-eqz v0, :cond_0

    .line 7070
    const/4 v0, 0x1

    iget-object v1, p0, Liwv;->a:Lixc;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 7072
    :cond_0
    iget-object v0, p0, Liwv;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 7073
    const/4 v0, 0x2

    iget-object v1, p0, Liwv;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 7075
    :cond_1
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 7076
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 7080
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 7081
    iget-object v1, p0, Liwv;->a:Lixc;

    if-eqz v1, :cond_0

    .line 7082
    const/4 v1, 0x1

    iget-object v2, p0, Liwv;->a:Lixc;

    .line 7083
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 7085
    :cond_0
    iget-object v1, p0, Liwv;->b:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 7086
    const/4 v1, 0x2

    iget-object v2, p0, Liwv;->b:Ljava/lang/String;

    .line 7087
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 7089
    :cond_1
    return v0
.end method
