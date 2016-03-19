.class public final Lmnq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TE;>;"
    }
.end annotation


# instance fields
.field a:I

.field b:I

.field c:Z

.field final synthetic d:Lmnp;


# direct methods
.method constructor <init>(Lmnp;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1196
    iput-object p1, p0, Lmnq;->d:Lmnp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1193
    iput v0, p0, Lmnq;->b:I

    .line 1194
    iput-boolean v0, p0, Lmnq;->c:Z

    .line 2167
    iget v0, p1, Lmnp;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lmnp;->b:I

    .line 3184
    iget-object v0, p1, Lmnp;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 1198
    iput v0, p0, Lmnq;->a:I

    .line 1199
    return-void
.end method

.method private a()V
    .locals 3

    .prologue
    .line 6243
    iget-boolean v0, p0, Lmnq;->c:Z

    if-nez v0, :cond_1

    .line 6244
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmnq;->c:Z

    .line 6245
    iget-object v1, p0, Lmnq;->d:Lmnp;

    .line 7171
    iget v0, v1, Lmnp;->b:I

    add-int/lit8 v0, v0, -0x1

    iput v0, v1, Lmnp;->b:I

    .line 7173
    iget v0, v1, Lmnp;->b:I

    if-gtz v0, :cond_1

    .line 7174
    iget-boolean v0, v1, Lmnp;->c:Z

    if-eqz v0, :cond_1

    .line 7175
    const/4 v0, 0x0

    iput-boolean v0, v1, Lmnp;->c:Z

    .line 8159
    iget-object v0, v1, Lmnp;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 8160
    iget-object v2, v1, Lmnp;->a:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    .line 8161
    iget-object v2, v1, Lmnp;->a:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 8159
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 6247
    :cond_1
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .prologue
    .line 3212
    iget v0, p0, Lmnq;->b:I

    .line 3214
    :goto_0
    iget v1, p0, Lmnq;->a:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lmnq;->d:Lmnp;

    .line 4188
    iget-object v1, v1, Lmnp;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 3214
    if-nez v1, :cond_0

    .line 3215
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3217
    :cond_0
    iget v1, p0, Lmnq;->a:I

    if-ge v0, v1, :cond_1

    const/4 v0, 0x1

    .line 3221
    :goto_1
    return v0

    .line 3220
    :cond_1
    invoke-direct {p0}, Lmnq;->a()V

    .line 3221
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public next()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 4227
    :goto_0
    iget v0, p0, Lmnq;->b:I

    iget v1, p0, Lmnq;->a:I

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lmnq;->d:Lmnp;

    iget v1, p0, Lmnq;->b:I

    .line 5188
    iget-object v0, v0, Lmnp;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 4227
    if-nez v0, :cond_0

    .line 4228
    iget v0, p0, Lmnq;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lmnq;->b:I

    goto :goto_0

    .line 4230
    :cond_0
    iget v0, p0, Lmnq;->b:I

    iget v1, p0, Lmnq;->a:I

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lmnq;->d:Lmnp;

    iget v1, p0, Lmnq;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lmnq;->b:I

    .line 6188
    iget-object v0, v0, Lmnp;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 4230
    return-object v0

    .line 4233
    :cond_1
    invoke-direct {p0}, Lmnq;->a()V

    .line 4234
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 6239
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
