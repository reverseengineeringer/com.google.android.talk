.class public final Lfen;
.super Lfcu;
.source "SourceFile"

# interfaces
.implements Lfdj;


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Lbfd;

.field private j:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lfen;-><init>(Landroid/content/Context;B)V

    .line 32
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;B)V
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lfcu;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    return-void
.end method


# virtual methods
.method public a(Lbfd;ZLjava/lang/String;Lav;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V
    .locals 7

    .prologue
    .line 49
    iput-object p1, p0, Lfen;->d:Lbfd;

    .line 50
    iput-object p6, p0, Lfen;->a:Ljava/lang/String;

    .line 51
    iput-object p5, p0, Lfen;->b:Ljava/lang/String;

    .line 52
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p7, v0, v1}, Lfen;->a(Ljava/lang/String;J)V

    .line 54
    if-eqz p2, :cond_0

    invoke-static {p7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 55
    :cond_0
    invoke-virtual {p0}, Lfen;->g()V

    .line 58
    :cond_1
    new-instance v0, Lfeo;

    invoke-direct {v0, p0, p4}, Lfeo;-><init>(Lfen;Lav;)V

    iput-object v0, p0, Lfen;->j:Landroid/view/View$OnClickListener;

    .line 85
    iget-object v0, p0, Lfen;->j:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, v0}, Lfen;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    sget v0, Lcom/google/android/apps/hangouts/hangout/StressMode;->sD:I

    invoke-virtual {p0, v0}, Lfen;->a(I)V

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p8

    move/from16 v5, p9

    move/from16 v6, p10

    .line 87
    invoke-super/range {v0 .. v6}, Lfcu;->a(Lbfd;ZLjava/lang/String;III)V

    .line 88
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 126
    return-void
.end method

.method public a(Ljava/lang/String;J)V
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lfen;->c:Ljava/lang/String;

    .line 121
    return-void
.end method

.method public d_()V
    .locals 0

    .prologue
    .line 92
    invoke-super {p0}, Lfcu;->d_()V

    .line 93
    invoke-virtual {p0}, Lfen;->g()V

    .line 94
    return-void
.end method

.method g()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 97
    iget-object v0, p0, Lfen;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfen;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfen;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    invoke-virtual {p0, v1}, Lfen;->setEnabled(Z)V

    .line 100
    new-instance v0, Lfep;

    invoke-direct {v0, p0}, Lfep;-><init>(Lfen;)V

    new-array v1, v1, [Ljava/lang/Void;

    .line 114
    invoke-virtual {v0, v1}, Lfep;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 116
    :cond_0
    return-void
.end method
