.class public final Lixi;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lixi;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile e:[Lixi;


# instance fields
.field public a:Lixc;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 6625
    invoke-direct {p0}, Llyb;-><init>()V

    .line 7630
    iput-object v0, p0, Lixi;->a:Lixc;

    .line 7631
    iput-object v0, p0, Lixi;->b:Ljava/lang/String;

    .line 7632
    iput-object v0, p0, Lixi;->c:Ljava/lang/String;

    .line 7633
    iput-object v0, p0, Lixi;->d:Ljava/lang/String;

    .line 7634
    iput-object v0, p0, Lixi;->eD:Llyd;

    .line 7635
    const/4 v0, -0x1

    iput v0, p0, Lixi;->eE:I

    .line 6627
    return-void
.end method

.method public static d()[Lixi;
    .locals 2

    .prologue
    .line 6600
    sget-object v0, Lixi;->e:[Lixi;

    if-nez v0, :cond_1

    .line 6601
    sget-object v1, Llyf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 6603
    :try_start_0
    sget-object v0, Lixi;->e:[Lixi;

    if-nez v0, :cond_0

    .line 6604
    const/4 v0, 0x0

    new-array v0, v0, [Lixi;

    sput-object v0, Lixi;->e:[Lixi;

    .line 6606
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6608
    :cond_1
    sget-object v0, Lixi;->e:[Lixi;

    return-object v0

    .line 6606
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
    .line 7684
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 7685
    sparse-switch v0, :sswitch_data_0

    .line 7689
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 7690
    :sswitch_0
    return-object p0

    .line 7695
    :sswitch_1
    iget-object v0, p0, Lixi;->a:Lixc;

    if-nez v0, :cond_1

    .line 7696
    new-instance v0, Lixc;

    invoke-direct {v0}, Lixc;-><init>()V

    iput-object v0, p0, Lixi;->a:Lixc;

    .line 7698
    :cond_1
    iget-object v0, p0, Lixi;->a:Lixc;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 7702
    :sswitch_2
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lixi;->b:Ljava/lang/String;

    goto :goto_0

    .line 7706
    :sswitch_3
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lixi;->d:Ljava/lang/String;

    goto :goto_0

    .line 7710
    :sswitch_4
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lixi;->c:Ljava/lang/String;

    goto :goto_0

    .line 7685
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 6642
    iget-object v0, p0, Lixi;->a:Lixc;

    if-eqz v0, :cond_0

    .line 6643
    const/4 v0, 0x1

    iget-object v1, p0, Lixi;->a:Lixc;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 6645
    :cond_0
    iget-object v0, p0, Lixi;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 6646
    const/4 v0, 0x2

    iget-object v1, p0, Lixi;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 6648
    :cond_1
    iget-object v0, p0, Lixi;->d:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 6649
    const/4 v0, 0x3

    iget-object v1, p0, Lixi;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 6651
    :cond_2
    iget-object v0, p0, Lixi;->c:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 6652
    const/4 v0, 0x4

    iget-object v1, p0, Lixi;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 6654
    :cond_3
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 6655
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 6659
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 6660
    iget-object v1, p0, Lixi;->a:Lixc;

    if-eqz v1, :cond_0

    .line 6661
    const/4 v1, 0x1

    iget-object v2, p0, Lixi;->a:Lixc;

    .line 6662
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 6664
    :cond_0
    iget-object v1, p0, Lixi;->b:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 6665
    const/4 v1, 0x2

    iget-object v2, p0, Lixi;->b:Ljava/lang/String;

    .line 6666
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 6668
    :cond_1
    iget-object v1, p0, Lixi;->d:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 6669
    const/4 v1, 0x3

    iget-object v2, p0, Lixi;->d:Ljava/lang/String;

    .line 6670
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 6672
    :cond_2
    iget-object v1, p0, Lixi;->c:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 6673
    const/4 v1, 0x4

    iget-object v2, p0, Lixi;->c:Ljava/lang/String;

    .line 6674
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 6676
    :cond_3
    return v0
.end method
