.class public Lcdi;
.super Lbxv;
.source "SourceFile"


# instance fields
.field i:Lcdl;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lbxv;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcdl;)V
    .locals 0

    .prologue
    .line 160
    iput-object p1, p0, Lcdi;->i:Lcdl;

    .line 161
    return-void
.end method

.method public a(Leim;Lfkg;Lgpx;)V
    .locals 2

    .prologue
    .line 193
    invoke-super {p0, p1, p2, p3}, Lbxv;->a(Leim;Lfkg;Lgpx;)V

    .line 198
    iget-object v0, p0, Lcdi;->c:Leim;

    if-ne p1, v0, :cond_0

    .line 199
    const/4 v0, 0x0

    new-instance v1, Lehy;

    invoke-direct {v1, p2}, Lehy;-><init>(Lfkg;)V

    invoke-virtual {p0, v0, v1}, Lcdi;->a(ILbzh;)V

    .line 203
    iget-object v0, p0, Lcdi;->i:Lcdl;

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lcdi;->i:Lcdl;

    invoke-interface {v0}, Lcdl;->e()V

    .line 207
    :cond_0
    return-void
.end method

.method protected a()[Labl;
    .locals 3

    .prologue
    .line 1043
    const/4 v0, 0x3

    new-array v0, v0, [Labl;

    const/4 v1, 0x0

    new-instance v2, Labl;

    invoke-direct {v2}, Labl;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Labl;

    invoke-direct {v2}, Labl;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Labl;

    invoke-direct {v2}, Labl;-><init>()V

    aput-object v2, v0, v1

    .line 211
    return-object v0
.end method

.method protected b(Ljava/lang/CharSequence;)V
    .locals 3

    .prologue
    .line 172
    invoke-super {p0, p1}, Lbxv;->b(Ljava/lang/CharSequence;)V

    .line 176
    const/4 v0, 0x0

    .line 177
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 178
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lezm;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 179
    if-eqz v1, :cond_0

    .line 180
    new-instance v0, Lcdm;

    invoke-direct {v0}, Lcdm;-><init>()V

    .line 181
    invoke-virtual {p0}, Lcdi;->getActivity()Lba;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcdm;->a(Ljava/lang/String;Landroid/content/Context;)V

    .line 184
    :cond_0
    const/4 v1, 0x2

    invoke-virtual {p0, v1, v0}, Lcdi;->a(ILbzh;)V

    .line 185
    return-void
.end method

.method protected e()Z
    .locals 1

    .prologue
    .line 167
    invoke-virtual {p0}, Lcdi;->d()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isEmpty()Z
    .locals 1

    .prologue
    .line 216
    const/4 v0, 0x0

    return v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .prologue
    .line 131
    sget v0, Laal;->gE:I

    invoke-super {p0, p1, p2, p3, v0}, Lbxv;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;I)Landroid/view/View;

    move-result-object v0

    .line 134
    invoke-virtual {p0}, Lcdi;->b()Landroid/widget/ListView;

    move-result-object v1

    new-instance v2, Lcdj;

    invoke-direct {v2, p0}, Lcdj;-><init>(Lcdi;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 145
    iget-object v1, p0, Lcdi;->f:Landroid/view/View;

    new-instance v2, Lcdk;

    invoke-direct {v2, p0}, Lcdk;-><init>(Lcdi;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 156
    return-object v0
.end method
