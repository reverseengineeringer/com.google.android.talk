.class public final Lizl;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lizl;",
        ">;"
    }
.end annotation


# instance fields
.field public a:[Lizq;

.field public b:Ljac;

.field public c:Lizp;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 34
    invoke-direct {p0}, Llyb;-><init>()V

    .line 35
    invoke-static {}, Lizq;->d()[Lizq;

    move-result-object v0

    iput-object v0, p0, Lizl;->a:[Lizq;

    .line 36
    iput-object v1, p0, Lizl;->b:Ljac;

    .line 37
    iput-object v1, p0, Lizl;->c:Lizp;

    .line 38
    iput-object v1, p0, Lizl;->eD:Llyd;

    .line 39
    const/4 v0, -0x1

    iput v0, p0, Lizl;->eE:I

    .line 40
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1090
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1091
    sparse-switch v0, :sswitch_data_0

    .line 1095
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1096
    :sswitch_0
    return-object p0

    .line 1101
    :sswitch_1
    const/16 v0, 0xa

    .line 1102
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 1103
    iget-object v0, p0, Lizl;->a:[Lizq;

    if-nez v0, :cond_2

    move v0, v1

    .line 1104
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lizq;

    .line 1106
    if-eqz v0, :cond_1

    .line 1107
    iget-object v3, p0, Lizl;->a:[Lizq;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1109
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 1110
    new-instance v3, Lizq;

    invoke-direct {v3}, Lizq;-><init>()V

    aput-object v3, v2, v0

    .line 1111
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 1112
    invoke-virtual {p1}, Llxy;->a()I

    .line 1109
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1103
    :cond_2
    iget-object v0, p0, Lizl;->a:[Lizq;

    array-length v0, v0

    goto :goto_1

    .line 1115
    :cond_3
    new-instance v3, Lizq;

    invoke-direct {v3}, Lizq;-><init>()V

    aput-object v3, v2, v0

    .line 1116
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 1117
    iput-object v2, p0, Lizl;->a:[Lizq;

    goto :goto_0

    .line 1121
    :sswitch_2
    iget-object v0, p0, Lizl;->b:Ljac;

    if-nez v0, :cond_4

    .line 1122
    new-instance v0, Ljac;

    invoke-direct {v0}, Ljac;-><init>()V

    iput-object v0, p0, Lizl;->b:Ljac;

    .line 1124
    :cond_4
    iget-object v0, p0, Lizl;->b:Ljac;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1128
    :sswitch_3
    iget-object v0, p0, Lizl;->c:Lizp;

    if-nez v0, :cond_5

    .line 1129
    new-instance v0, Lizp;

    invoke-direct {v0}, Lizp;-><init>()V

    iput-object v0, p0, Lizl;->c:Lizp;

    .line 1131
    :cond_5
    iget-object v0, p0, Lizl;->c:Lizp;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1091
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 3

    .prologue
    .line 45
    iget-object v0, p0, Lizl;->a:[Lizq;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lizl;->a:[Lizq;

    array-length v0, v0

    if-lez v0, :cond_1

    .line 46
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lizl;->a:[Lizq;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 47
    iget-object v1, p0, Lizl;->a:[Lizq;

    aget-object v1, v1, v0

    .line 48
    if-eqz v1, :cond_0

    .line 49
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v1}, Llxz;->b(ILlyi;)V

    .line 46
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 53
    :cond_1
    iget-object v0, p0, Lizl;->b:Ljac;

    if-eqz v0, :cond_2

    .line 54
    const/4 v0, 0x2

    iget-object v1, p0, Lizl;->b:Ljac;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 56
    :cond_2
    iget-object v0, p0, Lizl;->c:Lizp;

    if-eqz v0, :cond_3

    .line 57
    const/4 v0, 0x3

    iget-object v1, p0, Lizl;->c:Lizp;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 59
    :cond_3
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 60
    return-void
.end method

.method protected b()I
    .locals 4

    .prologue
    .line 64
    invoke-super {p0}, Llyb;->b()I

    move-result v1

    .line 65
    iget-object v0, p0, Lizl;->a:[Lizq;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lizl;->a:[Lizq;

    array-length v0, v0

    if-lez v0, :cond_1

    .line 66
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lizl;->a:[Lizq;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 67
    iget-object v2, p0, Lizl;->a:[Lizq;

    aget-object v2, v2, v0

    .line 68
    if-eqz v2, :cond_0

    .line 69
    const/4 v3, 0x1

    .line 70
    invoke-static {v3, v2}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v1, v2

    .line 66
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 74
    :cond_1
    iget-object v0, p0, Lizl;->b:Ljac;

    if-eqz v0, :cond_2

    .line 75
    const/4 v0, 0x2

    iget-object v2, p0, Lizl;->b:Ljac;

    .line 76
    invoke-static {v0, v2}, Llxz;->d(ILlyi;)I

    move-result v0

    add-int/2addr v1, v0

    .line 78
    :cond_2
    iget-object v0, p0, Lizl;->c:Lizp;

    if-eqz v0, :cond_3

    .line 79
    const/4 v0, 0x3

    iget-object v2, p0, Lizl;->c:Lizp;

    .line 80
    invoke-static {v0, v2}, Llxz;->d(ILlyi;)I

    move-result v0

    add-int/2addr v1, v0

    .line 82
    :cond_3
    return v1
.end method
