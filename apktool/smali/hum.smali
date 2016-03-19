.class public Lhum;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lhty;",
            ">;"
        }
    .end annotation
.end field

.field final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lhtu;",
            ">;"
        }
    .end annotation
.end field

.field final c:Lhud;

.field private final d:Landroid/content/Context;

.field private final e:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lhtu;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Landroid/os/Handler;

.field private final g:Lhtw;

.field private h:I


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lhum;->d:Landroid/content/Context;

    .line 47
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lhum;->a:Landroid/util/SparseArray;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lhum;->b:Ljava/util/List;

    .line 49
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lhum;->e:Ljava/util/Queue;

    .line 50
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lhum;->f:Landroid/os/Handler;

    .line 51
    new-instance v0, Lhud;

    const-string v1, "background_results.bin"

    invoke-direct {v0, p1, v1}, Lhud;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lhum;->c:Lhud;

    .line 52
    iget-object v0, p0, Lhum;->d:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "bom_last_listener_id"

    const/4 v2, 0x0

    .line 53
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lhum;->h:I

    .line 54
    const-class v0, Lhtw;

    invoke-static {p1, v0}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhtw;

    iput-object v0, p0, Lhum;->g:Lhtw;

    .line 55
    return-void
.end method


# virtual methods
.method a()I
    .locals 1

    .prologue
    .line 224
    invoke-static {}, Laal;->w()V

    .line 226
    iget v0, p0, Lhum;->h:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lhum;->h:I

    if-nez v0, :cond_0

    .line 227
    iget v0, p0, Lhum;->h:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lhum;->h:I

    .line 229
    :cond_0
    iget v0, p0, Lhum;->h:I

    return v0
.end method

