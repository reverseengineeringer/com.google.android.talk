.class final Lkxg;
.super Lkxj;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lkxj",
        "<TT;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final a:Lkxj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkxj",
            "<-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lkxj;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkxj",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 30
    invoke-direct {p0}, Lkxj;-><init>()V

    .line 31
    iput-object p1, p0, Lkxg;->a:Lkxj;

    .line 32
    return-void
.end method


# virtual methods
.method public a()Lkxj;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:TT;>()",
            "Lkxj",
            "<TS;>;"
        }
    .end annotation

    .prologue
    .line 57
    return-object p0
.end method

.method public b()Lkxj;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:TT;>()",
            "Lkxj",
            "<TS;>;"
        }
    .end annotation

    .prologue
    .line 62
    iget-object v0, p0, Lkxg;->a:Lkxj;

    invoke-virtual {v0}, Lkxj;->b()Lkxj;

    move-result-object v0

    return-object v0
.end method

.method public c()Lkxj;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:TT;>()",
            "Lkxj",
            "<TS;>;"
        }
    .end annotation

    .prologue
    .line 51
    iget-object v0, p0, Lkxg;->a:Lkxj;

    invoke-virtual {v0}, Lkxj;->c()Lkxj;

    move-result-object v0

    invoke-virtual {v0}, Lkxj;->b()Lkxj;

    move-result-object v0

    return-object v0
.end method

.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)I"
        }
    .end annotation

    .prologue
    .line 36
    if-ne p1, p2, :cond_0

    .line 37
    const/4 v0, 0x0

    .line 45
    :goto_0
    return v0

    .line 39
    :cond_0
    if-nez p1, :cond_1

    .line 40
    const/4 v0, -0x1

    goto :goto_0

    .line 42
    :cond_1
    if-nez p2, :cond_2

    .line 43
    const/4 v0, 0x1

    goto :goto_0

    .line 45
    :cond_2
    iget-object v0, p0, Lkxg;->a:Lkxj;

    invoke-virtual {v0, p1, p2}, Lkxj;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 67
    if-ne p1, p0, :cond_0

    .line 68
    const/4 v0, 0x1

    .line 74
    :goto_0
    return v0

    .line 70
    :cond_0
    instance-of v0, p1, Lkxg;

    if-eqz v0, :cond_1

    .line 71
    check-cast p1, Lkxg;

    .line 72
    iget-object v0, p0, Lkxg;->a:Lkxj;

    iget-object v1, p1, Lkxg;->a:Lkxj;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 74
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 79
    iget-object v0, p0, Lkxg;->a:Lkxj;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const v1, 0x39153a74

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 84
    iget-object v0, p0, Lkxg;->a:Lkxj;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0xd

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".nullsFirst()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
