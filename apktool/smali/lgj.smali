.class public final Llgj;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Llgj;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile c:[Llgj;


# instance fields
.field public a:I

.field public b:Lltq;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 37
    invoke-direct {p0}, Llyb;-><init>()V

    .line 38
    const/high16 v0, -0x80000000

    iput v0, p0, Llgj;->a:I

    .line 39
    iput-object v1, p0, Llgj;->b:Lltq;

    .line 40
    iput-object v1, p0, Llgj;->eD:Llyd;

    .line 41
    const/4 v0, -0x1

    iput v0, p0, Llgj;->eE:I

    .line 42
    return-void
.end method

.method public static d()[Llgj;
    .locals 2

    .prologue
    .line 18
    sget-object v0, Llgj;->c:[Llgj;

    if-nez v0, :cond_1

    .line 19
    sget-object v1, Llyf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 21
    :try_start_0
    sget-object v0, Llgj;->c:[Llgj;

    if-nez v0, :cond_0

    .line 22
    const/4 v0, 0x0

    new-array v0, v0, [Llgj;

    sput-object v0, Llgj;->c:[Llgj;

    .line 24
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    :cond_1
    sget-object v0, Llgj;->c:[Llgj;

    return-object v0

    .line 24
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
    .line 1075
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1076
    sparse-switch v0, :sswitch_data_0

    .line 1080
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1081
    :sswitch_0
    return-object p0

    .line 1086
    :sswitch_1
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 1087
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1090
    :pswitch_0
    iput v0, p0, Llgj;->a:I

    goto :goto_0

    .line 1096
    :sswitch_2
    iget-object v0, p0, Llgj;->b:Lltq;

    if-nez v0, :cond_1

    .line 1097
    new-instance v0, Lltq;

    invoke-direct {v0}, Lltq;-><init>()V

    iput-object v0, p0, Llgj;->b:Lltq;

    .line 1099
    :cond_1
    iget-object v0, p0, Llgj;->b:Lltq;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1076
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch

    .line 1087
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 47
    iget v0, p0, Llgj;->a:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    .line 48
    const/4 v0, 0x1

    iget v1, p0, Llgj;->a:I

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 50
    :cond_0
    iget-object v0, p0, Llgj;->b:Lltq;

    if-eqz v0, :cond_1

    .line 51
    const/4 v0, 0x2

    iget-object v1, p0, Llgj;->b:Lltq;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 53
    :cond_1
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 54
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 58
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 59
    iget v1, p0, Llgj;->a:I

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_0

    .line 60
    const/4 v1, 0x1

    iget v2, p0, Llgj;->a:I

    .line 61
    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 63
    :cond_0
    iget-object v1, p0, Llgj;->b:Lltq;

    if-eqz v1, :cond_1

    .line 64
    const/4 v1, 0x2

    iget-object v2, p0, Llgj;->b:Lltq;

    .line 65
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 67
    :cond_1
    return v0
.end method
