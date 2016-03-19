.class public abstract Lcbp;
.super Limg;
.source "SourceFile"


# instance fields
.field private a:Z

.field private b:Z

.field private final c:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Limg;-><init>()V

    .line 50
    new-instance v0, Lcbq;

    invoke-direct {v0, p0}, Lcbq;-><init>(Lcbp;)V

    iput-object v0, p0, Lcbp;->c:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method protected at()V
    .locals 1

    .prologue
    .line 119
    invoke-virtual {p0}, Lcbp;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcbp;->isPaused()Z

    move-result v0

    if-nez v0, :cond_0

    .line 120
    invoke-virtual {p0}, Lcbp;->getView()Landroid/view/View;

    move-result-object v0

    .line 121
    if-eqz v0, :cond_0

    .line 122
    invoke-virtual {p0, v0}, Lcbp;->doShowEmptyViewProgress(Landroid/view/View;)V

    .line 125
    :cond_0
    return-void
.end method

.method protected au()V
    .locals 2

    .prologue
    .line 184
    iget-object v0, p0, Lcbp;->c:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 185
    return-void
.end method

.method public displayDeleteConversationDialog(I)V
    .locals 4

    .prologue
    .line 197
    sget v0, Lcom/google/android/apps/hangouts/hangout/StressMode;->hT:I

    .line 198
    invoke-virtual {p0, v0}, Lcbp;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/google/android/apps/hangouts/hangout/StressMode;->hS:I

    .line 199
    invoke-virtual {p0, v1}, Lcbp;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/google/android/apps/hangouts/hangout/StressMode;->hR:I

    .line 200
    invoke-virtual {p0, v2}, Lcbp;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/google/android/apps/hangouts/hangout/StressMode;->U:I

    .line 201
    invoke-virtual {p0, v3}, Lcbp;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 197
    invoke-static {v0, v1, v2, v3}, Lbxq;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lbxq;

    move-result-object v0

    .line 202
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lbxq;->setTargetFragment(Lav;I)V

    .line 203
    invoke-virtual {v0}, Lbxq;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "account_id"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 204
    invoke-virtual {p0}, Lcbp;->getFragmentManager()Lbg;

    move-result-object v1

    const-string v2, "delete_conversation"

    invoke-virtual {v0, v1, v2}, Lbxq;->a(Lbg;Ljava/lang/String;)V

    .line 205
    return-void
.end method

.method public doShowEmptyViewProgress(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 131
    invoke-virtual {p0}, Lcbp;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    const v0, 0x1020004

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 133
    sget v0, Laen;->dQ:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 134
    sget v0, Laen;->dP:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 136
    :cond_0
    return-void
.end method

.method public getAccountForConversationDeletion(Landroid/os/Bundle;)Lbfd;
    .locals 4

    .prologue
    .line 188
    const-string v0, "account_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 189
    invoke-static {v0}, Ldvd;->e(I)Lbfd;

    move-result-object v0

    .line 190
    if-nez v0, :cond_0

    .line 191
    const-string v1, "Babel"

    const-string v2, "Delete conversation called for unknown account"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lezi;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 193
    :cond_0
    return-object v0
.end method

.method public abstract isEmpty()Z
.end method

.method public isPaused()Z
    .locals 1

    .prologue
    .line 96
    iget-boolean v0, p0, Lcbp;->a:Z

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 59
    invoke-super {p0, p1}, Limg;->onCreate(Landroid/os/Bundle;)V

    .line 61
    if-eqz p1, :cond_0

    .line 62
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcbp;->b:Z

    .line 64
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;I)Landroid/view/View;
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x0

    invoke-virtual {p1, p4, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 88
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcbp;->a:Z

    .line 89
    invoke-super {p0}, Limg;->onPause()V

    .line 90
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcbp;->a:Z

    .line 83
    invoke-super {p0}, Limg;->onResume()V

    .line 84
    return-void
.end method

.method public setupEmptyView(Landroid/view/View;II)V
    .locals 3

    .prologue
    .line 171
    sget v0, Laen;->dQ:I

    .line 172
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x1020004

    .line 173
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    .line 171
    invoke-static {v0, v1, p2, p3, v2}, Lezc;->a(Landroid/widget/TextView;Landroid/view/View;III)V

    .line 178
    return-void
.end method

.method public showContent(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 158
    invoke-virtual {p0}, Lcbp;->au()V

    .line 159
    const v0, 0x1020004

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 160
    return-void
.end method

.method public showEmptyView(Landroid/view/View;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 144
    invoke-virtual {p0}, Lcbp;->au()V

    .line 145
    invoke-virtual {p0}, Lcbp;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    const v0, 0x1020004

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 147
    sget v0, Laen;->dQ:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 148
    sget v0, Laen;->dP:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 150
    :cond_0
    return-void
.end method

.method public showEmptyViewProgress(Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 105
    iget-boolean v0, p0, Lcbp;->b:Z

    if-eqz v0, :cond_1

    .line 106
    iget-object v0, p0, Lcbp;->c:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcbp;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcbp;->c:Landroid/os/Handler;

    const-wide/16 v2, 0x320

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 113
    :cond_0
    :goto_0
    return-void

    .line 111
    :cond_1
    invoke-virtual {p0, p1}, Lcbp;->doShowEmptyViewProgress(Landroid/view/View;)V

    goto :goto_0
.end method
