.class public final Lmrt;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lmrt;",
        ">;"
    }
.end annotation


# instance fields
.field public a:[Lmrx;

.field public b:Ljava/lang/Long;

.field public c:Lmrs;

.field public d:Ljava/lang/Integer;

.field public e:Lmru;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 52
    invoke-direct {p0}, Llyb;-><init>()V

    .line 1057
    invoke-static {}, Lmrx;->d()[Lmrx;

    move-result-object v0

    iput-object v0, p0, Lmrt;->a:[Lmrx;

    .line 1058
    iput-object v1, p0, Lmrt;->b:Ljava/lang/Long;

    .line 1059
    iput-object v1, p0, Lmrt;->c:Lmrs;

    .line 1060
    iput-object v1, p0, Lmrt;->d:Ljava/lang/Integer;

    .line 1061
    iput-object v1, p0, Lmrt;->e:Lmru;

    .line 1062
    iput-object v1, p0, Lmrt;->eD:Llyd;

    .line 1063
    const/4 v0, -0x1

    iput v0, p0, Lmrt;->eE:I

    .line 54
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1129
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1130
    sparse-switch v0, :sswitch_data_0

    .line 1134
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1135
    :sswitch_0
    return-object p0

    .line 1140
    :sswitch_1
    const/16 v0, 0xa

    .line 1141
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 1142
    iget-object v0, p0, Lmrt;->a:[Lmrx;

    if-nez v0, :cond_2

    move v0, v1

    .line 1143
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lmrx;

    .line 1145
    if-eqz v0, :cond_1

    .line 1146
    iget-object v3, p0, Lmrt;->a:[Lmrx;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1148
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 1149
    new-instance v3, Lmrx;

    invoke-direct {v3}, Lmrx;-><init>()V

    aput-object v3, v2, v0

    .line 1150
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 1151
    invoke-virtual {p1}, Llxy;->a()I

    .line 1148
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1142
    :cond_2
    iget-object v0, p0, Lmrt;->a:[Lmrx;

    array-length v0, v0

    goto :goto_1

    .line 1154
    :cond_3
    new-instance v3, Lmrx;

    invoke-direct {v3}, Lmrx;-><init>()V

    aput-object v3, v2, v0

    .line 1155
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 1156
    iput-object v2, p0, Lmrt;->a:[Lmrx;

    goto :goto_0

    .line 1160
    :sswitch_2
    invoke-virtual {p1}, Llxy;->e()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lmrt;->b:Ljava/lang/Long;

    goto :goto_0

    .line 1164
    :sswitch_3
    iget-object v0, p0, Lmrt;->c:Lmrs;

    if-nez v0, :cond_4

    .line 1165
    new-instance v0, Lmrs;

    invoke-direct {v0}, Lmrs;-><init>()V

    iput-object v0, p0, Lmrt;->c:Lmrs;

    .line 1167
    :cond_4
    iget-object v0, p0, Lmrt;->c:Lmrs;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1171
    :sswitch_4
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 1172
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1177
    :pswitch_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lmrt;->d:Ljava/lang/Integer;

    goto :goto_0

    .line 1183
    :sswitch_5
    iget-object v0, p0, Lmrt;->e:Lmru;

    if-nez v0, :cond_5

    .line 1184
    new-instance v0, Lmru;

    invoke-direct {v0}, Lmru;-><init>()V

    iput-object v0, p0, Lmrt;->e:Lmru;

    .line 1186
    :cond_5
    iget-object v0, p0, Lmrt;->e:Lmru;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto/16 :goto_0

    .line 1130
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

    .line 1172
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
    .line 70
    iget-object v0, p0, Lmrt;->a:[Lmrx;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmrt;->a:[Lmrx;

    array-length v0, v0

    if-lez v0, :cond_1

    .line 71
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lmrt;->a:[Lmrx;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 72
    iget-object v1, p0, Lmrt;->a:[Lmrx;

    aget-object v1, v1, v0

    .line 73
    if-eqz v1, :cond_0

    .line 74
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v1}, Llxz;->b(ILlyi;)V

    .line 71
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 78
    :cond_1
    iget-object v0, p0, Lmrt;->b:Ljava/lang/Long;

    if-eqz v0, :cond_2

    .line 79
    const/4 v0, 0x2

    iget-object v1, p0, Lmrt;->b:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Llxz;->b(IJ)V

    .line 81
    :cond_2
    iget-object v0, p0, Lmrt;->c:Lmrs;

    if-eqz v0, :cond_3

    .line 82
    const/4 v0, 0x3

    iget-object v1, p0, Lmrt;->c:Lmrs;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 84
    :cond_3
    iget-object v0, p0, Lmrt;->d:Ljava/lang/Integer;

    if-eqz v0, :cond_4

    .line 85
    const/4 v0, 0x4

    iget-object v1, p0, Lmrt;->d:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 87
    :cond_4
    iget-object v0, p0, Lmrt;->e:Lmru;

    if-eqz v0, :cond_5

    .line 88
    const/4 v0, 0x5

    iget-object v1, p0, Lmrt;->e:Lmru;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 90
    :cond_5
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 91
    return-void
.end method

.method protected b()I
    .locals 4

    .prologue
    .line 95
    invoke-super {p0}, Llyb;->b()I

    move-result v1

    .line 96
    iget-object v0, p0, Lmrt;->a:[Lmrx;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmrt;->a:[Lmrx;

    array-length v0, v0

    if-lez v0, :cond_1

    .line 97
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lmrt;->a:[Lmrx;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 98
    iget-object v2, p0, Lmrt;->a:[Lmrx;

    aget-object v2, v2, v0

    .line 99
    if-eqz v2, :cond_0

    .line 100
    const/4 v3, 0x1

    .line 101
    invoke-static {v3, v2}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v1, v2

    .line 97
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 105
    :cond_1
    iget-object v0, p0, Lmrt;->b:Ljava/lang/Long;

    if-eqz v0, :cond_2

    .line 106
    const/4 v0, 0x2

    iget-object v2, p0, Lmrt;->b:Ljava/lang/Long;

    .line 107
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Llxz;->e(IJ)I

    move-result v0

    add-int/2addr v1, v0

    .line 109
    :cond_2
    iget-object v0, p0, Lmrt;->c:Lmrs;

    if-eqz v0, :cond_3

    .line 110
    const/4 v0, 0x3

    iget-object v2, p0, Lmrt;->c:Lmrs;

    .line 111
    invoke-static {v0, v2}, Llxz;->d(ILlyi;)I

    move-result v0

    add-int/2addr v1, v0

    .line 113
    :cond_3
    iget-object v0, p0, Lmrt;->d:Ljava/lang/Integer;

    if-eqz v0, :cond_4

    .line 114
    const/4 v0, 0x4

    iget-object v2, p0, Lmrt;->d:Ljava/lang/Integer;

    .line 115
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v0, v2}, Llxz;->e(II)I

    move-result v0

    add-int/2addr v1, v0

    .line 117
    :cond_4
    iget-object v0, p0, Lmrt;->e:Lmru;

    if-eqz v0, :cond_5

    .line 118
    const/4 v0, 0x5

    iget-object v2, p0, Lmrt;->e:Lmru;

    .line 119
    invoke-static {v0, v2}, Llxz;->d(ILlyi;)I

    move-result v0

    add-int/2addr v1, v0

    .line 121
    :cond_5
    return v1
.end method
