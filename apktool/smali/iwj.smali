.class public final Liwj;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Liwj;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile g:[Liwj;


# instance fields
.field public a:Lixc;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 6766
    invoke-direct {p0}, Llyb;-><init>()V

    .line 7771
    iput-object v0, p0, Liwj;->a:Lixc;

    .line 7772
    iput-object v0, p0, Liwj;->b:Ljava/lang/String;

    .line 7773
    iput-object v0, p0, Liwj;->c:Ljava/lang/String;

    .line 7774
    iput-object v0, p0, Liwj;->d:Ljava/lang/String;

    .line 7775
    iput-object v0, p0, Liwj;->e:Ljava/lang/String;

    .line 7776
    iput-object v0, p0, Liwj;->f:Ljava/lang/String;

    .line 7777
    iput-object v0, p0, Liwj;->eD:Llyd;

    .line 7778
    const/4 v0, -0x1

    iput v0, p0, Liwj;->eE:I

    .line 6768
    return-void
.end method

.method public static d()[Liwj;
    .locals 2

    .prologue
    .line 6735
    sget-object v0, Liwj;->g:[Liwj;

    if-nez v0, :cond_1

    .line 6736
    sget-object v1, Llyf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 6738
    :try_start_0
    sget-object v0, Liwj;->g:[Liwj;

    if-nez v0, :cond_0

    .line 6739
    const/4 v0, 0x0

    new-array v0, v0, [Liwj;

    sput-object v0, Liwj;->g:[Liwj;

    .line 6741
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6743
    :cond_1
    sget-object v0, Liwj;->g:[Liwj;

    return-object v0

    .line 6741
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
    .line 7841
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 7842
    sparse-switch v0, :sswitch_data_0

    .line 7846
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 7847
    :sswitch_0
    return-object p0

    .line 7852
    :sswitch_1
    iget-object v0, p0, Liwj;->a:Lixc;

    if-nez v0, :cond_1

    .line 7853
    new-instance v0, Lixc;

    invoke-direct {v0}, Lixc;-><init>()V

    iput-object v0, p0, Liwj;->a:Lixc;

    .line 7855
    :cond_1
    iget-object v0, p0, Liwj;->a:Lixc;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 7859
    :sswitch_2
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Liwj;->b:Ljava/lang/String;

    goto :goto_0

    .line 7863
    :sswitch_3
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Liwj;->c:Ljava/lang/String;

    goto :goto_0

    .line 7867
    :sswitch_4
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Liwj;->e:Ljava/lang/String;

    goto :goto_0

    .line 7871
    :sswitch_5
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Liwj;->d:Ljava/lang/String;

    goto :goto_0

    .line 7875
    :sswitch_6
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Liwj;->f:Ljava/lang/String;

    goto :goto_0

    .line 7842
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 6785
    iget-object v0, p0, Liwj;->a:Lixc;

    if-eqz v0, :cond_0

    .line 6786
    const/4 v0, 0x1

    iget-object v1, p0, Liwj;->a:Lixc;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 6788
    :cond_0
    iget-object v0, p0, Liwj;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 6789
    const/4 v0, 0x2

    iget-object v1, p0, Liwj;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 6791
    :cond_1
    iget-object v0, p0, Liwj;->c:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 6792
    const/4 v0, 0x3

    iget-object v1, p0, Liwj;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 6794
    :cond_2
    iget-object v0, p0, Liwj;->e:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 6795
    const/4 v0, 0x4

    iget-object v1, p0, Liwj;->e:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 6797
    :cond_3
    iget-object v0, p0, Liwj;->d:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 6798
    const/4 v0, 0x5

    iget-object v1, p0, Liwj;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 6800
    :cond_4
    iget-object v0, p0, Liwj;->f:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 6801
    const/4 v0, 0x6

    iget-object v1, p0, Liwj;->f:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 6803
    :cond_5
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 6804
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 6808
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 6809
    iget-object v1, p0, Liwj;->a:Lixc;

    if-eqz v1, :cond_0

    .line 6810
    const/4 v1, 0x1

    iget-object v2, p0, Liwj;->a:Lixc;

    .line 6811
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 6813
    :cond_0
    iget-object v1, p0, Liwj;->b:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 6814
    const/4 v1, 0x2

    iget-object v2, p0, Liwj;->b:Ljava/lang/String;

    .line 6815
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 6817
    :cond_1
    iget-object v1, p0, Liwj;->c:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 6818
    const/4 v1, 0x3

    iget-object v2, p0, Liwj;->c:Ljava/lang/String;

    .line 6819
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 6821
    :cond_2
    iget-object v1, p0, Liwj;->e:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 6822
    const/4 v1, 0x4

    iget-object v2, p0, Liwj;->e:Ljava/lang/String;

    .line 6823
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 6825
    :cond_3
    iget-object v1, p0, Liwj;->d:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 6826
    const/4 v1, 0x5

    iget-object v2, p0, Liwj;->d:Ljava/lang/String;

    .line 6827
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 6829
    :cond_4
    iget-object v1, p0, Liwj;->f:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 6830
    const/4 v1, 0x6

    iget-object v2, p0, Liwj;->f:Ljava/lang/String;

    .line 6831
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 6833
    :cond_5
    return v0
.end method
