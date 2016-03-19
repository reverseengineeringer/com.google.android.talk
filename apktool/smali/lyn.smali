.class public final Llyn;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Llyn;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile g:[Llyn;


# instance fields
.field public a:I

.field public b:Ljava/lang/Double;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/Boolean;

.field public e:Llyj;

.field public f:Llyh;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 43
    invoke-direct {p0}, Llyb;-><init>()V

    .line 44
    const/high16 v0, -0x80000000

    iput v0, p0, Llyn;->a:I

    .line 45
    iput-object v1, p0, Llyn;->b:Ljava/lang/Double;

    .line 46
    iput-object v1, p0, Llyn;->c:Ljava/lang/String;

    .line 47
    iput-object v1, p0, Llyn;->d:Ljava/lang/Boolean;

    .line 48
    iput-object v1, p0, Llyn;->e:Llyj;

    .line 49
    iput-object v1, p0, Llyn;->f:Llyh;

    .line 50
    iput-object v1, p0, Llyn;->eD:Llyd;

    .line 51
    const/4 v0, -0x1

    iput v0, p0, Llyn;->eE:I

    .line 52
    return-void
.end method

.method public static d()[Llyn;
    .locals 2

    .prologue
    .line 12
    sget-object v0, Llyn;->g:[Llyn;

    if-nez v0, :cond_1

    .line 13
    sget-object v1, Llyf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 15
    :try_start_0
    sget-object v0, Llyn;->g:[Llyn;

    if-nez v0, :cond_0

    .line 16
    const/4 v0, 0x0

    new-array v0, v0, [Llyn;

    sput-object v0, Llyn;->g:[Llyn;

    .line 18
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    :cond_1
    sget-object v0, Llyn;->g:[Llyn;

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
    .locals 2

    .prologue
    .line 2113
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 2114
    sparse-switch v0, :sswitch_data_0

    .line 2118
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2119
    :sswitch_0
    return-object p0

    .line 2124
    :sswitch_1
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 2125
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 2127
    :pswitch_0
    iput v0, p0, Llyn;->a:I

    goto :goto_0

    .line 2133
    :sswitch_2
    invoke-virtual {p1}, Llxy;->b()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Llyn;->b:Ljava/lang/Double;

    goto :goto_0

    .line 2137
    :sswitch_3
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Llyn;->c:Ljava/lang/String;

    goto :goto_0

    .line 2141
    :sswitch_4
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Llyn;->d:Ljava/lang/Boolean;

    goto :goto_0

    .line 2145
    :sswitch_5
    iget-object v0, p0, Llyn;->e:Llyj;

    if-nez v0, :cond_1

    .line 2146
    new-instance v0, Llyj;

    invoke-direct {v0}, Llyj;-><init>()V

    iput-object v0, p0, Llyn;->e:Llyj;

    .line 2148
    :cond_1
    iget-object v0, p0, Llyn;->e:Llyj;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 2152
    :sswitch_6
    iget-object v0, p0, Llyn;->f:Llyh;

    if-nez v0, :cond_2

    .line 2153
    new-instance v0, Llyh;

    invoke-direct {v0}, Llyh;-><init>()V

    iput-object v0, p0, Llyn;->f:Llyh;

    .line 2155
    :cond_2
    iget-object v0, p0, Llyn;->f:Llyh;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 2114
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x11 -> :sswitch_2
        0x1a -> :sswitch_3
        0x20 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
    .end sparse-switch

    .line 2125
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public a(Llxz;)V
    .locals 4

    .prologue
    .line 57
    iget v0, p0, Llyn;->a:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    .line 58
    const/4 v0, 0x1

    iget v1, p0, Llyn;->a:I

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 60
    :cond_0
    iget-object v0, p0, Llyn;->b:Ljava/lang/Double;

    if-eqz v0, :cond_1

    .line 61
    const/4 v0, 0x2

    iget-object v1, p0, Llyn;->b:Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Llxz;->a(ID)V

    .line 63
    :cond_1
    iget-object v0, p0, Llyn;->c:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 64
    const/4 v0, 0x3

    iget-object v1, p0, Llyn;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 66
    :cond_2
    iget-object v0, p0, Llyn;->d:Ljava/lang/Boolean;

    if-eqz v0, :cond_3

    .line 67
    const/4 v0, 0x4

    iget-object v1, p0, Llyn;->d:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 69
    :cond_3
    iget-object v0, p0, Llyn;->e:Llyj;

    if-eqz v0, :cond_4

    .line 70
    const/4 v0, 0x5

    iget-object v1, p0, Llyn;->e:Llyj;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 72
    :cond_4
    iget-object v0, p0, Llyn;->f:Llyh;

    if-eqz v0, :cond_5

    .line 73
    const/4 v0, 0x6

    iget-object v1, p0, Llyn;->f:Llyh;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 75
    :cond_5
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 76
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 80
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 81
    iget v1, p0, Llyn;->a:I

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_0

    .line 82
    const/4 v1, 0x1

    iget v2, p0, Llyn;->a:I

    .line 83
    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 85
    :cond_0
    iget-object v1, p0, Llyn;->b:Ljava/lang/Double;

    if-eqz v1, :cond_1

    .line 86
    const/4 v1, 0x2

    iget-object v2, p0, Llyn;->b:Ljava/lang/Double;

    .line 87
    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    .line 1561
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x8

    .line 87
    add-int/2addr v0, v1

    .line 89
    :cond_1
    iget-object v1, p0, Llyn;->c:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 90
    const/4 v1, 0x3

    iget-object v2, p0, Llyn;->c:Ljava/lang/String;

    .line 91
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 93
    :cond_2
    iget-object v1, p0, Llyn;->d:Ljava/lang/Boolean;

    if-eqz v1, :cond_3

    .line 94
    const/4 v1, 0x4

    iget-object v2, p0, Llyn;->d:Ljava/lang/Boolean;

    .line 95
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 95
    add-int/2addr v0, v1

    .line 97
    :cond_3
    iget-object v1, p0, Llyn;->e:Llyj;

    if-eqz v1, :cond_4

    .line 98
    const/4 v1, 0x5

    iget-object v2, p0, Llyn;->e:Llyj;

    .line 99
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 101
    :cond_4
    iget-object v1, p0, Llyn;->f:Llyh;

    if-eqz v1, :cond_5

    .line 102
    const/4 v1, 0x6

    iget-object v2, p0, Llyn;->f:Llyh;

    .line 103
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 105
    :cond_5
    return v0
.end method
