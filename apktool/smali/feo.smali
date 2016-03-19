.class final Lfeo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lav;

.field final synthetic b:Lfen;


# direct methods
.method constructor <init>(Lfen;Lav;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lfeo;->b:Lfen;

    iput-object p2, p0, Lfeo;->a:Lav;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    const/4 v3, 0x3

    const/4 v4, 0x0

    .line 63
    iget-object v0, p0, Lfeo;->b:Lfen;

    .line 1021
    iget-object v0, v0, Lfen;->c:Ljava/lang/String;

    .line 63
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 64
    const-string v0, "Babel"

    invoke-static {v0, v3}, Lezi;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    const-string v0, "Babel"

    const-string v1, "VideoAttachmentHandler could not load video"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 68
    :cond_0
    iget-object v0, p0, Lfeo;->b:Lfen;

    .line 2021
    invoke-virtual {v0}, Lfen;->g()V

    .line 71
    :cond_1
    iget-object v0, p0, Lfeo;->b:Lfen;

    .line 3021
    iget-object v0, v0, Lfen;->c:Ljava/lang/String;

    .line 71
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 72
    const-string v0, "Babel"

    invoke-static {v0, v3}, Lezi;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 73
    const-string v1, "Babel"

    const-string v2, "VideoAttachmentHandler loaded urlString: "

    iget-object v0, p0, Lfeo;->b:Lfen;

    .line 4021
    iget-object v0, v0, Lfen;->c:Ljava/lang/String;

    .line 73
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lezi;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 79
    :cond_2
    iget-object v0, p0, Lfeo;->a:Lav;

    iget-object v1, p0, Lfeo;->b:Lfen;

    .line 5021
    iget-object v1, v1, Lfen;->c:Ljava/lang/String;

    .line 80
    const-string v2, "video/mp4"

    invoke-static {v1, v2}, Laal;->b(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 79
    invoke-virtual {v0, v1}, Lav;->startActivity(Landroid/content/Intent;)V

    .line 82
    :cond_3
    return-void

    .line 73
    :cond_4
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method
