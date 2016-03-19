.class public final Lmfy;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lmfy;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile c:[Lmfy;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 31
    invoke-direct {p0}, Llyb;-><init>()V

    .line 32
    iput-object v0, p0, Lmfy;->a:Ljava/lang/String;

    .line 33
    iput-object v0, p0, Lmfy;->b:Ljava/lang/String;

    .line 34
    iput-object v0, p0, Lmfy;->eD:Llyd;

    .line 35
    const/4 v0, -0x1

    iput v0, p0, Lmfy;->eE:I

    .line 36
    return-void
.end method

.method public static d()[Lmfy;
    .locals 2

    .prologue
    .line 12
    sget-object v0, Lmfy;->c:[Lmfy;

    if-nez v0, :cond_1

    .line 13
    sget-object v1, Llyf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 15
    :try_start_0
    sget-object v0, Lmfy;->c:[Lmfy;

    if-nez v0, :cond_0

    .line 16
    const/4 v0, 0x0

    new-array v0, v0, [Lmfy;

    sput-object v0, Lmfy;->c:[Lmfy;

    .line 18
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    :cond_1
    sget-object v0, Lmfy;->c:[Lmfy;

    return-object v0

    .line 18
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
    .line 1065
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1066
    sparse-switch v0, :sswitch_data_0

    .line 1070
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1071
    :sswitch_0
    return-object p0

    .line 1076
    :sswitch_1
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmfy;->a:Ljava/lang/String;

    goto :goto_0

    .line 1080
    :sswitch_2
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmfy;->b:Ljava/lang/String;

    goto :goto_0

    .line 1066
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
    .line 41
    const/4 v0, 0x1

    iget-object v1, p0, Lmfy;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 42
    iget-object v0, p0, Lmfy;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 43
    const/4 v0, 0x2

    iget-object v1, p0, Lmfy;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 45
    :cond_0
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 46
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 50
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 51
    const/4 v1, 0x1

    iget-object v2, p0, Lmfy;->a:Ljava/lang/String;

    .line 52
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 53
    iget-object v1, p0, Lmfy;->b:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 54
    const/4 v1, 0x2

    iget-object v2, p0, Lmfy;->b:Ljava/lang/String;

    .line 55
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 57
    :cond_0
    return v0
.end method
