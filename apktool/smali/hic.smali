.class final Lhic;
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
        "Lkjh;",
        "Lkjj;",
        "Lkjk;",
        "Lkjl;",
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

.method private static a(Lkii;[Lkja;)Lkko;
    .locals 1

    .prologue
    .line 105
    new-instance v0, Lkkl;

    invoke-direct {v0}, Lkkl;-><init>()V

    .line 106
    iput-object p0, v0, Lkkl;->a:Lkii;

    .line 107
    iput-object p1, v0, Lkkl;->b:[Lkja;

    .line 108
    invoke-static {v0}, Lhic;->a(Lkkl;)Lkko;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lkkl;)Lkko;
    .locals 1

    .prologue
    .line 112
    new-instance v0, Lkko;

    invoke-direct {v0}, Lkko;-><init>()V

    .line 113
    iput-object p0, v0, Lkko;->e:Lkkl;

    .line 114
    return-object v0
.end method


# virtual methods
.method public synthetic a(Llyi;)Lkko;
    .locals 4

    .prologue
    .line 71
    check-cast p1, Lkjh;

    .line 3076
    iget-object v1, p1, Lkjh;->b:Lkii;

    iget-object v0, p1, Lkjh;->a:Lkja;

    if-nez v0, :cond_0

    .line 3077
    iget-object v0, p1, Lkjh;->c:[Lkja;

    .line 3076
    :goto_0
    invoke-static {v1, v0}, Lhic;->a(Lkii;[Lkja;)Lkko;

    move-result-object v0

    .line 71
    return-object v0

    .line 3077
    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Lkja;

    const/4 v2, 0x0

    iget-object v3, p1, Lkjh;->a:Lkja;

    aput-object v3, v0, v2

    goto :goto_0
.end method

.method public synthetic a(Llyi;Llyi;)Lkko;
    .locals 5

    .prologue
    .line 71
    check-cast p1, Lkjk;

    check-cast p2, Lkjl;

    .line 1089
    new-instance v1, Lkkl;

    invoke-direct {v1}, Lkkl;-><init>()V

    .line 1090
    iget-object v0, p2, Lkjl;->a:Lkii;

    iput-object v0, v1, Lkkl;->a:Lkii;

    .line 1091
    iget-object v0, p1, Lkjk;->e:[Ljava/lang/String;

    array-length v0, v0

    new-array v2, v0, [Lkih;

    .line 1093
    const/4 v0, 0x0

    :goto_0
    iget-object v3, p1, Lkjk;->e:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 1094
    new-instance v3, Lkih;

    invoke-direct {v3}, Lkih;-><init>()V

    aput-object v3, v2, v0

    .line 1095
    aget-object v3, v2, v0

    iget-object v4, p1, Lkjk;->a:Ljava/lang/String;

    iput-object v4, v3, Lkih;->a:Ljava/lang/String;

    .line 1096
    aget-object v3, v2, v0

    iget-object v4, p1, Lkjk;->b:Ljava/lang/String;

    iput-object v4, v3, Lkih;->b:Ljava/lang/String;

    .line 1097
    aget-object v3, v2, v0

    iget-object v4, p1, Lkjk;->e:[Ljava/lang/String;

    aget-object v4, v4, v0

    iput-object v4, v3, Lkih;->c:Ljava/lang/String;

    .line 1093
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1099
    :cond_0
    iput-object v2, v1, Lkkl;->c:[Lkih;

    .line 1100
    invoke-static {v1}, Lhic;->a(Lkkl;)Lkko;

    move-result-object v0

    .line 71
    return-object v0
.end method

.method public synthetic b(Llyi;)Lkko;
    .locals 4

    .prologue
    .line 71
    check-cast p1, Lkjj;

    .line 2082
    iget-object v1, p1, Lkjj;->b:Lkii;

    iget-object v0, p1, Lkjj;->a:Lkja;

    if-nez v0, :cond_0

    .line 2083
    iget-object v0, p1, Lkjj;->c:[Lkja;

    .line 2082
    :goto_0
    invoke-static {v1, v0}, Lhic;->a(Lkii;[Lkja;)Lkko;

    move-result-object v0

    .line 71
    return-object v0

    .line 2083
    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Lkja;

    const/4 v2, 0x0

    iget-object v3, p1, Lkjj;->a:Lkja;

    aput-object v3, v0, v2

    goto :goto_0
.end method
