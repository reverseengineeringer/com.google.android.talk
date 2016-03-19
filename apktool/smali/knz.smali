.class final enum Lknz;
.super Lknw;
.source "SourceFile"


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 293
    const/4 v0, 0x2

    .line 1267
    invoke-direct {p0, p1, v0}, Lknw;-><init>(Ljava/lang/String;I)V

    .line 293
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 296
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 301
    const-string v0, "Predicates.isNull()"

    return-object v0
.end method
