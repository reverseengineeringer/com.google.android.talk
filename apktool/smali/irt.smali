.class final Lirt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Ljava/util/Map$Entry",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lirr;

.field private b:I

.field private c:Liry;

.field private d:Ljava/lang/Object;

.field private e:Z

.field private f:Z

.field private g:Liry;


# direct methods
.method constructor <init>(Lirr;)V
    .locals 1

    .prologue
    .line 117
    iput-object p1, p0, Lirt;->a:Lirr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    const/4 v0, -0x1

    iput v0, p0, Lirt;->b:I

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 150
    iget-boolean v0, p0, Lirt;->f:Z

    if-nez v0, :cond_0

    .line 151
    iput-boolean v1, p0, Lirt;->f:Z

    .line 152
    const/4 v0, 0x0

    iput-object v0, p0, Lirt;->d:Ljava/lang/Object;

    .line 153
    :goto_0
    iget-object v0, p0, Lirt;->d:Ljava/lang/Object;

    if-nez v0, :cond_0

    iget v0, p0, Lirt;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lirt;->b:I

    iget-object v2, p0, Lirt;->a:Lirr;

    iget-object v2, v2, Lirr;->b:Lirm;

    iget-object v2, v2, Lirm;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 154
    iget-object v0, p0, Lirt;->a:Lirr;

    iget-object v2, v0, Lirr;->b:Lirm;

    iget-object v0, p0, Lirt;->a:Lirr;

    iget-object v0, v0, Lirr;->b:Lirm;

    iget-object v0, v0, Lirm;->b:Ljava/util/List;

    iget v3, p0, Lirt;->b:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Lirm;->a(Ljava/lang/String;)Liry;

    move-result-object v0

    iput-object v0, p0, Lirt;->c:Liry;

    .line 155
    iget-object v0, p0, Lirt;->c:Liry;

    iget-object v2, p0, Lirt;->a:Lirr;

    iget-object v2, v2, Lirr;->a:Ljava/lang/Object;

    invoke-virtual {v0, v2}, Liry;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lirt;->d:Ljava/lang/Object;

    goto :goto_0

    .line 158
    :cond_0
    iget-object v0, p0, Lirt;->d:Ljava/lang/Object;

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public synthetic next()Ljava/lang/Object;
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1162
    invoke-virtual {p0}, Lirt;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1163
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 1165
    :cond_0
    iget-object v0, p0, Lirt;->c:Liry;

    iput-object v0, p0, Lirt;->g:Liry;

    .line 1166
    iget-object v0, p0, Lirt;->d:Ljava/lang/Object;

    .line 1167
    iput-boolean v1, p0, Lirt;->f:Z

    .line 1168
    iput-boolean v1, p0, Lirt;->e:Z

    .line 1169
    iput-object v2, p0, Lirt;->c:Liry;

    .line 1170
    iput-object v2, p0, Lirt;->d:Ljava/lang/Object;

    .line 1171
    new-instance v1, Lirs;

    iget-object v2, p0, Lirt;->a:Lirr;

    iget-object v3, p0, Lirt;->g:Liry;

    invoke-direct {v1, v2, v3, v0}, Lirs;-><init>(Lirr;Liry;Ljava/lang/Object;)V

    .line 117
    return-object v1
.end method

.method public remove()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 175
    iget-object v0, p0, Lirt;->g:Liry;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lirt;->e:Z

    if-nez v0, :cond_0

    move v0, v1

    .line 1081
    :goto_0
    invoke-static {v0}, Lfii;->b(Z)V

    .line 176
    iput-boolean v1, p0, Lirt;->e:Z

    .line 177
    iget-object v0, p0, Lirt;->g:Liry;

    iget-object v1, p0, Lirt;->a:Lirr;

    iget-object v1, v1, Lirr;->a:Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Liry;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 178
    return-void

    .line 175
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
