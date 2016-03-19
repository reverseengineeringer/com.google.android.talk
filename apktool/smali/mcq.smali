.class public final Lmcq;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lmcq;",
        ">;"
    }
.end annotation


# instance fields
.field public a:[Lmcu;

.field public b:Ljava/lang/Long;

.field public c:Lmcp;

.field public d:I

.field public e:Lmcr;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 48
    invoke-direct {p0}, Llyb;-><init>()V

    .line 49
    invoke-static {}, Lmcu;->d()[Lmcu;

    move-result-object v0

    iput-object v0, p0, Lmcq;->a:[Lmcu;

    .line 50
    iput-object v1, p0, Lmcq;->b:Ljava/lang/Long;

    .line 51
    iput-object v1, p0, Lmcq;->c:Lmcp;

    .line 52
    const/high16 v0, -0x80000000

    iput v0, p0, Lmcq;->d:I

    .line 53
    iput-object v1, p0, Lmcq;->e:Lmcr;

    .line 54
    iput-object v1, p0, Lmcq;->eD:Llyd;

    .line 55
    const/4 v0, -0x1

    iput v0, p0, Lmcq;->eE:I

    .line 56
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1120
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1121
    sparse-switch v0, :sswitch_data_0

    .line 1125
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1126
    :sswitch_0
    return-object p0

    .line 1131
    :sswitch_1
    const/16 v0, 0xa

    .line 1132
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 1133
    iget-object v0, p0, Lmcq;->a:[Lmcu;

    if-nez v0, :cond_2

    move v0, v1

    .line 1134
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lmcu;

    .line 1136
    if-eqz v0, :cond_1

    .line 1137
    iget-object v3, p0, Lmcq;->a:[Lmcu;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1139
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 1140
    new-instance v3, Lmcu;

    invoke-direct {v3}, Lmcu;-><init>()V

    aput-object v3, v2, v0

    .line 1141
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 1142
    invoke-virtual {p1}, Llxy;->a()I

    .line 1139
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1133
    :cond_2
    iget-object v0, p0, Lmcq;->a:[Lmcu;

    array-length v0, v0

    goto :goto_1

    .line 1145
    :cond_3
    new-instance v3, Lmcu;

    invoke-direct {v3}, Lmcu;-><init>()V

    aput-object v3, v2, v0

    .line 1146
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 1147
    iput-object v2, p0, Lmcq;->a:[Lmcu;

    goto :goto_0

    .line 1151
    :sswitch_2
    invoke-virtual {p1}, Llxy;->e()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lmcq;->b:Ljava/lang/Long;

    goto :goto_0

    .line 1155
    :sswitch_3
    iget-object v0, p0, Lmcq;->c:Lmcp;

    if-nez v0, :cond_4

    .line 1156
    new-instance v0, Lmcp;

    invoke-direct {v0}, Lmcp;-><init>()V

    iput-object v0, p0, Lmcq;->c:Lmcp;

    .line 1158
    :cond_4
    iget-object v0, p0, Lmcq;->c:Lmcp;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1162
    :sswitch_4
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 1163
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1168
    :pswitch_0
    iput v0, p0, Lmcq;->d:I

    goto :goto_0

    .line 1174
    :sswitch_5
    iget-object v0, p0, Lmcq;->e:Lmcr;

    if-nez v0, :cond_5

    .line 1175
    new-instance v0, Lmcr;

    invoke-direct {v0}, Lmcr;-><init>()V

    iput-object v0, p0, Lmcq;->e:Lmcr;

    .line 1177
    :cond_5
    iget-object v0, p0, Lmcq;->e:Lmcr;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto/16 :goto_0

    .line 1121
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
        0x20 -> :sswitch_4
        0x2a -> :sswitch_5
    .end sparse-switch

    .line 1163
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public a(Llxz;)V
    .locals 4

    .prologue
    .line 61
    iget-object v0, p0, Lmcq;->a:[Lmcu;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmcq;->a:[Lmcu;

    array-length v0, v0

    if-lez v0, :cond_1

    .line 62
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lmcq;->a:[Lmcu;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 63
    iget-object v1, p0, Lmcq;->a:[Lmcu;

    aget-object v1, v1, v0

    .line 64
    if-eqz v1, :cond_0

    .line 65
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v1}, Llxz;->b(ILlyi;)V

    .line 62
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 69
    :cond_1
    iget-object v0, p0, Lmcq;->b:Ljava/lang/Long;

    if-eqz v0, :cond_2

    .line 70
    const/4 v0, 0x2

    iget-object v1, p0, Lmcq;->b:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Llxz;->b(IJ)V

    .line 72
    :cond_2
    iget-object v0, p0, Lmcq;->c:Lmcp;

    if-eqz v0, :cond_3

    .line 73
    const/4 v0, 0x3

    iget-object v1, p0, Lmcq;->c:Lmcp;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 75
    :cond_3
    iget v0, p0, Lmcq;->d:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_4

    .line 76
    const/4 v0, 0x4

    iget v1, p0, Lmcq;->d:I

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 78
    :cond_4
    iget-object v0, p0, Lmcq;->e:Lmcr;

    if-eqz v0, :cond_5

    .line 79
    const/4 v0, 0x5

    iget-object v1, p0, Lmcq;->e:Lmcr;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 81
    :cond_5
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 82
    return-void
.end method

.method protected b()I
    .locals 4

    .prologue
    .line 86
    invoke-super {p0}, Llyb;->b()I

    move-result v1

    .line 87
    iget-object v0, p0, Lmcq;->a:[Lmcu;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmcq;->a:[Lmcu;

    array-length v0, v0

    if-lez v0, :cond_1

    .line 88
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lmcq;->a:[Lmcu;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 89
    iget-object v2, p0, Lmcq;->a:[Lmcu;

    aget-object v2, v2, v0

    .line 90
    if-eqz v2, :cond_0

    .line 91
    const/4 v3, 0x1

    .line 92
    invoke-static {v3, v2}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v1, v2

    .line 88
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 96
    :cond_1
    iget-object v0, p0, Lmcq;->b:Ljava/lang/Long;

    if-eqz v0, :cond_2

    .line 97
    const/4 v0, 0x2

    iget-object v2, p0, Lmcq;->b:Ljava/lang/Long;

    .line 98
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Llxz;->e(IJ)I

    move-result v0

    add-int/2addr v1, v0

    .line 100
    :cond_2
    iget-object v0, p0, Lmcq;->c:Lmcp;

    if-eqz v0, :cond_3

    .line 101
    const/4 v0, 0x3

    iget-object v2, p0, Lmcq;->c:Lmcp;

    .line 102
    invoke-static {v0, v2}, Llxz;->d(ILlyi;)I

    move-result v0

    add-int/2addr v1, v0

    .line 104
    :cond_3
    iget v0, p0, Lmcq;->d:I

    const/high16 v2, -0x80000000

    if-eq v0, v2, :cond_4

    .line 105
    const/4 v0, 0x4

    iget v2, p0, Lmcq;->d:I

    .line 106
    invoke-static {v0, v2}, Llxz;->e(II)I

    move-result v0

    add-int/2addr v1, v0

    .line 108
    :cond_4
    iget-object v0, p0, Lmcq;->e:Lmcr;

    if-eqz v0, :cond_5

    .line 109
    const/4 v0, 0x5

    iget-object v2, p0, Lmcq;->e:Lmcr;

    .line 110
    invoke-static {v0, v2}, Llxz;->d(ILlyi;)I

    move-result v0

    add-int/2addr v1, v0

    .line 112
    :cond_5
    return v1
.end method
