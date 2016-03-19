.class public final Llwl;
.super Llwo;
.source "SourceFile"


# instance fields
.field private final b:Llwp;


# virtual methods
.method public a()Llwp;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Llwl;->b:Llwp;

    invoke-virtual {p0, v0}, Llwl;->a(Llwp;)Llwp;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 49
    invoke-virtual {p0}, Llwl;->a()Llwp;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 44
    invoke-virtual {p0}, Llwl;->a()Llwp;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    invoke-virtual {p0}, Llwl;->a()Llwp;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
