.class final Lakq;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ResourceType:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final a:Lair;

.field final synthetic b:Lakh;


# direct methods
.method public constructor <init>(Lakh;Lair;)V
    .locals 0

    .prologue
    .line 18463
    iput-object p1, p0, Lakq;->b:Lakh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18464
    iput-object p2, p0, Lakq;->a:Lair;

    .line 18465
    return-void
.end method


# virtual methods
.method public a(Lalr;)Lalr;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lalr",
            "<TZ;>;)",
            "Lalr",
            "<TZ;>;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1517
    invoke-interface {p1}, Lalr;->c()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    .line 1472
    iget-object v0, p0, Lakq;->a:Lair;

    sget-object v2, Lair;->d:Lair;

    if-eq v0, v2, :cond_7

    .line 1473
    iget-object v0, p0, Lakq;->b:Lakh;

    .line 2035
    iget-object v0, v0, Lakh;->a:Lakg;

    .line 1473
    invoke-virtual {v0, v6}, Lakg;->c(Ljava/lang/Class;)Lajd;

    move-result-object v5

    .line 1474
    iget-object v0, p0, Lakq;->b:Lakh;

    .line 3035
    iget v0, v0, Lakh;->d:I

    .line 1474
    iget-object v2, p0, Lakq;->b:Lakh;

    .line 4035
    iget v2, v2, Lakh;->e:I

    .line 1474
    invoke-interface {v5, p1, v0, v2}, Lajd;->a(Lalr;II)Lalr;

    move-result-object v0

    move-object v8, v0

    .line 1477
    :goto_0
    invoke-virtual {p1, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1478
    invoke-interface {p1}, Lalr;->e()V

    .line 1483
    :cond_0
    iget-object v0, p0, Lakq;->b:Lakh;

    .line 5035
    iget-object v0, v0, Lakh;->a:Lakg;

    .line 1483
    invoke-virtual {v0, v8}, Lakg;->a(Lalr;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1484
    iget-object v0, p0, Lakq;->b:Lakh;

    .line 6035
    iget-object v0, v0, Lakh;->a:Lakg;

    .line 1484
    invoke-virtual {v0, v8}, Lakg;->b(Lalr;)Lajc;

    move-result-object v1

    .line 1485
    iget-object v0, p0, Lakq;->b:Lakh;

    .line 7035
    iget-object v0, v0, Lakh;->g:Laja;

    .line 1485
    invoke-interface {v1, v0}, Lajc;->a(Laja;)Lait;

    move-result-object v0

    move-object v9, v1

    .line 1492
    :goto_1
    iget-object v1, p0, Lakq;->b:Lakh;

    .line 8035
    iget-object v1, v1, Lakh;->a:Lakg;

    .line 1492
    iget-object v2, p0, Lakq;->b:Lakh;

    .line 9035
    iget-object v2, v2, Lakh;->h:Laiw;

    .line 1492
    invoke-virtual {v1, v2}, Lakg;->a(Laiw;)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x1

    .line 1493
    :goto_2
    iget-object v2, p0, Lakq;->b:Lakh;

    .line 10035
    iget-object v2, v2, Lakh;->f:Lakr;

    .line 1493
    iget-object v3, p0, Lakq;->a:Lair;

    invoke-virtual {v2, v1, v3, v0}, Lakr;->a(ZLair;Lait;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1495
    if-nez v9, :cond_3

    .line 1496
    new-instance v0, Lax;

    invoke-interface {v8}, Lalr;->c()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v1}, Lax;-><init>(Ljava/lang/Class;)V

    throw v0

    .line 1488
    :cond_1
    sget-object v0, Lait;->c:Lait;

    move-object v9, v1

    goto :goto_1

    .line 1492
    :cond_2
    const/4 v1, 0x0

    goto :goto_2

    .line 1499
    :cond_3
    sget-object v1, Lait;->a:Lait;

    if-ne v0, v1, :cond_5

    .line 1500
    new-instance v0, Lakd;

    iget-object v1, p0, Lakq;->b:Lakh;

    .line 11035
    iget-object v1, v1, Lakh;->h:Laiw;

    .line 1500
    iget-object v2, p0, Lakq;->b:Lakh;

    .line 12035
    iget-object v2, v2, Lakh;->c:Laiw;

    .line 1500
    invoke-direct {v0, v1, v2}, Lakd;-><init>(Laiw;Laiw;)V

    .line 1508
    :goto_3
    invoke-static {v8}, Lalp;->a(Lalr;)Lalp;

    move-result-object v8

    .line 1509
    iget-object v1, p0, Lakq;->b:Lakh;

    .line 18035
    iget-object v1, v1, Lakh;->b:Lakk;

    .line 1509
    invoke-virtual {v1, v0, v9, v8}, Lakk;->a(Laiw;Lajc;Lalp;)V

    .line 1512
    :cond_4
    return-object v8

    .line 1501
    :cond_5
    sget-object v1, Lait;->b:Lait;

    if-ne v0, v1, :cond_6

    .line 1502
    new-instance v0, Lalt;

    iget-object v1, p0, Lakq;->b:Lakh;

    .line 13035
    iget-object v1, v1, Lakh;->h:Laiw;

    .line 1502
    iget-object v2, p0, Lakq;->b:Lakh;

    .line 14035
    iget-object v2, v2, Lakh;->c:Laiw;

    .line 1502
    iget-object v3, p0, Lakq;->b:Lakh;

    .line 15035
    iget v3, v3, Lakh;->d:I

    .line 1502
    iget-object v4, p0, Lakq;->b:Lakh;

    .line 16035
    iget v4, v4, Lakh;->e:I

    .line 1502
    iget-object v7, p0, Lakq;->b:Lakh;

    .line 17035
    iget-object v7, v7, Lakh;->g:Laja;

    .line 1503
    invoke-direct/range {v0 .. v7}, Lalt;-><init>(Laiw;Laiw;IILajd;Ljava/lang/Class;Laja;)V

    goto :goto_3

    .line 1505
    :cond_6
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x12

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Unknown strategy: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_7
    move-object v8, p1

    move-object v5, v1

    goto/16 :goto_0
.end method
