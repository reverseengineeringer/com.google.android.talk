.class public final Llys;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Llys;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Llyc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Llyc",
            "<",
            "Ljava/lang/Object;",
            "Llys;",
            ">;"
        }
    .end annotation
.end field

.field private static final d:[Llys;


# instance fields
.field public b:Llyq;

.field public c:[Llyp;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 13
    const-class v0, Llys;

    const-wide/32 v2, 0xbb61f6a

    .line 14
    invoke-static {v0, v2, v3}, Llyc;->a(Ljava/lang/Class;J)Llyc;

    move-result-object v0

    sput-object v0, Llys;->a:Llyc;

    .line 19
    const/4 v0, 0x0

    new-array v0, v0, [Llys;

    sput-object v0, Llys;->d:[Llys;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 32
    invoke-direct {p0}, Llyb;-><init>()V

    .line 33
    iput-object v1, p0, Llys;->b:Llyq;

    .line 34
    invoke-static {}, Llyp;->d()[Llyp;

    move-result-object v0

    iput-object v0, p0, Llys;->c:[Llyp;

    .line 35
    iput-object v1, p0, Llys;->eD:Llyd;

    .line 36
    const/4 v0, -0x1

    iput v0, p0, Llys;->eE:I

    .line 37
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1080
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1081
    sparse-switch v0, :sswitch_data_0

    .line 1085
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1086
    :sswitch_0
    return-object p0

    .line 1091
    :sswitch_1
    iget-object v0, p0, Llys;->b:Llyq;

    if-nez v0, :cond_1

    .line 1092
    new-instance v0, Llyq;

    invoke-direct {v0}, Llyq;-><init>()V

    iput-object v0, p0, Llys;->b:Llyq;

    .line 1094
    :cond_1
    iget-object v0, p0, Llys;->b:Llyq;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1098
    :sswitch_2
    const/16 v0, 0x12

    .line 1099
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 1100
    iget-object v0, p0, Llys;->c:[Llyp;

    if-nez v0, :cond_3

    move v0, v1

    .line 1101
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Llyp;

    .line 1103
    if-eqz v0, :cond_2

    .line 1104
    iget-object v3, p0, Llys;->c:[Llyp;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1106
    :cond_2
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_4

    .line 1107
    new-instance v3, Llyp;

    invoke-direct {v3}, Llyp;-><init>()V

    aput-object v3, v2, v0

    .line 1108
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 1109
    invoke-virtual {p1}, Llxy;->a()I

    .line 1106
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1100
    :cond_3
    iget-object v0, p0, Llys;->c:[Llyp;

    array-length v0, v0

    goto :goto_1

    .line 1112
    :cond_4
    new-instance v3, Llyp;

    invoke-direct {v3}, Llyp;-><init>()V

    aput-object v3, v2, v0

    .line 1113
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 1114
    iput-object v2, p0, Llys;->c:[Llyp;

    goto :goto_0

    .line 1081
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 3

    .prologue
    .line 42
    iget-object v0, p0, Llys;->b:Llyq;

    if-eqz v0, :cond_0

    .line 43
    const/4 v0, 0x1

    iget-object v1, p0, Llys;->b:Llyq;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 45
    :cond_0
    iget-object v0, p0, Llys;->c:[Llyp;

    if-eqz v0, :cond_2

    iget-object v0, p0, Llys;->c:[Llyp;

    array-length v0, v0

    if-lez v0, :cond_2

    .line 46
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Llys;->c:[Llyp;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 47
    iget-object v1, p0, Llys;->c:[Llyp;

    aget-object v1, v1, v0

    .line 48
    if-eqz v1, :cond_1

    .line 49
    const/4 v2, 0x2

    invoke-virtual {p1, v2, v1}, Llxz;->b(ILlyi;)V

    .line 46
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 53
    :cond_2
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 54
    return-void
.end method

.method protected b()I
    .locals 5

    .prologue
    .line 58
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 59
    iget-object v1, p0, Llys;->b:Llyq;

    if-eqz v1, :cond_0

    .line 60
    const/4 v1, 0x1

    iget-object v2, p0, Llys;->b:Llyq;

    .line 61
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 63
    :cond_0
    iget-object v1, p0, Llys;->c:[Llyp;

    if-eqz v1, :cond_3

    iget-object v1, p0, Llys;->c:[Llyp;

    array-length v1, v1

    if-lez v1, :cond_3

    .line 64
    const/4 v1, 0x0

    move v4, v1

    move v1, v0

    move v0, v4

    :goto_0
    iget-object v2, p0, Llys;->c:[Llyp;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 65
    iget-object v2, p0, Llys;->c:[Llyp;

    aget-object v2, v2, v0

    .line 66
    if-eqz v2, :cond_1

    .line 67
    const/4 v3, 0x2

    .line 68
    invoke-static {v3, v2}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v1, v2

    .line 64
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 72
    :cond_3
    return v0
.end method
