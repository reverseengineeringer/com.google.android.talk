.class public final Llfh;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Llfh;",
        ">;"
    }
.end annotation


# instance fields
.field public a:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Llyb;-><init>()V

    .line 37
    sget-object v0, Llyo;->a:[I

    iput-object v0, p0, Llfh;->a:[I

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Llfh;->eD:Llyd;

    .line 39
    const/4 v0, -0x1

    iput v0, p0, Llfh;->eE:I

    .line 40
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 1074
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1075
    sparse-switch v0, :sswitch_data_0

    .line 1079
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1080
    :sswitch_0
    return-object p0

    .line 1085
    :sswitch_1
    const/16 v0, 0x8

    .line 1086
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v4

    .line 1087
    new-array v5, v4, [I

    move v3, v2

    move v1, v2

    .line 1089
    :goto_1
    if-ge v3, v4, :cond_2

    .line 1090
    if-eqz v3, :cond_1

    .line 1091
    invoke-virtual {p1}, Llxy;->a()I

    .line 1093
    :cond_1
    invoke-virtual {p1}, Llxy;->f()I

    move-result v6

    .line 1094
    packed-switch v6, :pswitch_data_0

    move v0, v1

    .line 1089
    :goto_2
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move v1, v0

    goto :goto_1

    .line 1099
    :pswitch_0
    add-int/lit8 v0, v1, 0x1

    aput v6, v5, v1

    goto :goto_2

    .line 1103
    :cond_2
    if-eqz v1, :cond_0

    .line 1104
    iget-object v0, p0, Llfh;->a:[I

    if-nez v0, :cond_3

    move v0, v2

    .line 1105
    :goto_3
    if-nez v0, :cond_4

    array-length v3, v5

    if-ne v1, v3, :cond_4

    .line 1106
    iput-object v5, p0, Llfh;->a:[I

    goto :goto_0

    .line 1104
    :cond_3
    iget-object v0, p0, Llfh;->a:[I

    array-length v0, v0

    goto :goto_3

    .line 1108
    :cond_4
    add-int v3, v0, v1

    new-array v3, v3, [I

    .line 1109
    if-eqz v0, :cond_5

    .line 1110
    iget-object v4, p0, Llfh;->a:[I

    invoke-static {v4, v2, v3, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1112
    :cond_5
    invoke-static {v5, v2, v3, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1113
    iput-object v3, p0, Llfh;->a:[I

    goto :goto_0

    .line 1119
    :sswitch_2
    invoke-virtual {p1}, Llxy;->p()I

    move-result v0

    .line 1120
    invoke-virtual {p1, v0}, Llxy;->c(I)I

    move-result v3

    .line 1123
    invoke-virtual {p1}, Llxy;->r()I

    move-result v1

    move v0, v2

    .line 1124
    :goto_4
    invoke-virtual {p1}, Llxy;->q()I

    move-result v4

    if-lez v4, :cond_6

    .line 1125
    invoke-virtual {p1}, Llxy;->f()I

    move-result v4

    packed-switch v4, :pswitch_data_1

    goto :goto_4

    .line 1130
    :pswitch_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 1134
    :cond_6
    if-eqz v0, :cond_a

    .line 1135
    invoke-virtual {p1, v1}, Llxy;->e(I)V

    .line 1136
    iget-object v1, p0, Llfh;->a:[I

    if-nez v1, :cond_8

    move v1, v2

    .line 1137
    :goto_5
    add-int/2addr v0, v1

    new-array v4, v0, [I

    .line 1138
    if-eqz v1, :cond_7

    .line 1139
    iget-object v0, p0, Llfh;->a:[I

    invoke-static {v0, v2, v4, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1141
    :cond_7
    :goto_6
    invoke-virtual {p1}, Llxy;->q()I

    move-result v0

    if-lez v0, :cond_9

    .line 1142
    invoke-virtual {p1}, Llxy;->f()I

    move-result v5

    .line 1143
    packed-switch v5, :pswitch_data_2

    goto :goto_6

    .line 1148
    :pswitch_2
    add-int/lit8 v0, v1, 0x1

    aput v5, v4, v1

    move v1, v0

    goto :goto_6

    .line 1136
    :cond_8
    iget-object v1, p0, Llfh;->a:[I

    array-length v1, v1

    goto :goto_5

    .line 1152
    :cond_9
    iput-object v4, p0, Llfh;->a:[I

    .line 1154
    :cond_a
    invoke-virtual {p1, v3}, Llxy;->d(I)V

    goto/16 :goto_0

    .line 1075
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0xa -> :sswitch_2
    .end sparse-switch

    .line 1094
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 1125
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    .line 1143
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public a(Llxz;)V
    .locals 3

    .prologue
    .line 45
    iget-object v0, p0, Llfh;->a:[I

    if-eqz v0, :cond_0

    iget-object v0, p0, Llfh;->a:[I

    array-length v0, v0

    if-lez v0, :cond_0

    .line 46
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Llfh;->a:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 47
    const/4 v1, 0x1

    iget-object v2, p0, Llfh;->a:[I

    aget v2, v2, v0

    invoke-virtual {p1, v1, v2}, Llxz;->a(II)V

    .line 46
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 50
    :cond_0
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 51
    return-void
.end method

.method protected b()I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 55
    invoke-super {p0}, Llyb;->b()I

    move-result v2

    .line 56
    iget-object v1, p0, Llfh;->a:[I

    if-eqz v1, :cond_1

    iget-object v1, p0, Llfh;->a:[I

    array-length v1, v1

    if-lez v1, :cond_1

    move v1, v0

    .line 58
    :goto_0
    iget-object v3, p0, Llfh;->a:[I

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 59
    iget-object v3, p0, Llfh;->a:[I

    aget v3, v3, v0

    .line 61
    invoke-static {v3}, Llxz;->e(I)I

    move-result v3

    add-int/2addr v1, v3

    .line 58
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 63
    :cond_0
    add-int v0, v2, v1

    .line 64
    iget-object v1, p0, Llfh;->a:[I

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 66
    :goto_1
    return v0

    :cond_1
    move v0, v2

    goto :goto_1
.end method
