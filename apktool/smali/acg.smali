.class public abstract Lacg;
.super Lach;
.source "SourceFile"


# instance fields
.field public a:Landroid/content/Context;

.field public b:Landroid/database/Cursor;

.field public c:I

.field public d:Landroid/util/SparseIntArray;

.field public final e:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lbg;Landroid/database/Cursor;)V
    .locals 2

    .prologue
    .line 55
    invoke-direct {p0, p2}, Lach;-><init>(Lbg;)V

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lacg;->e:Ljava/util/HashMap;

    .line 1231
    if-eqz p3, :cond_0

    const/4 v0, 0x1

    .line 1232
    :goto_0
    iput-object p3, p0, Lacg;->b:Landroid/database/Cursor;

    .line 1233
    iput-object p1, p0, Lacg;->a:Landroid/content/Context;

    .line 1234
    if-eqz v0, :cond_1

    .line 1235
    iget-object v0, p0, Lacg;->b:Landroid/database/Cursor;

    const-string v1, "uri"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    :goto_1
    iput v0, p0, Lacg;->c:I

    .line 57
    return-void

    .line 1231
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1235
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private b(I)Z
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lacg;->b:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lacg;->b:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 222
    iget-object v0, p0, Lacg;->b:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    .line 224
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private f()V
    .locals 3

    .prologue
    .line 243
    iget-object v0, p0, Lacg;->b:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lacg;->b:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 244
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lacg;->d:Landroid/util/SparseIntArray;

    .line 258
    :goto_0
    return-void

    .line 248
    :cond_1
    new-instance v0, Landroid/util/SparseIntArray;

    iget-object v1, p0, Lacg;->b:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/util/SparseIntArray;-><init>(I)V

    .line 250
    iget-object v1, p0, Lacg;->b:Landroid/database/Cursor;

    const/4 v2, -0x1

    invoke-interface {v1, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 251
    :goto_1
    iget-object v1, p0, Lacg;->b:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 252
    iget-object v1, p0, Lacg;->b:Landroid/database/Cursor;

    iget v2, p0, Lacg;->c:I

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    .line 253
    iget-object v2, p0, Lacg;->b:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->getPosition()I

    move-result v2

    .line 255
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    goto :goto_1

    .line 257
    :cond_2
    iput-object v0, p0, Lacg;->d:Landroid/util/SparseIntArray;

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 5

    .prologue
    const/4 v1, -0x1

    .line 172
    const-string v0, "BaseCursorPagerAdapter"

    const/4 v2, 0x2

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lacg;->b:Landroid/database/Cursor;

    if-nez v0, :cond_1

    move v2, v1

    :goto_0
    if-nez p1, :cond_2

    move v0, v1

    .line 174
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x2b

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "swapCursor old="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; new="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 177
    :cond_0
    iget-object v0, p0, Lacg;->b:Landroid/database/Cursor;

    if-ne p1, v0, :cond_3

    .line 178
    const/4 v0, 0x0

    .line 190
    :goto_2
    return-object v0

    .line 173
    :cond_1
    iget-object v0, p0, Lacg;->b:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    move v2, v0

    goto :goto_0

    .line 174
    :cond_2
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    goto :goto_1

    .line 180
    :cond_3
    iget-object v0, p0, Lacg;->b:Landroid/database/Cursor;

    .line 181
    iput-object p1, p0, Lacg;->b:Landroid/database/Cursor;

    .line 182
    if-eqz p1, :cond_4

    .line 183
    const-string v1, "uri"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lacg;->c:I

    .line 188
    :goto_3
    invoke-direct {p0}, Lacg;->f()V

    .line 189
    invoke-virtual {p0}, Lacg;->d()V

    goto :goto_2

    .line 185
    :cond_4
    iput v1, p0, Lacg;->c:I

    goto :goto_3
.end method

.method public a(I)Lav;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lacg;->b:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lacg;->b(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lacg;->b:Landroid/database/Cursor;

    invoke-virtual {p0, v0, p1}, Lacg;->a(Landroid/database/Cursor;I)Lav;

    move-result-object v0

    .line 76
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract a(Landroid/database/Cursor;I)Lav;
.end method

.method public a(Landroid/view/View;I)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 90
    iget-object v0, p0, Lacg;->b:Landroid/database/Cursor;

    if-nez v0, :cond_0

    .line 91
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "this should only be called when the cursor is valid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 95
    :cond_0
    invoke-direct {p0, p2}, Lacg;->b(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 96
    iget-object v0, p0, Lacg;->b:Landroid/database/Cursor;

    iget v1, p0, Lacg;->c:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 102
    :goto_0
    invoke-super {p0, p1, p2}, Lach;->a(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v1

    .line 103
    if-eqz v1, :cond_1

    .line 104
    iget-object v2, p0, Lacg;->e:Ljava/util/HashMap;

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    :cond_1
    return-object v1

    .line 98
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected a(II)Ljava/lang/String;
    .locals 3

    .prologue
    .line 208
    invoke-direct {p0, p2}, Lacg;->b(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lacg;->b:Landroid/database/Cursor;

    iget v1, p0, Lacg;->c:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x25

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "android:pager:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 211
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1, p2}, Lach;->a(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Landroid/view/View;ILjava/lang/Object;)V
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lacg;->e:Ljava/util/HashMap;

    invoke-virtual {v0, p3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    invoke-super {p0, p1, p2, p3}, Lach;->a(Landroid/view/View;ILjava/lang/Object;)V

    .line 114
    return-void
.end method

.method public b()I
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lacg;->b:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lacg;->b:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 84
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c(Ljava/lang/Object;)I
    .locals 3

    .prologue
    const/4 v1, -0x2

    .line 118
    iget-object v0, p0, Lacg;->e:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 119
    if-eqz v0, :cond_0

    iget-object v2, p0, Lacg;->d:Landroid/util/SparseIntArray;

    if-nez v2, :cond_1

    :cond_0
    move v0, v1

    .line 124
    :goto_0
    return v0

    .line 123
    :cond_1
    iget-object v2, p0, Lacg;->d:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v0, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    goto :goto_0
.end method

.method public e()Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lacg;->b:Landroid/database/Cursor;

    return-object v0
.end method
