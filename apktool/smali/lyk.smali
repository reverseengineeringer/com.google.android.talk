.class public final Llyk;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Llyk;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile c:[Llyk;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Llyn;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 34
    invoke-direct {p0}, Llyb;-><init>()V

    .line 35
    iput-object v0, p0, Llyk;->a:Ljava/lang/String;

    .line 36
    iput-object v0, p0, Llyk;->b:Llyn;

    .line 37
    iput-object v0, p0, Llyk;->eD:Llyd;

    .line 38
    const/4 v0, -0x1

    iput v0, p0, Llyk;->eE:I

    .line 39
    return-void
.end method

.method public static d()[Llyk;
    .locals 2

    .prologue
    .line 15
    sget-object v0, Llyk;->c:[Llyk;

    if-nez v0, :cond_1

    .line 16
    sget-object v1, Llyf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 18
    :try_start_0
    sget-object v0, Llyk;->c:[Llyk;

    if-nez v0, :cond_0

    .line 19
    const/4 v0, 0x0

    new-array v0, v0, [Llyk;

    sput-object v0, Llyk;->c:[Llyk;

    .line 21
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    :cond_1
    sget-object v0, Llyk;->c:[Llyk;

    return-object v0

    .line 21
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
    .line 1072
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1073
    sparse-switch v0, :sswitch_data_0

    .line 1077
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1078
    :sswitch_0
    return-object p0

    .line 1083
    :sswitch_1
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Llyk;->a:Ljava/lang/String;

    goto :goto_0

    .line 1087
    :sswitch_2
    iget-object v0, p0, Llyk;->b:Llyn;

    if-nez v0, :cond_1

    .line 1088
    new-instance v0, Llyn;

    invoke-direct {v0}, Llyn;-><init>()V

    iput-object v0, p0, Llyk;->b:Llyn;

    .line 1090
    :cond_1
    iget-object v0, p0, Llyk;->b:Llyn;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1073
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
    .line 44
    iget-object v0, p0, Llyk;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 45
    const/4 v0, 0x1

    iget-object v1, p0, Llyk;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 47
    :cond_0
    iget-object v0, p0, Llyk;->b:Llyn;

    if-eqz v0, :cond_1

    .line 48
    const/4 v0, 0x2

    iget-object v1, p0, Llyk;->b:Llyn;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 50
    :cond_1
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 51
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 55
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 56
    iget-object v1, p0, Llyk;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 57
    const/4 v1, 0x1

    iget-object v2, p0, Llyk;->a:Ljava/lang/String;

    .line 58
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 60
    :cond_0
    iget-object v1, p0, Llyk;->b:Llyn;

    if-eqz v1, :cond_1

    .line 61
    const/4 v1, 0x2

    iget-object v2, p0, Llyk;->b:Llyn;

    .line 62
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 64
    :cond_1
    return v0
.end method
