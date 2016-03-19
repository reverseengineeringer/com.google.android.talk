.class public final Ldkv;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Ldkx;

.field b:Landroid/view/ActionMode;

.field private final c:Landroid/widget/AbsListView$MultiChoiceModeListener;


# direct methods
.method public constructor <init>(Ldkx;)V
    .locals 1

    .prologue
    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    iput-object p1, p0, Ldkv;->a:Ldkx;

    .line 115
    new-instance v0, Ldkw;

    .line 1026
    invoke-direct {v0, p0}, Ldkw;-><init>(Ldkv;)V

    .line 115
    iput-object v0, p0, Ldkv;->c:Landroid/widget/AbsListView$MultiChoiceModeListener;

    .line 116
    return-void
.end method


# virtual methods
.method public a()Landroid/widget/AbsListView$MultiChoiceModeListener;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Ldkv;->c:Landroid/widget/AbsListView$MultiChoiceModeListener;

    return-object v0
.end method

.method public a(Ljava/lang/CharSequence;)V
    .locals 5

    .prologue
    .line 131
    iget-object v0, p0, Ldkv;->b:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    .line 132
    if-eqz p1, :cond_1

    .line 137
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 138
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    const/4 v2, -0x1

    invoke-direct {v1, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/4 v2, 0x0

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v3

    const/16 v4, 0x21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 140
    iget-object v1, p0, Ldkv;->b:Landroid/view/ActionMode;

    invoke-virtual {v1, v0}, Landroid/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    .line 145
    :cond_0
    :goto_0
    return-void

    .line 142
    :cond_1
    iget-object v0, p0, Ldkv;->b:Landroid/view/ActionMode;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Ldkv;->b:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Ldkv;->b:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->invalidate()V

    .line 154
    :cond_0
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Ldkv;->b:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Ldkv;->b:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 163
    :cond_0
    return-void
.end method
