.class public Lcom/google/android/apps/hangouts/views/RichStatusView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# static fields
.field private static final b:Z

.field private static c:I

.field private static d:I


# instance fields
.field public final a:[Lfeh;

.field private e:Landroid/graphics/drawable/AnimationDrawable;

.field private f:Lczb;

.field private g:Ldns;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 31
    sget-object v0, Lezi;->u:Limx;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/android/apps/hangouts/views/RichStatusView;->b:Z

    .line 39
    sput v1, Lcom/google/android/apps/hangouts/views/RichStatusView;->c:I

    .line 40
    sput v1, Lcom/google/android/apps/hangouts/views/RichStatusView;->d:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 51
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 42
    const/4 v0, 0x3

    new-array v0, v0, [Lfeh;

    iput-object v0, p0, Lcom/google/android/apps/hangouts/views/RichStatusView;->a:[Lfeh;

    .line 60
    sget v0, Lcom/google/android/apps/hangouts/views/RichStatusView;->c:I

    if-gez v0, :cond_0

    .line 61
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/views/RichStatusView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Laal;->ex:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/google/android/apps/hangouts/views/RichStatusView;->c:I

    .line 63
    :cond_0
    sget v0, Lcom/google/android/apps/hangouts/views/RichStatusView;->d:I

    if-gez v0, :cond_1

    .line 64
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/views/RichStatusView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Laal;->ew:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/google/android/apps/hangouts/views/RichStatusView;->d:I

    .line 52
    :cond_1
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    const/4 v0, 0x3

    new-array v0, v0, [Lfeh;

    iput-object v0, p0, Lcom/google/android/apps/hangouts/views/RichStatusView;->a:[Lfeh;

    .line 60
    sget v0, Lcom/google/android/apps/hangouts/views/RichStatusView;->c:I

    if-gez v0, :cond_0

    .line 61
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/views/RichStatusView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Laal;->ex:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/google/android/apps/hangouts/views/RichStatusView;->c:I

    .line 63
    :cond_0
    sget v0, Lcom/google/android/apps/hangouts/views/RichStatusView;->d:I

    if-gez v0, :cond_1

    .line 64
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/views/RichStatusView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Laal;->ew:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/google/android/apps/hangouts/views/RichStatusView;->d:I

    .line 56
    :cond_1
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcom/google/android/apps/hangouts/views/RichStatusView;->g:Ldns;

    invoke-virtual {v0}, Ldns;->b()I

    move-result v0

    .line 248
    packed-switch v0, :pswitch_data_0

    .line 257
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 250
    :pswitch_0
    sget v0, Lcom/google/android/apps/hangouts/hangout/StressMode;->j:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 252
    :pswitch_1
    sget v0, Lcom/google/android/apps/hangouts/hangout/StressMode;->k:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 254
    :pswitch_2
    sget v0, Lcom/google/android/apps/hangouts/hangout/StressMode;->i:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 248
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public a()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 125
    iget-object v0, p0, Lcom/google/android/apps/hangouts/views/RichStatusView;->a:[Lfeh;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0, v2}, Lfeh;->a(Z)V

    .line 126
    iget-object v0, p0, Lcom/google/android/apps/hangouts/views/RichStatusView;->a:[Lfeh;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    invoke-virtual {v0, v2}, Lfeh;->a(Z)V

    .line 127
    return-void
.end method

.method public a(I)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 108
    if-ne p1, v3, :cond_0

    .line 110
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/views/RichStatusView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Laal;->dd:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 112
    :goto_0
    iget-object v1, p0, Lcom/google/android/apps/hangouts/views/RichStatusView;->a:[Lfeh;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1, v0}, Lfeh;->b(I)V

    .line 113
    iget-object v1, p0, Lcom/google/android/apps/hangouts/views/RichStatusView;->a:[Lfeh;

    aget-object v1, v1, v3

    invoke-virtual {v1, v0}, Lfeh;->b(I)V

    .line 114
    iget-object v1, p0, Lcom/google/android/apps/hangouts/views/RichStatusView;->a:[Lfeh;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v1, v0}, Lfeh;->b(I)V

    .line 115
    return-void

    .line 111
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/views/RichStatusView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Laal;->dc:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_0
.end method

.method public a(Lczb;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/google/android/apps/hangouts/views/RichStatusView;->f:Lczb;

    .line 71
    return-void
.end method

.method public a(Ldns;)V
    .locals 0

    .prologue
    .line 118
    iput-object p1, p0, Lcom/google/android/apps/hangouts/views/RichStatusView;->g:Ldns;

    .line 119
    return-void
.end method

.method public a(Ljava/lang/StringBuilder;)V
    .locals 3

    .prologue
    .line 212
    iget-object v0, p0, Lcom/google/android/apps/hangouts/views/RichStatusView;->g:Ldns;

    if-nez v0, :cond_1

    .line 231
    :cond_0
    :goto_0
    return-void

    .line 216
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/views/RichStatusView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 218
    iget-object v1, p0, Lcom/google/android/apps/hangouts/views/RichStatusView;->a:[Lfeh;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    iget-boolean v1, v1, Lfeh;->a:Z

    if-eqz v1, :cond_2

    .line 219
    invoke-virtual {p0, v0}, Lcom/google/android/apps/hangouts/views/RichStatusView;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 220
    if-eqz v1, :cond_2

    .line 221
    invoke-static {p1, v1}, Lezc;->a(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 225
    :cond_2
    iget-object v1, p0, Lcom/google/android/apps/hangouts/views/RichStatusView;->a:[Lfeh;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    iget-boolean v1, v1, Lfeh;->a:Z

    if-eqz v1, :cond_0

    .line 2234
    iget-object v1, p0, Lcom/google/android/apps/hangouts/views/RichStatusView;->g:Ldns;

    invoke-virtual {v1}, Ldns;->c()I

    move-result v1

    .line 2235
    sparse-switch v1, :sswitch_data_0

    .line 2242
    const/4 v0, 0x0

    .line 227
    :goto_1
    if-eqz v0, :cond_0

    .line 228
    invoke-static {p1, v0}, Lezc;->a(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 2237
    :sswitch_0
    sget v1, Lcom/google/android/apps/hangouts/hangout/StressMode;->g:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 2239
    :sswitch_1
    sget v1, Lcom/google/android/apps/hangouts/hangout/StressMode;->h:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 2235
    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0xc8 -> :sswitch_1
    .end sparse-switch
.end method

.method public a(Z)V
    .locals 2

    .prologue
    .line 189
    iget-object v0, p0, Lcom/google/android/apps/hangouts/views/RichStatusView;->a:[Lfeh;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 190
    iget-boolean v1, v0, Lfeh;->a:Z

    if-eq v1, p1, :cond_0

    .line 191
    invoke-virtual {v0, p1}, Lfeh;->a(Z)V

    .line 193
    if-eqz p1, :cond_1

    .line 194
    iget-object v0, p0, Lcom/google/android/apps/hangouts/views/RichStatusView;->e:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 200
    :cond_0
    :goto_0
    return-void

    .line 197
    :cond_1
    iget-object v0, p0, Lcom/google/android/apps/hangouts/views/RichStatusView;->e:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    goto :goto_0
.end method

.method public b(Z)V
    .locals 3

    .prologue
    .line 203
    if-eqz p1, :cond_0

    .line 204
    const v0, 0x3ecccccd    # 0.4f

    .line 206
    :goto_0
    const/4 v1, 0x0

    :goto_1
    const/4 v2, 0x3

    if-ge v1, v2, :cond_1

    .line 207
    iget-object v2, p0, Lcom/google/android/apps/hangouts/views/RichStatusView;->a:[Lfeh;

    aget-object v2, v2, v1

    iget-object v2, v2, Lfeh;->c:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 206
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 204
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    .line 209
    :cond_1
    return-void
.end method

.method public b()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 137
    iget-object v0, p0, Lcom/google/android/apps/hangouts/views/RichStatusView;->g:Ldns;

    if-eqz v0, :cond_1

    .line 138
    sget-boolean v0, Lcom/google/android/apps/hangouts/views/RichStatusView;->b:Z

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/google/android/apps/hangouts/views/RichStatusView;->f:Lczb;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/apps/hangouts/views/RichStatusView;->g:Ldns;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x2c

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Showing presence: mParticipantId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", presence="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2161
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/hangouts/views/RichStatusView;->g:Ldns;

    invoke-virtual {v0}, Ldns;->c()I

    move-result v0

    .line 2162
    sparse-switch v0, :sswitch_data_0

    move v0, v1

    .line 145
    :goto_0
    iget-object v2, p0, Lcom/google/android/apps/hangouts/views/RichStatusView;->a:[Lfeh;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    .line 148
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/views/RichStatusView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Laal;->dC:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    .line 147
    invoke-virtual {v2, v0, v3}, Lfeh;->a(II)Z

    move-result v0

    or-int/lit8 v0, v0, 0x0

    .line 2174
    iget-object v2, p0, Lcom/google/android/apps/hangouts/views/RichStatusView;->g:Ldns;

    invoke-virtual {v2}, Ldns;->b()I

    move-result v2

    .line 2175
    packed-switch v2, :pswitch_data_0

    .line 151
    :goto_1
    iget-object v2, p0, Lcom/google/android/apps/hangouts/views/RichStatusView;->a:[Lfeh;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    .line 154
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/views/RichStatusView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Laal;->dC:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    .line 153
    invoke-virtual {v2, v1, v3}, Lfeh;->a(II)Z

    move-result v1

    or-int/2addr v1, v0

    .line 157
    :cond_1
    return v1

    .line 2164
    :sswitch_0
    sget v0, Lcom/google/android/apps/hangouts/R$drawable;->bt:I

    goto :goto_0

    .line 2166
    :sswitch_1
    sget v0, Lcom/google/android/apps/hangouts/R$drawable;->bw:I

    goto :goto_0

    .line 2177
    :pswitch_0
    sget v1, Lcom/google/android/apps/hangouts/R$drawable;->bs:I

    goto :goto_1

    .line 2179
    :pswitch_1
    sget v1, Lcom/google/android/apps/hangouts/R$drawable;->bu:I

    goto :goto_1

    .line 2181
    :pswitch_2
    sget v1, Lcom/google/android/apps/hangouts/R$drawable;->bj:I

    goto :goto_1

    .line 2162
    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0xc8 -> :sswitch_1
    .end sparse-switch

    .line 2175
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onFinishInflate()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 75
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 77
    iget-object v0, p0, Lcom/google/android/apps/hangouts/views/RichStatusView;->a:[Lfeh;

    new-instance v1, Lfeh;

    sget v2, Laen;->fN:I

    sget v3, Laen;->bO:I

    sget v4, Lcom/google/android/apps/hangouts/views/RichStatusView;->d:I

    invoke-direct {v1, p0, v2, v3, v4}, Lfeh;-><init>(Lcom/google/android/apps/hangouts/views/RichStatusView;III)V

    aput-object v1, v0, v6

    .line 79
    iget-object v0, p0, Lcom/google/android/apps/hangouts/views/RichStatusView;->a:[Lfeh;

    const/4 v1, 0x1

    new-instance v2, Lfeh;

    sget v3, Laen;->fL:I

    sget v4, Laen;->fK:I

    sget v5, Lcom/google/android/apps/hangouts/views/RichStatusView;->c:I

    invoke-direct {v2, p0, v3, v4, v5}, Lfeh;-><init>(Lcom/google/android/apps/hangouts/views/RichStatusView;III)V

    aput-object v2, v0, v1

    .line 82
    iget-object v0, p0, Lcom/google/android/apps/hangouts/views/RichStatusView;->a:[Lfeh;

    const/4 v1, 0x2

    new-instance v2, Lfeh;

    sget v3, Laen;->fJ:I

    sget v4, Laen;->fI:I

    sget v5, Lcom/google/android/apps/hangouts/views/RichStatusView;->c:I

    invoke-direct {v2, p0, v3, v4, v5}, Lfeh;-><init>(Lcom/google/android/apps/hangouts/views/RichStatusView;III)V

    aput-object v2, v0, v1

    .line 89
    iget-object v0, p0, Lcom/google/android/apps/hangouts/views/RichStatusView;->a:[Lfeh;

    aget-object v0, v0, v6

    iget-object v2, v0, Lfeh;->c:Landroid/widget/ImageView;

    .line 1198
    const-string v0, "Expected non-null"

    invoke-static {v0, v2}, Lhbs;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/views/RichStatusView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 95
    const/4 v1, 0x0

    .line 96
    instance-of v3, v0, Lcbr;

    if-eqz v3, :cond_0

    .line 97
    check-cast v0, Lcbr;

    .line 103
    :goto_0
    invoke-static {v0}, Lfbq;->b(Lcbr;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/hangouts/views/RichStatusView;->e:Landroid/graphics/drawable/AnimationDrawable;

    .line 104
    iget-object v0, p0, Lcom/google/android/apps/hangouts/views/RichStatusView;->e:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 105
    return-void

    .line 98
    :cond_0
    instance-of v3, v0, Lill;

    if-eqz v3, :cond_1

    .line 99
    check-cast v0, Lill;

    invoke-virtual {v0}, Lill;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcbr;

    goto :goto_0

    .line 101
    :cond_1
    const-string v0, "Unknown type of context"

    invoke-static {v0}, Lhbs;->a(Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0
.end method
