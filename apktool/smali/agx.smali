.class public final Lagx;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final synthetic a:J

.field public final synthetic b:Leyg;

.field public final synthetic c:I

.field public final synthetic d:Lejc;

.field public final synthetic e:Lbhs;


# direct methods
.method public constructor <init>(Lbhs;JLeyg;ILejc;)V
    .locals 0

    .prologue
    .line 2242
    iput-object p1, p0, Lagx;->e:Lbhs;

    iput-wide p2, p0, Lagx;->a:J

    iput-object p4, p0, Lagx;->b:Leyg;

    iput p5, p0, Lagx;->c:I

    iput-object p6, p0, Lagx;->d:Lejc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Leis;)V
    .locals 12

    .prologue
    .line 2245
    invoke-virtual {p1}, Leis;->a()[B

    move-result-object v1

    .line 2246
    invoke-static {}, Lbhs;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2247
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 2248
    iget-wide v4, p0, Lagx;->a:J

    sub-long v4, v2, v4

    .line 2249
    iget-object v0, p0, Lagx;->b:Leyg;

    .line 2252
    invoke-virtual {v0}, Leyg;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    iget v7, p0, Lagx;->c:I

    if-eqz v1, :cond_2

    .line 2256
    array-length v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2263
    invoke-virtual {p1}, Leis;->c()Z

    move-result v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit16 v10, v10, 0x80

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    add-int/2addr v10, v11

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v10, "Volley: url="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, ", entryCount= "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " received="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ", clock="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", dur="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "ms from volley cache: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 2265
    :cond_0
    if-eqz v1, :cond_1

    array-length v0, v1

    if-nez v0, :cond_3

    .line 2266
    :cond_1
    iget-object v0, p0, Lagx;->b:Leyg;

    invoke-virtual {v0}, Leyg;->t()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcvx;->a(Ljava/lang/String;)V

    .line 2267
    iget-object v0, p0, Lagx;->e:Lbhs;

    iget-object v1, p0, Lagx;->b:Leyg;

    iget v2, p0, Lagx;->c:I

    add-int/lit8 v2, v2, 0x1

    invoke-static {v0, v1, v2}, Lbhs;->a(Lbhs;Leyg;I)Z

    .line 2272
    :goto_1
    return-void

    .line 2256
    :cond_2
    const-string v0, "null"

    goto :goto_0

    .line 2269
    :cond_3
    invoke-static {}, Laal;->k()Landroid/content/Context;

    move-result-object v0

    const-class v1, Leit;

    invoke-static {v0, v1}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leit;

    iget-object v1, p0, Lagx;->d:Lejc;

    .line 2270
    invoke-virtual {v0, v1, p1}, Leit;->a(Lejc;Leis;)V

    goto :goto_1
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 1242
    check-cast p1, Leis;

    invoke-direct {p0, p1}, Lagx;->a(Leis;)V

    return-void
.end method
