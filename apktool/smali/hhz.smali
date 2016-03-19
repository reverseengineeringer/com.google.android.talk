.class final Lhhz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhhm;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lhhm",
        "<",
        "Lkho;",
        "Lkhq;",
        "Lkhr;",
        "Lkhs;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lkii;[Lkhk;)Lkko;
    .locals 1

    .prologue
    .line 127
    new-instance v0, Lkke;

    invoke-direct {v0}, Lkke;-><init>()V

    .line 128
    iput-object p0, v0, Lkke;->a:Lkii;

    .line 129
    iput-object p1, v0, Lkke;->b:[Lkhk;

    .line 130
    invoke-static {v0}, Lhhz;->a(Lkke;)Lkko;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lkke;)Lkko;
    .locals 1

    .prologue
    .line 134
    new-instance v0, Lkko;

    invoke-direct {v0}, Lkko;-><init>()V

    .line 135
    iput-object p0, v0, Lkko;->a:Lkke;

    .line 136
    return-object v0
.end method


# virtual methods
.method public synthetic a(Llyi;)Lkko;
    .locals 4

    .prologue
    .line 91
    check-cast p1, Lkho;

    .line 3096
    iget-object v1, p1, Lkho;->b:Lkii;

    iget-object v0, p1, Lkho;->a:Lkhk;

    if-nez v0, :cond_0

    .line 3097
    iget-object v0, p1, Lkho;->d:[Lkhk;

    .line 3096
    :goto_0
    invoke-static {v1, v0}, Lhhz;->a(Lkii;[Lkhk;)Lkko;

    move-result-object v0

    .line 91
    return-object v0

    .line 3097
    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Lkhk;

    const/4 v2, 0x0

    iget-object v3, p1, Lkho;->a:Lkhk;

    aput-object v3, v0, v2

    goto :goto_0
.end method

.method public synthetic a(Llyi;Llyi;)Lkko;
    .locals 5

    .prologue
    .line 91
    check-cast p1, Lkhr;

    check-cast p2, Lkhs;

    .line 1110
    new-instance v1, Lkke;

    invoke-direct {v1}, Lkke;-><init>()V

    .line 1111
    iget-object v0, p2, Lkhs;->a:Lkii;

    iput-object v0, v1, Lkke;->a:Lkii;

    .line 1112
    iget-object v0, p2, Lkhs;->b:Ljava/lang/Integer;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Laal;->a(Ljava/lang/Integer;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v1, Lkke;->f:Ljava/lang/Integer;

    .line 1114
    iget-object v0, p1, Lkhr;->e:[Ljava/lang/String;

    array-length v0, v0

    new-array v2, v0, [Lkig;

    .line 1116
    const/4 v0, 0x0

    :goto_0
    iget-object v3, p1, Lkhr;->e:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 1117
    new-instance v3, Lkig;

    invoke-direct {v3}, Lkig;-><init>()V

    aput-object v3, v2, v0

    .line 1118
    aget-object v3, v2, v0

    iget-object v4, p1, Lkhr;->a:Ljava/lang/String;

    iput-object v4, v3, Lkig;->a:Ljava/lang/String;

    .line 1119
    aget-object v3, v2, v0

    iget-object v4, p1, Lkhr;->e:[Ljava/lang/String;

    aget-object v4, v4, v0

    iput-object v4, v3, Lkig;->b:Ljava/lang/String;

    .line 1116
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1121
    :cond_0
    iput-object v2, v1, Lkke;->c:[Lkig;

    .line 1122
    invoke-static {v1}, Lhhz;->a(Lkke;)Lkko;

    move-result-object v0

    .line 91
    return-object v0
.end method

.method public synthetic b(Llyi;)Lkko;
    .locals 4

    .prologue
    .line 91
    check-cast p1, Lkhq;

    .line 2103
    iget-object v1, p1, Lkhq;->b:Lkii;

    iget-object v0, p1, Lkhq;->a:Lkhk;

    if-nez v0, :cond_0

    .line 2104
    iget-object v0, p1, Lkhq;->c:[Lkhk;

    .line 2103
    :goto_0
    invoke-static {v1, v0}, Lhhz;->a(Lkii;[Lkhk;)Lkko;

    move-result-object v0

    .line 91
    return-object v0

    .line 2104
    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Lkhk;

    const/4 v2, 0x0

    iget-object v3, p1, Lkhq;->a:Lkhk;

    aput-object v3, v0, v2

    goto :goto_0
.end method
