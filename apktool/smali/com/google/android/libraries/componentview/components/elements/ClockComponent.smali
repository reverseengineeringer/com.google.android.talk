.class public Lcom/google/android/libraries/componentview/components/elements/ClockComponent;
.super Lcom/google/android/libraries/componentview/components/base/TextViewComponent;
.source "SourceFile"

# interfaces
.implements Latn;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Lcom/google/android/libraries/componentview/components/base/views/EllipsisTextView;",
        ">",
        "Lcom/google/android/libraries/componentview/components/base/TextViewComponent",
        "<TV;>;",
        "Latn;"
    }
.end annotation


# instance fields
.field private final e:La;

.field private f:I

.field private g:Ljava/lang/String;

.field private final h:Ljava/lang/StringBuilder;

.field private final i:Ljava/util/Formatter;


# virtual methods
.method public c()V
    .locals 8

    .prologue
    .line 66
    iget-object v0, p0, Lcom/google/android/libraries/componentview/components/elements/ClockComponent;->e:La;

    invoke-interface {v0}, La;->y()J

    move-result-wide v2

    .line 68
    iget-object v0, p0, Lcom/google/android/libraries/componentview/components/elements/ClockComponent;->h:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 69
    iget-object v0, p0, Lcom/google/android/libraries/componentview/components/elements/ClockComponent;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/libraries/componentview/components/elements/ClockComponent;->i:Ljava/util/Formatter;

    iget v6, p0, Lcom/google/android/libraries/componentview/components/elements/ClockComponent;->f:I

    iget-object v7, p0, Lcom/google/android/libraries/componentview/components/elements/ClockComponent;->g:Ljava/lang/String;

    move-wide v4, v2

    .line 70
    invoke-static/range {v0 .. v7}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJILjava/lang/String;)Ljava/util/Formatter;

    move-result-object v0

    .line 71
    invoke-virtual {v0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v1

    .line 72
    iget-object v0, p0, Lcom/google/android/libraries/componentview/components/elements/ClockComponent;->c:Landroid/view/View;

    check-cast v0, Lcom/google/android/libraries/componentview/components/base/views/EllipsisTextView;

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/componentview/components/base/views/EllipsisTextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    return-void
.end method

.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/google/android/libraries/componentview/components/elements/ClockComponent;->c()V

    .line 62
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 56
    return-void
.end method
