.class public final Lcgn;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/apps/hangouts/hangout/HangoutFragment;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/hangouts/hangout/HangoutFragment;)V
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lcgn;->a:Lcom/google/android/apps/hangouts/hangout/HangoutFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method a()Lbfd;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcgn;->a:Lcom/google/android/apps/hangouts/hangout/HangoutFragment;

    .line 1093
    iget-object v0, v0, Lcom/google/android/apps/hangouts/hangout/HangoutFragment;->ak:Lbfd;

    .line 100
    return-object v0
.end method

.method a(I)V
    .locals 4

    .prologue
    .line 163
    iget-object v0, p0, Lcgn;->a:Lcom/google/android/apps/hangouts/hangout/HangoutFragment;

    .line 11093
    iget-object v0, v0, Lcom/google/android/apps/hangouts/hangout/HangoutFragment;->aj:Landroid/view/ViewGroup;

    .line 163
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 165
    if-nez p1, :cond_0

    iget-object v0, p0, Lcgn;->a:Lcom/google/android/apps/hangouts/hangout/HangoutFragment;

    iget-object v0, v0, Lcom/google/android/apps/hangouts/hangout/HangoutFragment;->g:Landroid/view/accessibility/AccessibilityManager;

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcgn;->a:Lcom/google/android/apps/hangouts/hangout/HangoutFragment;

    .line 12093
    iget-object v0, v0, Lcom/google/android/apps/hangouts/hangout/HangoutFragment;->i:Landroid/widget/Button;

    .line 167
    iget-object v1, p0, Lcgn;->a:Lcom/google/android/apps/hangouts/hangout/HangoutFragment;

    iget-object v1, v1, Lcom/google/android/apps/hangouts/hangout/HangoutFragment;->g:Landroid/view/accessibility/AccessibilityManager;

    .line 169
    invoke-virtual {p0}, Lcgn;->b()Lba;

    move-result-object v2

    sget v3, Lcom/google/android/apps/hangouts/hangout/StressMode;->f:I

    invoke-virtual {v2, v3}, Lba;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 166
    invoke-static {v0, v1, v2}, Lezc;->a(Landroid/view/View;Landroid/view/accessibility/AccessibilityManager;Ljava/lang/CharSequence;)V

    .line 171
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 155
    iget-object v1, p0, Lcgn;->a:Lcom/google/android/apps/hangouts/hangout/HangoutFragment;

    iget-object v0, p0, Lcgn;->a:Lcom/google/android/apps/hangouts/hangout/HangoutFragment;

    .line 8093
    iget-boolean v0, v0, Lcom/google/android/apps/hangouts/hangout/HangoutFragment;->h:Z

    .line 155
    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 9093
    :goto_0
    invoke-virtual {v1, p1, v0}, Lcom/google/android/apps/hangouts/hangout/HangoutFragment;->a(Ljava/lang/String;Z)V

    .line 156
    return-void

    .line 155
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method b()Lba;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcgn;->a:Lcom/google/android/apps/hangouts/hangout/HangoutFragment;

    .line 2093
    iget-object v0, v0, Lcom/google/android/apps/hangouts/hangout/HangoutFragment;->d:Lcom/google/android/apps/hangouts/hangout/HangoutActivity;

    .line 104
    return-object v0
.end method

.method public b(I)V
    .locals 3

    .prologue
    .line 175
    iget-object v0, p0, Lcgn;->a:Lcom/google/android/apps/hangouts/hangout/HangoutFragment;

    .line 13093
    iput p1, v0, Lcom/google/android/apps/hangouts/hangout/HangoutFragment;->ar:I

    .line 176
    const-string v0, "Babel_calls"

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x35

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Switch camera menu item visibility is now "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 177
    iget-object v0, p0, Lcgn;->a:Lcom/google/android/apps/hangouts/hangout/HangoutFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/hangouts/hangout/HangoutFragment;->c()V

    .line 178
    return-void
.end method

.method public c()I
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcgn;->a:Lcom/google/android/apps/hangouts/hangout/HangoutFragment;

    .line 3093
    iget v0, v0, Lcom/google/android/apps/hangouts/hangout/HangoutFragment;->al:I

    .line 112
    return v0
.end method

.method d()V
    .locals 2

    .prologue
    .line 116
    iget-object v0, p0, Lcgn;->a:Lcom/google/android/apps/hangouts/hangout/HangoutFragment;

    iget-object v0, v0, Lcom/google/android/apps/hangouts/hangout/HangoutFragment;->f:Lcfc;

    invoke-virtual {v0}, Lcfc;->u()V

    .line 120
    iget-object v0, p0, Lcgn;->a:Lcom/google/android/apps/hangouts/hangout/HangoutFragment;

    .line 4093
    iget v0, v0, Lcom/google/android/apps/hangouts/hangout/HangoutFragment;->al:I

    .line 120
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcgn;->a:Lcom/google/android/apps/hangouts/hangout/HangoutFragment;

    .line 5093
    iget v0, v0, Lcom/google/android/apps/hangouts/hangout/HangoutFragment;->al:I

    .line 120
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 121
    :cond_0
    iget-object v0, p0, Lcgn;->a:Lcom/google/android/apps/hangouts/hangout/HangoutFragment;

    .line 6093
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/android/apps/hangouts/hangout/HangoutFragment;->a(I)V

    .line 123
    :cond_1
    return-void
.end method

.method public e()Lbg;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcgn;->a:Lcom/google/android/apps/hangouts/hangout/HangoutFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/hangouts/hangout/HangoutFragment;->getFragmentManager()Lbg;

    move-result-object v0

    return-object v0
