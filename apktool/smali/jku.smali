.class public final Ljku;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljku;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile e:[Ljku;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/Integer;

.field public d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 6765
    invoke-direct {p0}, Llyb;-><init>()V

    .line 7770
    iput-object v0, p0, Ljku;->a:Ljava/lang/String;

    .line 7771
    iput-object v0, p0, Ljku;->b:Ljava/lang/String;

    .line 7772
    iput-object v0, p0, Ljku;->c:Ljava/lang/Integer;

    .line 7773
    iput-object v0, p0, Ljku;->d:Ljava/lang/String;

    .line 7774
    iput-object v0, p0, Ljku;->eD:Llyd;

    .line 7775
    const/4 v0, -0x1

    iput v0, p0, Ljku;->eE:I

    .line 6767
    return-void
.end method

.method public static d()[Ljku;
    .locals 2

    .prologue
    .line 6740
    sget-object v0, Ljku;->e:[Ljku;

    if-nez v0, :cond_1

    .line 6741
    sget-object v1, Llyf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 6743
    :try_start_0
    sget-object v0, Ljku;->e:[Ljku;

    if-nez v0, :cond_0

    .line 6744
    const/4 v0, 0x0

    new-array v0, v0, [Ljku;

    sput-object v0, Ljku;->e:[Ljku;

    .line 6746
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6748
    :cond_1
    sget-object v0, Ljku;->e:[Ljku;

    return-object v0

    .line 6746
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
    .line 7824
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 7825
    sparse-switch v0, :sswitch_data_0

    .line 7829
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 7830
    :sswitch_0
    return-object p0

    .line 7835
    :sswitch_1
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljku;->a:Ljava/lang/String;

    goto :goto_0

    .line 7839
    :sswitch_2
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljku;->b:Ljava/lang/String;

    goto :goto_0

    .line 7843
    :sswitch_3
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 7844
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 7848
    :pswitch_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Ljku;->c:Ljava/lang/Integer;

    goto :goto_0

    .line 7854
    :sswitch_4
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljku;->d:Ljava/lang/String;

    goto :goto_0

    .line 7825
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
        0x22 -> :sswitch_4
    .end sparse-switch

    .line 7844
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 6782
    iget-object v0, p0, Ljku;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 6783
    const/4 v0, 0x1

    iget-object v1, p0, Ljku;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 6785
    :cond_0
    iget-object v0, p0, Ljku;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 6786
    const/4 v0, 0x2

    iget-object v1, p0, Ljku;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 6788
    :cond_1
    iget-object v0, p0, Ljku;->c:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 6789
    const/4 v0, 0x3

    iget-object v1, p0, Ljku;->c:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 6791
    :cond_2
    iget-object v0, p0, Ljku;->d:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 6792
    const/4 v0, 0x4

    iget-object v1, p0, Ljku;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 6794
    :cond_3
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 6795
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 6799
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 6800
    iget-object v1, p0, Ljku;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 6801
    const/4 v1, 0x1

    iget-object v2, p0, Ljku;->a:Ljava/lang/String;

    .line 6802
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 6804
    :cond_0
    iget-object v1, p0, Ljku;->b:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 6805
    const/4 v1, 0x2

    iget-object v2, p0, Ljku;->b:Ljava/lang/String;

    .line 6806
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 6808
    :cond_1
    iget-object v1, p0, Ljku;->c:Ljava/lang/Integer;

    if-eqz v1, :cond_2

    .line 6809
    const/4 v1, 0x3

    iget-object v2, p0, Ljku;->c:Ljava/lang/Integer;

    .line 6810
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 6812
    :cond_2
    iget-object v1, p0, Ljku;->d:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 6813
    const/4 v1, 0x4

    iget-object v2, p0, Ljku;->d:Ljava/lang/String;

    .line 6814
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 6816
    :cond_3
    return v0
.end method
