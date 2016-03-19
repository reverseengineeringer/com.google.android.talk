.class Lmj;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field b:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 5081
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5082
    const/4 v0, 0x0

    iput-object v0, p0, Lmj;->b:Ljava/util/WeakHashMap;

    .line 5316
    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)J
    .locals 2

    .prologue
    .line 1115
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public a(Landroid/view/View;J)V
    .locals 0

    .prologue
    .line 1087
    return-void
.end method

.method public a(Landroid/view/View;Landroid/view/animation/Interpolator;)V
    .locals 0

    .prologue
    .line 1121
    return-void
.end method

.method public a(Landroid/view/View;Lmp;)V
    .locals 0

    .prologue
    .line 4291
    return-void
.end method

.method public a(Lmd;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 2207
    invoke-virtual {p0, p1, p2}, Lmj;->d(Lmd;Landroid/view/View;)V

    .line 2208
    return-void
.end method

.method public a(Lmd;Landroid/view/View;F)V
    .locals 0

    .prologue
    .line 2092
    invoke-virtual {p0, p1, p2}, Lmj;->d(Lmd;Landroid/view/View;)V

    .line 2093
    return-void
.end method

.method public a(Lmd;Landroid/view/View;Lmn;)V
    .locals 1

    .prologue
    .line 4285
    const/high16 v0, 0x7e000000

    invoke-virtual {p2, v0, p3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 4286
    return-void
.end method

.method public b(Landroid/view/View;J)V
    .locals 0

    .prologue
    .line 1131
    return-void
.end method

.method public b(Lmd;Landroid/view/View;)V
    .locals 1

    .prologue
    .line 3336
    iget-object v0, p0, Lmj;->b:Ljava/util/WeakHashMap;

    if-eqz v0, :cond_0

    .line 3337
    iget-object v0, p0, Lmj;->b:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p2}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 3338
    if-eqz v0, :cond_0

    .line 3339
    invoke-virtual {p2, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3269
    :cond_0
    invoke-virtual {p0, p1, p2}, Lmj;->c(Lmd;Landroid/view/View;)V

    .line 3270
    return-void
.end method

.method public b(Lmd;Landroid/view/View;F)V
    .locals 0

    .prologue
    .line 3098
    invoke-virtual {p0, p1, p2}, Lmj;->d(Lmd;Landroid/view/View;)V

    .line 3099
    return-void
.end method

.method c(Lmd;Landroid/view/View;)V
    .locals 3

    .prologue
    .line 6294
    const/high16 v0, 0x7e000000

    invoke-virtual {p2, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 6295
    const/4 v1, 0x0

    .line 6296
    instance-of v2, v0, Lmn;

    if-eqz v2, :cond_4

    .line 6297
    check-cast v0, Lmn;

    .line 7024
    :goto_0
    iget-object v1, p1, Lmd;->a:Ljava/lang/Runnable;

    .line 8024
    iget-object v2, p1, Lmd;->b:Ljava/lang/Runnable;

    .line 6301
    if-eqz v1, :cond_0

    .line 6302
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 6304
    :cond_0
    if-eqz v0, :cond_1

    .line 6305
    invoke-interface {v0, p2}, Lmn;->a(Landroid/view/View;)V

    .line 6306
    invoke-interface {v0, p2}, Lmn;->b(Landroid/view/View;)V

    .line 6308
    :cond_1
    if-eqz v2, :cond_2

    .line 6309
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 6311
    :cond_2
    iget-object v0, p0, Lmj;->b:Ljava/util/WeakHashMap;

    if-eqz v0, :cond_3

    .line 6312
    iget-object v0, p0, Lmj;->b:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p2}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6314
    :cond_3
    return-void

    :cond_4
    move-object v0, v1

    goto :goto_0
.end method

.method public c(Lmd;Landroid/view/View;F)V
    .locals 0

    .prologue
    .line 3104
    invoke-virtual {p0, p1, p2}, Lmj;->d(Lmd;Landroid/view/View;)V

    .line 3105
    return-void
.end method

.method d(Lmd;Landroid/view/View;)V
    .locals 2

    .prologue
    .line 8345
    const/4 v0, 0x0

    .line 8346
    iget-object v1, p0, Lmj;->b:Ljava/util/WeakHashMap;

    if-eqz v1, :cond_0

    .line 8347
    iget-object v0, p0, Lmj;->b:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p2}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 8349
    :cond_0
    if-nez v0, :cond_2

    .line 8350
    new-instance v0, Lme;

    .line 9316
    invoke-direct {v0, p0, p1, p2}, Lme;-><init>(Lmj;Lmd;Landroid/view/View;)V

    .line 8351
    iget-object v1, p0, Lmj;->b:Ljava/util/WeakHashMap;

    if-nez v1, :cond_1

    .line 8352
    new-instance v1, Ljava/util/WeakHashMap;

    invoke-direct {v1}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v1, p0, Lmj;->b:Ljava/util/WeakHashMap;

    .line 8354
    :cond_1
    iget-object v1, p0, Lmj;->b:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p2, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8356
    :cond_2
    invoke-virtual {p2, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 8357
    invoke-virtual {p2, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 8358
    return-void
.end method