.end method

.method f()Lcj;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcgn;->a:Lcom/google/android/apps/hangouts/hangout/HangoutFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/hangouts/hangout/HangoutFragment;->getLoaderManager()Lcj;

    move-result-object v0

    return-object v0
.end method

.method public g()I
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcgn;->a:Lcom/google/android/apps/hangouts/hangout/HangoutFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/hangouts/hangout/HangoutFragment;->u()I

    move-result v0

    return v0
.end method

.method public h()I
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 142
    iget-object v1, p0, Lcgn;->a:Lcom/google/android/apps/hangouts/hangout/HangoutFragment;

    iget-object v1, v1, Lcom/google/android/apps/hangouts/hangout/HangoutFragment;->f:Lcfc;

    invoke-virtual {v1}, Lcfc;->r()Lcgw;

    move-result-object v1

    .line 143
    iget-object v2, p0, Lcgn;->a:Lcom/google/android/apps/hangouts/hangout/HangoutFragment;

    .line 7093
    iget-object v2, v2, Lcom/google/android/apps/hangouts/hangout/HangoutFragment;->ak:Lbfd;

    .line 143
    invoke-virtual {v2}, Lbfd;->k()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 144
    const/4 v0, 0x0

    .line 150
    :cond_0
    :goto_0
    return v0

    .line 145
    :cond_1
    if-eqz v1, :cond_0

    .line 148
    invoke-virtual {v1}, Lcgw;->A()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 149
    const/4 v0, 0x2

    goto :goto_0
.end method

.method i()Z
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcgn;->a:Lcom/google/android/apps/hangouts/hangout/HangoutFragment;

    .line 10093
    iget-boolean v0, v0, Lcom/google/android/apps/hangouts/hangout/HangoutFragment;->h:Z

    .line 159
    return v0
.end method

.method public j()V
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcgn;->a:Lcom/google/android/apps/hangouts/hangout/HangoutFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/hangouts/hangout/HangoutFragment;->c()V

    .line 183
    return-void
.end method

.method k()V
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcgn;->a:Lcom/google/android/apps/hangouts/hangout/HangoutFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/hangouts/hangout/HangoutFragment;->d()V

    .line 187
    return-void
.end method

.method public l()V
    .locals 4

    .prologue
    .line 190
    const-string v0, "Babel_calls"

    iget-object v1, p0, Lcgn;->a:Lcom/google/android/apps/hangouts/hangout/HangoutFragment;

    .line 14093
    iget v1, v1, Lcom/google/android/apps/hangouts/hangout/HangoutFragment;->al:I

    .line 190
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x2e

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "HangoutFragment onExit with state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 191
    iget-object v0, p0, Lcgn;->a:Lcom/google/android/apps/hangouts/hangout/HangoutFragment;

    iget-object v0, v0, Lcom/google/android/apps/hangouts/hangout/HangoutFragment;->f:Lcfc;

    invoke-virtual {v0}, Lcfc;->r()Lcgw;

    move-result-object v0

    .line 192
    if-eqz v0, :cond_0

    .line 193
    const/16 v1, 0x3ec

    invoke-virtual {v0, v1}, Lcgw;->b(I)V

    .line 198
    :goto_0
    return-void

    .line 196
    :cond_0
    iget-object v0, p0, Lcgn;->a:Lcom/google/android/apps/hangouts/hangout/HangoutFragment;

    .line 15093
    iget-object v0, v0, Lcom/google/android/apps/hangouts/hangout/HangoutFragment;->d:Lcom/google/android/apps/hangouts/hangout/HangoutActivity;

    .line 196
    invoke-virtual {v0}, Lcom/google/android/apps/hangouts/hangout/HangoutActivity;->n()V

    goto :goto_0
.end method

.method public m()V
    .locals 4

    .prologue
    .line 201
    iget-object v0, p0, Lcgn;->a:Lcom/google/android/apps/hangouts/hangout/HangoutFragment;

    .line 16093
    iget-object v0, v0, Lcom/google/android/apps/hangouts/hangout/HangoutFragment;->c:Ldcj;

    .line 201
    const-string v1, "android.permission.CAMERA"

    invoke-interface {v0, v1}, Ldcj;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lcgn;->a:Lcom/google/android/apps/hangouts/hangout/HangoutFragment;

    .line 17093
    invoke-virtual {v0}, Lcom/google/android/apps/hangouts/hangout/HangoutFragment;->a()V

    .line 210
    :goto_0
    return-void

    .line 205
    :cond_0
    iget-object v0, p0, Lcgn;->a:Lcom/google/android/apps/hangouts/hangout/HangoutFragment;

    .line 18093
    iget-object v0, v0, Lcom/google/android/apps/hangouts/hangout/HangoutFragment;->b:Ldck;

    .line 205
    new-instance v1, Ldco;

    .line 19093
    sget v2, Lcom/google/android/apps/hangouts/hangout/HangoutFragment;->a:I

    .line 207
    const/16 v3, 0xa61

    invoke-direct {v1, v2, v3}, Ldco;-><init>(II)V

    const-string v2, "android.permission.CAMERA"

    .line 209
    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 205
    invoke-interface {v0, v1, v2}, Ldck;->a(Ldco;Ljava/util/List;)V

    goto :goto_0
.end method

.method public n()Lhjq;
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcgn;->a:Lcom/google/android/apps/hangouts/hangout/HangoutFragment;

    .line 20093
    iget-object v0, v0, Lcom/google/android/apps/hangouts/hangout/HangoutFragment;->am:Lhjq;

    .line 213
    return-object v0
.end method
