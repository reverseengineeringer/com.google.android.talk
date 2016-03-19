.class public final Livm;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Livm;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile f:[Livm;


# instance fields
.field public a:Ljava/lang/Integer;

.field public b:Ljava/lang/Double;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/Integer;

.field public e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 8842
    invoke-direct {p0}, Llyb;-><init>()V

    .line 9847
    iput-object v0, p0, Livm;->a:Ljava/lang/Integer;

    .line 9848
    iput-object v0, p0, Livm;->b:Ljava/lang/Double;

    .line 9849
    iput-object v0, p0, Livm;->c:Ljava/lang/String;

    .line 9850
    iput-object v0, p0, Livm;->d:Ljava/lang/Integer;

    .line 9851
    iput-object v0, p0, Livm;->e:Ljava/lang/String;

    .line 9852
    iput-object v0, p0, Livm;->eD:Llyd;

    .line 9853
    const/4 v0, -0x1

    iput v0, p0, Livm;->eE:I

    .line 8844
    return-void
.end method

.method public static d()[Livm;
    .locals 2

    .prologue
    .line 8814
    sget-object v0, Livm;->f:[Livm;

    if-nez v0, :cond_1

    .line 8815
    sget-object v1, Llyf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 8817
    :try_start_0
    sget-object v0, Livm;->f:[Livm;

    if-nez v0, :cond_0

    .line 8818
    const/4 v0, 0x0

    new-array v0, v0, [Livm;

    sput-object v0, Livm;->f:[Livm;

    .line 8820
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8822
    :cond_1
    sget-object v0, Livm;->f:[Livm;

    return-object v0

    .line 8820
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
    .locals 2

    .prologue
    .line 10909
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 10910
    sparse-switch v0, :sswitch_data_0

    .line 10914
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 10915
    :sswitch_0
    return-object p0

    .line 10920
    :sswitch_1
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 10921
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 10934
    :pswitch_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Livm;->a:Ljava/lang/Integer;

    goto :goto_0

    .line 10940
    :sswitch_2
    invoke-virtual {p1}, Llxy;->b()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Livm;->b:Ljava/lang/Double;

    goto :goto_0

    .line 10944
    :sswitch_3
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Livm;->c:Ljava/lang/String;

    goto :goto_0

    .line 10948
    :sswitch_4
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 10949
    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 10958
    :pswitch_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Livm;->d:Ljava/lang/Integer;

    goto :goto_0

    .line 10964
    :sswitch_5
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Livm;->e:Ljava/lang/String;

    goto :goto_0

    .line 10910
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x11 -> :sswitch_2
        0x1a -> :sswitch_3
        0x20 -> :sswitch_4
        0x2a -> :sswitch_5
    .end sparse-switch

    .line 10921
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 10949
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public a(Llxz;)V
    .locals 4

    .prologue
    .line 8860
    iget-object v0, p0, Livm;->a:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 8861
    const/4 v0, 0x1

    iget-object v1, p0, Livm;->a:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 8863
    :cond_0
    iget-object v0, p0, Livm;->b:Ljava/lang/Double;

    if-eqz v0, :cond_1

    .line 8864
    const/4 v0, 0x2

    iget-object v1, p0, Livm;->b:Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Llxz;->a(ID)V

    .line 8866
    :cond_1
    iget-object v0, p0, Livm;->c:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 8867
    const/4 v0, 0x3

    iget-object v1, p0, Livm;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 8869
    :cond_2
    iget-object v0, p0, Livm;->d:Ljava/lang/Integer;

    if-eqz v0, :cond_3

    .line 8870
    const/4 v0, 0x4

    iget-object v1, p0, Livm;->d:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 8872
    :cond_3
    iget-object v0, p0, Livm;->e:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 8873
    const/4 v0, 0x5

    iget-object v1, p0, Livm;->e:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 8875
    :cond_4
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 8876
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 8880
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 8881
    iget-object v1, p0, Livm;->a:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 8882
    const/4 v1, 0x1

    iget-object v2, p0, Livm;->a:Ljava/lang/Integer;

    .line 8883
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 8885
    :cond_0
    iget-object v1, p0, Livm;->b:Ljava/lang/Double;

    if-eqz v1, :cond_1

    .line 8886
    const/4 v1, 0x2

    iget-object v2, p0, Livm;->b:Ljava/lang/Double;

    .line 8887
    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    .line 10561
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x8

    .line 8887
    add-int/2addr v0, v1

    .line 8889
    :cond_1
    iget-object v1, p0, Livm;->c:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 8890
    const/4 v1, 0x3

    iget-object v2, p0, Livm;->c:Ljava/lang/String;

    .line 8891
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 8893
    :cond_2
    iget-object v1, p0, Livm;->d:Ljava/lang/Integer;

    if-eqz v1, :cond_3

    .line 8894
    const/4 v1, 0x4

    iget-object v2, p0, Livm;->d:Ljava/lang/Integer;

    .line 8895
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 8897
    :cond_3
    iget-object v1, p0, Livm;->e:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 8898
    const/4 v1, 0x5

    iget-object v2, p0, Livm;->e:Ljava/lang/String;

    .line 8899
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 8901
    :cond_4
    return v0
.end method
