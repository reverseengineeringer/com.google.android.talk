.class public final Leun;
.super Llyi;
.source "SourceFile"


# instance fields
.field public a:[Leuo;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Llyi;-><init>()V

    .line 1033
    invoke-static {}, Leuo;->d()[Leuo;

    move-result-object v0

    iput-object v0, p0, Leun;->a:[Leuo;

    .line 1034
    const/4 v0, -0x1

    iput v0, p0, Leun;->eE:I

    .line 30
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1072
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1073
    sparse-switch v0, :sswitch_data_0

    .line 2095
    invoke-virtual {p1, v0}, Llxy;->b(I)Z

    move-result v0

    .line 1077
    if-nez v0, :cond_0

    .line 1078
    :sswitch_0
    return-object p0

    .line 1083
    :sswitch_1
    const/16 v0, 0xa

    .line 1084
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 1085
    iget-object v0, p0, Leun;->a:[Leuo;

    if-nez v0, :cond_2

    move v0, v1

    .line 1086
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Leuo;

    .line 1088
    if-eqz v0, :cond_1

    .line 1089
    iget-object v3, p0, Leun;->a:[Leuo;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1091
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 1092
    new-instance v3, Leuo;

    invoke-direct {v3}, Leuo;-><init>()V

    aput-object v3, v2, v0

    .line 1093
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 1094
    invoke-virtual {p1}, Llxy;->a()I

    .line 1091
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1085
    :cond_2
    iget-object v0, p0, Leun;->a:[Leuo;

    array-length v0, v0

    goto :goto_1

    .line 1097
    :cond_3
    new-instance v3, Leuo;

    invoke-direct {v3}, Leuo;-><init>()V

    aput-object v3, v2, v0

    .line 1098
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 1099
    iput-object v2, p0, Leun;->a:[Leuo;

    goto :goto_0

    .line 1073
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 3

    .prologue
    .line 41
    iget-object v0, p0, Leun;->a:[Leuo;

    if-eqz v0, :cond_1

    iget-object v0, p0, Leun;->a:[Leuo;

    array-length v0, v0

    if-lez v0, :cond_1

    .line 42
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Leun;->a:[Leuo;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 43
    iget-object v1, p0, Leun;->a:[Leuo;

    aget-object v1, v1, v0

    .line 44
    if-eqz v1, :cond_0

    .line 45
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v1}, Llxz;->b(ILlyi;)V

    .line 42
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 49
    :cond_1
    invoke-super {p0, p1}, Llyi;->a(Llxz;)V

    .line 50
    return-void
.end method

.method protected b()I
    .locals 4

    .prologue
    .line 54
    invoke-super {p0}, Llyi;->b()I

    move-result v1

    .line 55
    iget-object v0, p0, Leun;->a:[Leuo;

    if-eqz v0, :cond_1

    iget-object v0, p0, Leun;->a:[Leuo;

    array-length v0, v0

    if-lez v0, :cond_1

    .line 56
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Leun;->a:[Leuo;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 57
    iget-object v2, p0, Leun;->a:[Leuo;

    aget-object v2, v2, v0

    .line 58
    if-eqz v2, :cond_0

    .line 59
    const/4 v3, 0x1

    .line 60
    invoke-static {v3, v2}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v1, v2

    .line 56
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 64
    :cond_1
    return v1
.end method
