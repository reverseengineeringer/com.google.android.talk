.class public final Liqs;
.super Liqu;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;
    .annotation runtime Lisd;
        a = "alg"
    .end annotation
.end field

.field private b:Ljava/lang/String;
    .annotation runtime Lisd;
        a = "kid"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 90
    invoke-direct {p0}, Liqu;-><init>()V

    return-void
.end method

.method private b(Ljava/lang/String;Ljava/lang/Object;)Liqs;
    .locals 1

    .prologue
    .line 389
    invoke-super {p0, p1, p2}, Liqu;->a(Ljava/lang/String;Ljava/lang/Object;)Liqu;

    move-result-object v0

    check-cast v0, Liqs;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Liqs;
    .locals 0

    .prologue
    .line 156
    invoke-super {p0, p1}, Liqu;->d(Ljava/lang/String;)Liqu;

    .line 157
    return-object p0
.end method

.method public synthetic a()Liqu;
    .locals 1

    .prologue
    .line 1394
    invoke-super {p0}, Liqu;->a()Liqu;

    move-result-object v0

    check-cast v0, Liqs;

    .line 90
    return-object v0
.end method

.method public synthetic a(Ljava/lang/String;Ljava/lang/Object;)Liqu;
    .locals 1

    .prologue
    .line 90
    invoke-direct {p0, p1, p2}, Liqs;->b(Ljava/lang/String;Ljava/lang/Object;)Liqs;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/String;)Liqs;
    .locals 0

    .prologue
    .line 178
    iput-object p1, p0, Liqs;->a:Ljava/lang/String;

    .line 179
    return-object p0
.end method

.method public c(Ljava/lang/String;)Liqs;
    .locals 0

    .prologue
    .line 246
    iput-object p1, p0, Liqs;->b:Ljava/lang/String;

    .line 247
    return-object p0
.end method

.method public synthetic clone()Lcom/google/api/client/json/GenericJson;
    .locals 1

    .prologue
    .line 2394
    invoke-super {p0}, Liqu;->a()Liqu;

    move-result-object v0

    check-cast v0, Liqs;

    .line 90
    return-object v0
.end method

.method public synthetic clone()Lcom/google/api/client/util/GenericData;
    .locals 1

    .prologue
    .line 3394
    invoke-super {p0}, Liqu;->a()Liqu;

    move-result-object v0

    check-cast v0, Liqs;

    .line 90
    return-object v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 4394
    invoke-super {p0}, Liqu;->a()Liqu;

    move-result-object v0

    check-cast v0, Liqs;

    .line 90
    return-object v0
.end method

.method public synthetic d(Ljava/lang/String;)Liqu;
    .locals 1

    .prologue
    .line 90
    invoke-virtual {p0, p1}, Liqs;->a(Ljava/lang/String;)Liqs;

    move-result-object v0

    return-object v0
.end method

.method public synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;
    .locals 1

    .prologue
    .line 90
    invoke-direct {p0, p1, p2}, Liqs;->b(Ljava/lang/String;Ljava/lang/Object;)Liqs;

    move-result-object v0

    return-object v0
.end method

.method public synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;
    .locals 1

    .prologue
    .line 90
    invoke-direct {p0, p1, p2}, Liqs;->b(Ljava/lang/String;Ljava/lang/Object;)Liqs;

    move-result-object v0

    return-object v0
.end method
