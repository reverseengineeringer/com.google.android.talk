.class public Lepc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Liox;
.implements Lioz;


# instance fields
.field a:Lepa;

.field public b:Landroid/app/Activity;

.field public c:Lcom/google/android/libraries/quantum/snackbar/Snackbar;

.field private final d:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lepa;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lepi;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/lang/Runnable;

.field private g:Z

.field private final h:Lav;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Liog;)V
    .locals 1

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lepc;->d:Ljava/util/Queue;

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lepc;->e:Ljava/util/List;

    .line 97
    const/4 v0, 0x0

    iput-object v0, p0, Lepc;->h:Lav;

    .line 98
    iput-object p1, p0, Lepc;->b:Landroid/app/Activity;

    .line 99
    invoke-virtual {p2, p0}, Liog;->a(Lioz;)Lioz;

    .line 100
    return-void
.end method

.method public constructor <init>(Lav;Liog;)V
    .locals 1

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lepc;->d:Ljava/util/Queue;

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lepc;->e:Ljava/util/List;

    .line 92
    iput-object p1, p0, Lepc;->h:Lav;

    .line 93
    invoke-virtual {p2, p0}, Liog;->a(Lioz;)Lioz;

    .line 94
    return-void
.end method


# virtual methods
.method a()V
    .locals 3

    .prologue
    .line 233
    iget-object v0, p0, Lepc;->a:Lepa;

    if-nez v0, :cond_2

    .line 234
    iget-object v0, p0, Lepc;->d:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lepa;

    .line 235
    if-eqz v0, :cond_2

    .line 236
    iget-object v1, p0, Lepc;->c:Lcom/google/android/libraries/quantum/snackbar/Snackbar;

    if-nez v1, :cond_1

    .line 237
    iget-object v1, p0, Lepc;->b:Landroid/app/Activity;

    sget v2, Laen;->gn:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    .line 238
    if-eqz v1, :cond_0

    .line 239
    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 241
    :cond_0
    iget-object v1, p0, Lepc;->b:Landroid/app/Activity;

    sget v2, Laen;->gm:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/libraries/quantum/snackbar/Snackbar;

    invoke-virtual {p0, v1}, Lepc;->a(Lcom/google/android/libraries/quantum/snackbar/Snackbar;)V

    .line 244
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lepc;->a(Lepa;Z)V

    .line 245
    const/4 v0, 0x1

    iput-boolean v0, p0, Lepc;->g:Z

    .line 246
    iget-object v0, p0, Lepc;->c:Lcom/google/android/libraries/quantum/snackbar/Snackbar;

    invoke-virtual {v0}, Lcom/google/android/libraries/quantum/snackbar/Snackbar;->a()V

    .line 249
    :cond_2
    return-void
.end method

.method public a(Lcom/google/android/libraries/quantum/snackbar/Snackbar;)V
    .locals 1

    .prologue
    .line 124
    iput-object p1, p0, Lepc;->c:Lcom/google/android/libraries/quantum/snackbar/Snackbar;

    .line 125
    new-instance v0, Lepd;

    invoke-direct {v0, p0}, Lepd;-><init>(Lepc;)V

    invoke-virtual {p1, v0}, Lcom/google/android/libraries/quantum/snackbar/Snackbar;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    return-void
.end method

.method public a(Lepa;)V
    .locals 4

    .prologue
    .line 161
    iget-object v0, p0, Lepc;->a:Lepa;

    invoke-virtual {p1, v0}, Lepa;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 164
    iget-object v0, p0, Lepc;->f:Ljava/lang/Runnable;

    .line 1089
    invoke-static {}, Laal;->y()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 165
    invoke-virtual {p1}, Lepa;->f()Z

    move-result v0

    if-nez v0, :cond_0

    .line 167
    iget-object v0, p0, Lepc;->f:Ljava/lang/Runnable;

    invoke-virtual {p1}, Lepa;->e()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Laal;->a(Ljava/lang/Runnable;J)V

    .line 177
    :cond_0
    :goto_0
    return-void

    .line 172
    :cond_1
    iget-object v0, p0, Lepc;->d:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 173
    iget-object v0, p0, Lepc;->d:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 176
    :cond_2
    invoke-virtual {p0}, Lepc;->a()V

    goto :goto_0