.method public a(Lhtu;Lhty;)V
    .locals 4

    .prologue
    .line 65
    invoke-static {}, Laal;->w()V

    .line 69
    const/4 v0, 0x0

    .line 70
    if-eqz p2, :cond_0

    .line 71
    invoke-virtual {p2}, Lhty;->c()I

    move-result v0

    .line 73
    :cond_0
    invoke-virtual {p1, v0}, Lhtu;->a(I)V

    .line 74
    iget-object v1, p0, Lhum;->b:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    iget-object v1, p0, Lhum;->e:Ljava/util/Queue;

    invoke-interface {v1, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 76
    iget-object v1, p0, Lhum;->g:Lhtw;

    invoke-interface {v1}, Lhtw;->a()V

    .line 78
    const-string v1, "BackgroundTask"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 79
    invoke-virtual {p1}, Lhtu;->h()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x2d

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Start background task: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", manager: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 81
    :cond_1
    return-void
.end method

.method a(Lhtu;Lhus;)V
    .locals 2

    .prologue
    .line 1209
    iget-object v0, p2, Lhus;->b:Ljuc;

    .line 276
    new-instance v1, Lhun;

    invoke-direct {v1, p0, p1, p2}, Lhun;-><init>(Lhum;Lhtu;Lhus;)V

    invoke-static {v0, v1}, Ljuc;->a(Ljuc;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v0

    .line 284
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 285
    return-void
.end method

.method public a(Lhty;)V
    .locals 11

    .prologue
    .line 152
    invoke-static {}, Laal;->w()V

    .line 154
    invoke-virtual {p1}, Lhty;->c()I

    move-result v3

    .line 155
    iget-object v0, p0, Lhum;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, v3, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 157
    const-string v0, "BackgroundTask"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x1d

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Register manager: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 161
    :cond_0
    invoke-virtual {p1}, Lhty;->d()[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v5, :cond_3

    aget-object v6, v4, v2

    .line 162
    invoke-virtual {p1, v6}, Lhty;->d(Ljava/lang/String;)I

    move-result v0

    .line 163
    invoke-virtual {p0, p1, v6}, Lhum;->b(Lhty;Ljava/lang/String;)I

    move-result v1

    .line 164
    sub-int/2addr v0, v1

    .line 165
    :goto_1
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_2

    .line 166
    iget-object v0, p0, Lhum;->c:Lhud;

    invoke-virtual {v0, v3, v6}, Lhud;->a(ILjava/lang/String;)Lhus;

    move-result-object v0

    .line 167
    const-string v7, "BackgroundTask"

    const/4 v8, 0x4

    invoke-static {v7, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 168
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, 0x28

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v9, v10

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v9, "Deliver saved background task result: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    :cond_1
    invoke-virtual {p1, v6, v0}, Lhty;->a(Ljava/lang/String;Lhus;)V

    move v0, v1

    .line 172
    goto :goto_1

    .line 161
    :cond_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 174
    :cond_3
    return-void
.end method

.method public a(Lhty;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 106
    invoke-virtual {p0, p1, p2}, Lhum;->b(Lhty;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Lhty;Ljava/lang/String;)I
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 130
    invoke-static {}, Laal;->w()V

    .line 133
    invoke-virtual {p1}, Lhty;->c()I

    move-result v3

    .line 134
    iget-object v1, p0, Lhum;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    move v2, v0

    move v1, v0

    :goto_0
    if-ge v2, v4, :cond_0

    .line 135
    iget-object v0, p0, Lhum;->b:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhtu;

    .line 136
    invoke-virtual {v0}, Lhtu;->i()I

    move-result v5

    if-ne v5, v3, :cond_1

    invoke-virtual {v0}, Lhtu;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 137
    add-int/lit8 v0, v1, 0x1

    .line 134
    :goto_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_0

    .line 140
    :cond_0
    return v1

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public b(Lhty;)V
    .locals 3

    .prologue
    .line 182
    invoke-static {}, Laal;->w()V

    .line 184
    invoke-virtual {p1}, Lhty;->c()I

    move-result v0

    .line 185
    iget-object v1, p0, Lhum;->a:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 186
    const-string v1, "BackgroundTask"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 187
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x1f

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Unregister manager: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 189
    :cond_0
    return-void
.end method

.method b()Z
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lhum;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method c()Lhtu;
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lhum;->e:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhtu;

    return-object v0
.end method

.method public c(Lhty;)V
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 200
    invoke-virtual {p1}, Lhty;->c()I

    move-result v4

    .line 203
    iget-object v0, p0, Lhum;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    move v2, v3

    move v1, v3

    :goto_0
    if-ge v2, v5, :cond_0

    .line 204
    iget-object v0, p0, Lhum;->b:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhtu;

    .line 205
    invoke-virtual {v0}, Lhtu;->i()I

    move-result v6

    if-ne v6, v4, :cond_2

    .line 206
    invoke-virtual {v0, v3}, Lhtu;->a(I)V

    .line 207
    add-int/lit8 v0, v1, 0x1

    .line 203
    :goto_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_0

    .line 211
    :cond_0
    iget-object v0, p0, Lhum;->c:Lhud;

    invoke-virtual {v0, v4}, Lhud;->a(I)I

    move-result v0

    .line 213
    const-string v2, "BackgroundTask"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 214
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x5f

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Permanently remove manager: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", pending ops: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", results dropped: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 218
    :cond_1
    return-void

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method c(Lhty;Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 259
    if-eqz p1, :cond_2

    .line 260
    invoke-virtual {p1}, Lhty;->c()I

    move-result v0

    move v1, v0

    .line 263
    :goto_0
    iget-object v0, p0, Lhum;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    :goto_1
    if-ge v2, v3, :cond_1

    .line 264
    iget-object v0, p0, Lhum;->b:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhtu;

    .line 265
    invoke-virtual {v0}, Lhtu;->i()I

    move-result v4

    if-ne v4, v1, :cond_0

    invoke-virtual {v0}, Lhtu;->h()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 266
    invoke-virtual {v0}, Lhtu;->f()Lhtu;

    .line 263
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 269
    :cond_1
    return-void

    :cond_2
    move v1, v2

    goto :goto_0
.end method

.method d()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lhum;->f:Landroid/os/Handler;

    return-object v0
.end method

.method e()V
    .locals 3

    .prologue
    .line 248
    iget-object v0, p0, Lhum;->c:Lhud;

    invoke-virtual {v0}, Lhud;->a()I

    .line 250
    iget-object v0, p0, Lhum;->d:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "bom_last_listener_id"

    iget v2, p0, Lhum;->h:I

    .line 251
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 252
    return-void
.end method
