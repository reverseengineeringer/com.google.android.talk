.class public Lbsr;
.super Limg;
.source "SourceFile"

# interfaces
.implements Lbmv;
.implements Lck;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Limg;",
        "Lbmv;",
        "Lck",
        "<",
        "Ljava/util/List",
        "<",
        "Lbso;",
        ">;>;"
    }
.end annotation


# instance fields
.field a:Lhsc;

.field private final b:Lhsb;

.field private final c:Lhsb;

.field private d:Landroid/support/v7/widget/RecyclerView;

.field private e:Landroid/view/View;

.field private f:I

.field private g:Z

.field private h:Lcom/google/android/libraries/quantum/fab/FloatingActionButton;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Limg;-><init>()V

    .line 50
    new-instance v0, Lbss;

    invoke-direct {v0, p0}, Lbss;-><init>(Lbsr;)V

    iput-object v0, p0, Lbsr;->b:Lhsb;

    .line 87
    new-instance v0, Lbst;

    invoke-direct {v0, p0}, Lbst;-><init>(Lbsr;)V

    iput-object v0, p0, Lbsr;->c:Lhsb;

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lbso;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2068
    sget-object v0, Latr;->a:Latr;

    .line 1470
    invoke-virtual {v0, p0}, Latr;->a(Lav;)Lahw;

    move-result-object v0

    .line 220
    new-instance v1, Lbtb;

    iget-object v2, p0, Lbsr;->context:Lill;

    invoke-virtual {p0}, Lbsr;->getView()Landroid/view/View;

    move-result-object v3

    invoke-direct {v1, v2, p1, v3, v0}, Lbtb;-><init>(Landroid/content/Context;Ljava/util/List;Landroid/view/View;Lahw;)V

    .line 221
    new-instance v2, Laiq;

    invoke-direct {v2, v0, v1, v1}, Laiq;-><init>(Lahw;Laho;Lahp;)V

    .line 223
    iget-object v0, p0, Lbsr;->d:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->b(Laae;)V

    .line 224
    iget-object v0, p0, Lbsr;->d:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->a(Lzu;)V

    .line 225
    iget-object v0, p0, Lbsr;->context:Lill;

    invoke-virtual {v0}, Lill;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Laal;->ky:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 226
    iget-object v1, p0, Lbsr;->d:Landroid/support/v7/widget/RecyclerView;

    new-instance v2, Lbti;

    invoke-direct {v2, v0}, Lbti;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->b(Laaa;)V

    .line 227
    return-void
.end method

.method public a()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 178
    iget v1, p0, Lbsr;->f:I

    invoke-static {v1}, Ldvd;->e(I)Lbfd;

    move-result-object v1

    .line 179
    sget-object v2, Lbhh;->f:Lbhh;

    invoke-static {v1, v2}, Laal;->a(Lbfd;Lbhh;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 181
    iget-object v1, p0, Lbsr;->context:Lill;

    sget v2, Laal;->kl:I

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    .line 184
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 187
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 195
    const/4 v0, 0x1

    return v0
.end method

.method protected onAttachBinder(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 125
    invoke-super {p0, p1}, Limg;->onAttachBinder(Landroid/os/Bundle;)V

    .line 127
    iget-object v0, p0, Lbsr;->binder:Lilh;

    const-class v1, Lhsc;

    invoke-virtual {v0, v1}, Lilh;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhsc;

    sget v1, Laal;->jS:I

    iget-object v2, p0, Lbsr;->b:Lhsb;

    .line 128
    invoke-virtual {v0, v1, v2}, Lhsc;->a(ILhsb;)Lhsc;

    move-result-object v0

    sget v1, Laal;->jU:I

    iget-object v2, p0, Lbsr;->c:Lhsb;

    .line 132
    invoke-virtual {v0, v1, v2}, Lhsc;->a(ILhsb;)Lhsc;

    move-result-object v0

    iput-object v0, p0, Lbsr;->a:Lhsc;

    .line 136
    iget-object v0, p0, Lbsr;->binder:Lilh;

    const-class v1, Lhpu;

    invoke-virtual {v0, v1}, Lilh;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhpu;

    invoke-interface {v0}, Lhpu;->a()I

    move-result v0

    iput v0, p0, Lbsr;->f:I

    .line 137
    iget-object v0, p0, Lbsr;->binder:Lilh;

    const-class v1, Lbmw;

    invoke-virtual {v0, v1}, Lilh;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbmw;

    invoke-interface {v0}, Lbmw;->f()Z

    move-result v0

    iput-boolean v0, p0, Lbsr;->g:Z

    .line 138
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 142
    invoke-super {p0, p1}, Limg;->onCreate(Landroid/os/Bundle;)V

    .line 143
    invoke-virtual {p0}, Lbsr;->getLoaderManager()Lcj;

    move-result-object v0

    sget v1, Laal;->kJ:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Lcj;->a(ILandroid/os/Bundle;Lck;)Lfe;

    .line 144
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Lfe;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Lfe",
            "<",
            "Ljava/util/List",
            "<",
            "Lbso;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 213
    new-instance v0, Lbsz;

    invoke-virtual {p0}, Lbsr;->getActivity()Lba;

    move-result-object v1

    iget-boolean v2, p0, Lbsr;->g:Z

    invoke-direct {v0, v1, v2}, Lbsz;-><init>(Landroid/content/Context;Z)V

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 149
    sget v0, Laen;->hM:I

    invoke-virtual {p1, v0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lbsr;->e:Landroid/view/View;

    .line 150
    iget-object v0, p0, Lbsr;->e:Landroid/view/View;

    sget v1, Laal;->kI:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lbsr;->d:Landroid/support/v7/widget/RecyclerView;

    .line 151
    new-instance v0, Lyo;

    invoke-virtual {p0}, Lbsr;->getActivity()Lba;

    move-result-object v1

    invoke-direct {v0, v1}, Lyo;-><init>(Landroid/content/Context;)V

    .line 152
    invoke-virtual {v0, v2}, Lyo;->a(I)V

    .line 153
    iget-object v1, p0, Lbsr;->d:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->a(Laab;)V

    .line 154
    iget-object v0, p0, Lbsr;->d:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->b()V

    .line 156
    iget-object v0, p0, Lbsr;->e:Landroid/view/View;

    sget v1, Laal;->kz:I

    .line 157
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/quantum/fab/FloatingActionButton;

    iput-object v0, p0, Lbsr;->h:Lcom/google/android/libraries/quantum/fab/FloatingActionButton;

    .line 158
    iget-object v0, p0, Lbsr;->h:Lcom/google/android/libraries/quantum/fab/FloatingActionButton;

    new-instance v1, Lbsv;

    invoke-direct {v1, p0}, Lbsv;-><init>(Lbsr;)V

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/quantum/fab/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    iget-object v0, p0, Lbsr;->e:Landroid/view/View;

    sget v1, Laal;->kA:I

    .line 165
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 166
    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    .line 168
    iget-object v0, p0, Lbsr;->e:Landroid/view/View;

    return-object v0
.end method

.method public synthetic onLoadFinished(Lfe;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 44
    check-cast p2, Ljava/util/List;

    invoke-virtual {p0, p2}, Lbsr;->a(Ljava/util/List;)V

    return-void
.end method

.method public onLoaderReset(Lfe;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfe",
            "<",
            "Ljava/util/List",
            "<",
            "Lbso;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 230
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 173
    invoke-super {p0}, Limg;->onPause()V

    .line 174
    return-void
.end method
