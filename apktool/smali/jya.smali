.class public final Ljya;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljya;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile c:[Ljya;


# instance fields
.field public a:Ljxw;

.field public b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 28563
    invoke-direct {p0}, Llyb;-><init>()V

    .line 29568
    iput-object v0, p0, Ljya;->a:Ljxw;

    .line 29569
    iput-object v0, p0, Ljya;->b:Ljava/lang/String;

    .line 29570
    iput-object v0, p0, Ljya;->eD:Llyd;

    .line 29571
    const/4 v0, -0x1

    iput v0, p0, Ljya;->eE:I

    .line 28565
    return-void
.end method

.method public static d()[Ljya;
    .locals 2

    .prologue
    .line 28544
    sget-object v0, Ljya;->c:[Ljya;

    if-nez v0, :cond_1

    .line 28545
    sget-object v1, Llyf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 28547
    :try_start_0
    sget-object v0, Ljya;->c:[Ljya;

    if-nez v0, :cond_0

    .line 28548
    const/4 v0, 0x0

    new-array v0, v0, [Ljya;

    sput-object v0, Ljya;->c:[Ljya;

    .line 28550
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28552
    :cond_1
    sget-object v0, Ljya;->c:[Ljya;

    return-object v0

    .line 28550
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
    .line 29606
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 29607
    sparse-switch v0, :sswitch_data_0

    .line 29611
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 29612
    :sswitch_0
    return-object p0

    .line 29617
    :sswitch_1
    iget-object v0, p0, Ljya;->a:Ljxw;

    if-nez v0, :cond_1

    .line 29618
    new-instance v0, Ljxw;

    invoke-direct {v0}, Ljxw;-><init>()V

    iput-object v0, p0, Ljya;->a:Ljxw;

    .line 29620
    :cond_1
    iget-object v0, p0, Ljya;->a:Ljxw;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 29624
    :sswitch_2
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljya;->b:Ljava/lang/String;

    goto :goto_0

    .line 29607
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
    .line 28578
    iget-object v0, p0, Ljya;->a:Ljxw;

    if-eqz v0, :cond_0

    .line 28579
    const/4 v0, 0x1

    iget-object v1, p0, Ljya;->a:Ljxw;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 28581
    :cond_0
    iget-object v0, p0, Ljya;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 28582
    const/4 v0, 0x2

    iget-object v1, p0, Ljya;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 28584
    :cond_1
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 28585
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 28589
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 28590
    iget-object v1, p0, Ljya;->a:Ljxw;

    if-eqz v1, :cond_0

    .line 28591
    const/4 v1, 0x1

    iget-object v2, p0, Ljya;->a:Ljxw;

    .line 28592
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 28594
    :cond_0
    iget-object v1, p0, Ljya;->b:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 28595
    const/4 v1, 0x2

    iget-object v2, p0, Ljya;->b:Ljava/lang/String;

    .line 28596
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 28598
    :cond_1
    return v0
.end method
