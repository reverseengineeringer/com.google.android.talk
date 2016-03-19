.class public abstract Lecg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcwi;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<W::",
        "Leff;",
        ">",
        "Ljava/lang/Object;",
        "Lcwi;"
    }
.end annotation


# instance fields
.field public final a:Leff;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TW;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Leff;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TW;)V"
        }
    .end annotation

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lecg;->a:Leff;

    .line 30
    return-void
.end method

.method public static a(Lcwk;I)Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1036
    sget-object v0, Laal;->oJ:Landroid/content/Context;

    .line 84
    const-class v3, Lbdp;

    invoke-static {v0, v3}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbdp;

    .line 86
    const-string v3, "babel_max_unexpected_error_retries"

    const/4 v4, 0x2

    invoke-interface {v0, v3, v4}, Lbdp;->a(Ljava/lang/String;I)I

    move-result v3

    .line 90
    const-string v4, "babel_max_upload_error_retries"

    const/16 v5, 0xa

    invoke-interface {v0, v4, v5}, Lbdp;->a(Ljava/lang/String;I)I

    move-result v0

    .line 94
    packed-switch p1, :pswitch_data_0

    .line 145
    :pswitch_0
    const-string v0, "Babel_ServerOpNetReq"

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x31

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Default no retry on BabelClientError: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lezi;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    .line 146
    :goto_0
    return v0

    :pswitch_1
    move v0, v1

    .line 98
    goto :goto_0

    :pswitch_2
    move v0, v2

    .line 104
    goto :goto_0

    :pswitch_3
    move v0, v1

    .line 111
    goto :goto_0

    :pswitch_4
    move v0, v2

    .line 113
    goto :goto_0

    .line 119
    :pswitch_5
    iget v0, p0, Lcwk;->e:I

    if-ge v0, v3, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_0

    :pswitch_6
    move v0, v1

    .line 125
    goto :goto_0

    :pswitch_7
    move v0, v1

    .line 129
    goto :goto_0

    :pswitch_8
    move v0, v1

    .line 134
    goto :goto_0

    .line 138
    :pswitch_9
    iget v3, p0, Lcwk;->d:I

    if-ge v3, v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0

    :pswitch_a
    move v0, v1

    .line 142
    goto :goto_0

    .line 94
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_8
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_a
    .end packed-switch
.end method


# virtual methods
.method public abstract a(Lbfd;I)Ldom;
.end method

.method public abstract a(ILdvn;)V
.end method

.method public final a(Landroid/content/Context;Lcwk;Lcwm;)V
    .locals 2

    .prologue
    .line 41
    iget v0, p2, Lcwk;->c:I

    invoke-static {v0}, Ldvd;->e(I)Lbfd;

    move-result-object v0

    .line 43
    iget v1, p2, Lcwk;->e:I

    .line 44
    invoke-virtual {p0, v0, v1}, Lecg;->a(Lbfd;I)Ldom;

    move-result-object v0

    .line 45
    invoke-virtual {v0}, Ldom;->f()V

    .line 46
    return-void
.end method

.method public a(Lcwk;Ldvn;)Z
    .locals 1

    .prologue
    .line 75
    invoke-virtual {p2}, Ldvn;->c()I

    move-result v0

    invoke-static {p1, v0}, Lecg;->a(Lcwk;I)Z

    move-result v0

    return v0
.end method

.method public final b(ILdvn;)V
    .locals 3

    .prologue
    .line 56
    invoke-static {p1}, Ldvd;->e(I)Lbfd;

    move-result-object v0

    .line 57
    if-nez v0, :cond_1

    .line 58
    const-string v0, "Babel_ServerOpNetReq"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lezi;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    const-string v0, "Babel_ServerOpNetReq"

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x39

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Skipping request failure for invalid account: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 66
    :cond_0
    :goto_0
    return-void

    .line 64
    :cond_1
    invoke-virtual {p0, p1, p2}, Lecg;->a(ILdvn;)V

    .line 65
    iget-object v1, p0, Lecg;->a:Leff;

    invoke-static {v0, v1, p2}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(Lbfd;Leff;Ldvn;)V

    goto :goto_0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x0

    return-object v0
.end method

.method public f()Leff;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TW;"
        }
    .end annotation

    .prologue
    .line 159
    iget-object v0, p0, Lecg;->a:Leff;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 152
    const-string v1, "ServerOperationNetworkRequest "

    iget-object v0, p0, Lecg;->a:Leff;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method
