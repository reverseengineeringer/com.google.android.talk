.class public Lcom/google/android/apps/hangouts/views/HangoutEventMessageListItemView;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"

# interfaces
.implements Lcum;


# instance fields
.field a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lczb;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/widget/ImageView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Lcom/google/android/apps/hangouts/views/FixedParticipantsGalleryView;

.field private f:Ljava/lang/CharSequence;

.field private g:J

.field private h:Lbfd;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/hangouts/views/HangoutEventMessageListItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    .prologue
    .line 141
    iget-wide v0, p0, Lcom/google/android/apps/hangouts/views/HangoutEventMessageListItemView;->g:J

    return-wide v0
.end method

.method public a(J)V
    .locals 1

    .prologue
    .line 97
    iput-wide p1, p0, Lcom/google/android/apps/hangouts/views/HangoutEventMessageListItemView;->g:J

    .line 98
    return-void
.end method

.method public a(Ljava/lang/CharSequence;JLbfd;Ljava/util/List;I)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "J",
            "Lbfd;",
            "Ljava/util/List",
            "<",
            "Lczb;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 55
    iput-object p1, p0, Lcom/google/android/apps/hangouts/views/HangoutEventMessageListItemView;->f:Ljava/lang/CharSequence;

    .line 56
    invoke-virtual {p0, p2, p3}, Lcom/google/android/apps/hangouts/views/HangoutEventMessageListItemView;->a(J)V

    .line 57
    iput-object p4, p0, Lcom/google/android/apps/hangouts/views/HangoutEventMessageListItemView;->h:Lbfd;

    .line 74
    const/4 v3, 0x0

    .line 75
    iget-object v0, p0, Lcom/google/android/apps/hangouts/views/HangoutEventMessageListItemView;->a:Ljava/util/List;

    if-nez v0, :cond_3

    if-nez p5, :cond_3

    .line 76
    const/4 v0, 0x0

    move v2, v0

    .line 90
    :goto_0
    if-eqz v2, :cond_0

    .line 91
    iput-object p5, p0, Lcom/google/android/apps/hangouts/views/HangoutEventMessageListItemView;->a:Ljava/util/List;

    .line 1101
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/hangouts/views/HangoutEventMessageListItemView;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/android/apps/hangouts/views/HangoutEventMessageListItemView;->f:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1102
    iget-object v0, p0, Lcom/google/android/apps/hangouts/views/HangoutEventMessageListItemView;->d:Landroid/widget/TextView;

    iget-wide v4, p0, Lcom/google/android/apps/hangouts/views/HangoutEventMessageListItemView;->g:J

    .line 1166
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const/4 v1, 0x0

    invoke-static {v4, v5, v6, v7, v1}, Laal;->b(JJZ)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1102
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1103
    iget-object v0, p0, Lcom/google/android/apps/hangouts/views/HangoutEventMessageListItemView;->d:Landroid/widget/TextView;

    iget-wide v4, p0, Lcom/google/android/apps/hangouts/views/HangoutEventMessageListItemView;->g:J

    .line 1104
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const/4 v1, 0x1

    invoke-static {v4, v5, v6, v7, v1}, Laal;->b(JJZ)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1103
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1106
    iget-object v0, p0, Lcom/google/android/apps/hangouts/views/HangoutEventMessageListItemView;->h:Lbfd;

    invoke-virtual {v0}, Lbfd;->b()Lczb;

    move-result-object v3

    .line 1107
    iget-object v0, p0, Lcom/google/android/apps/hangouts/views/HangoutEventMessageListItemView;->a:Ljava/util/List;

    if-eqz v0, :cond_7

    .line 1108
    iget-object v0, p0, Lcom/google/android/apps/hangouts/views/HangoutEventMessageListItemView;->a:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 1114
    :goto_1
    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/apps/hangouts/views/HangoutEventMessageListItemView;->a:Ljava/util/List;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/google/android/apps/hangouts/views/HangoutEventMessageListItemView;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    :cond_1
    const/4 v0, 0x1

    .line 1115
    :goto_2
    sget v1, Lcom/google/android/apps/hangouts/R$drawable;->bT:I

    .line 1116
    if-eqz v0, :cond_9

    .line 1117
    sget v0, Lcom/google/android/apps/hangouts/R$drawable;->bH:I

    .line 1121
    :goto_3
    iget-object v1, p0, Lcom/google/android/apps/hangouts/views/HangoutEventMessageListItemView;->b:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1123
    if-eqz v2, :cond_2

    .line 1124
    iget-object v0, p0, Lcom/google/android/apps/hangouts/views/HangoutEventMessageListItemView;->e:Lcom/google/android/apps/hangouts/views/FixedParticipantsGalleryView;

    iget-object v1, p0, Lcom/google/android/apps/hangouts/views/HangoutEventMessageListItemView;->h:Lbfd;

    iget-object v2, p0, Lcom/google/android/apps/hangouts/views/HangoutEventMessageListItemView;->a:Ljava/util/List;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/apps/hangouts/views/FixedParticipantsGalleryView;->a(Lbfd;Ljava/util/List;Lczb;)V

    .line 94
    :cond_2
    return-void

    .line 77
    :cond_3
    iget-object v0, p0, Lcom/google/android/apps/hangouts/views/HangoutEventMessageListItemView;->a:Ljava/util/List;

    if-eqz v0, :cond_4

    if-eqz p5, :cond_4

    iget-object v0, p0, Lcom/google/android/apps/hangouts/views/HangoutEventMessageListItemView;->a:Ljava/util/List;

    .line 79
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result v1

    if-eq v0, v1, :cond_5

    .line 80
    :cond_4
    const/4 v0, 0x1

    move v2, v0

    goto :goto_0

    .line 82
    :cond_5
    const/4 v0, 0x0

    move v2, v0

    :goto_4
    iget-object v0, p0, Lcom/google/android/apps/hangouts/views/HangoutEventMessageListItemView;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_b

    .line 83
    iget-object v0, p0, Lcom/google/android/apps/hangouts/views/HangoutEventMessageListItemView;->a:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lczb;

    iget-object v1, p0, Lcom/google/android/apps/hangouts/views/HangoutEventMessageListItemView;->a:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lczb;

    invoke-virtual {v0, v1}, Lczb;->a(Lczb;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 84
    const/4 v0, 0x1

    move v2, v0

    .line 85
    goto/16 :goto_0

    .line 82
    :cond_6
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_4

    .line 1108
    :cond_7
    const/4 v0, 0x0

    goto :goto_1

    .line 1114
    :cond_8
    const/4 v0, 0x0

    goto :goto_2

    .line 1118
    :cond_9
    const/4 v0, 0x1

    if-ne p6, v0, :cond_a

    .line 1119
    sget v0, Lcom/google/android/apps/hangouts/R$drawable;->bG:I

    goto :goto_3

    :cond_a
    move v0, v1

    goto :goto_3

    :cond_b
    move v2, v3

    goto/16 :goto_0
.end method

.method public b()Landroid/view/View;
    .locals 0

    .prologue
    .line 146
    return-object p0
.end method

.method public c()V
    .locals 2

    .prologue
    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 133
    iget-object v1, p0, Lcom/google/android/apps/hangouts/views/HangoutEventMessageListItemView;->c:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1}, Lezc;->a(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 134
    iget-object v1, p0, Lcom/google/android/apps/hangouts/views/HangoutEventMessageListItemView;->d:Landroid/widget/TextView;

    .line 135
    invoke-virtual {v1}, Landroid/widget/TextView;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    .line 134
    invoke-static {v0, v1}, Lezc;->a(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 136
    invoke-virtual {p0, v0}, Lcom/google/android/apps/hangouts/views/HangoutEventMessageListItemView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 137
    return-void
.end method

.method public onFinishInflate()V
    .locals 1

    .prologue
    .line 43
    sget v0, Laen;->dn:I

    invoke-virtual {p0, v0}, Lcom/google/android/apps/hangouts/views/HangoutEventMessageListItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/apps/hangouts/views/HangoutEventMessageListItemView;->b:Landroid/widget/ImageView;

    .line 44
    sget v0, Laen;->gC:I

    invoke-virtual {p0, v0}, Lcom/google/android/apps/hangouts/views/HangoutEventMessageListItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/apps/hangouts/views/HangoutEventMessageListItemView;->c:Landroid/widget/TextView;

    .line 45
    sget v0, Laen;->cQ:I

    invoke-virtual {p0, v0}, Lcom/google/android/apps/hangouts/views/HangoutEventMessageListItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/hangouts/views/FixedParticipantsGalleryView;

    iput-object v0, p0, Lcom/google/android/apps/hangouts/views/HangoutEventMessageListItemView;->e:Lcom/google/android/apps/hangouts/views/FixedParticipantsGalleryView;

    .line 46
    sget v0, Laen;->aQ:I

    invoke-virtual {p0, v0}, Lcom/google/android/apps/hangouts/views/HangoutEventMessageListItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/apps/hangouts/views/HangoutEventMessageListItemView;->d:Landroid/widget/TextView;

    .line 47
    return-void
.end method
