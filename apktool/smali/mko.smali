.class public final Lmko;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lmko;",
        ">;"
    }
.end annotation


# instance fields
.field public a:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Llyb;-><init>()V

    .line 1037
    sget-object v0, Llyo;->f:[Ljava/lang/String;

    iput-object v0, p0, Lmko;->a:[Ljava/lang/String;

    .line 1038
    const/4 v0, 0x0

    iput-object v0, p0, Lmko;->eD:Llyd;

    .line 1039
    const/4 v0, -0x1

    iput v0, p0, Lmko;->eE:I

    .line 34
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1082
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1083
    sparse-switch v0, :sswitch_data_0

    .line 1087
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1088
    :sswitch_0
    return-object p0

    .line 1093
    :sswitch_1
    const/16 v0, 0xa

    .line 1094
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 1095
    iget-object v0, p0, Lmko;->a:[Ljava/lang/String;

    if-nez v0, :cond_2

    move v0, v1

    .line 1096
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Ljava/lang/String;

    .line 1097
    if-eqz v0, :cond_1

    .line 1098
    iget-object v3, p0, Lmko;->a:[Ljava/lang/String;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1100
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 1101
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 1102
    invoke-virtual {p1}, Llxy;->a()I

    .line 1100
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1095
    :cond_2
    iget-object v0, p0, Lmko;->a:[Ljava/lang/String;

    array-length v0, v0

    goto :goto_1

    .line 1105
    :cond_3
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 1106
    iput-object v2, p0, Lmko;->a:[Ljava/lang/String;

    goto :goto_0

    .line 1083
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 3

    .prologue
    .line 46
    iget-object v0, p0, Lmko;->a:[Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmko;->a:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_1

    .line 47
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lmko;->a:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 48
    iget-object v1, p0, Lmko;->a:[Ljava/lang/String;

    aget-object v1, v1, v0

    .line 49
    if-eqz v1, :cond_0

    .line 50
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 47
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 54
    :cond_1
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 55
    return-void
.end method

.method protected b()I
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 59
    invoke-super {p0}, Llyb;->b()I

    move-result v3

    .line 60
    iget-object v1, p0, Lmko;->a:[Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lmko;->a:[Ljava/lang/String;

    array-length v1, v1

    if-lez v1, :cond_2

    move v1, v0

    move v2, v0

    .line 63
    :goto_0
    iget-object v4, p0, Lmko;->a:[Ljava/lang/String;

    array-length v4, v4

    if-ge v0, v4, :cond_1

    .line 64
    iget-object v4, p0, Lmko;->a:[Ljava/lang/String;

    aget-object v4, v4, v0

    .line 65
    if-eqz v4, :cond_0

    .line 66
    add-int/lit8 v2, v2, 0x1

    .line 68
    invoke-static {v4}, Llxz;->a(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v1, v4

    .line 63
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 71
    :cond_1
    add-int v0, v3, v1

    .line 72
    mul-int/lit8 v1, v2, 0x1

    add-int/2addr v0, v1

    .line 74
    :goto_1
    return v0

    :cond_2
    move v0, v3

    goto :goto_1
.end method
