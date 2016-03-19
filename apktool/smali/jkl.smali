.class public final Ljkl;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljkl;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile c:[Ljkl;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 10531
    invoke-direct {p0}, Llyb;-><init>()V

    .line 11536
    iput-object v0, p0, Ljkl;->a:Ljava/lang/String;

    .line 11537
    iput-object v0, p0, Ljkl;->b:Ljava/lang/String;

    .line 11538
    iput-object v0, p0, Ljkl;->eD:Llyd;

    .line 11539
    const/4 v0, -0x1

    iput v0, p0, Ljkl;->eE:I

    .line 10533
    return-void
.end method

.method public static d()[Ljkl;
    .locals 2

    .prologue
    .line 10512
    sget-object v0, Ljkl;->c:[Ljkl;

    if-nez v0, :cond_1

    .line 10513
    sget-object v1, Llyf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 10515
    :try_start_0
    sget-object v0, Ljkl;->c:[Ljkl;

    if-nez v0, :cond_0

    .line 10516
    const/4 v0, 0x0

    new-array v0, v0, [Ljkl;

    sput-object v0, Ljkl;->c:[Ljkl;

    .line 10518
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10520
    :cond_1
    sget-object v0, Ljkl;->c:[Ljkl;

    return-object v0

    .line 10518
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
    .line 11574
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 11575
    sparse-switch v0, :sswitch_data_0

    .line 11579
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 11580
    :sswitch_0
    return-object p0

    .line 11585
    :sswitch_1
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljkl;->a:Ljava/lang/String;

    goto :goto_0

    .line 11589
    :sswitch_2
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljkl;->b:Ljava/lang/String;

    goto :goto_0

    .line 11575
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
    .line 10546
    iget-object v0, p0, Ljkl;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 10547
    const/4 v0, 0x1

    iget-object v1, p0, Ljkl;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 10549
    :cond_0
    iget-object v0, p0, Ljkl;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 10550
    const/4 v0, 0x2

    iget-object v1, p0, Ljkl;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 10552
    :cond_1
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 10553
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 10557
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 10558
    iget-object v1, p0, Ljkl;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 10559
    const/4 v1, 0x1

    iget-object v2, p0, Ljkl;->a:Ljava/lang/String;

    .line 10560
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 10562
    :cond_0
    iget-object v1, p0, Ljkl;->b:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 10563
    const/4 v1, 0x2

    iget-object v2, p0, Ljkl;->b:Ljava/lang/String;

    .line 10564
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 10566
    :cond_1
    return v0
.end method
