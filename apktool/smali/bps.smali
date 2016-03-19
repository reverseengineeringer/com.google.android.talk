.class public final Lbps;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public final a:I

.field public final b:I

.field public final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lbso;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 2355
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2359
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v1, v3

    move v4, v2

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbso;

    .line 2360
    iget-object v6, v0, Lbso;->b:Lbsq;

    sget-object v7, Lbsq;->b:Lbsq;

    if-ne v6, v7, :cond_0

    .line 2361
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_0

    .line 2362
    :cond_0
    iget-object v6, v0, Lbso;->b:Lbsq;

    sget-object v7, Lbsq;->a:Lbsq;

    if-ne v6, v7, :cond_3

    .line 2363
    add-int/lit8 v1, v2, 0x1

    .line 2365
    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    iget-object v0, v0, Lbso;->a:Ljava/lang/String;

    :goto_1
    move v2, v1

    move-object v1, v0

    .line 2367
    goto :goto_0

    :cond_1
    move-object v0, v3

    .line 2365
    goto :goto_1

    .line 2368
    :cond_2
    iput v4, p0, Lbps;->a:I

    .line 2369
    iput v2, p0, Lbps;->b:I

    .line 2370
    iput-object v1, p0, Lbps;->c:Ljava/lang/String;

    .line 2371
    return-void

    :cond_3
    move-object v0, v1

    move v1, v2

    goto :goto_1
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 1375
    iget-object v0, p0, Lbps;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1376
    iget-object v0, p0, Lbps;->c:Ljava/lang/String;

    invoke-static {v0}, Laal;->i(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object v1, v0

    .line 1377
    :goto_0
    const-class v0, Lbvc;

    invoke-static {p1, v0}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbvc;

    const/16 v2, 0x913

    iget v3, p0, Lbps;->a:I

    iget v4, p0, Lbps;->b:I

    invoke-virtual {v0, v2, v3, v4, v1}, Lbvc;->a(IIILjava/lang/Integer;)V

    .line 1380
    return-void

    .line 1376
    :cond_0
    const/4 v0, 0x0

    move-object v1, v0

    goto :goto_0
.end method
