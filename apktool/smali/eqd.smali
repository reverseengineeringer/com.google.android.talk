.class public final Leqd;
.super Lcve;
.source "SourceFile"


# static fields
.field private static final f:I


# instance fields
.field private final g:Leot;

.field private final h:Ldll;

.field private i:Ljava/lang/String;

.field private j:Landroid/text/Spannable;

.field private final k:Ldli;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    sget-object v0, Ldnv;->c:Ldnv;

    iget v0, v0, Ldnv;->l:I

    sput v0, Leqd;->f:I

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Lcve;-><init>()V

    .line 35
    new-instance v0, Leqe;

    invoke-direct {v0, p0}, Leqe;-><init>(Leqd;)V

    iput-object v0, p0, Leqd;->k:Ldli;

    .line 43
    const-class v0, Leot;

    invoke-static {p1, v0}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leot;

    iput-object v0, p0, Leqd;->g:Leot;

    .line 44
    const-class v0, Ldll;

    invoke-static {p1, v0}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldll;

    iput-object v0, p0, Leqd;->h:Ldll;

    .line 45
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 74
    sget v0, Lcom/google/android/apps/hangouts/hangout/StressMode;->fz:I

    return v0
.end method

.method public a(Landroid/app/Activity;)V
    .locals 4

    .prologue
    .line 94
    iget-object v0, p0, Leqd;->a:Lbfd;

    const/16 v1, 0x781

    invoke-static {v0, v1}, Laal;->a(Lbfd;I)V

    .line 96
    iget-object v0, p0, Leqd;->a:Lbfd;

    invoke-virtual {v0}, Lbfd;->g()I

    move-result v0

    iget-object v1, p0, Leqd;->i:Ljava/lang/String;

    .line 1024
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/google/android/apps/hangouts/statusmessage/impl/StatusMessageSettingsActivity;

    invoke-direct {v2, p1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1025
    const-string v3, "account_id"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1026
    const-string v0, "status_message"

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1027
    invoke-virtual {p1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 97
    return-void
.end method

.method public a(Lbfd;)V
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Leqd;->a:Lbfd;

    if-eqz v0, :cond_0

    iget-object v0, p0, Leqd;->a:Lbfd;

    invoke-virtual {v0, p1}, Lbfd;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 57
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Leqd;->a(Ljava/lang/String;)V

    .line 59
    :cond_1
    invoke-super {p0, p1}, Lcve;->a(Lbfd;)V

    .line 60
    return-void
.end method

.method a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 110
    iput-object p1, p0, Leqd;->i:Ljava/lang/String;

    .line 111
    iget-object v0, p0, Leqd;->i:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-static {v0}, Lezc;->a(Ljava/lang/CharSequence;)Landroid/text/Spannable;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Leqd;->j:Landroid/text/Spannable;

    .line 112
    iget-object v0, p0, Leqd;->c:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Leqd;->c:Landroid/widget/TextView;

    iget-object v1, p0, Leqd;->j:Landroid/text/Spannable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    iget-object v0, p0, Leqd;->j:Landroid/text/Spannable;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 115
    iget-object v0, p0, Leqd;->c:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 122
    :cond_0
    :goto_1
    return-void

    .line 111
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 117
    :cond_2
    iget-object v0, p0, Leqd;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lfbt;->a(Landroid/content/Context;)Lfbt;

    move-result-object v0

    iget-object v1, p0, Leqd;->j:Landroid/text/Spannable;

    iget-object v2, p0, Leqd;->c:Landroid/widget/TextView;

    .line 118
    invoke-virtual {v0, v1, v2}, Lfbt;->a(Landroid/text/Spannable;Landroid/widget/TextView;)V

    .line 119
    iget-object v0, p0, Leqd;->c:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method public a(Z)V
    .locals 5

    .prologue
    .line 64
    if-eqz p1, :cond_0

    iget-object v0, p0, Leqd;->a:Lbfd;

    if-eqz v0, :cond_0

    iget-object v0, p0, Leqd;->g:Leot;

    iget-object v1, p0, Leqd;->a:Lbfd;

    invoke-virtual {v1}, Lbfd;->g()I

    move-result v1

    invoke-interface {v0, v1}, Leot;->a(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 65
    iget-object v0, p0, Leqd;->a:Lbfd;

    invoke-virtual {v0}, Lbfd;->b()Lczb;

    move-result-object v0

    iget-object v0, v0, Lczb;->a:Ljava/lang/String;

    .line 66
    iget-object v1, p0, Leqd;->h:Ldll;

    iget-object v2, p0, Leqd;->a:Lbfd;

    invoke-virtual {v2}, Lbfd;->g()I

    move-result v2

    iget-object v3, p0, Leqd;->k:Ldli;

    sget v4, Leqd;->f:I

    invoke-virtual {v1, v2, v0, v3, v4}, Ldll;->a(ILjava/lang/String;Ldli;I)V

    .line 70
    :goto_0
    return-void

    .line 68
    :cond_0
    iget-object v0, p0, Leqd;->h:Ldll;

    iget-object v1, p0, Leqd;->k:Ldli;

    invoke-virtual {v0, v1}, Ldll;->a(Ldli;)V

    goto :goto_0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 84
    sget v0, Lcom/google/android/apps/hangouts/R$drawable;->ci:I

    return v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 89
    const/4 v0, 0x3

    return v0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 101
    const/4 v0, 0x1

    return v0
.end method

.method public e()I
    .locals 1

    .prologue
    .line 106
    const/4 v0, 0x3

    return v0
.end method

.method public f()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Leqd;->j:Landroid/text/Spannable;

    return-object v0
.end method

.method public h()Z
    .locals 2

    .prologue
    .line 49
    iget-object v0, p0, Leqd;->a:Lbfd;

    if-eqz v0, :cond_0

    iget-object v0, p0, Leqd;->g:Leot;

    iget-object v1, p0, Leqd;->a:Lbfd;

    invoke-virtual {v1}, Lbfd;->g()I

    move-result v1

    invoke-interface {v0, v1}, Leot;->a(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
