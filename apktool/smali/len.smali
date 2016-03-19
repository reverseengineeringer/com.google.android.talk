.class public final Llen;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Llen;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Llem;

.field public b:[Llej;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 31
    invoke-direct {p0}, Llyb;-><init>()V

    .line 32
    iput-object v1, p0, Llen;->a:Llem;

    .line 33
    invoke-static {}, Llej;->d()[Llej;

    move-result-object v0

    iput-object v0, p0, Llen;->b:[Llej;

    .line 34
    iput-object v1, p0, Llen;->eD:Llyd;

    .line 35
    const/4 v0, -0x1

    iput v0, p0, Llen;->eE:I

    .line 36
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1079
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1080
    sparse-switch v0, :sswitch_data_0

    .line 1084
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1085
    :sswitch_0
    return-object p0

    .line 1090
    :sswitch_1
    iget-object v0, p0, Llen;->a:Llem;

    if-nez v0, :cond_1

    .line 1091
    new-instance v0, Llem;

    invoke-direct {v0}, Llem;-><init>()V

    iput-object v0, p0, Llen;->a:Llem;

    .line 1093
    :cond_1
    iget-object v0, p0, Llen;->a:Llem;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1097
    :sswitch_2
    const/16 v0, 0x1a

    .line 1098
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 1099
    iget-object v0, p0, Llen;->b:[Llej;

    if-nez v0, :cond_3

    move v0, v1

    .line 1100
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Llej;

    .line 1102
    if-eqz v0, :cond_2

    .line 1103
    iget-object v3, p0, Llen;->b:[Llej;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1105
    :cond_2
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_4

    .line 1106
    new-instance v3, Llej;

    invoke-direct {v3}, Llej;-><init>()V

    aput-object v3, v2, v0

    .line 1107
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 1108
    invoke-virtual {p1}, Llxy;->a()I

    .line 1105
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1099
    :cond_3
    iget-object v0, p0, Llen;->b:[Llej;

    array-length v0, v0

    goto :goto_1

    .line 1111
    :cond_4
    new-instance v3, Llej;

    invoke-direct {v3}, Llej;-><init>()V

    aput-object v3, v2, v0

    .line 1112
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 1113
    iput-object v2, p0, Llen;->b:[Llej;

    goto :goto_0

    .line 1080
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x12 -> :sswitch_1
        0x1a -> :sswitch_2
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 3

    .prologue
    .line 41
    iget-object v0, p0, Llen;->a:Llem;

    if-eqz v0, :cond_0

    .line 42
    const/4 v0, 0x2

    iget-object v1, p0, Llen;->a:Llem;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 44
    :cond_0
    iget-object v0, p0, Llen;->b:[Llej;

    if-eqz v0, :cond_2

    iget-object v0, p0, Llen;->b:[Llej;

    array-length v0, v0

    if-lez v0, :cond_2

    .line 45
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Llen;->b:[Llej;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 46
    iget-object v1, p0, Llen;->b:[Llej;

    aget-object v1, v1, v0

    .line 47
    if-eqz v1, :cond_1

    .line 48
    const/4 v2, 0x3

    invoke-virtual {p1, v2, v1}, Llxz;->b(ILlyi;)V

    .line 45
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 52
    :cond_2
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 53
    return-void
.end method

.method protected b()I
    .locals 5

    .prologue
    .line 57
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 58
    iget-object v1, p0, Llen;->a:Llem;

    if-eqz v1, :cond_0

    .line 59
    const/4 v1, 0x2

    iget-object v2, p0, Llen;->a:Llem;

    .line 60
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 62
    :cond_0
    iget-object v1, p0, Llen;->b:[Llej;

    if-eqz v1, :cond_3

    iget-object v1, p0, Llen;->b:[Llej;

    array-length v1, v1

    if-lez v1, :cond_3

    .line 63
    const/4 v1, 0x0

    move v4, v1

    move v1, v0

    move v0, v4

    :goto_0
    iget-object v2, p0, Llen;->b:[Llej;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 64
    iget-object v2, p0, Llen;->b:[Llej;

    aget-object v2, v2, v0

    .line 65
    if-eqz v2, :cond_1

    .line 66
    const/4 v3, 0x3

    .line 67
    invoke-static {v3, v2}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v1, v2

    .line 63
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 71
    :cond_3
    return v0
.end method
