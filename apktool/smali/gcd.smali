.class final Lgcd;
.super Lgcf;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgcf",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lgcc;


# direct methods
.method constructor <init>(Lgcc;)V
    .locals 0

    iput-object p1, p0, Lgcd;->a:Lgcc;

    invoke-direct {p0}, Lgcf;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()I
    .locals 1

    iget-object v0, p0, Lgcd;->a:Lgcc;

    iget v0, v0, Lgcc;->h:I

    return v0
.end method

.method protected a(Ljava/lang/Object;)I
    .locals 2

    if-nez p1, :cond_0

    iget-object v0, p0, Lgcd;->a:Lgcc;

    invoke-virtual {v0}, Lgcc;->a()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lgcd;->a:Lgcc;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lgcc;->a(Ljava/lang/Object;I)I

    move-result v0

    goto :goto_0
.end method

.method protected a(II)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lgcd;->a:Lgcc;

    iget-object v0, v0, Lgcc;->g:[Ljava/lang/Object;

    shl-int/lit8 v1, p1, 0x1

    add-int/2addr v1, p2

    aget-object v0, v0, v1

    return-object v0
.end method

.method protected a(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)TV;"
        }
    .end annotation

    iget-object v0, p0, Lgcd;->a:Lgcc;

    invoke-virtual {v0, p1, p2}, Lgcc;->a(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected a(I)V
    .locals 1

    iget-object v0, p0, Lgcd;->a:Lgcc;

    invoke-virtual {v0, p1}, Lgcc;->d(I)Ljava/lang/Object;

    return-void
.end method

.method protected a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    iget-object v0, p0, Lgcd;->a:Lgcc;

    invoke-virtual {v0, p1, p2}, Lgcc;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected b(Ljava/lang/Object;)I
    .locals 1

    iget-object v0, p0, Lgcd;->a:Lgcc;

    invoke-virtual {v0, p1}, Lgcc;->a(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method protected b()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lgcd;->a:Lgcc;

    return-object v0
.end method

.method protected c()V
    .locals 1

    iget-object v0, p0, Lgcd;->a:Lgcc;

    invoke-virtual {v0}, Lgcc;->clear()V

    return-void
.end method
