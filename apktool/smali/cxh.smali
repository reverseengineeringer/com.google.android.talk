.class public final Lcxh;
.super Lcxb;
.source "SourceFile"


# instance fields
.field private final c:Lcxq;


# direct methods
.method protected constructor <init>(Landroid/content/Context;ILcxq;J)V
    .locals 6

    .prologue
    .line 27
    iget-object v0, p3, Lcxq;->o:Lcwz;

    iget-object v0, v0, Lcwz;->a:Ljava/lang/String;

    invoke-static {v0}, Lexn;->a(Ljava/lang/String;)Lexn;

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-wide v4, p4

    invoke-direct/range {v0 .. v5}, Lcxb;-><init>(Landroid/content/Context;ILexn;J)V

    .line 29
    iput-object p3, p0, Lcxh;->c:Lcxq;

    .line 30
    return-void
.end method


# virtual methods
.method protected a(Z)V
    .locals 2

    .prologue
    .line 34
    iget-object v0, p0, Lcxh;->p:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 36
    sget v1, Lcom/google/android/apps/hangouts/hangout/StressMode;->gP:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 37
    iget-object v1, p0, Lcxh;->u:Lcy;

    invoke-virtual {v1, v0}, Lcy;->a(Ljava/lang/CharSequence;)Lcy;

    .line 38
    iget-object v1, p0, Lcxh;->w:Lcy;

    invoke-virtual {v1, v0}, Lcy;->a(Ljava/lang/CharSequence;)Lcy;

    .line 42
    iget-object v0, p0, Lcxh;->c:Lcxq;

    iget-object v0, v0, Lcxq;->b:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcxh;->c:Lcxq;

    iget-boolean v0, v0, Lcxq;->g:Z

    if-eqz v0, :cond_0

    .line 43
    new-instance v0, Ldb;

    iget-object v1, p0, Lcxh;->u:Lcy;

    invoke-direct {v0, v1}, Ldb;-><init>(Lcy;)V

    .line 44
    iget-object v1, p0, Lcxh;->c:Lcxq;

    iget-object v1, v1, Lcxq;->b:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ldb;->b(Ljava/lang/CharSequence;)Ldb;

    .line 45
    iget-object v1, p0, Lcxh;->u:Lcy;

    invoke-virtual {v1, v0}, Lcy;->a(Ldk;)Lcy;

    .line 50
    :goto_0
    invoke-super {p0, p1}, Lcxb;->a(Z)V

    .line 51
    return-void

    .line 47
    :cond_0
    iget-object v0, p0, Lcxh;->u:Lcy;

    iget-object v1, p0, Lcxh;->c:Lcxq;

    iget-object v1, v1, Lcxq;->b:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcy;->b(Ljava/lang/CharSequence;)Lcy;

    goto :goto_0
.end method

.method protected g()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 59
    iget v0, p0, Lcxh;->q:I

    iget-object v1, p0, Lcxh;->r:Lexn;

    .line 60
    invoke-virtual {v1}, Lexn;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcxh;->c:Lcxq;

    iget-object v2, v2, Lcxq;->o:Lcwz;

    iget v2, v2, Lcwz;->e:I

    .line 59
    invoke-static {v0, v1, v2}, Laal;->a(ILjava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method
