.class final Lepy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic a:Lepv;


# direct methods
.method constructor <init>(Lepv;)V
    .locals 0

    .prologue
    .line 201
    iput-object p1, p0, Lepy;->a:Lepv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .prologue
    .line 249
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 203
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 9

    .prologue
    .line 207
    iget-object v0, p0, Lepy;->a:Lepv;

    .line 1062
    iget-object v0, v0, Lepv;->a:Landroid/content/Context;

    .line 207
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 208
    iget-object v1, p0, Lepy;->a:Lepv;

    .line 2062
    iget-object v1, v1, Lepv;->e:Landroid/widget/EditText;

    .line 208
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3181
    const/4 v2, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->codePointCount(II)I

    move-result v1

    .line 209
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 210
    new-instance v3, Landroid/text/SpannableString;

    iget-object v4, p0, Lepy;->a:Lepv;

    .line 4062
    iget-object v4, v4, Lepv;->a:Landroid/content/Context;

    .line 211
    sget v5, Lcom/google/android/apps/hangouts/hangout/StressMode;->fA:I

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    .line 212
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const/16 v8, 0x8c

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    .line 211
    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 215
    const/16 v4, 0x8c

    if-le v1, v4, :cond_2

    .line 216
    sget v4, Laal;->dE:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 217
    iget-object v4, p0, Lepy;->a:Lepv;

    .line 5062
    iget-object v4, v4, Lepv;->g:Landroid/view/View;

    .line 217
    invoke-virtual {v4, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 218
    new-instance v4, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v4, v0}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/4 v0, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v5, 0x21

    invoke-interface {v3, v4, v0, v2, v5}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 220
    iget-object v0, p0, Lepy;->a:Lepv;

    .line 6062
    iget-object v0, v0, Lepv;->h:Landroid/widget/Button;

    .line 220
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 222
    iget-object v0, p0, Lepy;->a:Lepv;

    .line 7062
    iget-object v0, v0, Lepv;->a:Landroid/content/Context;

    .line 222
    sget v2, Lcom/google/android/apps/hangouts/hangout/StressMode;->fC:I

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 223
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v5

    const/4 v1, 0x1

    const/16 v5, 0x8c

    .line 224
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    .line 222
    invoke-virtual {v0, v2, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 225
    iget-object v0, p0, Lepy;->a:Lepv;

    .line 8062
    iget-object v0, v0, Lepv;->f:Landroid/widget/TextView;

    .line 225
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 230
    iget-object v0, p0, Lepy;->a:Lepv;

    .line 9253
    iget-object v2, v0, Lepv;->i:Landroid/view/accessibility/AccessibilityManager;

    if-eqz v2, :cond_1

    iget-object v2, v0, Lepv;->i:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v0, v0, Lepv;->i:Landroid/view/accessibility/AccessibilityManager;

    .line 9254
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 230
    :goto_0
    if-eqz v0, :cond_0

    .line 231
    iget-object v0, p0, Lepy;->a:Lepv;

    .line 10062
    iget-object v0, v0, Lepv;->e:Landroid/widget/EditText;

    .line 231
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 245
    :cond_0
    :goto_1
    iget-object v0, p0, Lepy;->a:Lepv;

    .line 17062
    iget-object v0, v0, Lepv;->f:Landroid/widget/TextView;

    .line 245
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 246
    return-void

    .line 9254
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 234
    :cond_2
    iget-object v2, p0, Lepy;->a:Lepv;

    .line 11062
    iget-object v2, v2, Lepv;->g:Landroid/view/View;

    .line 234
    sget v4, Laal;->dF:I

    .line 235
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 234
    invoke-virtual {v2, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 236
    iget-object v0, p0, Lepy;->a:Lepv;

    .line 12062
    iget-object v0, v0, Lepv;->h:Landroid/widget/Button;

    .line 236
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 238
    iget-object v0, p0, Lepy;->a:Lepv;

    .line 13062
    iget-object v0, v0, Lepv;->f:Landroid/widget/TextView;

    .line 238
    iget-object v2, p0, Lepy;->a:Lepv;

    .line 14062
    iget-object v2, v2, Lepv;->a:Landroid/content/Context;

    .line 238
    sget v4, Lcom/google/android/apps/hangouts/hangout/StressMode;->fB:I

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 239
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v6

    const/4 v1, 0x1

    const/16 v6, 0x8c

    .line 240
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    .line 238
    invoke-virtual {v2, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 241
    iget-object v0, p0, Lepy;->a:Lepv;

    .line 15253
    iget-object v1, v0, Lepv;->i:Landroid/view/accessibility/AccessibilityManager;

    if-eqz v1, :cond_3

    iget-object v1, v0, Lepv;->i:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v0, v0, Lepv;->i:Landroid/view/accessibility/AccessibilityManager;

    .line 15254
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    .line 241
    :goto_2
    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Lepy;->a:Lepv;

    .line 16062
    iget-object v0, v0, Lepv;->e:Landroid/widget/EditText;

    .line 242
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 15254
    :cond_3
    const/4 v0, 0x0

    goto :goto_2
.end method
