.class final Lirr;
.super Ljava/util/AbstractMap;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractMap",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final a:Ljava/lang/Object;

.field final b:Lirm;


# direct methods
.method constructor <init>(Ljava/lang/Object;Z)V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 43
    iput-object p1, p0, Lirr;->a:Ljava/lang/Object;

    .line 44
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p2}, Lirm;->a(Ljava/lang/Class;Z)Lirm;

    move-result-object v0

    iput-object v0, p0, Lirr;->b:Lirm;

    .line 45
    iget-object v0, p0, Lirr;->b:Lirm;

    invoke-virtual {v0}, Lirm;->a()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 1037
    :goto_0
    invoke-static {v0}, Lfii;->a(Z)V

    .line 46
    return-void

    .line 45
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()Liru;
    .locals 1

    .prologue
    .line 50
    new-instance v0, Liru;

    invoke-direct {v0, p0}, Liru;-><init>(Lirr;)V

    return-object v0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 55
    invoke-virtual {p0, p1}, Lirr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic entrySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0}, Lirr;->a()Liru;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 60
    instance-of v1, p1, Ljava/lang/String;

    if-nez v1, :cond_1

    .line 67
    :cond_0
    :goto_0
    return-object v0

    .line 63
    :cond_1
    iget-object v1, p0, Lirr;->b:Lirm;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Lirm;->a(Ljava/lang/String;)Liry;

    move-result-object v1

    .line 64
    if-eqz v1, :cond_0

    .line 67
    iget-object v0, p0, Lirr;->a:Ljava/lang/Object;

    invoke-virtual {v1, v0}, Liry;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 29
    check-cast p1, Ljava/lang/String;

    .line 1072
    iget-object v0, p0, Lirr;->b:Lirm;

    invoke-virtual {v0, p1}, Lirm;->a(Ljava/lang/String;)Liry;

    move-result-object v1

    .line 1073
    const-string v2, "no field of key "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1140
    :goto_0
    invoke-static {v1, v0}, Lfii;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1074
    iget-object v0, p0, Lirr;->a:Ljava/lang/Object;

    invoke-virtual {v1, v0}, Liry;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1075
    iget-object v2, p0, Lirr;->a:Ljava/lang/Object;

    .line 2127
    invoke-static {p2}, Lfii;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 1075
    invoke-virtual {v1, v2, v3}, Liry;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 29
    return-object v0

    .line 1073
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method
