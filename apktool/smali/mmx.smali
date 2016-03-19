.class public final Lmmx;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lmmx;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/Integer;

.field public b:[Lmmw;

.field public c:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 44
    invoke-direct {p0}, Llyb;-><init>()V

    .line 1049
    iput-object v1, p0, Lmmx;->a:Ljava/lang/Integer;

    .line 1050
    invoke-static {}, Lmmw;->d()[Lmmw;

    move-result-object v0

    iput-object v0, p0, Lmmx;->b:[Lmmw;

    .line 1051
    iput-object v1, p0, Lmmx;->c:Ljava/lang/Integer;

    .line 1052
    iput-object v1, p0, Lmmx;->eD:Llyd;

    .line 1053
    const/4 v0, -0x1

    iput v0, p0, Lmmx;->eE:I

    .line 46
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1105
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1106
    sparse-switch v0, :sswitch_data_0

    .line 1110
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1111
    :sswitch_0
    return-object p0

    .line 1116
    :sswitch_1
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 1117
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1120
    :pswitch_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lmmx;->a:Ljava/lang/Integer;

    goto :goto_0

    .line 1126
    :sswitch_2
    const/16 v0, 0x12

    .line 1127
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 1128
    iget-object v0, p0, Lmmx;->b:[Lmmw;

    if-nez v0, :cond_2

    move v0, v1

    .line 1129
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lmmw;

    .line 1131
    if-eqz v0, :cond_1

    .line 1132
    iget-object v3, p0, Lmmx;->b:[Lmmw;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1134
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 1135
    new-instance v3, Lmmw;

    invoke-direct {v3}, Lmmw;-><init>()V

    aput-object v3, v2, v0

    .line 1136
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 1137
    invoke-virtual {p1}, Llxy;->a()I

    .line 1134
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1128
    :cond_2
    iget-object v0, p0, Lmmx;->b:[Lmmw;

    array-length v0, v0

    goto :goto_1

    .line 1140
    :cond_3
    new-instance v3, Lmmw;

    invoke-direct {v3}, Lmmw;-><init>()V

    aput-object v3, v2, v0

    .line 1141
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 1142
    iput-object v2, p0, Lmmx;->b:[Lmmw;

    goto :goto_0

    .line 1146
    :sswitch_3
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 1147
    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 1156
    :pswitch_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lmmx;->c:Ljava/lang/Integer;

    goto :goto_0

    .line 1106
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
    .end sparse-switch

    .line 1117
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 1147
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
    .locals 3

    .prologue
    .line 60
    iget-object v0, p0, Lmmx;->a:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 61
    const/4 v0, 0x1

    iget-object v1, p0, Lmmx;->a:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 63
    :cond_0
    iget-object v0, p0, Lmmx;->b:[Lmmw;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lmmx;->b:[Lmmw;

    array-length v0, v0

    if-lez v0, :cond_2

    .line 64
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lmmx;->b:[Lmmw;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 65
    iget-object v1, p0, Lmmx;->b:[Lmmw;

    aget-object v1, v1, v0

    .line 66
    if-eqz v1, :cond_1

    .line 67
    const/4 v2, 0x2

    invoke-virtual {p1, v2, v1}, Llxz;->b(ILlyi;)V

    .line 64
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 71
    :cond_2
    iget-object v0, p0, Lmmx;->c:Ljava/lang/Integer;

    if-eqz v0, :cond_3

    .line 72
    const/4 v0, 0x3

    iget-object v1, p0, Lmmx;->c:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 74
    :cond_3
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 75
    return-void
.end method

.method protected b()I
    .locals 5

    .prologue
    .line 79
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 80
    iget-object v1, p0, Lmmx;->a:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 81
    const/4 v1, 0x1

    iget-object v2, p0, Lmmx;->a:Ljava/lang/Integer;

    .line 82
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 84
    :cond_0
    iget-object v1, p0, Lmmx;->b:[Lmmw;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lmmx;->b:[Lmmw;

    array-length v1, v1

    if-lez v1, :cond_3

    .line 85
    const/4 v1, 0x0

    move v4, v1

    move v1, v0

    move v0, v4

    :goto_0
    iget-object v2, p0, Lmmx;->b:[Lmmw;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 86
    iget-object v2, p0, Lmmx;->b:[Lmmw;

    aget-object v2, v2, v0

    .line 87
    if-eqz v2, :cond_1

    .line 88
    const/4 v3, 0x2

    .line 89
    invoke-static {v3, v2}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v1, v2

    .line 85
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 93
    :cond_3
    iget-object v1, p0, Lmmx;->c:Ljava/lang/Integer;

    if-eqz v1, :cond_4

    .line 94
    const/4 v1, 0x3

    iget-object v2, p0, Lmmx;->c:Ljava/lang/Integer;

    .line 95
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 97
    :cond_4
    return v0
.end method
