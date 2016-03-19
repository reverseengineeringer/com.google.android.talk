.class public Lijo;
.super Lijc;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lijc;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lijc;",
            ">;"
        }
    .end annotation
.end field

.field private c:Z

.field private d:I

.field private e:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 58
    invoke-direct {p0, p1, p2, p3}, Lijc;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 51
    const/4 v0, 0x1

    iput-boolean v0, p0, Lijo;->c:Z

    .line 53
    iput v1, p0, Lijo;->d:I

    .line 55
    iput-boolean v1, p0, Lijo;->e:Z

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lijo;->a:Ljava/util/List;

    .line 62
    sget-object v0, Likc;->aG:[I

    .line 63
    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 64
    sget v1, Likc;->aH:I

    iget-boolean v2, p0, Lijo;->c:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lijo;->c:Z

    .line 66
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 67
    return-void
.end method

.method private e(Lijc;)Z
    .locals 1

    .prologue
    .line 185
    monitor-enter p0

    .line 186
    :try_start_0
    invoke-virtual {p1}, Lijc;->F()V

    .line 187
    iget-object v0, p0, Lijo;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit p0

    return v0

    .line 188
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public D()V
    .locals 3

    .prologue
    .line 266
    invoke-super {p0}, Lijc;->D()V

    .line 270
    const/4 v0, 0x1

    iput-boolean v0, p0, Lijo;->e:Z

    .line 273
    invoke-virtual {p0}, Lijo;->a()I

    move-result v1

    .line 274
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 275
    invoke-virtual {p0, v0}, Lijo;->a(I)Lijc;

    move-result-object v2

    invoke-virtual {v2}, Lijc;->D()V

    .line 274
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 277
    :cond_0
    return-void
.end method

.method protected F()V
    .locals 1

    .prologue
    .line 281
    invoke-super {p0}, Lijc;->F()V

    .line 284
    const/4 v0, 0x0

    iput-boolean v0, p0, Lijo;->e:Z

    .line 285
    return-void
.end method

.method public a()I
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lijo;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public a(I)Lijc;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lijo;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lijc;

    return-object v0
.end method

.method public a(Ljava/lang/CharSequence;)Lijc;
    .locals 4

    .prologue
    .line 229
    invoke-virtual {p0}, Lijo;->s()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 250
    :goto_0
    return-object p0

    .line 232
    :cond_0
    invoke-virtual {p0}, Lijo;->a()I

    move-result v2

    .line 233
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    if-ge v1, v2, :cond_3

    .line 234
    invoke-virtual {p0, v1}, Lijo;->a(I)Lijc;

    move-result-object v0

    .line 235
    invoke-virtual {v0}, Lijc;->s()Ljava/lang/String;

    move-result-object v3

    .line 237
    if-eqz v3, :cond_1

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object p0, v0

    .line 238
    goto :goto_0

    .line 241
    :cond_1
    instance-of v3, v0, Lijo;

    if-eqz v3, :cond_2

    .line 242
    check-cast v0, Lijo;

    .line 243
    invoke-virtual {v0, p1}, Lijo;->a(Ljava/lang/CharSequence;)Lijc;

    move-result-object v0

    .line 244
    if-eqz v0, :cond_2

    move-object p0, v0

    .line 245
    goto :goto_0

    .line 233
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 250
    :cond_3
    const/4 p0, 0x0

    goto :goto_0
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 85
    iput-boolean p1, p0, Lijo;->c:Z

    .line 86
    return-void
.end method

.method public b(Lijc;)Z
    .locals 1

    .prologue
    .line 211
    invoke-virtual {p0}, Lijo;->E()Z

    move-result v0

    invoke-virtual {p1, v0}, Lijc;->g(Z)V

    .line 212
    const/4 v0, 0x1

    return v0
.end method

.method public c()V
    .locals 3

    .prologue
    .line 195
    monitor-enter p0

    .line 196
    :try_start_0
    iget-object v2, p0, Lijo;->a:Ljava/util/List;

    .line 197
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    .line 198
    const/4 v0, 0x0

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lijc;

    invoke-direct {p0, v0}, Lijo;->e(Lijc;)Z

    .line 197
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 200
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 201
    invoke-virtual {p0}, Lijo;->B()V

    .line 202
    return-void

    .line 200
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected c(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 307
    invoke-super {p0, p1}, Lijc;->c(Landroid/os/Bundle;)V

    .line 310
    invoke-virtual {p0}, Lijo;->a()I

    move-result v1

    .line 311
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 312
    invoke-virtual {p0, v0}, Lijo;->a(I)Lijc;

    move-result-object v2

    invoke-virtual {v2, p1}, Lijc;->c(Landroid/os/Bundle;)V

    .line 311
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 314
    :cond_0
    return-void
.end method

.method public c(Lijc;)Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 131
    iget-object v0, p0, Lijo;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 169
    :goto_0
    return v0

    .line 136
    :cond_0
    invoke-virtual {p1}, Lijc;->n()I

    move-result v0

    const v2, 0x7fffffff

    if-ne v0, v2, :cond_2

    .line 137
    iget-boolean v0, p0, Lijo;->c:Z

    if-eqz v0, :cond_1

    .line 138
    iget v0, p0, Lijo;->d:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lijo;->d:I

    invoke-virtual {p1, v0}, Lijc;->f(I)V

    .line 141
    :cond_1
    instance-of v0, p1, Lijo;

    if-eqz v0, :cond_2

    move-object v0, p1

    .line 144
    check-cast v0, Lijo;

    iget-boolean v2, p0, Lijo;->c:Z

    invoke-virtual {v0, v2}, Lijo;->a(Z)V

    .line 148
    :cond_2
    iget-object v0, p0, Lijo;->a:Ljava/util/List;

    invoke-static {v0, p1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v0

    .line 149
    if-gez v0, :cond_3

    .line 150
    neg-int v0, v0

    add-int/lit8 v0, v0, -0x1

    .line 153
    :cond_3
    invoke-virtual {p0, p1}, Lijo;->b(Lijc;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 154
    const/4 v0, 0x0

    goto :goto_0

    .line 157
    :cond_4
    monitor-enter p0

    .line 158
    :try_start_0
    iget-object v2, p0, Lijo;->a:Ljava/util/List;

    invoke-interface {v2, v0, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 159
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 161
    invoke-virtual {p0}, Lijo;->C()Lijs;

    move-result-object v0

    invoke-virtual {p1, v0}, Lijc;->a(Lijs;)V

    .line 163
    iget-boolean v0, p0, Lijo;->e:Z

    if-eqz v0, :cond_5

    .line 164
    invoke-virtual {p1}, Lijc;->D()V

    .line 167
    :cond_5
    invoke-virtual {p0}, Lijo;->B()V

    move v0, v1

    .line 169
    goto :goto_0

    .line 159
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 261
    const/4 v0, 0x1

    return v0
.end method

.method public d(Lijc;)Z
    .locals 1

    .prologue
    .line 179
    invoke-direct {p0, p1}, Lijo;->e(Lijc;)Z

    move-result v0

    .line 180
    invoke-virtual {p0}, Lijo;->B()V

    .line 181
    return v0
.end method

.method protected e(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 318
    invoke-super {p0, p1}, Lijc;->e(Landroid/os/Bundle;)V

    .line 321
    invoke-virtual {p0}, Lijo;->a()I

    move-result v1

    .line 322
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 323
    invoke-virtual {p0, v0}, Lijo;->a(I)Lijc;

    move-result-object v2

    invoke-virtual {v2, p1}, Lijc;->e(Landroid/os/Bundle;)V

    .line 322
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 325
    :cond_0
    return-void
.end method

.method public e(Z)V
    .locals 3

    .prologue
    .line 289
    invoke-super {p0, p1}, Lijc;->e(Z)V

    .line 293
    invoke-virtual {p0}, Lijo;->a()I

    move-result v1

    .line 294
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 295
    invoke-virtual {p0, v0}, Lijo;->a(I)Lijc;

    move-result-object v2

    invoke-virtual {v2, p1}, Lijc;->g(Z)V

    .line 294
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 297
    :cond_0
    return-void
.end method

.method f()V
    .locals 1

    .prologue
    .line 300
    monitor-enter p0

    .line 301
    :try_start_0
    iget-object v0, p0, Lijo;->a:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 302
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
