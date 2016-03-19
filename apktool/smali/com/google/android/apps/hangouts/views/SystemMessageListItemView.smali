.class public Lcom/google/android/apps/hangouts/views/SystemMessageListItemView;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"

# interfaces
.implements Lcum;


# static fields
.field private static a:Z

.field private static b:I

.field private static c:I


# instance fields
.field private d:Landroid/widget/ImageView;

.field private e:Landroid/widget/TextView;

.field private f:Ljava/lang/CharSequence;

.field private g:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/android/apps/hangouts/views/SystemMessageListItemView;->a:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/hangouts/views/SystemMessageListItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    sget-boolean v0, Lcom/google/android/apps/hangouts/views/SystemMessageListItemView;->a:Z

    if-nez v0, :cond_0

    .line 33
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 34
    sget v1, Laal;->dz:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/google/android/apps/hangouts/views/SystemMessageListItemView;->b:I

    .line 35
    sget v1, Laal;->dy:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    sput v0, Lcom/google/android/apps/hangouts/views/SystemMessageListItemView;->c:I

    .line 36
    const/4 v0, 0x1

    sput-boolean v0, Lcom/google/android/apps/hangouts/views/SystemMessageListItemView;->a:Z

    .line 38
    :cond_0
    return-void
.end method

.method private d()V
    .locals 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/google/android/apps/hangouts/views/SystemMessageListItemView;->e:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/android/apps/hangouts/views/SystemMessageListItemView;->f:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    .prologue
    .line 81
    iget-wide v0, p0, Lcom/google/android/apps/hangouts/views/SystemMessageListItemView;->g:J

    return-wide v0
.end method

.method public a(I)V
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/android/apps/hangouts/views/SystemMessageListItemView;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 53
    return-void
.end method

.method public a(J)V
    .locals 1

    .prologue
    .line 56
    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/hangouts/views/SystemMessageListItemView;->b(J)V

    .line 57
    invoke-direct {p0}, Lcom/google/android/apps/hangouts/views/SystemMessageListItemView;->d()V

    .line 58
    return-void
.end method

.method public a(Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/google/android/apps/hangouts/views/SystemMessageListItemView;->f:Ljava/lang/CharSequence;

    .line 48
    invoke-direct {p0}, Lcom/google/android/apps/hangouts/views/SystemMessageListItemView;->d()V

    .line 49
    return-void
.end method

.method public a(Z)V
    .locals 2

    .prologue
    .line 76
    iget-object v1, p0, Lcom/google/android/apps/hangouts/views/SystemMessageListItemView;->d:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    sget v0, Lcom/google/android/apps/hangouts/views/SystemMessageListItemView;->c:I

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 77
    return-void

    .line 76
    :cond_0
    sget v0, Lcom/google/android/apps/hangouts/views/SystemMessageListItemView;->b:I

    goto :goto_0
.end method

.method public b()Landroid/view/View;
    .locals 0

    .prologue
    .line 86
    return-object p0
.end method

.method public b(J)V
    .locals 1

    .prologue
    .line 72
    iput-wide p1, p0, Lcom/google/android/apps/hangouts/views/SystemMessageListItemView;->g:J

    .line 73
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/android/apps/hangouts/views/SystemMessageListItemView;->e:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/hangouts/views/SystemMessageListItemView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 69
    return-void
.end method

.method public onFinishInflate()V
    .locals 1

    .prologue
    .line 42
    sget v0, Laen;->gC:I

    invoke-virtual {p0, v0}, Lcom/google/android/apps/hangouts/views/SystemMessageListItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/apps/hangouts/views/SystemMessageListItemView;->e:Landroid/widget/TextView;

    .line 43
    sget v0, Laen;->dn:I

    invoke-virtual {p0, v0}, Lcom/google/android/apps/hangouts/views/SystemMessageListItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/apps/hangouts/views/SystemMessageListItemView;->d:Landroid/widget/ImageView;

    .line 44
    return-void
.end method
