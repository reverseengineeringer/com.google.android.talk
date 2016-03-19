.class public final Lcsb;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lcrt;


# instance fields
.field a:Lcru;

.field b:Ljava/lang/String;

.field c:Z

.field private d:J

.field private final e:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcsb;-><init>(Landroid/content/Context;B)V

    .line 36
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;B)V
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcsb;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    .line 44
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 25
    new-instance v0, Lcsc;

    invoke-direct {v0, p0}, Lcsc;-><init>(Lcsb;)V

    iput-object v0, p0, Lcsb;->e:Ljava/lang/Runnable;

    .line 45
    invoke-virtual {p0}, Lcsb;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Laal;->gn:I

    invoke-static {v0, v1, p0}, Lcsb;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 48
    invoke-virtual {p0}, Lcsb;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Laal;->nG:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 47
    invoke-virtual {p0, v0}, Lcsb;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 49
    new-instance v0, Lcsd;

    invoke-direct {v0, p0}, Lcsd;-><init>(Lcsb;)V

    invoke-virtual {p0, v0}, Lcsb;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    return-void
.end method

.method private c()V
    .locals 6

    .prologue
    .line 95
    invoke-virtual {p0}, Lcsb;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 97
    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcsb;->c:Z

    if-nez v1, :cond_0

    .line 98
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcsb;->c:Z

    .line 1036
    sget-object v1, Laal;->oJ:Landroid/content/Context;

    .line 100
    const-string v2, "babel_location_request_suggestion_duration"

    const/16 v3, 0x2d

    invoke-static {v1, v2, v3}, Laal;->a(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    .line 103
    iget-object v2, p0, Lcsb;->e:Ljava/lang/Runnable;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long v4, v1

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 105
    :cond_0
    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    .prologue
    .line 85
    iget-wide v0, p0, Lcsb;->d:J

    return-wide v0
.end method

.method public a(JLjava/lang/String;)V
    .locals 1

    .prologue
    .line 76
    iput-wide p1, p0, Lcsb;->d:J

    .line 77
    iput-object p3, p0, Lcsb;->b:Ljava/lang/String;

    .line 80
    invoke-direct {p0}, Lcsb;->c()V

    .line 81
    return-void
.end method

.method public a(Lcru;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcsb;->a:Lcru;

    .line 72
    return-void
.end method

.method public b()Landroid/view/View;
    .locals 0

    .prologue
    .line 90
    return-object p0
.end method

.method public onAttachedToWindow()V
    .locals 0

    .prologue
    .line 65
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 66
    invoke-direct {p0}, Lcsb;->c()V

    .line 67
    return-void
.end method
