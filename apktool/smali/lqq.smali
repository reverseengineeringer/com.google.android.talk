.class public final Llqq;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Llqq;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile b:[Llqq;


# instance fields
.field public a:Llrf;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 28
    invoke-direct {p0}, Llyb;-><init>()V

    .line 29
    iput-object v0, p0, Llqq;->a:Llrf;

    .line 30
    iput-object v0, p0, Llqq;->eD:Llyd;

    .line 31
    const/4 v0, -0x1

    iput v0, p0, Llqq;->eE:I

    .line 32
    return-void
.end method

.method public static d()[Llqq;
    .locals 2

    .prologue
    .line 12
    sget-object v0, Llqq;->b:[Llqq;

    if-nez v0, :cond_1

    .line 13
    sget-object v1, Llyf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 15
    :try_start_0
    sget-object v0, Llqq;->b:[Llqq;

    if-nez v0, :cond_0

    .line 16
    const/4 v0, 0x0

    new-array v0, v0, [Llqq;

    sput-object v0, Llqq;->b:[Llqq;

    .line 18
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    :cond_1
    sget-object v0, Llqq;->b:[Llqq;

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
    .line 1058
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1059
    sparse-switch v0, :sswitch_data_0

    .line 1063
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1064
    :sswitch_0
    return-object p0

    .line 1069
    :sswitch_1
    iget-object v0, p0, Llqq;->a:Llrf;

    if-nez v0, :cond_1

    .line 1070
    new-instance v0, Llrf;

    invoke-direct {v0}, Llrf;-><init>()V

    iput-object v0, p0, Llqq;->a:Llrf;

    .line 1072
    :cond_1
    iget-object v0, p0, Llqq;->a:Llrf;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1059
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 37
    iget-object v0, p0, Llqq;->a:Llrf;

    if-eqz v0, :cond_0

    .line 38
    const/4 v0, 0x1

    iget-object v1, p0, Llqq;->a:Llrf;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 40
    :cond_0
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 41
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 45
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 46
    iget-object v1, p0, Llqq;->a:Llrf;

    if-eqz v1, :cond_0

    .line 47
    const/4 v1, 0x1

    iget-object v2, p0, Llqq;->a:Llrf;

    .line 48
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 50
    :cond_0
    return v0
.end method
