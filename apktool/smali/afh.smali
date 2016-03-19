.class public final Lafh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Laez;


# instance fields
.field final a:Ljava/lang/String;

.field private final b:I

.field private final c:Ljava/lang/String;

.field private d:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Z)V
    .locals 0

    .prologue
    .line 312
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 313
    iput-object p1, p0, Lafh;->a:Ljava/lang/String;

    .line 314
    iput p2, p0, Lafh;->b:I

    .line 315
    iput-object p3, p0, Lafh;->c:Ljava/lang/String;

    .line 316
    iput-boolean p4, p0, Lafh;->d:Z

    .line 317
    return-void
.end method


# virtual methods
.method public final a()Lafb;
    .locals 1

    .prologue
    .line 375
    sget-object v0, Lafb;->b:Lafb;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 379
    iget-object v0, p0, Lafh;->a:Ljava/lang/String;

    return-object v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 383
    iget v0, p0, Lafh;->b:I

    return v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 387
    iget-object v0, p0, Lafh;->c:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 345
    if-ne p0, p1, :cond_1

    .line 354
    :cond_0
    :goto_0
    return v0

    .line 348
    :cond_1
    instance-of v2, p1, Lafh;

    if-nez v2, :cond_2

    move v0, v1

    .line 349
    goto :goto_0

    .line 351
    :cond_2
    check-cast p1, Lafh;

    .line 352
    iget v2, p0, Lafh;->b:I

    iget v3, p1, Lafh;->b:I

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lafh;->a:Ljava/lang/String;

    iget-object v3, p1, Lafh;->a:Ljava/lang/String;

    .line 353
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lafh;->c:Ljava/lang/String;

    iget-object v3, p1, Lafh;->c:Ljava/lang/String;

    .line 354
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lafh;->d:Z

    iget-boolean v3, p1, Lafh;->d:Z

    if-eq v2, v3, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 360
    iget v0, p0, Lafh;->b:I

    .line 361
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lafh;->a:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lafh;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    add-int/2addr v0, v2

    .line 362
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lafh;->c:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lafh;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    .line 363
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v0, p0, Lafh;->d:Z

    if-eqz v0, :cond_2

    const/16 v0, 0x4cf

    :goto_1
    add-int/2addr v0, v1

    .line 364
    return v0

    :cond_1
    move v0, v1

    .line 361
    goto :goto_0

    .line 363
    :cond_2
    const/16 v0, 0x4d5

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 369
    const-string v0, "type: %d, data: %s, label: %s, isPrimary: %s"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lafh;->b:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lafh;->a:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lafh;->c:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-boolean v3, p0, Lafh;->d:Z

    .line 370
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    .line 369
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
