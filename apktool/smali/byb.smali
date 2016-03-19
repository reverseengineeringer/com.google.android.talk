.class public final Lbyb;
.super Leap;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/apps/hangouts/fragments/BlockedContactsFragment;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/hangouts/fragments/BlockedContactsFragment;)V
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Lbyb;->a:Lcom/google/android/apps/hangouts/fragments/BlockedContactsFragment;

    invoke-direct {p0}, Leap;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILbfd;Leau;)V
    .locals 3

    .prologue
    .line 107
    invoke-virtual {p3}, Leau;->c()Ldqf;

    move-result-object v0

    .line 108
    iget-object v1, p0, Lbyb;->a:Lcom/google/android/apps/hangouts/fragments/BlockedContactsFragment;

    .line 1043
    iget v1, v1, Lcom/google/android/apps/hangouts/fragments/BlockedContactsFragment;->c:I

    .line 108
    if-ne v1, p1, :cond_1

    const-class v1, Ldrw;

    .line 109
    invoke-virtual {v1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 110
    iget-object v0, p0, Lbyb;->a:Lcom/google/android/apps/hangouts/fragments/BlockedContactsFragment;

    .line 2155
    const/4 v1, -0x1

    iput v1, v0, Lcom/google/android/apps/hangouts/fragments/BlockedContactsFragment;->c:I

    .line 2156
    invoke-virtual {v0}, Lcom/google/android/apps/hangouts/fragments/BlockedContactsFragment;->b()V

    .line 119
    :cond_0
    :goto_0
    return-void

    .line 113
    :cond_1
    const-class v1, Ldrv;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lbyb;->a:Lcom/google/android/apps/hangouts/fragments/BlockedContactsFragment;

    .line 3160
    iget-object v1, v0, Lcom/google/android/apps/hangouts/fragments/BlockedContactsFragment;->e:Lif;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lif;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3161
    iget-object v1, v0, Lcom/google/android/apps/hangouts/fragments/BlockedContactsFragment;->e:Lif;

    invoke-virtual {v1}, Lif;->size()I

    move-result v1

    if-nez v1, :cond_2

    .line 3162
    invoke-virtual {v0}, Lcom/google/android/apps/hangouts/fragments/BlockedContactsFragment;->b()V

    .line 115
    :cond_2
    iget-object v0, p0, Lbyb;->a:Lcom/google/android/apps/hangouts/fragments/BlockedContactsFragment;

    .line 4043
    iget-object v0, v0, Lcom/google/android/apps/hangouts/fragments/BlockedContactsFragment;->b:Lbyc;

    .line 115
    invoke-virtual {v0}, Lbyc;->notifyDataSetChanged()V

    .line 117
    iget-object v0, p0, Lbyb;->a:Lcom/google/android/apps/hangouts/fragments/BlockedContactsFragment;

    iget-object v1, p0, Lbyb;->a:Lcom/google/android/apps/hangouts/fragments/BlockedContactsFragment;

    invoke-virtual {v1}, Lcom/google/android/apps/hangouts/fragments/BlockedContactsFragment;->getView()Landroid/view/View;

    move-result-object v1

    .line 5043
    invoke-virtual {v0, v1}, Lcom/google/android/apps/hangouts/fragments/BlockedContactsFragment;->a(Landroid/view/View;)V

    goto :goto_0
.end method

.method public a(ILbfd;Leff;Ldvn;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 124
    iget-object v0, p0, Lbyb;->a:Lcom/google/android/apps/hangouts/fragments/BlockedContactsFragment;

    .line 6043
    iget v0, v0, Lcom/google/android/apps/hangouts/fragments/BlockedContactsFragment;->c:I

    .line 124
    if-ne v0, p1, :cond_0

    const-class v0, Ldno;

    .line 125
    invoke-virtual {v0, p3}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lbyb;->a:Lcom/google/android/apps/hangouts/fragments/BlockedContactsFragment;

    .line 7155
    const/4 v1, -0x1

    iput v1, v0, Lcom/google/android/apps/hangouts/fragments/BlockedContactsFragment;->c:I

    .line 7156
    invoke-virtual {v0}, Lcom/google/android/apps/hangouts/fragments/BlockedContactsFragment;->b()V

    .line 127
    invoke-static {}, Lbyp;->j()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 128
    sget v0, Lcom/google/android/apps/hangouts/hangout/StressMode;->in:I

    .line 130
    :goto_0
    iget-object v1, p0, Lbyb;->a:Lcom/google/android/apps/hangouts/fragments/BlockedContactsFragment;

    .line 8043
    iget-object v1, v1, Lcom/google/android/apps/hangouts/fragments/BlockedContactsFragment;->context:Lill;

    .line 130
    invoke-static {v1, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 131
    iget-object v0, p0, Lbyb;->a:Lcom/google/android/apps/hangouts/fragments/BlockedContactsFragment;

    iget-object v1, p0, Lbyb;->a:Lcom/google/android/apps/hangouts/fragments/BlockedContactsFragment;

    invoke-virtual {v1}, Lcom/google/android/apps/hangouts/fragments/BlockedContactsFragment;->getView()Landroid/view/View;

    move-result-object v1

    .line 9043
    invoke-virtual {v0, v1}, Lcom/google/android/apps/hangouts/fragments/BlockedContactsFragment;->a(Landroid/view/View;)V

    .line 133
    :cond_0
    iget-object v0, p0, Lbyb;->a:Lcom/google/android/apps/hangouts/fragments/BlockedContactsFragment;

    .line 10043
    iget-object v0, v0, Lcom/google/android/apps/hangouts/fragments/BlockedContactsFragment;->e:Lif;

    .line 133
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lif;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbye;

    .line 134
    if-eqz v0, :cond_2

    const-class v1, Ldnn;

    invoke-virtual {v1, p3}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 135
    iget-object v1, p0, Lbyb;->a:Lcom/google/android/apps/hangouts/fragments/BlockedContactsFragment;

    .line 11160
    iget-object v2, v1, Lcom/google/android/apps/hangouts/fragments/BlockedContactsFragment;->e:Lif;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lif;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11161
    iget-object v2, v1, Lcom/google/android/apps/hangouts/fragments/BlockedContactsFragment;->e:Lif;

    invoke-virtual {v2}, Lif;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 11162
    invoke-virtual {v1}, Lcom/google/android/apps/hangouts/fragments/BlockedContactsFragment;->b()V

    .line 136
    :cond_1
    iget-object v1, p0, Lbyb;->a:Lcom/google/android/apps/hangouts/fragments/BlockedContactsFragment;

    .line 12043
    iget-object v1, v1, Lcom/google/android/apps/hangouts/fragments/BlockedContactsFragment;->b:Lbyc;

    .line 136
    invoke-virtual {v1}, Lbyc;->notifyDataSetChanged()V

    .line 138
    invoke-static {}, Lbyp;->j()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 139
    sget v1, Lcom/google/android/apps/hangouts/hangout/StressMode;->iK:I

    .line 141
    :goto_1
    iget-object v2, p0, Lbyb;->a:Lcom/google/android/apps/hangouts/fragments/BlockedContactsFragment;

    .line 13043
    iget-object v2, v2, Lcom/google/android/apps/hangouts/fragments/BlockedContactsFragment;->context:Lill;

    .line 142
    iget-object v3, p0, Lbyb;->a:Lcom/google/android/apps/hangouts/fragments/BlockedContactsFragment;

    .line 14043
    iget-object v3, v3, Lcom/google/android/apps/hangouts/fragments/BlockedContactsFragment;->context:Lill;

    .line 142
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v0, v0, Lbye;->b:Ljava/lang/String;

    aput-object v0, v4, v5

    invoke-virtual {v3, v1, v4}, Lill;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 141
    invoke-static {v2, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 143
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 145
    :cond_2
    return-void

    .line 129
    :cond_3
    sget v0, Lcom/google/android/apps/hangouts/hangout/StressMode;->io:I

    goto :goto_0

    .line 140
    :cond_4
    sget v1, Lcom/google/android/apps/hangouts/hangout/StressMode;->iL:I

    goto :goto_1
.end method
