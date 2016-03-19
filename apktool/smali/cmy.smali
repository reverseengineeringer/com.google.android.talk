.class final Lcmy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcmu;
.implements Liox;
.implements Lioy;
.implements Lioz;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/util/PriorityQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/PriorityQueue",
            "<",
            "Lcnb;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Landroid/os/Handler;

.field private final d:Ljava/lang/Runnable;

.field private final e:Ljava/lang/Runnable;

.field private f:Lcnc;

.field private g:Lcnb;

.field private h:Lcom/google/android/libraries/quantum/snackbar/Snackbar;

.field private i:Landroid/widget/Toast;

.field private j:Z

.field private k:J


# direct methods
.method constructor <init>(Landroid/content/Context;Liog;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Lcnc;

    invoke-direct {v0, p0}, Lcnc;-><init>(Lcmy;)V

    iput-object v0, p0, Lcmy;->f:Lcnc;

    .line 59
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcmy;->k:J

    .line 63
    iput-object p1, p0, Lcmy;->a:Landroid/content/Context;

    .line 64
    new-instance v0, Ljava/util/PriorityQueue;

    invoke-direct {v0}, Ljava/util/PriorityQueue;-><init>()V

    iput-object v0, p0, Lcmy;->b:Ljava/util/PriorityQueue;

    .line 65
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcmy;->c:Landroid/os/Handler;

    .line 66
    iput-object v2, p0, Lcmy;->g:Lcnb;

    .line 67
    iput-object v2, p0, Lcmy;->h:Lcom/google/android/libraries/quantum/snackbar/Snackbar;

    .line 68
    iput-object v2, p0, Lcmy;->i:Landroid/widget/Toast;

    .line 69
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcmy;->j:Z

    .line 70
    new-instance v0, Lcmz;

    invoke-direct {v0, p0}, Lcmz;-><init>(Lcmy;)V

    iput-object v0, p0, Lcmy;->d:Ljava/lang/Runnable;

    .line 77
    new-instance v0, Lcna;

    invoke-direct {v0, p0}, Lcna;-><init>(Lcmy;)V

    iput-object v0, p0, Lcmy;->e:Ljava/lang/Runnable;

    .line 85
    invoke-virtual {p2, p0}, Liog;->a(Lioz;)Lioz;

    .line 86
    return-void
.end method


# virtual methods
.method public a(Lilh;)Lcmu;
    .locals 1

    .prologue
    .line 90
    const-class v0, Lcmu;

    invoke-virtual {p1, v0, p0}, Lilh;->a(Ljava/lang/Class;Ljava/lang/Object;)Lilh;

    .line 91
    return-object p0
.end method

.method public a(Lcms;)V
    .locals 2

    .prologue
    .line 115
    new-instance v0, Lcnb;

    invoke-direct {v0, p1}, Lcnb;-><init>(Lcms;)V

    .line 116
    iget-object v1, p0, Lcmy;->b:Ljava/util/PriorityQueue;

    invoke-virtual {v1, v0}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    .line 118
    iget-object v1, p0, Lcmy;->g:Lcnb;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcmy;->g:Lcnb;

    invoke-virtual {v0, v1}, Lcnb;->a(Lcnb;)I

    move-result v0

    if-gez v0, :cond_1

    .line 119
    :cond_0
    invoke-virtual {p0}, Lcmy;->b()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcmy;->a(Z)V

    .line 121
    :cond_1
    return-void
.end method

.method public a(Lcom/google/android/libraries/quantum/snackbar/Snackbar;)V
    .locals 1

    .prologue
    .line 108
    iput-object p1, p0, Lcmy;->h:Lcom/google/android/libraries/quantum/snackbar/Snackbar;

    .line 109
    iget-object v0, p0, Lcmy;->h:Lcom/google/android/libraries/quantum/snackbar/Snackbar;

    invoke-virtual {v0}, Lcom/google/android/libraries/quantum/snackbar/Snackbar;->b()V

    .line 110
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcmy;->a(Z)V

    .line 111
    return-void
.end method

.method a(Z)V
    .locals 4

    .prologue
    .line 153
    iget-boolean v0, p0, Lcmy;->j:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcmy;->h:Lcom/google/android/libraries/quantum/snackbar/Snackbar;

    if-nez v0, :cond_1

    .line 165
    :cond_0
    :goto_0
    return-void

    .line 157
    :cond_1
    iget-object v0, p0, Lcmy;->b:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcnb;

    iput-object v0, p0, Lcmy;->g:Lcnb;

    .line 158
    iget-object v0, p0, Lcmy;->g:Lcnb;

    if-eqz v0, :cond_0

    .line 159
    if-eqz p1, :cond_2

    .line 160
    iget-object v0, p0, Lcmy;->c:Landroid/os/Handler;

    iget-object v1, p0, Lcmy;->d:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 162
    :cond_2
    invoke-virtual {p0}, Lcmy;->c()V

    goto :goto_0
.end method

.method b()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 128
    iget-object v2, p0, Lcmy;->g:Lcnb;

    if-nez v2, :cond_1

    .line 147
    :cond_0
    :goto_0
    return v0

    .line 132
    :cond_1
    iput-object v4, p0, Lcmy;->g:Lcnb;

    .line 133
    iget-object v2, p0, Lcmy;->c:Landroid/os/Handler;

    iget-object v3, p0, Lcmy;->d:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 134
    iget-object v2, p0, Lcmy;->c:Landroid/os/Handler;

    iget-object v3, p0, Lcmy;->e:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 136
    iget-object v2, p0, Lcmy;->i:Landroid/widget/Toast;

    if-eqz v2, :cond_2

    .line 137
    iget-object v0, p0, Lcmy;->i:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 138
    iput-object v4, p0, Lcmy;->i:Landroid/widget/Toast;

    move v0, v1

    .line 139
    goto :goto_0

    .line 142
    :cond_2
    iget-object v2, p0, Lcmy;->h:Lcom/google/android/libraries/quantum/snackbar/Snackbar;

    invoke-virtual {v2}, Lcom/google/android/libraries/quantum/snackbar/Snackbar;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    .line 143
    iget-object v0, p0, Lcmy;->h:Lcom/google/android/libraries/quantum/snackbar/Snackbar;

    invoke-virtual {v0}, Lcom/google/android/libraries/quantum/snackbar/Snackbar;->b()V

    move v0, v1

    .line 144
    goto :goto_0
.end method

.method c()V
    .locals 8

    .prologue
    .line 168
    iget-object v0, p0, Lcmy;->g:Lcnb;

    iget-object v1, v0, Lcnb;->b:Lcms;

    .line 169
    iget-boolean v0, v1, Lcms;->b:Z

    if-eqz v0, :cond_2

    .line 171
    iget-object v0, p0, Lcmy;->i:Landroid/widget/Toast;

    .line 1188
    const-string v2, "Expected null"

    invoke-static {v2, v0}, Lhbs;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 172
    iget-object v0, p0, Lcmy;->a:Landroid/content/Context;

    iget-object v2, v1, Lcms;->c:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcmy;->i:Landroid/widget/Toast;

    .line 173
    iget-object v0, p0, Lcmy;->i:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 187
    :goto_0
    iget v0, v1, Lcms;->d:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    .line 188
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 189
    iget-wide v4, p0, Lcmy;->k:J

    const-wide/16 v6, -0x1

    cmp-long v0, v4, v6

    if-eqz v0, :cond_0

    iget-wide v4, p0, Lcmy;->k:J

    const-wide/16 v6, 0x7d0

    add-long/2addr v4, v6

    cmp-long v0, v4, v2

    if-gez v0, :cond_1

    .line 191
    :cond_0
    iget v0, v1, Lcms;->d:I

    .line 2033
    invoke-static {v0}, Lezc;->a(I)V

    .line 192
    iput-wide v2, p0, Lcmy;->k:J

    .line 196
    :cond_1
    iget-object v0, p0, Lcmy;->c:Landroid/os/Handler;

    iget-object v1, p0, Lcmy;->e:Ljava/lang/Runnable;

    const-wide/16 v2, 0xfa0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 197
    return-void

    .line 175
    :cond_2
    iget-object v2, p0, Lcmy;->h:Lcom/google/android/libraries/quantum/snackbar/Snackbar;

    iget-object v0, v1, Lcms;->f:Landroid/content/res/ColorStateList;

    if-nez v0, :cond_3

    .line 177
    iget-object v0, p0, Lcmy;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Laal;->dp:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 175
    :goto_1
    invoke-virtual {v2, v0}, Lcom/google/android/libraries/quantum/snackbar/Snackbar;->a(Landroid/content/res/ColorStateList;)V

    .line 179
    iget-object v2, p0, Lcmy;->h:Lcom/google/android/libraries/quantum/snackbar/Snackbar;

    iget-object v0, v1, Lcms;->g:Landroid/content/res/ColorStateList;

    if-nez v0, :cond_4

    .line 181
    iget-object v0, p0, Lcmy;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Laal;->dp:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 179
    :goto_2
    invoke-virtual {v2, v0}, Lcom/google/android/libraries/quantum/snackbar/Snackbar;->b(Landroid/content/res/ColorStateList;)V

    .line 183
    iget-object v0, p0, Lcmy;->h:Lcom/google/android/libraries/quantum/snackbar/Snackbar;

    iget-object v2, v1, Lcms;->c:Ljava/lang/String;

    iget-object v3, v1, Lcms;->e:Ljava/lang/String;

    iget-object v4, v1, Lcms;->h:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2, v3, v4}, Lcom/google/android/libraries/quantum/snackbar/Snackbar;->a(Ljava/lang/CharSequence;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 184
    iget-object v0, p0, Lcmy;->h:Lcom/google/android/libraries/quantum/snackbar/Snackbar;

    invoke-virtual {v0}, Lcom/google/android/libraries/quantum/snackbar/Snackbar;->a()V

    goto :goto_0

    .line 178
    :cond_3
    iget-object v0, v1, Lcms;->f:Landroid/content/res/ColorStateList;

    goto :goto_1

    .line 182
    :cond_4
    iget-object v0, v1, Lcms;->g:Landroid/content/res/ColorStateList;

    goto :goto_2
.end method

.method public s_()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 96
    iput-boolean v0, p0, Lcmy;->j:Z

    .line 97
    invoke-virtual {p0, v0}, Lcmy;->a(Z)V

    .line 98
    return-void
.end method

.method public t_()V
    .locals 1

    .prologue
    .line 102
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcmy;->j:Z

    .line 103
    invoke-virtual {p0}, Lcmy;->b()Z

    .line 104
    return-void
.end method
