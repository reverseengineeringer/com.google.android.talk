.class public final Ljix;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljix;",
        ">;"
    }
.end annotation


# instance fields
.field public a:[Ljiv;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Llyb;-><init>()V

    .line 1037
    invoke-static {}, Ljiv;->d()[Ljiv;

    move-result-object v0

    iput-object v0, p0, Ljix;->a:[Ljiv;

    .line 1038
    const/4 v0, 0x0

    iput-object v0, p0, Ljix;->eD:Llyd;

    .line 1039
    const/4 v0, -0x1

    iput v0, p0, Ljix;->eE:I

    .line 34
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1077
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1078
    sparse-switch v0, :sswitch_data_0

    .line 1082
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1083
    :sswitch_0
    return-object p0

    .line 1088
    :sswitch_1
    const/16 v0, 0xa

    .line 1089
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 1090
    iget-object v0, p0, Ljix;->a:[Ljiv;

    if-nez v0, :cond_2

    move v0, v1

    .line 1091
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Ljiv;

    .line 1093
    if-eqz v0, :cond_1

    .line 1094
    iget-object v3, p0, Ljix;->a:[Ljiv;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1096
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 1097
    new-instance v3, Ljiv;

    invoke-direct {v3}, Ljiv;-><init>()V

    aput-object v3, v2, v0

    .line 1098
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 1099
    invoke-virtual {p1}, Llxy;->a()I

    .line 1096
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1090
    :cond_2
    iget-object v0, p0, Ljix;->a:[Ljiv;

    array-length v0, v0

    goto :goto_1

    .line 1102
    :cond_3
    new-instance v3, Ljiv;

    invoke-direct {v3}, Ljiv;-><init>()V

    aput-object v3, v2, v0

    .line 1103
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 1104
    iput-object v2, p0, Ljix;->a:[Ljiv;

    goto :goto_0

    .line 1078
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
    iget-object v0, p0, Ljix;->a:[Ljiv;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ljix;->a:[Ljiv;

    array-length v0, v0

    if-lez v0, :cond_1

    .line 47
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Ljix;->a:[Ljiv;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 48
    iget-object v1, p0, Ljix;->a:[Ljiv;

    aget-object v1, v1, v0

    .line 49
    if-eqz v1, :cond_0

    .line 50
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v1}, Llxz;->b(ILlyi;)V

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
    .locals 4

    .prologue
    .line 59
    invoke-super {p0}, Llyb;->b()I

    move-result v1

    .line 60
    iget-object v0, p0, Ljix;->a:[Ljiv;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ljix;->a:[Ljiv;

    array-length v0, v0

    if-lez v0, :cond_1

    .line 61
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Ljix;->a:[Ljiv;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 62
    iget-object v2, p0, Ljix;->a:[Ljiv;

    aget-object v2, v2, v0

    .line 63
    if-eqz v2, :cond_0

    .line 64
    const/4 v3, 0x1

    .line 65
    invoke-static {v3, v2}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v1, v2

    .line 61
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 69
    :cond_1
    return v1
.end method