.end method

.method public a(Lepa;Lepa;)V
    .locals 2

    .prologue
    .line 180
    invoke-virtual {p1, p2}, Lepa;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 199
    :goto_0
    return-void

    .line 184
    :cond_0
    iget-object v0, p0, Lepc;->d:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 185
    iget-object v0, p0, Lepc;->d:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 186
    iget-object v0, p0, Lepc;->d:Ljava/util/Queue;

    invoke-interface {v0, p2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 189
    :cond_1
    iget-object v0, p0, Lepc;->a:Lepa;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lepc;->a:Lepa;

    invoke-virtual {v0, p1}, Lepa;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 191
    iget-object v0, p0, Lepc;->f:Ljava/lang/Runnable;

    .line 2089
    invoke-static {}, Laal;->y()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 194
    invoke-virtual {p1}, Lepa;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lepa;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {p0, p2, v0}, Lepc;->a(Lepa;Z)V

    goto :goto_0

    .line 198
    :cond_2
    invoke-virtual {p0, p2}, Lepc;->a(Lepa;)V

    goto :goto_0
.end method

.method public a(Lepa;Z)V
    .locals 6

    .prologue
    const/4 v5, -0x2

    .line 257
    invoke-virtual {p1}, Lepa;->d()Leph;

    move-result-object v1

    .line 258
    const/4 v0, 0x0

    .line 260
    if-eqz v1, :cond_4

    .line 261
    new-instance v0, Lepf;

    invoke-direct {v0, p0, p1, v1}, Lepf;-><init>(Lepc;Lepa;Leph;)V

    move-object v1, v0

    .line 275
    :goto_0
    if-eqz p2, :cond_1

    .line 276
    new-instance v0, Lepj;

    iget-object v1, p0, Lepc;->c:Lcom/google/android/libraries/quantum/snackbar/Snackbar;

    iget-object v2, p0, Lepc;->a:Lepa;

    invoke-direct {v0, v1, v2, p1}, Lepj;-><init>(Lcom/google/android/libraries/quantum/snackbar/Snackbar;Lepa;Lepa;)V

    invoke-static {v0}, Laal;->a(Ljava/lang/Runnable;)V

    .line 291
    :goto_1
    iput-object p1, p0, Lepc;->a:Lepa;

    .line 292
    new-instance v0, Lepg;

    invoke-direct {v0, p0, p1}, Lepg;-><init>(Lepc;Lepa;)V

    iput-object v0, p0, Lepc;->f:Ljava/lang/Runnable;

    .line 298
    invoke-virtual {p1}, Lepa;->f()Z

    move-result v0

    if-nez v0, :cond_0

    .line 300
    iget-object v0, p0, Lepc;->f:Ljava/lang/Runnable;

    invoke-virtual {p1}, Lepa;->e()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Laal;->a(Ljava/lang/Runnable;J)V

    .line 303
    :cond_0
    iget-object v0, p0, Lepc;->c:Lcom/google/android/libraries/quantum/snackbar/Snackbar;

    invoke-virtual {v0, v5, v5}, Lcom/google/android/libraries/quantum/snackbar/Snackbar;->measure(II)V

    .line 304
    iget-object v0, p0, Lepc;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lepi;

    .line 305
    iget-object v2, p0, Lepc;->c:Lcom/google/android/libraries/quantum/snackbar/Snackbar;

    invoke-virtual {v0, v2}, Lepi;->a(Lcom/google/android/libraries/quantum/snackbar/Snackbar;)V

    goto :goto_2

    .line 279
    :cond_1
    invoke-virtual {p1}, Lepa;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 280
    iget-object v2, p0, Lepc;->c:Lcom/google/android/libraries/quantum/snackbar/Snackbar;

    .line 2316
    iget-object v0, p0, Lepc;->c:Lcom/google/android/libraries/quantum/snackbar/Snackbar;

    sget v3, Laen;->eg:I

    invoke-virtual {v0, v3}, Lcom/google/android/libraries/quantum/snackbar/Snackbar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2318
    invoke-virtual {p1}, Lepa;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lepa;->b()Ljava/lang/String;

    move-result-object v4

    .line 2317
    invoke-static {v3, v4, v0}, Laal;->a(Ljava/lang/String;Ljava/lang/String;Landroid/widget/TextView;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 281
    invoke-virtual {p1}, Lepa;->c()Ljava/lang/String;

    move-result-object v3

    .line 280
    invoke-virtual {v2, v0, v3, v1}, Lcom/google/android/libraries/quantum/snackbar/Snackbar;->a(Ljava/lang/CharSequence;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 283
    :cond_2
    iget-object v0, p0, Lepc;->c:Lcom/google/android/libraries/quantum/snackbar/Snackbar;

    invoke-virtual {p1}, Lepa;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lepa;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3, v1}, Lcom/google/android/libraries/quantum/snackbar/Snackbar;->a(Ljava/lang/CharSequence;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 307
    :cond_3
    return-void

    :cond_4
    move-object v1, v0

    goto :goto_0
.end method

.method public a(Lepi;)V
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lepc;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 140
    iget-boolean v0, p0, Lepc;->g:Z

    if-eqz v0, :cond_1

    .line 141
    iget-object v0, p0, Lepc;->c:Lcom/google/android/libraries/quantum/snackbar/Snackbar;

    invoke-virtual {p1, v0}, Lepi;->a(Lcom/google/android/libraries/quantum/snackbar/Snackbar;)V

    .line 145
    :goto_0
    iget-object v0, p0, Lepc;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 147
    :cond_0
    return-void

    .line 143
    :cond_1
    invoke-virtual {p1}, Lepi;->a()V

    goto :goto_0
.end method

.method public b(Lilh;)Lepc;
    .locals 1

    .prologue
    .line 103
    const-class v0, Lepc;

    invoke-virtual {p1, v0, p0}, Lilh;->a(Ljava/lang/Class;Ljava/lang/Object;)Lilh;

    .line 104
    return-object p0
.end method

.method public b(Lepa;)V
    .locals 4

    .prologue
    .line 205
    iget-object v0, p0, Lepc;->a:Lepa;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lepc;->a:Lepa;

    invoke-virtual {v0, p1}, Lepa;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 206
    iget-object v0, p0, Lepc;->c:Lcom/google/android/libraries/quantum/snackbar/Snackbar;

    invoke-virtual {v0}, Lcom/google/android/libraries/quantum/snackbar/Snackbar;->b()V

    .line 207
    invoke-virtual {p1}, Lepa;->d()Leph;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 208
    invoke-virtual {p1}, Lepa;->d()Leph;

    move-result-object v0

    invoke-interface {v0}, Leph;->a()V

    .line 210
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lepc;->a:Lepa;

    .line 211
    new-instance v0, Lepe;

    invoke-direct {v0, p0}, Lepe;-><init>(Lepc;)V

    const-wide/16 v2, 0x15e

    invoke-static {v0, v2, v3}, Laal;->a(Ljava/lang/Runnable;J)V

    .line 217
    iget-object v0, p0, Lepc;->d:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 218
    iget-object v0, p0, Lepc;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lepi;

    .line 219
    invoke-virtual {v0}, Lepi;->a()V

    goto :goto_0

    .line 221
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lepc;->g:Z

    .line 226
    :cond_2
    :goto_1
    return-void

    .line 224
    :cond_3
    iget-object v0, p0, Lepc;->d:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public b(Lepi;)V
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lepc;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 154
    return-void
.end method

.method public s_()V
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lepc;->b:Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 110
    iget-object v0, p0, Lepc;->h:Lav;

    invoke-virtual {v0}, Lav;->getActivity()Lba;

    move-result-object v0

    iput-object v0, p0, Lepc;->b:Landroid/app/Activity;

    .line 115
    :cond_0
    invoke-virtual {p0}, Lepc;->a()V

    .line 116
    return-void
.end method
