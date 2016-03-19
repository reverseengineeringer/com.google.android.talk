.class public final Ljjb;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljjb;",
        ">;"
    }
.end annotation


# instance fields
.field public a:I

.field public b:[Ljjd;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Llyb;-><init>()V

    .line 39
    const/high16 v0, -0x80000000

    iput v0, p0, Ljjb;->a:I

    .line 40
    invoke-static {}, Ljjd;->d()[Ljjd;

    move-result-object v0

    iput-object v0, p0, Ljjb;->b:[Ljjd;

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Ljjb;->eD:Llyd;

    .line 42
    const/4 v0, -0x1

    iput v0, p0, Ljjb;->eE:I

    .line 43
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1086
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1087
    sparse-switch v0, :sswitch_data_0

    .line 1091
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1092
    :sswitch_0
    return-object p0

    .line 1097
    :sswitch_1
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 1098
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1102
    :pswitch_0
    iput v0, p0, Ljjb;->a:I

    goto :goto_0

    .line 1108
    :sswitch_2
    const/16 v0, 0x12

    .line 1109
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 1110
    iget-object v0, p0, Ljjb;->b:[Ljjd;

    if-nez v0, :cond_2

    move v0, v1

    .line 1111
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Ljjd;

    .line 1113
    if-eqz v0, :cond_1

    .line 1114
    iget-object v3, p0, Ljjb;->b:[Ljjd;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1116
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 1117
    new-instance v3, Ljjd;

    invoke-direct {v3}, Ljjd;-><init>()V

    aput-object v3, v2, v0

    .line 1118
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 1119
    invoke-virtual {p1}, Llxy;->a()I

    .line 1116
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1110
    :cond_2
    iget-object v0, p0, Ljjb;->b:[Ljjd;

    array-length v0, v0

    goto :goto_1

    .line 1122
    :cond_3
    new-instance v3, Ljjd;

    invoke-direct {v3}, Ljjd;-><init>()V

    aput-object v3, v2, v0

    .line 1123
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 1124
    iput-object v2, p0, Ljjb;->b:[Ljjd;

    goto :goto_0

    .line 1087
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch

    .line 1098
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public a(Llxz;)V
    .locals 3

    .prologue
    .line 48
    iget v0, p0, Ljjb;->a:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    .line 49
    const/4 v0, 0x1

    iget v1, p0, Ljjb;->a:I

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 51
    :cond_0
    iget-object v0, p0, Ljjb;->b:[Ljjd;

    if-eqz v0, :cond_2

    iget-object v0, p0, Ljjb;->b:[Ljjd;

    array-length v0, v0

    if-lez v0, :cond_2

    .line 52
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Ljjb;->b:[Ljjd;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 53
    iget-object v1, p0, Ljjb;->b:[Ljjd;

    aget-object v1, v1, v0

    .line 54
    if-eqz v1, :cond_1

    .line 55
    const/4 v2, 0x2

    invoke-virtual {p1, v2, v1}, Llxz;->b(ILlyi;)V

    .line 52
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 59
    :cond_2
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 60
    return-void
.end method

.method protected b()I
    .locals 5

    .prologue
    .line 64
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 65
    iget v1, p0, Ljjb;->a:I

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_0

    .line 66
    const/4 v1, 0x1

    iget v2, p0, Ljjb;->a:I

    .line 67
    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 69
    :cond_0
    iget-object v1, p0, Ljjb;->b:[Ljjd;

    if-eqz v1, :cond_3

    iget-object v1, p0, Ljjb;->b:[Ljjd;

    array-length v1, v1

    if-lez v1, :cond_3

    .line 70
    const/4 v1, 0x0

    move v4, v1

    move v1, v0

    move v0, v4

    :goto_0
    iget-object v2, p0, Ljjb;->b:[Ljjd;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 71
    iget-object v2, p0, Ljjb;->b:[Ljjd;

    aget-object v2, v2, v0

    .line 72
    if-eqz v2, :cond_1

    .line 73
    const/4 v3, 0x2

    .line 74
    invoke-static {v3, v2}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v1, v2

    .line 70
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 78
    :cond_3
    return v0
.end method
