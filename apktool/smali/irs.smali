.class final Lirs;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Map$Entry;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Map$Entry",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lirr;

.field private b:Ljava/lang/Object;

.field private final c:Liry;


# direct methods
.method constructor <init>(Lirr;Liry;Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 199
    iput-object p1, p0, Lirs;->a:Lirr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 200
    iput-object p2, p0, Lirs;->c:Liry;

    .line 1127
    invoke-static {p3}, Lfii;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 201
    iput-object v0, p0, Lirs;->b:Ljava/lang/Object;

    .line 202
    return-void
.end method

.method private a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 205
    iget-object v0, p0, Lirs;->c:Liry;

    invoke-virtual {v0}, Liry;->b()Ljava/lang/String;

    move-result-object v0

    .line 206
    iget-object v1, p0, Lirs;->a:Lirr;

    iget-object v1, v1, Lirr;->b:Lirm;

    .line 2112
    iget-boolean v1, v1, Lirm;->a:Z

    .line 206
    if-eqz v1, :cond_0

    .line 207
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 209
    :cond_0
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 230
    if-ne p0, p1, :cond_1

    .line 237
    :cond_0
    :goto_0
    return v0

    .line 233
    :cond_1
    instance-of v2, p1, Ljava/util/Map$Entry;

    if-nez v2, :cond_2

    move v0, v1

    .line 234
    goto :goto_0

    .line 236
    :cond_2
    check-cast p1, Ljava/util/Map$Entry;

    .line 237
    invoke-direct {p0}, Lirs;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lirs;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public synthetic getKey()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 187
    invoke-direct {p0}, Lirs;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lirs;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 225
    invoke-direct {p0}, Lirs;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-virtual {p0}, Lirs;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 217
    iget-object v0, p0, Lirs;->b:Ljava/lang/Object;

    .line 2127
    invoke-static {p1}, Lfii;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 218
    iput-object v1, p0, Lirs;->b:Ljava/lang/Object;

    .line 219
    iget-object v1, p0, Lirs;->c:Liry;

    iget-object v2, p0, Lirs;->a:Lirr;

    iget-object v2, v2, Lirr;->a:Ljava/lang/Object;

    invoke-virtual {v1, v2, p1}, Liry;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 220
    return-object v0
.end method
