.class final enum Lkny;
.super Lknw;
.source "SourceFile"


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 281
    const/4 v0, 0x1

    .line 1267
    invoke-direct {p0, p1, v0}, Lknw;-><init>(Ljava/lang/String;I)V

    .line 281
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 284
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 289
    const-string v0, "Predicates.alwaysFalse()"

    return-object v0
.end method
