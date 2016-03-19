.class public Liqt;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Liqu;

.field private final b:Liqv;


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1084
    new-instance v0, Lism;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lism;-><init>(Ljava/lang/String;)V

    .line 386
    const-string v1, "header"

    iget-object v2, p0, Liqt;->a:Liqu;

    invoke-virtual {v0, v1, v2}, Lism;->a(Ljava/lang/String;Ljava/lang/Object;)Lism;

    move-result-object v0

    const-string v1, "payload"

    iget-object v2, p0, Liqt;->b:Liqv;

    invoke-virtual {v0, v1, v2}, Lism;->a(Ljava/lang/String;Ljava/lang/Object;)Lism;

    move-result-object v0

    invoke-virtual {v0}, Lism;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
