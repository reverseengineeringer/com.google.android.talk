.class public final Llmo;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Llmo;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile c:[Llmo;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Llmp;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 625
    invoke-direct {p0}, Llyb;-><init>()V

    .line 1630
    iput-object v0, p0, Llmo;->a:Ljava/lang/String;

    .line 1631
    iput-object v0, p0, Llmo;->b:Llmp;

    .line 1632
    iput-object v0, p0, Llmo;->eD:Llyd;

    .line 1633
    const/4 v0, -0x1

    iput v0, p0, Llmo;->eE:I

    .line 627
    return-void
.end method

.method public static d()[Llmo;
    .locals 2

    .prologue
    .line 606
    sget-object v0, Llmo;->c:[Llmo;

    if-nez v0, :cond_1

    .line 607
    sget-object v1, Llyf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 609
    :try_start_0
    sget-object v0, Llmo;->c:[Llmo;

    if-nez v0, :cond_0

    .line 610
    const/4 v0, 0x0

    new-array v0, v0, [Llmo;

    sput-object v0, Llmo;->c:[Llmo;

    .line 612
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 614
    :cond_1
    sget-object v0, Llmo;->c:[Llmo;

    return-object v0

    .line 612
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
    .line 1668
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1669
    sparse-switch v0, :sswitch_data_0

    .line 1673
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1674
    :sswitch_0
    return-object p0

    .line 1679
    :sswitch_1
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Llmo;->a:Ljava/lang/String;

    goto :goto_0

    .line 1683
    :sswitch_2
    iget-object v0, p0, Llmo;->b:Llmp;

    if-nez v0, :cond_1

    .line 1684
    new-instance v0, Llmp;

    invoke-direct {v0}, Llmp;-><init>()V

    iput-object v0, p0, Llmo;->b:Llmp;

    .line 1686
    :cond_1
    iget-object v0, p0, Llmo;->b:Llmp;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1669
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
    .line 640
    iget-object v0, p0, Llmo;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 641
    const/4 v0, 0x1

    iget-object v1, p0, Llmo;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 643
    :cond_0
    iget-object v0, p0, Llmo;->b:Llmp;

    if-eqz v0, :cond_1

    .line 644
    const/4 v0, 0x2

    iget-object v1, p0, Llmo;->b:Llmp;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 646
    :cond_1
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 647
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 651
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 652
    iget-object v1, p0, Llmo;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 653
    const/4 v1, 0x1

    iget-object v2, p0, Llmo;->a:Ljava/lang/String;

    .line 654
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 656
    :cond_0
    iget-object v1, p0, Llmo;->b:Llmp;

    if-eqz v1, :cond_1

    .line 657
    const/4 v1, 0x2

    iget-object v2, p0, Llmo;->b:Llmp;

    .line 658
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 660
    :cond_1
    return v0
.end method
