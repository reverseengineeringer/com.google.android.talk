.class public final Lkbb;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lkbb;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile d:[Lkbb;


# instance fields
.field public a:Ljxj;

.field public b:Ljava/lang/Integer;

.field public c:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 21976
    invoke-direct {p0}, Llyb;-><init>()V

    .line 22981
    iput-object v0, p0, Lkbb;->a:Ljxj;

    .line 22982
    iput-object v0, p0, Lkbb;->b:Ljava/lang/Integer;

    .line 22983
    iput-object v0, p0, Lkbb;->c:Ljava/lang/Long;

    .line 22984
    iput-object v0, p0, Lkbb;->eD:Llyd;

    .line 22985
    const/4 v0, -0x1

    iput v0, p0, Lkbb;->eE:I

    .line 21978
    return-void
.end method

.method public static d()[Lkbb;
    .locals 2

    .prologue
    .line 21954
    sget-object v0, Lkbb;->d:[Lkbb;

    if-nez v0, :cond_1

    .line 21955
    sget-object v1, Llyf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 21957
    :try_start_0
    sget-object v0, Lkbb;->d:[Lkbb;

    if-nez v0, :cond_0

    .line 21958
    const/4 v0, 0x0

    new-array v0, v0, [Lkbb;

    sput-object v0, Lkbb;->d:[Lkbb;

    .line 21960
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21962
    :cond_1
    sget-object v0, Lkbb;->d:[Lkbb;

    return-object v0

    .line 21960
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
    .line 23027
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 23028
    sparse-switch v0, :sswitch_data_0

    .line 23032
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 23033
    :sswitch_0
    return-object p0

    .line 23038
    :sswitch_1
    iget-object v0, p0, Lkbb;->a:Ljxj;

    if-nez v0, :cond_1

    .line 23039
    new-instance v0, Ljxj;

    invoke-direct {v0}, Ljxj;-><init>()V

    iput-object v0, p0, Lkbb;->a:Ljxj;

    .line 23041
    :cond_1
    iget-object v0, p0, Lkbb;->a:Ljxj;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 23045
    :sswitch_2
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 23046
    sparse-switch v0, :sswitch_data_1

    goto :goto_0

    .line 23050
    :sswitch_3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lkbb;->b:Ljava/lang/Integer;

    goto :goto_0

    .line 23056
    :sswitch_4
    invoke-virtual {p1}, Llxy;->d()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lkbb;->c:Ljava/lang/Long;

    goto :goto_0

    .line 23028
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_4
    .end sparse-switch

    .line 23046
    :sswitch_data_1
    .sparse-switch
        0x0 -> :sswitch_3
        0x64 -> :sswitch_3
        0xc8 -> :sswitch_3
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 4

    .prologue
    .line 21992
    iget-object v0, p0, Lkbb;->a:Ljxj;

    if-eqz v0, :cond_0

    .line 21993
    const/4 v0, 0x1

    iget-object v1, p0, Lkbb;->a:Ljxj;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 21995
    :cond_0
    iget-object v0, p0, Lkbb;->b:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 21996
    const/4 v0, 0x2

    iget-object v1, p0, Lkbb;->b:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 21998
    :cond_1
    iget-object v0, p0, Lkbb;->c:Ljava/lang/Long;

    if-eqz v0, :cond_2

    .line 21999
    const/4 v0, 0x3

    iget-object v1, p0, Lkbb;->c:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Llxz;->a(IJ)V

    .line 22001
    :cond_2
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 22002
    return-void
.end method

.method protected b()I
    .locals 4

    .prologue
    .line 22006
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 22007
    iget-object v1, p0, Lkbb;->a:Ljxj;

    if-eqz v1, :cond_0

    .line 22008
    const/4 v1, 0x1

    iget-object v2, p0, Lkbb;->a:Ljxj;

    .line 22009
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 22011
    :cond_0
    iget-object v1, p0, Lkbb;->b:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 22012
    const/4 v1, 0x2

    iget-object v2, p0, Lkbb;->b:Ljava/lang/Integer;

    .line 22013
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 22015
    :cond_1
    iget-object v1, p0, Lkbb;->c:Ljava/lang/Long;

    if-eqz v1, :cond_2

    .line 22016
    const/4 v1, 0x3

    iget-object v2, p0, Lkbb;->c:Ljava/lang/Long;

    .line 22017
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Llxz;->d(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 22019
    :cond_2
    return v0
.end method
