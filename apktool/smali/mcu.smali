.class public final Lmcu;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lmcu;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile f:[Lmcu;


# instance fields
.field public a:Ljava/lang/Boolean;

.field public b:Lmct;

.field public c:I

.field public d:Ljava/lang/String;

.field public e:Lmcv;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 40
    invoke-direct {p0}, Llyb;-><init>()V

    .line 41
    iput-object v1, p0, Lmcu;->a:Ljava/lang/Boolean;

    .line 42
    iput-object v1, p0, Lmcu;->b:Lmct;

    .line 43
    const/high16 v0, -0x80000000

    iput v0, p0, Lmcu;->c:I

    .line 44
    iput-object v1, p0, Lmcu;->d:Ljava/lang/String;

    .line 45
    iput-object v1, p0, Lmcu;->e:Lmcv;

    .line 46
    iput-object v1, p0, Lmcu;->eD:Llyd;

    .line 47
    const/4 v0, -0x1

    iput v0, p0, Lmcu;->eE:I

    .line 48
    return-void
.end method

.method public static d()[Lmcu;
    .locals 2

    .prologue
    .line 12
    sget-object v0, Lmcu;->f:[Lmcu;

    if-nez v0, :cond_1

    .line 13
    sget-object v1, Llyf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 15
    :try_start_0
    sget-object v0, Lmcu;->f:[Lmcu;

    if-nez v0, :cond_0

    .line 16
    const/4 v0, 0x0

    new-array v0, v0, [Lmcu;

    sput-object v0, Lmcu;->f:[Lmcu;

    .line 18
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    :cond_1
    sget-object v0, Lmcu;->f:[Lmcu;

    return-object v0

    .line 18
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
    .line 2102
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 2103
    sparse-switch v0, :sswitch_data_0

    .line 2107
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2108
    :sswitch_0
    return-object p0

    .line 2113
    :sswitch_1
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lmcu;->a:Ljava/lang/Boolean;

    goto :goto_0

    .line 2117
    :sswitch_2
    iget-object v0, p0, Lmcu;->e:Lmcv;

    if-nez v0, :cond_1

    .line 2118
    new-instance v0, Lmcv;

    invoke-direct {v0}, Lmcv;-><init>()V

    iput-object v0, p0, Lmcu;->e:Lmcv;

    .line 2120
    :cond_1
    iget-object v0, p0, Lmcu;->e:Lmcv;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 2124
    :sswitch_3
    iget-object v0, p0, Lmcu;->b:Lmct;

    if-nez v0, :cond_2

    .line 2125
    new-instance v0, Lmct;

    invoke-direct {v0}, Lmct;-><init>()V

    iput-object v0, p0, Lmcu;->b:Lmct;

    .line 2127
    :cond_2
    iget-object v0, p0, Lmcu;->b:Lmct;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 2131
    :sswitch_4
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 2132
    sparse-switch v0, :sswitch_data_1

    goto :goto_0

    .line 2181
    :sswitch_5
    iput v0, p0, Lmcu;->c:I

    goto :goto_0

    .line 2187
    :sswitch_6
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmcu;->d:Ljava/lang/String;

    goto :goto_0

    .line 2103
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x20 -> :sswitch_4
        0x2a -> :sswitch_6
    .end sparse-switch

    .line 2132
    :sswitch_data_1
    .sparse-switch
        0x0 -> :sswitch_5
        0x13122db -> :sswitch_5
        0x25e915d -> :sswitch_5
        0x2624fdb -> :sswitch_5
        0x26cd5de -> :sswitch_5
        0x26dae09 -> :sswitch_5
        0x26dc540 -> :sswitch_5
        0x271ac36 -> :sswitch_5
        0x282baca -> :sswitch_5
        0x28531db -> :sswitch_5
        0x28ef1ba -> :sswitch_5
        0x28f0446 -> :sswitch_5
        0x28fba42 -> :sswitch_5
        0x28fc6da -> :sswitch_5
        0x2920300 -> :sswitch_5
        0x29ed066 -> :sswitch_5
        0x2a5ab17 -> :sswitch_5
        0x2a6615e -> :sswitch_5
        0x2b00a9d -> :sswitch_5
        0x2b3504b -> :sswitch_5
        0x2bca2e8 -> :sswitch_5
        0x2e5737b -> :sswitch_5
        0x2e573d6 -> :sswitch_5
        0x2e57430 -> :sswitch_5
        0x2e57483 -> :sswitch_5
        0x2e57524 -> :sswitch_5
        0x2e5756f -> :sswitch_5
        0x2e575b2 -> :sswitch_5
        0x2edfbe9 -> :sswitch_5
        0x30de125 -> :sswitch_5
        0x32cbbd0 -> :sswitch_5
        0x369acd5 -> :sswitch_5
        0x3811a34 -> :sswitch_5
        0x38f2118 -> :sswitch_5
        0x3a1d294 -> :sswitch_5
        0x3bf218f -> :sswitch_5
        0x3c0b096 -> :sswitch_5
        0x3ed5811 -> :sswitch_5
        0x433fe13 -> :sswitch_5
        0x4561965 -> :sswitch_5
        0x45a5ece -> :sswitch_5
        0x45ab713 -> :sswitch_5
        0x47873d4 -> :sswitch_5
        0x4787f19 -> :sswitch_5
        0x49b991b -> :sswitch_5
        0x49b9e61 -> :sswitch_5
        0x49b9fa9 -> :sswitch_5
        0x50f2523 -> :sswitch_5
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 53
    iget-object v0, p0, Lmcu;->a:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 54
    const/4 v0, 0x1

    iget-object v1, p0, Lmcu;->a:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 56
    :cond_0
    iget-object v0, p0, Lmcu;->e:Lmcv;

    if-eqz v0, :cond_1

    .line 57
    const/4 v0, 0x2

    iget-object v1, p0, Lmcu;->e:Lmcv;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 59
    :cond_1
    iget-object v0, p0, Lmcu;->b:Lmct;

    if-eqz v0, :cond_2

    .line 60
    const/4 v0, 0x3

    iget-object v1, p0, Lmcu;->b:Lmct;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 62
    :cond_2
    iget v0, p0, Lmcu;->c:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_3

    .line 63
    const/4 v0, 0x4

    iget v1, p0, Lmcu;->c:I

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 65
    :cond_3
    iget-object v0, p0, Lmcu;->d:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 66
    const/4 v0, 0x5

    iget-object v1, p0, Lmcu;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 68
    :cond_4
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 69
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 73
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 74
    iget-object v1, p0, Lmcu;->a:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    .line 75
    const/4 v1, 0x1

    iget-object v2, p0, Lmcu;->a:Ljava/lang/Boolean;

    .line 76
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 76
    add-int/2addr v0, v1

    .line 78
    :cond_0
    iget-object v1, p0, Lmcu;->e:Lmcv;

    if-eqz v1, :cond_1

    .line 79
    const/4 v1, 0x2

    iget-object v2, p0, Lmcu;->e:Lmcv;

    .line 80
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 82
    :cond_1
    iget-object v1, p0, Lmcu;->b:Lmct;

    if-eqz v1, :cond_2

    .line 83
    const/4 v1, 0x3

    iget-object v2, p0, Lmcu;->b:Lmct;

    .line 84
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 86
    :cond_2
    iget v1, p0, Lmcu;->c:I

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_3

    .line 87
    const/4 v1, 0x4

    iget v2, p0, Lmcu;->c:I

    .line 88
    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 90
    :cond_3
    iget-object v1, p0, Lmcu;->d:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 91
    const/4 v1, 0x5

    iget-object v2, p0, Lmcu;->d:Ljava/lang/String;

    .line 92
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 94
    :cond_4
    return v0
.end method
