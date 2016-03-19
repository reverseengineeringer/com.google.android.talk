.class final Lbyg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Leph;


# instance fields
.field final synthetic a:Lbyf;


# direct methods
.method constructor <init>(Lbyf;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lbyg;->a:Lbyf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 75
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 50
    iget-object v0, p0, Lbyg;->a:Lbyf;

    .line 1025
    iget-object v0, v0, Lbyf;->c:Ljava/lang/Object;

    .line 50
    check-cast v0, Lbyh;

    invoke-interface {v0}, Lbyh;->r()Lcyx;

    move-result-object v6

    .line 51
    iget-object v0, p0, Lbyg;->a:Lbyf;

    .line 2025
    iget-object v0, v0, Lbyf;->c:Ljava/lang/Object;

    .line 52
    check-cast v0, Lbyh;

    invoke-interface {v0}, Lbyh;->a()Lbfd;

    move-result-object v0

    invoke-virtual {v0}, Lbfd;->g()I

    move-result v0

    iget-object v1, v6, Lcyx;->b:Lczb;

    iget-object v1, v1, Lczb;->a:Ljava/lang/String;

    iget-object v2, v6, Lcyx;->b:Lczb;

    iget-object v2, v2, Lczb;->b:Ljava/lang/String;

    iget-object v3, v6, Lcyx;->e:Ljava/lang/String;

    .line 51
    invoke-static/range {v0 .. v5}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)I

    .line 58
    iget-object v0, p0, Lbyg;->a:Lbyf;

    .line 3025
    iget-object v0, v0, Lbyf;->b:Landroid/content/Context;

    .line 59
    sget v1, Lcom/google/android/apps/hangouts/hangout/StressMode;->iM:I

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, v6, Lcyx;->e:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 61
    iget-object v1, p0, Lbyg;->a:Lbyf;

    .line 4025
    iget-object v1, v1, Lbyf;->b:Landroid/content/Context;

    .line 61
    invoke-static {v1, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 62
    iget-object v0, p0, Lbyg;->a:Lbyf;

    .line 5025
    iget-object v0, v0, Lbyf;->c:Ljava/lang/Object;

    .line 62
    check-cast v0, Lbyh;

    invoke-interface {v0}, Lbyh;->s()V

    .line 64
    iget-object v0, p0, Lbyg;->a:Lbyf;

    .line 6025
    iget-object v0, v0, Lbyf;->c:Ljava/lang/Object;

    .line 64
    check-cast v0, Lbyh;

    iget-object v1, p0, Lbyg;->a:Lbyf;

    .line 7025
    iget-object v1, v1, Lbyf;->c:Ljava/lang/Object;

    .line 64
    check-cast v1, Lbyh;

    invoke-interface {v1}, Lbyh;->q()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Lbyh;->a(I)V

    .line 65
    iget-object v0, p0, Lbyg;->a:Lbyf;

    .line 8025
    iget-object v0, v0, Lbyf;->b:Landroid/content/Context;

    .line 67
    const-class v1, Lhpu;

    invoke-static {v0, v1}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhpu;

    invoke-interface {v0}, Lhpu;->a()I

    move-result v0

    .line 66
    invoke-static {v0}, Ldvd;->e(I)Lbfd;

    move-result-object v0

    const/16 v1, 0x718

    .line 65
    invoke-static {v0, v1}, Laal;->a(Lbfd;I)V

    .line 69
    return-void
.end method
