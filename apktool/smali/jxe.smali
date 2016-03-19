.class public final Ljxe;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljxe;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile c:[Ljxe;


# instance fields
.field public a:Llcf;

.field public b:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 36993
    invoke-direct {p0}, Llyb;-><init>()V

    .line 37998
    iput-object v0, p0, Ljxe;->a:Llcf;

    .line 37999
    iput-object v0, p0, Ljxe;->b:Ljava/lang/Integer;

    .line 38000
    iput-object v0, p0, Ljxe;->eD:Llyd;

    .line 38001
    const/4 v0, -0x1

    iput v0, p0, Ljxe;->eE:I

    .line 36995
    return-void
.end method

.method public static d()[Ljxe;
    .locals 2

    .prologue
    .line 36974
    sget-object v0, Ljxe;->c:[Ljxe;

    if-nez v0, :cond_1

    .line 36975
    sget-object v1, Llyf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 36977
    :try_start_0
    sget-object v0, Ljxe;->c:[Ljxe;

    if-nez v0, :cond_0

    .line 36978
    const/4 v0, 0x0

    new-array v0, v0, [Ljxe;

    sput-object v0, Ljxe;->c:[Ljxe;

    .line 36980
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36982
    :cond_1
    sget-object v0, Ljxe;->c:[Ljxe;

    return-object v0

    .line 36980
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
    .line 38036
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 38037
    sparse-switch v0, :sswitch_data_0

    .line 38041
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 38042
    :sswitch_0
    return-object p0

    .line 38047
    :sswitch_1
    iget-object v0, p0, Ljxe;->a:Llcf;

    if-nez v0, :cond_1

    .line 38048
    new-instance v0, Llcf;

    invoke-direct {v0}, Llcf;-><init>()V

    iput-object v0, p0, Ljxe;->a:Llcf;

    .line 38050
    :cond_1
    iget-object v0, p0, Ljxe;->a:Llcf;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 38054
    :sswitch_2
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 38055
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 38059
    :pswitch_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Ljxe;->b:Ljava/lang/Integer;

    goto :goto_0

    .line 38037
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
    .end sparse-switch

    .line 38055
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
    .line 37008
    iget-object v0, p0, Ljxe;->a:Llcf;

    if-eqz v0, :cond_0

    .line 37009
    const/4 v0, 0x1

    iget-object v1, p0, Ljxe;->a:Llcf;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 37011
    :cond_0
    iget-object v0, p0, Ljxe;->b:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 37012
    const/4 v0, 0x2

    iget-object v1, p0, Ljxe;->b:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 37014
    :cond_1
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 37015
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 37019
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 37020
    iget-object v1, p0, Ljxe;->a:Llcf;

    if-eqz v1, :cond_0

    .line 37021
    const/4 v1, 0x1

    iget-object v2, p0, Ljxe;->a:Llcf;

    .line 37022
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 37024
    :cond_0
    iget-object v1, p0, Ljxe;->b:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 37025
    const/4 v1, 0x2

    iget-object v2, p0, Ljxe;->b:Ljava/lang/Integer;

    .line 37026
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 37028
    :cond_1
    return v0
.end method
