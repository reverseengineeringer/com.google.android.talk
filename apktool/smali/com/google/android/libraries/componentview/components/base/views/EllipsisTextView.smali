.class public Lcom/google/android/libraries/componentview/components/base/views/EllipsisTextView;
.super Landroid/widget/TextView;
.source "SourceFile"


# static fields
.field private static final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private b:Landroid/text/SpannableStringBuilder;

.field private c:Landroid/text/SpannableStringBuilder;

.field private d:Landroid/text/Spannable;

.field private e:I

.field private f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    .line 32
    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x2026

    .line 33
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/16 v2, 0x2e

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    const/16 v3, 0xb7

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    const/16 v4, 0x203a

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    .line 2103
    new-array v5, v7, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    const/4 v1, 0x1

    aput-object v2, v5, v1

    const/4 v1, 0x2

    aput-object v3, v5, v1

    const/4 v1, 0x3

    aput-object v4, v5, v1

    .line 3225
    invoke-static {v5, v7}, Lkxi;->b([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    .line 3291
    array-length v2, v1

    invoke-static {v1, v2}, Lksf;->b([Ljava/lang/Object;I)Lksf;

    move-result-object v1

    .line 33
    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/google/android/libraries/componentview/components/base/views/EllipsisTextView;->a:Ljava/util/Set;

    .line 32
    return-void
.end method

.method private static a(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
    .locals 8

    .prologue
    .line 208
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1, p0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 209
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    .line 210
    const-string v2, "\u2026"

    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 211
    if-lez v0, :cond_1

    .line 212
    add-int/lit8 v2, v0, -0x1

    const-class v3, Ljava/lang/Object;

    invoke-virtual {v1, v2, v0, v3}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    .line 213
    if-eqz v2, :cond_1

    array-length v0, v2

    if-lez v0, :cond_1

    .line 214
    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, v2, v0

    .line 215
    instance-of v5, v4, Landroid/text/style/SuperscriptSpan;

    if-nez v5, :cond_0

    instance-of v5, v4, Landroid/text/style/SubscriptSpan;

    if-nez v5, :cond_0

    instance-of v5, v4, Landroid/text/style/RelativeSizeSpan;

    if-nez v5, :cond_0

    .line 220
    invoke-virtual {v1, v4}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    .line 221
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    .line 222
    invoke-virtual {v1, v4}, Landroid/text/SpannableStringBuilder;->getSpanFlags(Ljava/lang/Object;)I

    move-result v7

    .line 218
    invoke-virtual {v1, v4, v5, v6, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 214
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 227
    :cond_1
    return-object v1
.end method

.method private a(F)V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 153
    invoke-virtual {p0}, Lcom/google/android/libraries/componentview/components/base/views/EllipsisTextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/Layout;->getWidth()I

    move-result v0

    .line 157
    const v2, 0x3f733333    # 0.95f

    int-to-float v0, v0

    mul-float/2addr v0, v2

    sub-float/2addr v0, p1

    invoke-virtual {p0}, Lcom/google/android/libraries/componentview/components/base/views/EllipsisTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    const-string v3, "\u2026"

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v2

    sub-float v5, v0, v2

    .line 159
    iget v0, p0, Lcom/google/android/libraries/componentview/components/base/views/EllipsisTextView;->e:I

    add-int/lit8 v0, v0, -0x1

    .line 161
    invoke-virtual {p0}, Lcom/google/android/libraries/componentview/components/base/views/EllipsisTextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/text/Layout;->getLineStart(I)I

    move-result v2

    iget-object v3, p0, Lcom/google/android/libraries/componentview/components/base/views/EllipsisTextView;->b:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 166
    invoke-virtual {p0}, Lcom/google/android/libraries/componentview/components/base/views/EllipsisTextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/text/Layout;->getLineVisibleEnd(I)I

    move-result v0

    iget-object v2, p0, Lcom/google/android/libraries/componentview/components/base/views/EllipsisTextView;->b:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    move v2, v0

    move v0, v3

    .line 177
    :goto_0
    if-ge v0, v2, :cond_1

    .line 178
    add-int v4, v2, v0

    add-int/lit8 v4, v4, 0x1

    div-int/lit8 v4, v4, 0x2

    .line 179
    invoke-virtual {p0}, Lcom/google/android/libraries/componentview/components/base/views/EllipsisTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v6

    invoke-virtual {p0}, Lcom/google/android/libraries/componentview/components/base/views/EllipsisTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7, v3, v4}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v6

    cmpg-float v6, v6, v5

    if-gtz v6, :cond_0

    move v0, v4

    .line 180
    goto :goto_0

    .line 182
    :cond_0
    add-int/lit8 v2, v4, -0x1

    .line 184
    goto :goto_0

    .line 187
    :cond_1
    :goto_1
    if-lez v0, :cond_3

    .line 188
    invoke-virtual {p0}, Lcom/google/android/libraries/componentview/components/base/views/EllipsisTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    add-int/lit8 v3, v0, -0x1

    invoke-interface {v2, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Lcom/google/android/libraries/componentview/components/base/views/EllipsisTextView;->a:Ljava/util/Set;

    .line 189
    invoke-virtual {p0}, Lcom/google/android/libraries/componentview/components/base/views/EllipsisTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    add-int/lit8 v4, v0, -0x1

    invoke-interface {v3, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 190
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 194
    :cond_3
    invoke-static {}, Ljava/text/BreakIterator;->getCharacterInstance()Ljava/text/BreakIterator;

    move-result-object v2

    .line 195
    invoke-virtual {p0}, Lcom/google/android/libraries/componentview/components/base/views/EllipsisTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/BreakIterator;->setText(Ljava/lang/String;)V

    .line 196
    invoke-virtual {v2, v0}, Ljava/text/BreakIterator;->isBoundary(I)Z

    move-result v3

    if-nez v3, :cond_4

    .line 197
    invoke-virtual {v2, v0}, Ljava/text/BreakIterator;->preceding(I)I

    move-result v0

    .line 198
    const/4 v2, -0x1

    if-ne v0, v2, :cond_4

    move v0, v1

    .line 203
    :cond_4
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-virtual {p0}, Lcom/google/android/libraries/componentview/components/base/views/EllipsisTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3, v1, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    sget-object v0, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {p0, v2, v0}, Lcom/google/android/libraries/componentview/components/base/views/EllipsisTextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 204
    invoke-virtual {p0}, Lcom/google/android/libraries/componentview/components/base/views/EllipsisTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/libraries/componentview/components/base/views/EllipsisTextView;->a(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    sget-object v1, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/libraries/componentview/components/base/views/EllipsisTextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 205
    return-void
.end method

.method private a()Z
    .locals 1

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/google/android/libraries/componentview/components/base/views/EllipsisTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    instance-of v0, v0, Landroid/text/Spannable;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/4 v4, 0x0

    .line 88
    invoke-direct {p0}, Lcom/google/android/libraries/componentview/components/base/views/EllipsisTextView;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 89
    iget-boolean v1, p0, Lcom/google/android/libraries/componentview/components/base/views/EllipsisTextView;->f:Z

    if-eqz v1, :cond_1

    :goto_0
    invoke-super {p0, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 90
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    .line 133
    :cond_0
    :goto_1
    return-void

    .line 89
    :cond_1
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    goto :goto_0

    .line 93
    :cond_2
    invoke-super {p0, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 94
    iget-object v0, p0, Lcom/google/android/libraries/componentview/components/base/views/EllipsisTextView;->b:Landroid/text/SpannableStringBuilder;

    invoke-virtual {p0, v0}, Lcom/google/android/libraries/componentview/components/base/views/EllipsisTextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    iget-object v0, p0, Lcom/google/android/libraries/componentview/components/base/views/EllipsisTextView;->c:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_3

    .line 96
    iget-object v0, p0, Lcom/google/android/libraries/componentview/components/base/views/EllipsisTextView;->c:Landroid/text/SpannableStringBuilder;

    invoke-virtual {p0, v0}, Lcom/google/android/libraries/componentview/components/base/views/EllipsisTextView;->append(Ljava/lang/CharSequence;)V

    .line 98
    :cond_3
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    .line 99
    invoke-virtual {p0}, Lcom/google/android/libraries/componentview/components/base/views/EllipsisTextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    move-result v0

    iget v1, p0, Lcom/google/android/libraries/componentview/components/base/views/EllipsisTextView;->e:I

    if-le v0, v1, :cond_0

    .line 104
    invoke-virtual {p0}, Lcom/google/android/libraries/componentview/components/base/views/EllipsisTextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/Layout;->getWidth()I

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    iget-boolean v0, p0, Lcom/google/android/libraries/componentview/components/base/views/EllipsisTextView;->f:Z

    if-eqz v0, :cond_4

    .line 111
    invoke-virtual {p0}, Lcom/google/android/libraries/componentview/components/base/views/EllipsisTextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    iget v1, p0, Lcom/google/android/libraries/componentview/components/base/views/EllipsisTextView;->e:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineVisibleEnd(I)I

    move-result v0

    .line 112
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-virtual {p0}, Lcom/google/android/libraries/componentview/components/base/views/EllipsisTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2, v4, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    sget-object v0, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {p0, v1, v0}, Lcom/google/android/libraries/componentview/components/base/views/EllipsisTextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    goto :goto_1

    .line 118
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/libraries/componentview/components/base/views/EllipsisTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/libraries/componentview/components/base/views/EllipsisTextView;->c:Landroid/text/SpannableStringBuilder;

    iget-object v2, p0, Lcom/google/android/libraries/componentview/components/base/views/EllipsisTextView;->c:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    invoke-virtual {v0, v1, v4, v2}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v1

    .line 119
    const/4 v0, 0x0

    .line 120
    iget-object v2, p0, Lcom/google/android/libraries/componentview/components/base/views/EllipsisTextView;->d:Landroid/text/Spannable;

    if-eqz v2, :cond_5

    .line 121
    invoke-virtual {p0}, Lcom/google/android/libraries/componentview/components/base/views/EllipsisTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/libraries/componentview/components/base/views/EllipsisTextView;->d:Landroid/text/Spannable;

    iget-object v3, p0, Lcom/google/android/libraries/componentview/components/base/views/EllipsisTextView;->d:Landroid/text/Spannable;

    invoke-interface {v3}, Landroid/text/Spannable;->length()I

    move-result v3

    invoke-virtual {v0, v2, v4, v3}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v0

    .line 124
    :cond_5
    add-float/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/google/android/libraries/componentview/components/base/views/EllipsisTextView;->a(F)V

    .line 1243
    iget-object v0, p0, Lcom/google/android/libraries/componentview/components/base/views/EllipsisTextView;->d:Landroid/text/Spannable;

    if-eqz v0, :cond_6

    .line 1246
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-virtual {p0}, Lcom/google/android/libraries/componentview/components/base/views/EllipsisTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1247
    iget-object v1, p0, Lcom/google/android/libraries/componentview/components/base/views/EllipsisTextView;->d:Landroid/text/Spannable;

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1248
    sget-object v1, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/libraries/componentview/components/base/views/EllipsisTextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 1252
    :cond_6
    iget-object v0, p0, Lcom/google/android/libraries/componentview/components/base/views/EllipsisTextView;->c:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    if-eqz v0, :cond_7

    .line 1255
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-virtual {p0}, Lcom/google/android/libraries/componentview/components/base/views/EllipsisTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1256
    iget-object v1, p0, Lcom/google/android/libraries/componentview/components/base/views/EllipsisTextView;->c:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1257
    sget-object v1, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/libraries/componentview/components/base/views/EllipsisTextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 132
    :cond_7
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    goto/16 :goto_1
.end method

.method public setEllipsize(Landroid/text/TextUtils$TruncateAt;)V
    .locals 0

    .prologue
    .line 62
    return-void
.end method

.method public setMaxLines(I)V
    .locals 1

    .prologue
    .line 73
    iput p1, p0, Lcom/google/android/libraries/componentview/components/base/views/EllipsisTextView;->e:I

    .line 74
    invoke-direct {p0}, Lcom/google/android/libraries/componentview/components/base/views/EllipsisTextView;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    invoke-super {p0, p1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 81
    :goto_0
    return-void

    .line 79
    :cond_0
    const v0, 0x7fffffff

    invoke-super {p0, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    goto :goto_0
.end method
