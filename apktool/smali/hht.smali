.class final Lhht;
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
        "Lkha;",
        "Llyi;",
        "Lkhb;",
        "Lkhc;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lkjz;)Lkko;
    .locals 1

    .prologue
    .line 106
    new-instance v0, Lkko;

    invoke-direct {v0}, Lkko;-><init>()V

    .line 107
    iput-object p0, v0, Lkko;->h:Lkjz;

    .line 108
    return-object v0
.end method


# virtual methods
.method public synthetic a(Llyi;)Lkko;
    .locals 4

    .prologue
    .line 71
    check-cast p1, Lkha;

    .line 2076
    new-instance v1, Lkjz;

    invoke-direct {v1}, Lkjz;-><init>()V

    .line 2077
    iget-object v0, p1, Lkha;->b:Lkii;

    iput-object v0, v1, Lkjz;->a:Lkii;

    .line 2078
    iget-object v0, p1, Lkha;->a:Lkgy;

    if-nez v0, :cond_0

    iget-object v0, p1, Lkha;->c:[Lkgy;

    .line 2079
    :goto_0
    iput-object v0, v1, Lkjz;->b:[Lkgy;

    .line 2080
    invoke-static {v1}, Lhht;->a(Lkjz;)Lkko;

    move-result-object v0

    .line 71
    return-object v0

    .line 2079
    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Lkgy;

    const/4 v2, 0x0

    iget-object v3, p1, Lkha;->a:Lkgy;

    aput-object v3, v0, v2

    goto :goto_0
.end method

.method public synthetic a(Llyi;Llyi;)Lkko;
    .locals 5

    .prologue
    .line 71
    check-cast p1, Lkhb;

    check-cast p2, Lkhc;

    .line 1092
    new-instance v1, Lkjz;

    invoke-direct {v1}, Lkjz;-><init>()V

    .line 1093
    iget-object v0, p2, Lkhc;->a:Lkii;

    iput-object v0, v1, Lkjz;->a:Lkii;

    .line 1094
    iget-object v0, p1, Lkhb;->d:[Ljava/lang/String;

    array-length v0, v0

    new-array v2, v0, [Lkjy;

    .line 1096
    const/4 v0, 0x0

    :goto_0
    iget-object v3, p1, Lkhb;->d:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 1097
    new-instance v3, Lkjy;

    invoke-direct {v3}, Lkjy;-><init>()V

    aput-object v3, v2, v0

    .line 1098
    aget-object v3, v2, v0

    iget-object v4, p1, Lkhb;->a:Ljava/lang/String;

    iput-object v4, v3, Lkjy;->a:Ljava/lang/String;

    .line 1099
    aget-object v3, v2, v0

    iget-object v4, p1, Lkhb;->d:[Ljava/lang/String;

    aget-object v4, v4, v0

    iput-object v4, v3, Lkjy;->b:Ljava/lang/String;

    .line 1096
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1101
    :cond_0
    iput-object v2, v1, Lkjz;->c:[Lkjy;

    .line 1102
    invoke-static {v1}, Lhht;->a(Lkjz;)Lkko;

    move-result-object v0

    .line 71
    return-object v0
.end method

.method public b(Llyi;)Lkko;
    .locals 1

    .prologue
    .line 85
    const-string v0, "Common announcement modification operation is not supported"

    invoke-static {v0}, Lhbs;->a(Ljava/lang/String;)V

    .line 86
    const/4 v0, 0x0

    return-object v0
.end method
