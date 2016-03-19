.class public final Lepl;
.super Lfeg;
.source "SourceFile"


# static fields
.field static final a:I


# instance fields
.field b:Ljava/lang/String;

.field c:Landroid/text/Spannable;

.field final d:Landroid/view/View;

.field final e:Landroid/view/View$OnClickListener;

.field private final g:Ldlj;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    sget-object v0, Ldnv;->c:Ldnv;

    iget v0, v0, Ldnv;->l:I

    sput v0, Lepl;->a:I

    return-void
.end method

.method public constructor <init>(Liog;ILandroid/widget/TextView;Landroid/view/View;)V
    .locals 2

    .prologue
    .line 40
    invoke-direct {p0, p3}, Lfeg;-><init>(Landroid/widget/TextView;)V

    .line 31
    new-instance v0, Lepm;

    invoke-direct {v0, p0}, Lepm;-><init>(Lepl;)V

    iput-object v0, p0, Lepl;->e:Landroid/view/View$OnClickListener;

    .line 41
    iput-object p4, p0, Lepl;->d:Landroid/view/View;

    .line 42
    new-instance v0, Lepn;

    invoke-virtual {p3}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1, p2}, Lepn;-><init>(Lepl;Landroid/content/Context;Liog;I)V

    iput-object v0, p0, Lepl;->g:Ldlj;

    .line 43
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 53
    invoke-virtual {p0, v0, v0}, Lepl;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    invoke-super {p0}, Lfeg;->a()V

    .line 55
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 47
    iput-object p1, p0, Lepl;->b:Ljava/lang/String;

    .line 48
    iget-object v0, p0, Lepl;->g:Ldlj;

    invoke-virtual {v0, p2}, Ldlj;->a(Ljava/lang/String;)V

    .line 49
    return-void
.end method

.method protected b()V
    .locals 4

    .prologue
    .line 78
    iget-object v0, p0, Lepl;->g:Ldlj;

    invoke-virtual {v0}, Ldlj;->e()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 79
    iget-object v0, p0, Lepl;->c:Landroid/text/Spannable;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 80
    :goto_0
    iget-object v1, p0, Lepl;->c:Landroid/text/Spannable;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 81
    iget-object v1, p0, Lepl;->f:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lfbt;->a(Landroid/content/Context;)Lfbt;

    move-result-object v1

    iget-object v2, p0, Lepl;->c:Landroid/text/Spannable;

    iget-object v3, p0, Lepl;->f:Landroid/widget/TextView;

    .line 82
    invoke-virtual {v1, v2, v3}, Lfbt;->a(Landroid/text/Spannable;Landroid/widget/TextView;)V

    .line 84
    :cond_0
    iget-object v1, p0, Lepl;->f:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 85
    iget-object v0, p0, Lepl;->f:Landroid/widget/TextView;

    iget-object v1, p0, Lepl;->c:Landroid/text/Spannable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    :goto_1
    return-void

    .line 79
    :cond_1
    const/16 v0, 0x8

    goto :goto_0

    .line 87
    :cond_2
    invoke-super {p0}, Lfeg;->b()V

    goto :goto_1
.end method
