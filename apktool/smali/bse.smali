.class public Lbse;
.super Limg;
.source "SourceFile"

# interfaces
.implements Lbmv;


# instance fields
.field a:Lhsc;

.field private final b:Lhsb;

.field private final c:Lhsb;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Limg;-><init>()V

    .line 52
    new-instance v0, Lbsf;

    invoke-direct {v0, p0}, Lbsf;-><init>(Lbse;)V

    iput-object v0, p0, Lbse;->b:Lhsb;

    .line 71
    new-instance v0, Lbsg;

    invoke-direct {v0, p0}, Lbsg;-><init>(Lbse;)V

    iput-object v0, p0, Lbse;->c:Lhsb;

    return-void
.end method

.method private d()V
    .locals 3

    .prologue
    .line 179
    invoke-virtual {p0}, Lbse;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Laal;->ks:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 180
    iget-object v1, p0, Lbse;->context:Lill;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 181
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 133
    iget-object v0, p0, Lbse;->binder:Lilh;

    const-class v1, Lbpq;

    invoke-virtual {v0, v1}, Lilh;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbpq;

    invoke-interface {v0}, Lbpq;->i()V

    .line 134
    iget-object v0, p0, Lbse;->binder:Lilh;

    const-class v1, Lhpu;

    .line 135
    invoke-virtual {v0, v1}, Lilh;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhpu;

    invoke-interface {v0}, Lhpu;->a()I

    move-result v0

    .line 134
    invoke-static {v0}, Ldvd;->e(I)Lbfd;

    move-result-object v0

    .line 136
    sget-object v1, Lbhh;->f:Lbhh;

    invoke-static {v0, v1}, Laal;->a(Lbfd;Lbhh;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 138
    iget-object v0, p0, Lbse;->context:Lill;

    sget v1, Laal;->kl:I

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 141
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 145
    :goto_0
    return v2

    .line 1157
    :cond_0
    invoke-virtual {p0}, Lbse;->c()V

    goto :goto_0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 153
    const/4 v0, 0x0

    return v0
.end method

.method c()V
    .locals 3

    .prologue
    .line 162
    iget-object v0, p0, Lbse;->context:Lill;

    invoke-static {v0}, Lbqt;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 163
    if-nez v0, :cond_0

    .line 164
    invoke-direct {p0}, Lbse;->d()V

    .line 176
    :goto_0
    return-void

    .line 169
    :cond_0
    :try_start_0
    const-string v1, "android.intent.extra.showActionIcons"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 170
    iget-object v1, p0, Lbse;->a:Lhsc;

    sget v2, Laal;->jW:I

    invoke-virtual {v1, v2, v0}, Lhsc;->a(ILandroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 174
    :catch_0
    move-exception v0

    invoke-direct {p0}, Lbse;->d()V

    goto :goto_0
.end method

.method protected onAttachBinder(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 112
    invoke-super {p0, p1}, Limg;->onAttachBinder(Landroid/os/Bundle;)V

    .line 114
    iget-object v0, p0, Lbse;->binder:Lilh;

    const-class v1, Lhsc;

    invoke-virtual {v0, v1}, Lilh;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhsc;

    sget v1, Laal;->jW:I

    iget-object v2, p0, Lbse;->b:Lhsb;

    .line 115
    invoke-virtual {v0, v1, v2}, Lhsc;->a(ILhsb;)Lhsc;

    move-result-object v0

    iput-object v0, p0, Lbse;->a:Lhsc;

    .line 119
    iget-object v0, p0, Lbse;->binder:Lilh;

    const-class v1, Lhsc;

    invoke-virtual {v0, v1}, Lilh;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhsc;

    sget v1, Laal;->jR:I

    iget-object v2, p0, Lbse;->c:Lhsb;

    .line 120
    invoke-virtual {v0, v1, v2}, Lhsc;->a(ILhsb;)Lhsc;

    move-result-object v0

    iput-object v0, p0, Lbse;->a:Lhsc;

    .line 123
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .prologue
    .line 128
    const/4 v0, 0x0

    return-object v0
.end method
