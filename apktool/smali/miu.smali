.class public final Lmiu;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lmiu;",
        ">;"
    }
.end annotation


# instance fields
.field public a:[Lmkt;

.field public b:Ljava/lang/Integer;

.field public c:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 50
    invoke-direct {p0}, Llyb;-><init>()V

    .line 1055
    invoke-static {}, Lmkt;->d()[Lmkt;

    move-result-object v0

    iput-object v0, p0, Lmiu;->a:[Lmkt;

    .line 1056
    iput-object v1, p0, Lmiu;->b:Ljava/lang/Integer;

    .line 1057
    iput-object v1, p0, Lmiu;->c:Ljava/lang/Integer;

    .line 1058
    iput-object v1, p0, Lmiu;->eD:Llyd;

    .line 1059
    const/4 v0, -0x1

    iput v0, p0, Lmiu;->eE:I

    .line 52
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1111
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1112
    sparse-switch v0, :sswitch_data_0

    .line 1116
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1117
    :sswitch_0
    return-object p0

    .line 1122
    :sswitch_1
    const/16 v0, 0xa

    .line 1123
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 1124
    iget-object v0, p0, Lmiu;->a:[Lmkt;

    if-nez v0, :cond_2

    move v0, v1

    .line 1125
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lmkt;

    .line 1127
    if-eqz v0, :cond_1

    .line 1128
    iget-object v3, p0, Lmiu;->a:[Lmkt;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1130
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 1131
    new-instance v3, Lmkt;

    invoke-direct {v3}, Lmkt;-><init>()V

    aput-object v3, v2, v0

    .line 1132
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 1133
    invoke-virtual {p1}, Llxy;->a()I

    .line 1130
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1124
    :cond_2
    iget-object v0, p0, Lmiu;->a:[Lmkt;

    array-length v0, v0

    goto :goto_1

    .line 1136
    :cond_3
    new-instance v3, Lmkt;

    invoke-direct {v3}, Lmkt;-><init>()V

    aput-object v3, v2, v0

    .line 1137
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 1138
    iput-object v2, p0, Lmiu;->a:[Lmkt;

    goto :goto_0

    .line 1142
    :sswitch_2
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 1143
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1146
    :pswitch_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lmiu;->b:Ljava/lang/Integer;

    goto :goto_0

    .line 1152
    :sswitch_3
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 1153
    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 1156
    :pswitch_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lmiu;->c:Ljava/lang/Integer;

    goto :goto_0

    .line 1112
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
    .end sparse-switch

    .line 1143
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 1153
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public a(Llxz;)V
    .locals 3

    .prologue
    .line 66
    iget-object v0, p0, Lmiu;->a:[Lmkt;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmiu;->a:[Lmkt;

    array-length v0, v0

    if-lez v0, :cond_1

    .line 67
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lmiu;->a:[Lmkt;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 68
    iget-object v1, p0, Lmiu;->a:[Lmkt;

    aget-object v1, v1, v0

    .line 69
    if-eqz v1, :cond_0

    .line 70
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v1}, Llxz;->b(ILlyi;)V

    .line 67
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 74
    :cond_1
    iget-object v0, p0, Lmiu;->b:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 75
    const/4 v0, 0x2

    iget-object v1, p0, Lmiu;->b:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 77
    :cond_2
    iget-object v0, p0, Lmiu;->c:Ljava/lang/Integer;

    if-eqz v0, :cond_3

    .line 78
    const/4 v0, 0x3

    iget-object v1, p0, Lmiu;->c:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 80
    :cond_3
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 81
    return-void
.end method

.method protected b()I
    .locals 4

    .prologue
    .line 85
    invoke-super {p0}, Llyb;->b()I

    move-result v1

    .line 86
    iget-object v0, p0, Lmiu;->a:[Lmkt;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmiu;->a:[Lmkt;

    array-length v0, v0

    if-lez v0, :cond_1

    .line 87
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lmiu;->a:[Lmkt;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 88
    iget-object v2, p0, Lmiu;->a:[Lmkt;

    aget-object v2, v2, v0

    .line 89
    if-eqz v2, :cond_0

    .line 90
    const/4 v3, 0x1

    .line 91
    invoke-static {v3, v2}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v1, v2

    .line 87
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 95
    :cond_1
    iget-object v0, p0, Lmiu;->b:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 96
    const/4 v0, 0x2

    iget-object v2, p0, Lmiu;->b:Ljava/lang/Integer;

    .line 97
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v0, v2}, Llxz;->e(II)I

    move-result v0

    add-int/2addr v1, v0

    .line 99
    :cond_2
    iget-object v0, p0, Lmiu;->c:Ljava/lang/Integer;

    if-eqz v0, :cond_3

    .line 100
    const/4 v0, 0x3

    iget-object v2, p0, Lmiu;->c:Ljava/lang/Integer;

    .line 101
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v0, v2}, Llxz;->e(II)I

    move-result v0

    add-int/2addr v1, v0

    .line 103
    :cond_3
    return v1
.end method
