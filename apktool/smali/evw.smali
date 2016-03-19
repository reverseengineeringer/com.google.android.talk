.class public final Levw;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final synthetic a:Letk;


# direct methods
.method public constructor <init>(Letk;)V
    .locals 0

    .prologue
    .line 8983
    iput-object p1, p0, Levw;->a:Letk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 1986
    const-string v0, "Babel_telephony"

    const-string v1, "TeleSetupController.onGoogleVoiceAccountInfoUpdateSucceeded"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1987
    iget-object v0, p0, Levw;->a:Letk;

    .line 2083
    iget-object v0, v0, Letk;->e:Levu;

    .line 1987
    if-eqz v0, :cond_0

    .line 1988
    iget-object v0, p0, Levw;->a:Letk;

    .line 3083
    const/4 v1, 0x0

    iput-object v1, v0, Letk;->e:Levu;

    .line 1989
    iget-object v0, p0, Levw;->a:Letk;

    invoke-virtual {v0}, Letk;->m()V

    .line 1991
    :cond_0
    return-void
.end method

.method public b()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 3995
    const-string v0, "Babel_telephony"

    const-string v1, "TeleSetupController.onGoogleVoiceAccountInfoUpdateFailed"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3996
    iget-object v0, p0, Levw;->a:Letk;

    .line 4083
    iget-object v0, v0, Letk;->e:Levu;

    .line 3996
    if-eqz v0, :cond_0

    .line 3997
    iget-object v0, p0, Levw;->a:Letk;

    .line 5083
    const/4 v1, 0x0

    iput-object v1, v0, Letk;->e:Levu;

    .line 3998
    iget-object v0, p0, Levw;->a:Letk;

    .line 6083
    invoke-virtual {v0}, Letk;->d()Z

    move-result v0

    .line 3998
    if-eqz v0, :cond_1

    .line 3999
    iget-object v0, p0, Levw;->a:Letk;

    .line 7083
    invoke-virtual {v0, v3}, Letk;->a(Z)V

    .line 4000
    iget-object v0, p0, Levw;->a:Letk;

    invoke-virtual {v0}, Letk;->m()V

    .line 4005
    :cond_0
    :goto_0
    return-void

    .line 4002
    :cond_1
    iget-object v0, p0, Levw;->a:Letk;

    sget v1, Laal;->qN:I

    .line 8083
    invoke-virtual {v0, v1}, Letk;->b(I)V

    goto :goto_0
.end method
