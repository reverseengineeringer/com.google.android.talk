.class public final Llfo;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Llfo;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/Double;

.field public b:Ljava/lang/Double;

.field public c:Ljava/lang/Double;

.field public d:[Llfn;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 37
    invoke-direct {p0}, Llyb;-><init>()V

    .line 38
    iput-object v1, p0, Llfo;->a:Ljava/lang/Double;

    .line 39
    iput-object v1, p0, Llfo;->b:Ljava/lang/Double;

    .line 40
    iput-object v1, p0, Llfo;->c:Ljava/lang/Double;

    .line 41
    invoke-static {}, Llfn;->d()[Llfn;

    move-result-object v0

    iput-object v0, p0, Llfo;->d:[Llfn;

    .line 42
    iput-object v1, p0, Llfo;->eD:Llyd;

    .line 43
    const/4 v0, -0x1

    iput v0, p0, Llfo;->eE:I

    .line 44
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 4101
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 4102
    sparse-switch v0, :sswitch_data_0

    .line 4106
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4107
    :sswitch_0
    return-object p0

    .line 4112
    :sswitch_1
    invoke-virtual {p1}, Llxy;->b()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Llfo;->a:Ljava/lang/Double;

    goto :goto_0

    .line 4116
    :sswitch_2
    invoke-virtual {p1}, Llxy;->b()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Llfo;->b:Ljava/lang/Double;

    goto :goto_0

    .line 4120
    :sswitch_3
    invoke-virtual {p1}, Llxy;->b()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Llfo;->c:Ljava/lang/Double;

    goto :goto_0

    .line 4124
    :sswitch_4
    const/16 v0, 0x22

    .line 4125
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 4126
    iget-object v0, p0, Llfo;->d:[Llfn;

    if-nez v0, :cond_2

    move v0, v1

    .line 4127
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Llfn;

    .line 4129
    if-eqz v0, :cond_1

    .line 4130
    iget-object v3, p0, Llfo;->d:[Llfn;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4132
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 4133
    new-instance v3, Llfn;

    invoke-direct {v3}, Llfn;-><init>()V

    aput-object v3, v2, v0

    .line 4134
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 4135
    invoke-virtual {p1}, Llxy;->a()I

    .line 4132
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 4126
    :cond_2
    iget-object v0, p0, Llfo;->d:[Llfn;

    array-length v0, v0

    goto :goto_1

    .line 4138
    :cond_3
    new-instance v3, Llfn;

    invoke-direct {v3}, Llfn;-><init>()V

    aput-object v3, v2, v0

    .line 4139
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 4140
    iput-object v2, p0, Llfo;->d:[Llfn;

    goto :goto_0

    .line 4102
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x9 -> :sswitch_1
        0x11 -> :sswitch_2
        0x19 -> :sswitch_3
        0x22 -> :sswitch_4
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 4

    .prologue
    .line 49
    iget-object v0, p0, Llfo;->a:Ljava/lang/Double;

    if-eqz v0, :cond_0

    .line 50
    const/4 v0, 0x1

    iget-object v1, p0, Llfo;->a:Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Llxz;->a(ID)V

    .line 52
    :cond_0
    iget-object v0, p0, Llfo;->b:Ljava/lang/Double;

    if-eqz v0, :cond_1

    .line 53
    const/4 v0, 0x2

    iget-object v1, p0, Llfo;->b:Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Llxz;->a(ID)V

    .line 55
    :cond_1
    iget-object v0, p0, Llfo;->c:Ljava/lang/Double;

    if-eqz v0, :cond_2

    .line 56
    const/4 v0, 0x3

    iget-object v1, p0, Llfo;->c:Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Llxz;->a(ID)V

    .line 58
    :cond_2
    iget-object v0, p0, Llfo;->d:[Llfn;

    if-eqz v0, :cond_4

    iget-object v0, p0, Llfo;->d:[Llfn;

    array-length v0, v0

    if-lez v0, :cond_4

    .line 59
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Llfo;->d:[Llfn;

    array-length v1, v1

    if-ge v0, v1, :cond_4

    .line 60
    iget-object v1, p0, Llfo;->d:[Llfn;

    aget-object v1, v1, v0

    .line 61
    if-eqz v1, :cond_3

    .line 62
    const/4 v2, 0x4

    invoke-virtual {p1, v2, v1}, Llxz;->b(ILlyi;)V

    .line 59
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 66
    :cond_4
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 67
    return-void
.end method

.method protected b()I
    .locals 5

    .prologue
    .line 71
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 72
    iget-object v1, p0, Llfo;->a:Ljava/lang/Double;

    if-eqz v1, :cond_0

    .line 73
    const/4 v1, 0x1

    iget-object v2, p0, Llfo;->a:Ljava/lang/Double;

    .line 74
    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    .line 1561
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x8

    .line 74
    add-int/2addr v0, v1

    .line 76
    :cond_0
    iget-object v1, p0, Llfo;->b:Ljava/lang/Double;

    if-eqz v1, :cond_1

    .line 77
    const/4 v1, 0x2

    iget-object v2, p0, Llfo;->b:Ljava/lang/Double;

    .line 78
    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    .line 2561
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x8

    .line 78
    add-int/2addr v0, v1

    .line 80
    :cond_1
    iget-object v1, p0, Llfo;->c:Ljava/lang/Double;

    if-eqz v1, :cond_2

    .line 81
    const/4 v1, 0x3

    iget-object v2, p0, Llfo;->c:Ljava/lang/Double;

    .line 82
    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    .line 3561
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x8

    .line 82
    add-int/2addr v0, v1

    .line 84
    :cond_2
    iget-object v1, p0, Llfo;->d:[Llfn;

    if-eqz v1, :cond_5

    iget-object v1, p0, Llfo;->d:[Llfn;

    array-length v1, v1

    if-lez v1, :cond_5

    .line 85
    const/4 v1, 0x0

    move v4, v1

    move v1, v0

    move v0, v4

    :goto_0
    iget-object v2, p0, Llfo;->d:[Llfn;

    array-length v2, v2

    if-ge v0, v2, :cond_4

    .line 86
    iget-object v2, p0, Llfo;->d:[Llfn;

    aget-object v2, v2, v0

    .line 87
    if-eqz v2, :cond_3

    .line 88
    const/4 v3, 0x4

    .line 89
    invoke-static {v3, v2}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v1, v2

    .line 85
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    move v0, v1

    .line 93
    :cond_5
    return v0
.end method
