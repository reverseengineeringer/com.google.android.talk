.class public final Llfs;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Llfs;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/Long;

.field public b:[Lmrx;

.field public c:Lluq;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 38
    invoke-direct {p0}, Llyb;-><init>()V

    .line 1043
    iput-object v1, p0, Llfs;->a:Ljava/lang/Long;

    .line 1044
    invoke-static {}, Lmrx;->d()[Lmrx;

    move-result-object v0

    iput-object v0, p0, Llfs;->b:[Lmrx;

    .line 1045
    iput-object v1, p0, Llfs;->c:Lluq;

    .line 1046
    iput-object v1, p0, Llfs;->eD:Llyd;

    .line 1047
    const/4 v0, -0x1

    iput v0, p0, Llfs;->eE:I

    .line 40
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1099
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1100
    sparse-switch v0, :sswitch_data_0

    .line 1104
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1105
    :sswitch_0
    return-object p0

    .line 1110
    :sswitch_1
    invoke-virtual {p1}, Llxy;->e()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Llfs;->a:Ljava/lang/Long;

    goto :goto_0

    .line 1114
    :sswitch_2
    const/16 v0, 0x12

    .line 1115
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 1116
    iget-object v0, p0, Llfs;->b:[Lmrx;

    if-nez v0, :cond_2

    move v0, v1

    .line 1117
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lmrx;

    .line 1119
    if-eqz v0, :cond_1

    .line 1120
    iget-object v3, p0, Llfs;->b:[Lmrx;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1122
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 1123
    new-instance v3, Lmrx;

    invoke-direct {v3}, Lmrx;-><init>()V

    aput-object v3, v2, v0

    .line 1124
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 1125
    invoke-virtual {p1}, Llxy;->a()I

    .line 1122
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1116
    :cond_2
    iget-object v0, p0, Llfs;->b:[Lmrx;

    array-length v0, v0

    goto :goto_1

    .line 1128
    :cond_3
    new-instance v3, Lmrx;

    invoke-direct {v3}, Lmrx;-><init>()V

    aput-object v3, v2, v0

    .line 1129
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 1130
    iput-object v2, p0, Llfs;->b:[Lmrx;

    goto :goto_0

    .line 1134
    :sswitch_3
    iget-object v0, p0, Llfs;->c:Lluq;

    if-nez v0, :cond_4

    .line 1135
    new-instance v0, Lluq;

    invoke-direct {v0}, Lluq;-><init>()V

    iput-object v0, p0, Llfs;->c:Lluq;

    .line 1137
    :cond_4
    iget-object v0, p0, Llfs;->c:Lluq;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1100
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 4

    .prologue
    .line 54
    iget-object v0, p0, Llfs;->a:Ljava/lang/Long;

    if-eqz v0, :cond_0

    .line 55
    const/4 v0, 0x1

    iget-object v1, p0, Llfs;->a:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Llxz;->b(IJ)V

    .line 57
    :cond_0
    iget-object v0, p0, Llfs;->b:[Lmrx;

    if-eqz v0, :cond_2

    iget-object v0, p0, Llfs;->b:[Lmrx;

    array-length v0, v0

    if-lez v0, :cond_2

    .line 58
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Llfs;->b:[Lmrx;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 59
    iget-object v1, p0, Llfs;->b:[Lmrx;

    aget-object v1, v1, v0

    .line 60
    if-eqz v1, :cond_1

    .line 61
    const/4 v2, 0x2

    invoke-virtual {p1, v2, v1}, Llxz;->b(ILlyi;)V

    .line 58
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 65
    :cond_2
    iget-object v0, p0, Llfs;->c:Lluq;

    if-eqz v0, :cond_3

    .line 66
    const/4 v0, 0x3

    iget-object v1, p0, Llfs;->c:Lluq;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 68
    :cond_3
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 69
    return-void
.end method

.method protected b()I
    .locals 5

    .prologue
    .line 73
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 74
    iget-object v1, p0, Llfs;->a:Ljava/lang/Long;

    if-eqz v1, :cond_0

    .line 75
    const/4 v1, 0x1

    iget-object v2, p0, Llfs;->a:Ljava/lang/Long;

    .line 76
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Llxz;->e(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 78
    :cond_0
    iget-object v1, p0, Llfs;->b:[Lmrx;

    if-eqz v1, :cond_3

    iget-object v1, p0, Llfs;->b:[Lmrx;

    array-length v1, v1

    if-lez v1, :cond_3

    .line 79
    const/4 v1, 0x0

    move v4, v1

    move v1, v0

    move v0, v4

    :goto_0
    iget-object v2, p0, Llfs;->b:[Lmrx;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 80
    iget-object v2, p0, Llfs;->b:[Lmrx;

    aget-object v2, v2, v0

    .line 81
    if-eqz v2, :cond_1

    .line 82
    const/4 v3, 0x2

    .line 83
    invoke-static {v3, v2}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v1, v2

    .line 79
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 87
    :cond_3
    iget-object v1, p0, Llfs;->c:Lluq;

    if-eqz v1, :cond_4

    .line 88
    const/4 v1, 0x3

    iget-object v2, p0, Llfs;->c:Lluq;

    .line 89
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 91
    :cond_4
    return v0
.end method
